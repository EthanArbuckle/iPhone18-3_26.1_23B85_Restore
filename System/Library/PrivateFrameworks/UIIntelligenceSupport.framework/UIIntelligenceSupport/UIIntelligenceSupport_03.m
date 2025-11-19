uint64_t sub_1BBAC6164(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_1BBAC7878(v18))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v1 + 48) + 112 * (v9 | (v8 << 6)));
    v12 = v10[1];
    v11 = v10[2];
    v20[0] = *v10;
    v20[1] = v12;
    v20[2] = v11;
    v14 = v10[4];
    v13 = v10[5];
    v15 = v10[3];
    *(v21 + 9) = *(v10 + 89);
    v20[4] = v14;
    v21[0] = v13;
    v20[3] = v15;
    sub_1BBACB4D0(v20, v18);
    sub_1BBAF68E4(v16, v20);
    v18[4] = v16[4];
    v19[0] = v17[0];
    *(v19 + 9) = *(v17 + 9);
    v18[0] = v16[0];
    v18[1] = v16[1];
    v18[2] = v16[2];
    v18[3] = v16[3];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t IntelligenceFile.cgImage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  v2 = *MEMORY[0x1E696E0A8];
  *(inited + 32) = *MEMORY[0x1E696E0A8];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v3 = v2;
  ImageAtIndex = sub_1BBAC7FA8(inited);
  swift_setDeallocating();
  sub_1BBA8BCC4(inited + 32, &qword_1EBC7B878);
  v5 = IntelligenceFile.data.getter();
  if (v0)
  {
  }

  else
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_1BBB83458();
    sub_1BBA885E8(v7, v8);
    type metadata accessor for CFString(0);
    sub_1BBACA7C8(&qword_1EBC7B5D8, type metadata accessor for CFString);
    v10 = sub_1BBB838F8();

    v11 = CGImageSourceCreateWithData(v9, v10);

    if (!v11 || (ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0), v11, !ImageAtIndex))
    {
      sub_1BBACA810();
      swift_allocError();
      *v12 = 3;
      swift_willThrow();
    }
  }

  return ImageAtIndex;
}

id sub_1BBAC646C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BBB83328();
  v15[0] = 0;
  v7 = [v3 initWithContentsOfURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1BBB833F8();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1BBB83268();

    swift_willThrow();
    v13 = sub_1BBB833F8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1BBAC65C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v14 = *(a1 + 64);
  v2 = v14;
  v15[0] = v3;
  *(v15 + 9) = *(a1 + 89);
  v4 = *(v15 + 9);
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a1 + 48);
  v12 = *(a1 + 32);
  v7 = v12;
  v13 = v6;
  v8 = *(a1 + 112);
  *a2 = v11[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v6;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 89) = v4;
  *(a2 + 112) = v8;
  sub_1BBACB4D0(v11, &v10);
}

uint64_t _s21UIIntelligenceSupport26IntelligenceImageProcessorV5InputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v47 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v47 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - v14;
  v17 = (&v47 + *(v16 + 56) - v14);
  sub_1BBAC78EC(a1, &v47 - v14, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
  sub_1BBAC78EC(a2, v17, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BBAC78EC(v15, v12, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
    v19 = *v12;
    v26 = v12[1];
    v27 = v12[2];
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *v17;
      v42 = v17[1];
      v43 = v17[2];
      type metadata accessor for CGImage(0);
      sub_1BBACA7C8(&qword_1EBC7BA00, type metadata accessor for CGImage);
      if (sub_1BBB835A8())
      {
        if (v26 != v42 || v27 != v43)
        {
LABEL_29:
          v45 = sub_1BBB842F8();

          if (v45)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

        goto LABEL_36;
      }

      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BBAC78EC(v15, v9, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
    v19 = *v9;
    v20 = v9[1];
    v21 = v9[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v17;
      v23 = v17[1];
      v24 = v17[2];
      type metadata accessor for IOSurfaceRef(0);
      sub_1BBACA7C8(&qword_1EBC7B9F8, type metadata accessor for IOSurfaceRef);
      if (sub_1BBB835A8())
      {
        if (v20 != v23 || v21 != v24)
        {
          goto LABEL_29;
        }

LABEL_36:

        goto LABEL_41;
      }

LABEL_31:

      goto LABEL_33;
    }

LABEL_11:

    goto LABEL_23;
  }

  sub_1BBAC78EC(v15, v6, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B840) + 48);
  v30 = *&v6[v28];
  v29 = *&v6[v28 + 8];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v47 = *(v17 + v28);
    v48 = v30;
    v31 = *(v17 + v28 + 8);
    v32 = sub_1BBB833F8();
    v33 = *(v32 - 8);
    v34 = MEMORY[0x1EEE9AC00](v32);
    v36 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 32))(v36, v17, v32, v34);
    v37 = sub_1BBB83368();
    v38 = *(v33 + 8);
    v38(v6, v32);
    if (v37)
    {
      if (v29)
      {
        if (v31)
        {
          if (v48 == v47 && v29 == v31)
          {

            v38(v36, v32);
            goto LABEL_41;
          }

          v40 = sub_1BBB842F8();

          v38(v36, v32);
          if (v40)
          {
LABEL_41:
            sub_1BBACA760(v15, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
            return 1;
          }
        }

        else
        {

          v38(v36, v32);
        }
      }

      else
      {
        v38(v36, v32);
        if (!v31)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v38(v36, v32);
    }

LABEL_33:
    sub_1BBACA760(v15, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
    return 0;
  }

  v41 = sub_1BBB833F8();
  (*(*(v41 - 8) + 8))(v6, v41);
LABEL_23:
  sub_1BBA8BCC4(v15, &qword_1EBC7BA08);
  return 0;
}

uint64_t _s21UIIntelligenceSupport26IntelligenceImageProcessorV7OptionsV20OutputFilePropertiesV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  result = *(a2 + 32);
  if (v6 == 1)
  {
    if (v5 | v3 | v2 | v4)
    {
      if ((result & 1) == 0 || !(v11 | v9 | v8 | v10))
      {
        return 0;
      }
    }

    else
    {
      if (!*(a2 + 32))
      {
        return result;
      }

      if (v11 | v9 | v8 | v10)
      {
        return 0;
      }
    }
  }

  else
  {
    if (result)
    {
      return 0;
    }

    v13 = v2 == v8 && v3 == v9;
    v14 = v13 && v5 == a2[2];
    if (!v14 || v4 != a2[3])
    {
      return 0;
    }
  }

  return v7 ^ *(a2 + 33) ^ 1u;
}

uint64_t _s21UIIntelligenceSupport26IntelligenceImageProcessorV7OptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFile.Attributes(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B848);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v29 - v12;
  v15 = *(v14 + 56);
  sub_1BBA8BC5C(a1, v29 - v12, &qword_1EBC7B848);
  sub_1BBA8BC5C(a2, &v13[v15], &qword_1EBC7B848);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BBA8BC5C(v13, v10, &qword_1EBC7B848);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1BBAC7954(&v13[v15], v7, type metadata accessor for IntelligenceFile.Attributes);
      v17 = static IntelligenceFile.Attributes.== infix(_:_:)(v10, v7);
      sub_1BBACA760(v7, type metadata accessor for IntelligenceFile.Attributes);
      sub_1BBACA760(v10, type metadata accessor for IntelligenceFile.Attributes);
      sub_1BBA8BCC4(v13, &qword_1EBC7B848);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      v27 = 0;
      return v27 & 1;
    }

    sub_1BBACA760(v10, type metadata accessor for IntelligenceFile.Attributes);
LABEL_6:
    sub_1BBA8BCC4(v13, &qword_1EBC7B9D8);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BBA8BCC4(v13, &qword_1EBC7B848);
LABEL_8:
  v18 = type metadata accessor for IntelligenceImageProcessor.Options(0);
  if ((sub_1BBA95080(*(a1 + *(v18 + 20)), *(a2 + *(v18 + 20))) & 1) == 0 || (sub_1BBB83838() & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = a1 + *(v18 + 28);
  v20 = *(v19 + 32);
  v21 = *(v19 + 33);
  v22 = *(v19 + 16);
  v32[0] = *v19;
  v32[1] = v22;
  v33 = v20;
  v34 = v21;
  v23 = a2 + *(v18 + 28);
  v24 = *(v23 + 32);
  v25 = *(v23 + 33);
  v26 = *(v23 + 16);
  v29[0] = *v23;
  v29[1] = v26;
  v30 = v24;
  v31 = v25;
  v27 = _s21UIIntelligenceSupport26IntelligenceImageProcessorV7OptionsV20OutputFilePropertiesV2eeoiySbAG_AGtFZ_0(v32, v29);
  return v27 & 1;
}

unint64_t sub_1BBAC70F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B940);
    v3 = sub_1BBB840E8();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 64);
      v7 = *(v4 + 96);
      v23 = *(v4 + 80);
      v24 = v7;
      v8 = *(v4 + 112);
      v25 = v8;
      v9 = *(v4 + 16);
      v22[0] = *v4;
      v10 = *(v4 + 32);
      v11 = *(v4 + 48);
      v22[1] = v9;
      v22[2] = v10;
      v22[3] = v11;
      v22[4] = v6;
      v26 = v22[0];
      v27 = v9;
      *(v31 + 9) = *(v4 + 89);
      v30 = v6;
      v31[0] = v23;
      v28 = v10;
      v29 = v11;
      sub_1BBA8BC5C(v22, v21, &qword_1EBC7B948);
      result = sub_1BBAE35CC(&v26);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 112 * result);
      v15 = v31[0];
      v14[4] = v30;
      v14[5] = v15;
      *(v14 + 89) = *(v31 + 9);
      v16 = v27;
      *v14 = v26;
      v14[1] = v16;
      v17 = v29;
      v14[2] = v28;
      v14[3] = v17;
      *(v3[7] + 8 * result) = v8;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_11;
      }

      v3[2] = v20;
      if (!i)
      {

        return v3;
      }

      v4 += 120;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BBAC7278(uint64_t a1)
{
  v2 = sub_1BBB83658();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v83 = &v60 - v7;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v67 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9E0);
  v72 = v8;
  v10 = sub_1BBB84008();
  v11 = 0;
  v82 = v10 + 56;
  v73 = a1 + 32;
  v71 = v9;
  v64 = v10;
  v65 = (v9 + 8);
  v66 = v9 + 16;
  while (1)
  {
    v12 = (v73 + 112 * v11);
    v13 = v12[3];
    v14 = v12[5];
    v99 = v12[4];
    *v100 = v14;
    *&v100[9] = *(v12 + 89);
    v15 = v12[1];
    v16 = v12[3];
    v97 = v12[2];
    v98 = v16;
    v17 = v12[1];
    v95 = *v12;
    v96 = v17;
    v18 = v12[5];
    v93 = v99;
    v94[0] = v18;
    *(v94 + 9) = *(v12 + 89);
    v89 = v95;
    v90 = v15;
    v91 = v97;
    v92 = v13;
    sub_1BBB843D8();
    sub_1BBACB4D0(&v95, v88);
    IntelligenceImage.Representation.hash(into:)();
    result = sub_1BBB84438();
    v20 = -1 << *(v10 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = v82;
    v24 = *(v82 + 8 * (v21 >> 6));
    v25 = 1 << v21;
    if (((1 << v21) & v24) != 0)
    {
      break;
    }

LABEL_51:
    *(v23 + 8 * v22) = v24 | v25;
    v51 = (*(v10 + 48) + 112 * v21);
    v53 = v96;
    v52 = v97;
    *v51 = v95;
    v51[1] = v53;
    v51[2] = v52;
    v54 = v98;
    v55 = v99;
    v56 = *v100;
    *(v51 + 89) = *&v100[9];
    v51[4] = v55;
    v51[5] = v56;
    v51[3] = v54;
    v57 = *(v10 + 16);
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      __break(1u);
      goto LABEL_58;
    }

    *(v10 + 16) = v59;
LABEL_53:
    if (++v11 == v72)
    {
      return v10;
    }
  }

  v77 = v11;
  v26 = ~v20;
  v62 = v100[24];
  v27 = *&v100[16];
  v81 = *&v100[8];
  v28 = *(&v95 + 1);
  v87 = v96;
  v29 = BYTE8(v96);
  v85 = v97;
  v86 = BYTE8(v97);
  v79 = v98;
  v84 = BYTE8(v98);
  v74 = v99;
  v75 = *v100;
  v80 = BYTE8(v99);
  v30 = v95;
  while (1)
  {
    v31 = (*(v10 + 48) + 112 * v21);
    v33 = v31[1];
    v32 = v31[2];
    v89 = *v31;
    v90 = v33;
    v91 = v32;
    v34 = v31[3];
    v35 = v31[4];
    v36 = v31[5];
    *(v94 + 9) = *(v31 + 89);
    v93 = v35;
    v94[0] = v36;
    v92 = v34;
    if (*(&v89 + 1))
    {
      if (!v28)
      {
        goto LABEL_6;
      }

      result = v89;
      if (v89 != __PAIR128__(v28, v30))
      {
        result = sub_1BBB842F8();
        if ((result & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else if (v28)
    {
      goto LABEL_6;
    }

    if (BYTE8(v90))
    {
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v90 == v87)
      {
        v37 = v29;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        goto LABEL_6;
      }
    }

    if (BYTE8(v91))
    {
      if (!v86)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v38 = v86;
      if (v91 != v85)
      {
        v38 = 1;
      }

      if (v38)
      {
        goto LABEL_6;
      }
    }

    if (BYTE8(v92))
    {
      if (!v84)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v39 = v84;
      if (v92 != v79)
      {
        v39 = 1;
      }

      if (v39)
      {
        goto LABEL_6;
      }
    }

    if ((BYTE8(v93) & 1) == 0)
    {
      break;
    }

    if (v80)
    {
      goto LABEL_36;
    }

LABEL_6:
    v21 = (v21 + 1) & v26;
    v22 = v21 >> 6;
    v25 = 1 << v21;
    if ((*(v23 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      v24 = *(v23 + 8 * v22);
      v11 = v77;
      goto LABEL_51;
    }
  }

  v40 = v80;
  if (v93 != v74)
  {
    v40 = 1;
  }

  if (v40)
  {
    goto LABEL_6;
  }

LABEL_36:
  if (*&v94[0] != v75)
  {
    goto LABEL_6;
  }

  v76 = *(&v94[0] + 1);
  v41 = *(*(&v94[0] + 1) + 16);
  if (v41 != *(v81 + 16))
  {
    goto LABEL_6;
  }

  if (!v41 || v76 == v81)
  {
LABEL_46:
    if (*&v94[1] == v27 && ((v62 ^ BYTE8(v94[1])) & 1) == 0)
    {
      sub_1BBAC7878(&v95);
      v11 = v77;
      goto LABEL_53;
    }

    goto LABEL_6;
  }

  v63 = *(*(&v94[0] + 1) + 16);
  v60 = v30;
  v61 = v29;
  v42 = v71;
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v70 = v76 + v43;
  v69 = v81 + v43;
  result = sub_1BBACB4D0(&v89, v88);
  v44 = 0;
  while (v44 < *(v76 + 16))
  {
    v45 = *(v42 + 72) * v44;
    v46 = *(v42 + 16);
    v47 = v67;
    result = (v46)(v83, v70 + v45, v67);
    if (v44 >= *(v81 + 16))
    {
      goto LABEL_59;
    }

    v48 = v68;
    v46();
    sub_1BBACA7C8(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
    v49 = v48;
    v78 = sub_1BBB83968();
    v50 = *v65;
    (*v65)(v49, v47);
    result = v50(v83, v47);
    if ((v78 & 1) == 0)
    {
      result = sub_1BBAC7878(&v89);
      v10 = v64;
      v23 = v82;
      v29 = v61;
      v30 = v60;
      goto LABEL_6;
    }

    ++v44;
    v10 = v64;
    v42 = v71;
    v23 = v82;
    if (v63 == v44)
    {
      result = sub_1BBAC7878(&v89);
      v29 = v61;
      v30 = v60;
      goto LABEL_46;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1BBAC78EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBAC7954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBAC79BC()
{
  v1 = *(type metadata accessor for IntelligenceImageProcessor.Input(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for IntelligenceImageProcessor.Options(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BBAC3BE0(v0 + v2, v0 + v5, v6);
}

unint64_t sub_1BBAC7AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9A0);
    v3 = sub_1BBB840E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BBAE365C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BBAC7BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B960);
    v3 = sub_1BBB840E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BBAE3554(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BBAC7CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B910);
    v3 = sub_1BBB840E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BBA8BC5C(v4, &v13, &qword_1EBC7B918);
      v5 = v13;
      v6 = v14;
      result = sub_1BBAE3554(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BBACB024(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1BBAC7DEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v27 = MEMORY[0x1E69E7CC8];
  v8 = *(a4 + *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 20));
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(v8 + 48) + 112 * (__clz(__rbit64(v11)) | (v14 << 6)));
      v17 = v15[1];
      v16 = v15[2];
      v28[0] = *v15;
      v28[1] = v17;
      v28[2] = v16;
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[5];
      *(v29 + 9) = *(v15 + 89);
      v28[4] = v19;
      v29[0] = v20;
      v28[3] = v18;
      v21 = sub_1BBACB4D0(v28, v26);
      v22 = MEMORY[0x1BFB16D20](v21);
      sub_1BBAC4C78(a1, v28, v30, a2, a3, a4, &v27, v26);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v11 &= v11 - 1;
      sub_1BBAC7878(v28);
      objc_autoreleasePoolPop(v22);
      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    sub_1BBAC7878(v28);
    objc_autoreleasePoolPop(v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 56 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1BBAC7FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B970);
    v3 = sub_1BBB840E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BBA8BC5C(v4, &v11, &qword_1EBC7B878);
      v5 = v11;
      result = sub_1BBAE365C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BBACB024(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BBAC80D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9C0);
    v3 = sub_1BBB840E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_1BBAE365C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BBAC81C0(uint64_t a1, void (*a2)(_OWORD *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v68 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v12 = 0;
  v13 = v9;
  if (v9)
  {
    while (1)
    {
LABEL_9:
      v15 = __clz(__rbit64(v13)) | (v12 << 6);
      v16 = *(a1 + 56);
      v17 = (*(a1 + 48) + 112 * v15);
      v19 = v17[1];
      v18 = v17[2];
      v55[0] = *v17;
      v55[1] = v19;
      v55[2] = v18;
      v21 = v17[4];
      v20 = v17[5];
      v22 = v17[3];
      *(v56 + 9) = *(v17 + 89);
      v55[4] = v21;
      v56[0] = v20;
      v55[3] = v22;
      v23 = *(v16 + 8 * v15);
      v24 = v17[5];
      v52 = v17[4];
      *v53 = v24;
      *&v53[9] = *(v17 + 89);
      v25 = v17[1];
      v48 = *v17;
      v49 = v25;
      v26 = v17[3];
      v50 = v17[2];
      v51 = v26;
      v54 = v23;
      sub_1BBACB4D0(v55, v57);

      a2(v59, &v48);
      v57[4] = v52;
      v57[5] = *v53;
      v57[6] = *&v53[16];
      v58 = v54;
      v57[0] = v48;
      v57[1] = v49;
      v57[2] = v50;
      v57[3] = v51;
      sub_1BBA8BCC4(v57, &qword_1EBC7B9C8);
      if (!*&v60[8])
      {
LABEL_21:
        sub_1BBACB558();
      }

      v66 = v59[4];
      v67[0] = *v60;
      *(v67 + 9) = *&v60[9];
      v62 = v59[0];
      v63 = v59[1];
      v64 = v59[2];
      v65 = v59[3];
      v27 = v61;
      v28 = *v68;
      v29 = sub_1BBAE35CC(&v62);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_23;
      }

      v35 = v30;
      if (v28[3] < v34)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_15;
      }

      v47 = v29;
      sub_1BBB3FC3C();
      v29 = v47;
      if (v35)
      {
LABEL_20:
        sub_1BBB840A8();
        __break(1u);
        goto LABEL_21;
      }

LABEL_16:
      v37 = *v68;
      v37[(v29 >> 6) + 8] |= 1 << v29;
      v38 = (v37[6] + 112 * v29);
      v39 = v67[0];
      v38[4] = v66;
      v38[5] = v39;
      *(v38 + 89) = *(v67 + 9);
      v40 = v63;
      *v38 = v62;
      v38[1] = v40;
      v41 = v65;
      v38[2] = v64;
      v38[3] = v41;
      *(v37[7] + 8 * v29) = v27;
      v42 = v37[2];
      v33 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      v37[2] = v43;
      a4 = 1;
      v11 = v12;
      v13 &= v13 - 1;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_1BBB3EA88(v34, a4 & 1);
    v29 = sub_1BBAE35CC(&v62);
    if ((v35 & 1) != (v36 & 1))
    {
      goto LABEL_25;
    }

LABEL_15:
    if (v35)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_5:
  v14 = v11;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_21;
    }

    v13 = *(v6 + 8 * v12);
    ++v14;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1BBB84378();
  __break(1u);
  return result;
}

CFMutableDataRef sub_1BBAC8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v273 = a4;
  PrimaryImageIndex = a3;
  v268 = a2;
  v271 = type metadata accessor for IntelligenceImageProcessor.Options(0);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v263 = &v212 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v265 = &v212 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v267 = (&v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v212 - v14);
  v16 = sub_1BBB83658();
  v270 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v212 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v212 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v212 - v26;
  v28 = sub_1BBB833F8();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v212 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, a1, v29);
  v33 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v34 = v291;
  v35 = sub_1BBAC646C(v31, 2);
  if (v34)
  {

LABEL_3:
    sub_1BBACA810();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();
    return v18;
  }

  v261 = a1;
  v291 = v15;
  v259 = v18;
  v260 = v24;
  v258 = v21;
  v262 = v27;
  if (!v35)
  {
    goto LABEL_3;
  }

  v256 = 0;
  v257 = v16;
  v38 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  v40 = *MEMORY[0x1E696E0A8];
  *(inited + 32) = *MEMORY[0x1E696E0A8];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v41 = v40;
  sub_1BBAC7FA8(inited);
  swift_setDeallocating();
  sub_1BBA8BCC4(inited + 32, &qword_1EBC7B878);
  type metadata accessor for CFString(0);
  v43 = v42;
  v44 = sub_1BBACA7C8(&qword_1EBC7B5D8, type metadata accessor for CFString);
  v255 = v38;
  v45 = v38;
  v46 = sub_1BBB838F8();

  v47 = CGImageSourceCreateWithData(v45, v46);

  if (!v47)
  {
    sub_1BBACA810();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();
    goto LABEL_105;
  }

  v251 = v44;
  v252 = v43;
  if (PrimaryImageIndex)
  {
    v261 = PrimaryImageIndex;
  }

  else
  {
    v268 = sub_1BBB83318();
    v261 = v49;
  }

  v50 = v271;
  v51 = v270;
  v285 = MEMORY[0x1E69E7CD0];

  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v47);
  v52 = CGImageSourceCopyPropertiesAtIndex(v47, PrimaryImageIndex, 0);
  v53 = v52;
  v54 = v291;
  if (!v52)
  {
    v280 = 0u;
    v281 = 0u;
LABEL_19:
    sub_1BBA8BCC4(&v280, &qword_1EBC7C230);
    goto LABEL_20;
  }

  if ([(__CFDictionary *)v52 __swift_objectForKeyedSubscript:*MEMORY[0x1E696DE78]])
  {
    sub_1BBB83F08();
    v54 = v291;
    swift_unknownObjectRelease();
  }

  else
  {
    v274 = 0u;
    v275 = 0u;
  }

  v280 = v274;
  v281 = v275;
  if (!*(&v275 + 1))
  {
    goto LABEL_19;
  }

  sub_1BBAB0F08(0, &qword_1EBC7AB60);
  if (swift_dynamicCast())
  {
    v55 = v274;
    v254 = [v274 unsignedIntValue];

    v54 = v291;
    goto LABEL_21;
  }

LABEL_20:
  v254 = 1;
LABEL_21:
  v56 = CGImageSourceGetType(v47);
  if (!v56)
  {
LABEL_97:

    sub_1BBAC6164(v189);
    v18 = MEMORY[0x1E69E7CC8];
LABEL_98:
    v190 = v285;
    v191 = v269;
    if (!*(v285 + 16))
    {

      return v18;
    }

    v253 = v53;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v47, PrimaryImageIndex, 0);
    if (ImageAtIndex)
    {
      v193 = ImageAtIndex;
      sub_1BBAC78EC(v273, v191, type metadata accessor for IntelligenceImageProcessor.Options);
      v194 = *(v50 + 20);

      *(v191 + v194) = v190;
      v195 = v256;
      sub_1BBAC7DEC(v193, v268, v261, v191, v254);
      if (v195)
      {

        sub_1BBACA760(v191, type metadata accessor for IntelligenceImageProcessor.Options);
      }

      else
      {
        v198 = v196;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v280 = v18;
        sub_1BBAC81C0(v198, sub_1BBAC65C0, 0, isUniquelyReferenced_nonNull_native, &v280);

        v18 = v280;
        sub_1BBACA760(v191, type metadata accessor for IntelligenceImageProcessor.Options);
      }

      return v18;
    }

    sub_1BBACA810();
    swift_allocError();
    *v197 = 3;
    swift_willThrow();

LABEL_105:
    return v18;
  }

  v57 = v56;
  v58 = v53;
  sub_1BBB83A18();
  sub_1BBB83668();
  v59 = v54;
  v60 = v54;
  v61 = v257;
  if ((*(v51 + 48))(v59, 1, v257) == 1)
  {

    sub_1BBA8BCC4(v60, &qword_1EBC7B858);
    v53 = v58;
    goto LABEL_97;
  }

  v62 = v262;
  (*(v51 + 32))(v262, v60, v61);
  v53 = v58;
  if (!v58)
  {

    (*(v51 + 8))(v62, v61);
LABEL_96:
    v50 = v271;
    goto LABEL_97;
  }

  v63 = v51;
  v291 = v57;
  v64 = *MEMORY[0x1E696D888];
  v65 = v53;
  if ([(__CFDictionary *)v65 __swift_objectForKeyedSubscript:v64])
  {
    sub_1BBB83F08();
    swift_unknownObjectRelease();
  }

  else
  {
    v274 = 0u;
    v275 = 0u;
  }

  v66 = v262;
  v280 = v274;
  v281 = v275;
  if (!*(&v275 + 1))
  {

    sub_1BBA8BCC4(&v280, &qword_1EBC7C230);
LABEL_35:
    (*(v63 + 8))(v66, v257);
    goto LABEL_96;
  }

  sub_1BBAB0F08(0, &qword_1EBC7AB60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_35;
  }

  v249 = v47;
  v250 = v45;
  v67 = v284;
  v244 = [v284 integerValue];

  if ([(__CFDictionary *)v65 __swift_objectForKeyedSubscript:*MEMORY[0x1E696D880]])
  {
    sub_1BBB83F08();
    swift_unknownObjectRelease();
  }

  else
  {
    v274 = 0u;
    v275 = 0u;
  }

  v280 = v274;
  v281 = v275;
  v45 = v250;
  if (!*(&v275 + 1))
  {
    goto LABEL_93;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_94;
  }

  v68 = v284;
  v243 = [v284 integerValue];

  if ([(__CFDictionary *)v65 __swift_objectForKeyedSubscript:*MEMORY[0x1E696DED8]])
  {
    sub_1BBB83F08();
    swift_unknownObjectRelease();
  }

  else
  {
    v274 = 0u;
    v275 = 0u;
  }

  v280 = v274;
  v281 = v275;
  v45 = v250;
  if (!*(&v275 + 1))
  {
    goto LABEL_93;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_94:

    goto LABEL_95;
  }

  v69 = v284;
  v235 = [v284 integerValue];

  if ([(__CFDictionary *)v65 __swift_objectForKeyedSubscript:*MEMORY[0x1E696DEC8]])
  {
    sub_1BBB83F08();
    swift_unknownObjectRelease();
  }

  else
  {
    v274 = 0u;
    v275 = 0u;
  }

  v280 = v274;
  v281 = v275;
  v45 = v250;
  if (!*(&v275 + 1))
  {
LABEL_93:

    sub_1BBA8BCC4(&v280, &qword_1EBC7C230);
LABEL_95:
    (*(v63 + 8))(v66, v257);
    v47 = v249;
    goto LABEL_96;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_94;
  }

  v70 = v284;
  v232 = [v284 integerValue];

  v71 = *(v273 + *(v271 + 20));
  v72 = v71 + 56;
  v73 = 1 << *(v71 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v71 + 56);
  v76 = (v73 + 63) >> 6;
  v245 = v63 + 16;
  v247 = (v63 + 8);
  v231 = (v63 + 56);
  v230 = *MEMORY[0x1E696D9B0];
  v229 = *MEMORY[0x1E695E738];
  v228 = *MEMORY[0x1E696DD90];
  v227 = *MEMORY[0x1E696DBF0];
  v226 = *MEMORY[0x1E696DF28];
  v238 = v71;

  v77 = 0;
  v233 = 0;
  v234 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v225 = xmmword_1BBB85CF0;
  v47 = v249;
  v236 = v76;
  v237 = v72;
  v246 = v65;
  if (v75)
  {
LABEL_52:
    v242 = v18;
    goto LABEL_57;
  }

  do
  {
LABEL_53:
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
LABEL_109:
      __break(1u);
LABEL_110:

      sub_1BBACA810();
      swift_allocError();
      *v200 = 7;
      swift_willThrow();
      sub_1BBAC7878(&v286);

      v201 = v233;
      goto LABEL_118;
    }

    if (v78 >= v76)
    {

      (*v247)(v66, v257);
      v50 = v271;
      v45 = v250;
      goto LABEL_98;
    }

    v75 = *(v72 + 8 * v78);
    ++v77;
  }

  while (!v75);
  v242 = v18;
  v77 = v78;
LABEL_57:
  v241 = (v75 - 1) & v75;
  v239 = v77;
  v79 = (*(v238 + 48) + 112 * (__clz(__rbit64(v75)) | (v77 << 6)));
  v81 = v79[1];
  v80 = v79[2];
  v286 = *v79;
  v287 = v81;
  v288 = v80;
  v82 = v79[3];
  v83 = v79[4];
  v84 = v79[5];
  *&v290[9] = *(v79 + 89);
  *&v289[16] = v83;
  *v290 = v84;
  *v289 = v82;
  v85 = sub_1BBACB4D0(&v286, &v280);
  v240 = MEMORY[0x1BFB16D20](v85);
  v86 = 0;
  v18 = *&v290[8];
  v248 = *(*&v290[8] + 16);
  while (2)
  {
    if (v248 == v86)
    {
      v18 = v242;
LABEL_68:
      v75 = v241;
LABEL_69:
      sub_1BBAF68E4(&v274, &v286);
      v282[2] = v278;
      v283[0] = v279[0];
      *(v283 + 9) = *(v279 + 9);
      v280 = v274;
      v281 = v275;
      v282[0] = v276;
      v282[1] = v277;
      sub_1BBAC7878(&v280);
      v47 = v249;
      v66 = v262;
      goto LABEL_70;
    }

    v47 = v257;
    v87 = v260;
    if (v86 >= *(v18 + 2))
    {
      __break(1u);
      goto LABEL_109;
    }

    v88 = v270;
    v89 = *(v270 + 16);
    v89(v260, v18 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v270 + 72) * v86, v257);
    v86 = (v86 + 1);
    v90 = sub_1BBB83648();
    v91 = v47;
    v47 = *(v88 + 8);
    (v47)(v87, v91);
    v65 = v246;
    if ((v90 & 1) == 0)
    {
      continue;
    }

    break;
  }

  v18 = v242;
  if (*v290 != v244)
  {
    goto LABEL_68;
  }

  v92 = v89;
  v75 = v241;
  if (*v290 != v243)
  {
    goto LABEL_69;
  }

  v280 = v287;
  v281 = v288;
  v282[0] = *v289;
  *(v282 + 9) = *&v289[9];
  sub_1BBAC5F20(v235, v232, v254);
  if ((v93 & 1) == 0)
  {
    goto LABEL_69;
  }

  v253 = v53;
  if ((v290[24] & 1) == 0)
  {
    if (v234)
    {
      v94 = v234;
    }

    else
    {
      v234 = sub_1BBB83468();
      v248 = v112;
      v92(v259, v262, v257);
      v113 = v273 + *(v271 + 28);
      if (*(v113 + 33))
      {
        LODWORD(v223) = *(v113 + 32);
        v224 = type metadata accessor for IntelligenceFile(0);
        v114 = *v113;
        v221 = *(v113 + 16);
        v222 = v114;
        v115 = v267;
        v116 = v257;
        v92(v267, v259, v257);
        *&v218 = *v231;
        (v218)(v115, 0, 1, v116);
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
        v220 = &v212;
        v118 = *(*(v117 - 8) + 64);
        MEMORY[0x1EEE9AC00](v117 - 8);
        v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
        v217 = (&v212 - v119);
        v120 = sub_1BBB83498();
        v121 = *(v120 - 8);
        v122 = *(v121 + 56);
        v18 = (v121 + 56);
        v123 = (v122)(&v212 - v119, 1, 1, v120);
        *&v219 = &v212;
        v124 = MEMORY[0x1EEE9AC00](v123);
        v216 = (&v212 - v119);
        v122(v124);
        v125 = v264;
        (v218)(v264, 1, 1, v257);
        v126 = v266;
        v127 = *(v266 + 24);
        v128 = v125 + *(v266 + 20);
        (v122)(v125 + v127, 1, 1, v120);
        v129 = *(v126 + 28);
        (v122)(v125 + v129, 1, 1, v120);
        sub_1BBAA6910(v267, v125, &qword_1EBC7B858);
        *v128 = 0;
        *(v128 + 8) = 1;
        sub_1BBAA6910(v217, v125 + v127, &qword_1EBC7B860);
        sub_1BBAA6910(v216, v125 + v129, &qword_1EBC7B860);
        v280 = v222;
        v281 = v221;
        LOBYTE(v282[0]) = v223;
        v130 = v261;

        v131 = v130;
        v132 = v256;
        v133 = IntelligenceFile.__allocating_init(writingDataToTemporaryFile:name:attributes:sandboxExtensionType:)(v234, v248, v268, v131, v125, &v280);
        v256 = v132;
        if (!v132)
        {
          goto LABEL_84;
        }

        (v47)(v259, v257);

        if (qword_1ED6BDEB8 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_121;
      }

      v134 = v267;
      v135 = v257;
      v92(v267, v259, v257);
      *&v222 = *v231;
      (v222)(v134, 0, 1, v135);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
      v224 = &v212;
      v137 = *(*(v136 - 8) + 64);
      MEMORY[0x1EEE9AC00](v136 - 8);
      v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
      v220 = (&v212 - v138);
      v139 = sub_1BBB83498();
      v140 = *(*(v139 - 8) + 56);
      v141 = (v140)(&v212 - v138, 1, 1, v139);
      v223 = &v212;
      v142 = MEMORY[0x1EEE9AC00](v141);
      *&v221 = &v212 - v138;
      v140(v142);
      v143 = v265;
      (v222)(v265, 1, 1, v257);
      v144 = v266;
      v145 = *(v266 + 24);
      v146 = v143 + *(v266 + 20);
      (v140)(v143 + v145, 1, 1, v139);
      v147 = *(v144 + 28);
      (v140)(v143 + v147, 1, 1, v139);
      sub_1BBAA6910(v267, v143, &qword_1EBC7B858);
      *v146 = 0;
      *(v146 + 8) = 1;
      sub_1BBAA6910(v220, v143 + v145, &qword_1EBC7B860);
      sub_1BBAA6910(v221, v143 + v147, &qword_1EBC7B860);
      type metadata accessor for IntelligenceFile(0);
      swift_allocObject();
      v148 = v261;

      v133 = IntelligenceFile.init(data:name:attributes:)(v234, v248, v268, v148, v143);
LABEL_84:
      v94 = v133;
      (v47)(v259, v257);
      v234 = v94;
    }

LABEL_92:
    v53 = v253;
    swift_retain_n();
    v187 = v242;
    v188 = swift_isUniquelyReferenced_nonNull_native();
    *&v280 = v187;
    sub_1BBB4075C(v94, &v286, v188);
    sub_1BBAC7878(&v286);

    v18 = v280;
    v47 = v249;
    v66 = v262;
    v65 = v246;
    v75 = v241;
LABEL_70:
    objc_autoreleasePoolPop(v240);
    v76 = v236;
    v72 = v237;
    v77 = v239;
    if (!v75)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (v233)
  {
    v94 = v233;
    goto LABEL_92;
  }

  v224 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9A8);
  v95 = swift_allocObject();
  *(v95 + 16) = v225;
  v96 = v229;
  v97 = v230;
  *(v95 + 32) = v230;
  v99 = v227;
  v98 = v228;
  *(v95 + 40) = v96;
  *(v95 + 48) = v98;
  *(v95 + 56) = v96;
  *(v95 + 64) = v99;
  v100 = v226;
  *(v95 + 72) = v96;
  *(v95 + 80) = v100;
  *(v95 + 88) = v96;
  v101 = v96;
  v102 = v97;
  v103 = v98;
  v104 = v99;
  v105 = v100;
  sub_1BBAC80D0(v95);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9B8);
  v233 = sub_1BBB838F8();

  Count = CGImageSourceGetCount(v249);
  v18 = v224;
  v248 = CGImageDestinationCreateWithData(v224, v291, Count, 0);
  if (!v248)
  {
    goto LABEL_110;
  }

  if ((Count & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_121:
    swift_once();
LABEL_113:
    v203 = sub_1BBB83758();
    v204 = __swift_project_value_buffer(v203, qword_1ED6BDEC0);
    MEMORY[0x1EEE9AC00](v204);
    v205 = v256;
    *(&v212 - 2) = v256;
    Logger.error(public:error:)(sub_1BBAC6148, 0, sub_1BBACB5F8);
    sub_1BBACA810();
    swift_allocError();
    *v206 = 4;
    swift_willThrow();
    sub_1BBAC7878(&v286);

    v234 = 0;
    goto LABEL_119;
  }

  if (Count)
  {
    v107 = 0;
    v108 = v248;
    v109 = v249;
    v110 = v233;
    do
    {
      v111 = v107 + 1;
      CGImageDestinationAddImageFromSource(v108, v109, v107, v110);
      v107 = v111;
    }

    while (Count != v111);
  }

  else
  {
    v108 = v248;
  }

  if (!CGImageDestinationFinalize(v108))
  {

    sub_1BBACA810();
    swift_allocError();
    *v202 = 8;
    swift_willThrow();
    sub_1BBAC7878(&v286);

    goto LABEL_117;
  }

  v149 = v18;
  *&v222 = sub_1BBB83468();
  v223 = v150;
  v224 = v149;

  v92(v258, v262, v257);
  v151 = v273 + *(v271 + 28);
  if ((*(v151 + 33) & 1) == 0)
  {
    v172 = v267;
    v173 = v257;
    v92(v267, v258, v257);
    *&v219 = *v231;
    (v219)(v172, 0, 1, v173);
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    *&v221 = &v212;
    v175 = *(*(v174 - 8) + 64);
    MEMORY[0x1EEE9AC00](v174 - 8);
    v176 = (v175 + 15) & 0xFFFFFFFFFFFFFFF0;
    v217 = (&v212 - v176);
    v177 = sub_1BBB83498();
    v178 = *(*(v177 - 8) + 56);
    v179 = (v178)(&v212 - v176, 1, 1, v177);
    v220 = &v212;
    v180 = MEMORY[0x1EEE9AC00](v179);
    *&v218 = &v212 - v176;
    v178(v180);
    v181 = v265;
    (v219)(v265, 1, 1, v257);
    v182 = v266;
    v183 = *(v266 + 24);
    v184 = v181 + *(v266 + 20);
    (v178)(v181 + v183, 1, 1, v177);
    v185 = *(v182 + 28);
    (v178)(v181 + v185, 1, 1, v177);
    sub_1BBAA6910(v267, v181, &qword_1EBC7B858);
    *v184 = 0;
    *(v184 + 8) = 1;
    sub_1BBAA6910(v217, v181 + v183, &qword_1EBC7B860);
    sub_1BBAA6910(v218, v181 + v185, &qword_1EBC7B860);
    type metadata accessor for IntelligenceFile(0);
    swift_allocObject();
    v186 = v261;

    v94 = IntelligenceFile.init(data:name:attributes:)(v222, v223, v268, v186, v181);

    (v47)(v258, v257);
LABEL_91:
    v233 = v94;
    goto LABEL_92;
  }

  LODWORD(v220) = *(v151 + 32);
  *&v221 = type metadata accessor for IntelligenceFile(0);
  v152 = *v151;
  v218 = *(v151 + 16);
  v219 = v152;
  v153 = v267;
  v154 = v257;
  v92(v267, v258, v257);
  v215 = *v231;
  v215(v153, 0, 1, v154);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
  v217 = &v212;
  v156 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155 - 8);
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v214 = &v212 - v157;
  v158 = sub_1BBB83498();
  v159 = *(v158 - 8);
  v160 = *(v159 + 56);
  v18 = (v159 + 56);
  v161 = (v160)(&v212 - v157, 1, 1, v158);
  v216 = &v212;
  v162 = MEMORY[0x1EEE9AC00](v161);
  v213 = &v212 - v157;
  v160(v162);
  v163 = v263;
  v215(v263, 1, 1, v257);
  v164 = v266;
  v165 = *(v266 + 24);
  v166 = v163 + *(v266 + 20);
  (v160)(v163 + v165, 1, 1, v158);
  v167 = *(v164 + 28);
  (v160)(v163 + v167, 1, 1, v158);
  sub_1BBAA6910(v267, v163, &qword_1EBC7B858);
  *v166 = 0;
  *(v166 + 8) = 1;
  sub_1BBAA6910(v214, v163 + v165, &qword_1EBC7B860);
  sub_1BBAA6910(v213, v163 + v167, &qword_1EBC7B860);
  v280 = v219;
  v281 = v218;
  LOBYTE(v282[0]) = v220;
  v168 = v261;

  v169 = v168;
  v170 = v256;
  v171 = IntelligenceFile.__allocating_init(writingDataToTemporaryFile:name:attributes:sandboxExtensionType:)(v222, v223, v268, v169, v163, &v280);
  v256 = v170;
  if (!v170)
  {
    v94 = v171;
    (v47)(v258, v257);

    goto LABEL_91;
  }

  (v47)(v258, v257);

  if (qword_1ED6BDEB8 != -1)
  {
    swift_once();
  }

  v207 = sub_1BBB83758();
  v208 = __swift_project_value_buffer(v207, qword_1ED6BDEC0);
  MEMORY[0x1EEE9AC00](v208);
  v209 = v256;
  *(&v212 - 2) = v256;
  Logger.error(public:error:)(sub_1BBAC612C, 0, sub_1BBACB5F8);
  sub_1BBACA810();
  swift_allocError();
  *v210 = 4;
  swift_willThrow();
  sub_1BBAC7878(&v286);

LABEL_117:
  v201 = v248;
LABEL_118:

  v233 = 0;
LABEL_119:
  objc_autoreleasePoolPop(v240);

  v211 = v246;

  (v47)(v262, v257);

  return v18;
}

uint64_t sub_1BBACA478(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBAC78EC(a1, v7, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = *(v7 + 2);
      v12 = CGImageCreateFromIOSurface();
      if (v12)
      {
        v13 = v12;
        sub_1BBAC7DEC(v12, v10, v11, a2, 1);
        if (v2)
        {
        }

        else
        {
          a2 = v14;
        }
      }

      else
      {

        sub_1BBACA810();
        swift_allocError();
        *v26 = 1;
        swift_willThrow();
      }
    }

    else
    {
      v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B840) + 48)];
      v19 = *v17;
      v18 = v17[1];
      v20 = sub_1BBB833F8();
      v21 = *(v20 - 8);
      v22 = MEMORY[0x1EEE9AC00](v20);
      v24 = v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 32))(v24, v7, v20, v22);
      v25 = sub_1BBAC8538(v24, v19, v18, a2);
      if (!v2)
      {
        a2 = v25;
      }

      (*(v21 + 8))(v24, v20);
    }
  }

  else
  {
    v15 = *v7;
    sub_1BBAC7DEC(*v7, *(v7 + 1), *(v7 + 2), a2, 1);
    a2 = v16;
  }

  return a2;
}

uint64_t sub_1BBACA760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBACA7C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BBACA810()
{
  result = qword_1EBC7B880;
  if (!qword_1EBC7B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B880);
  }

  return result;
}

unint64_t sub_1BBACA8B0()
{
  result = qword_1EBC7B890;
  if (!qword_1EBC7B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B890);
  }

  return result;
}

unint64_t sub_1BBACA908()
{
  result = qword_1EBC7B898;
  if (!qword_1EBC7B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B898);
  }

  return result;
}

uint64_t sub_1BBACA994()
{
  result = type metadata accessor for IntelligenceImageProcessor.Input.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BBACAA28()
{
  sub_1BBACAACC();
  if (v0 <= 0x3F)
  {
    sub_1BBACAB24();
    if (v1 <= 0x3F)
    {
      sub_1BBB83848();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBACAACC()
{
  if (!qword_1EBC7B8C0)
  {
    type metadata accessor for IntelligenceFile.Attributes(255);
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7B8C0);
    }
  }
}

void sub_1BBACAB24()
{
  if (!qword_1EBC7B8C8)
  {
    sub_1BBACAB80();
    v0 = sub_1BBB83CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7B8C8);
    }
  }
}

unint64_t sub_1BBACAB80()
{
  result = qword_1EBC7B8D0;
  if (!qword_1EBC7B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B8D0);
  }

  return result;
}

__n128 __swift_memcpy34_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BBACABE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BBACAC2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceImageProcessor.ImageProcessingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceImageProcessor.ImageProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BBACAE34()
{
  sub_1BBACAEF4(319, &qword_1EBC7B8E8, type metadata accessor for CGImage);
  if (v0 <= 0x3F)
  {
    sub_1BBACAEF4(319, &qword_1EBC7B8F0, type metadata accessor for IOSurfaceRef);
    if (v1 <= 0x3F)
    {
      sub_1BBACAF5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BBACAEF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BBACAF5C()
{
  if (!qword_1EBC7B8F8)
  {
    sub_1BBB833F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B900);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBC7B8F8);
    }
  }
}

_OWORD *sub_1BBACB024(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1BBACB034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B938);
  v3 = sub_1BBB840E8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = sub_1BBA98B58(v4 | (v5 << 32));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = 8 * v9;
    v13 = (v3[6] + v12);
    *v13 = v4;
    v13[1] = v5;
    *(v3[7] + v12) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v11 + 2;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v18 = *v11;

    v9 = sub_1BBA98B58(v4 | (v5 << 32));
    v11 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BBACB158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B928);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B930);
    v7 = sub_1BBB840E8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BBA8BC5C(v9, v5, &qword_1EBC7B928);
      result = sub_1BBAE3710(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for IntelligenceDataSourceItem();
      result = sub_1BBAC7954(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for IntelligenceDataSourceItem);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 16) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BBACB350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B920);
    v3 = sub_1BBB840E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BBAE3554(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BBACB454(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B978);

  return sub_1BBAC4A84(a1);
}

void *sub_1BBACB52C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1BBACB560()
{
  v1 = *(v0 + 16);
  sub_1BBACA810();
  result = swift_allocError();
  *v3 = v1;
  return result;
}

unint64_t sub_1BBACB5A0()
{
  result = qword_1EBC7B9F0;
  if (!qword_1EBC7B9F0)
  {
    sub_1BBB833F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B9F0);
  }

  return result;
}

uint64_t sub_1BBACB658()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();
  return sub_1BBB84438();
}

uint64_t sub_1BBACB6CC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();
  return sub_1BBB84438();
}

uint64_t sub_1BBACB720@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BBB84108();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1BBACB7B0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BBB84108();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1BBACB808(uint64_t a1)
{
  v2 = sub_1BBACB9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACB844(uint64_t a1)
{
  v2 = sub_1BBACB9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.CustomAppEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBACB9C0();
  sub_1BBB84478();
  if (v7 == 1)
  {
    sub_1BBB84258();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBACB9C0()
{
  result = qword_1EBC7AFB0;
  if (!qword_1EBC7AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFB0);
  }

  return result;
}

uint64_t IntelligenceElement.CustomAppEntity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBACB9C0();
  sub_1BBB84458();
  if (!v2)
  {
    v9 = sub_1BBB84148();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t IntelligenceElement.CustomAppEntity.description.getter()
{
  if (*v0 == 1)
  {
    v1 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1BBA86A94((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0xD000000000000010;
    *(v4 + 5) = 0x80000001BBB9B1F0;
  }

  sub_1BBB84028();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v5 = sub_1BBB83938();
  v7 = v6;

  MEMORY[0x1BFB16150](v5, v7);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t _s15CustomAppEntityVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1BBACBDC4()
{
  result = qword_1EBC7BA20;
  if (!qword_1EBC7BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA20);
  }

  return result;
}

unint64_t sub_1BBACBE1C()
{
  result = qword_1EBC7AFB8;
  if (!qword_1EBC7AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFB8);
  }

  return result;
}

unint64_t sub_1BBACBE74()
{
  result = qword_1EBC7AFC0;
  if (!qword_1EBC7AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFC0);
  }

  return result;
}

uint64_t IntelligenceElement.RemoteProcess.processInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a1 = v3[1];
  a1[1] = v7;
  a1[2] = v3[3];
  a1[3] = v6;
  return sub_1BBACBF34(v10, v9);
}

uint64_t IntelligenceElement.RemoteProcess.processInfo.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v33 = *(v3 + 80);
  v32[2] = v5;
  v32[3] = v6;
  v32[1] = v4;
  v7 = *(v3 + 32);
  v32[0] = *(v3 + 16);
  v31 = v33;
  v9 = *(v3 + 48);
  v8 = *(v3 + 64);
  v10 = *(v3 + 16);
  v28 = v7;
  v29 = v9;
  v30 = v8;
  v27 = v10;
  v11 = *(v3 + 64);
  v34[2] = *(v3 + 48);
  v34[3] = v11;
  v34[0] = v10;
  v34[1] = v7;
  sub_1BBACC100(v32, v25);
  sub_1BBACC138(v34);
  v12 = a1[1];
  v27 = *a1;
  v13 = a1[2];
  v14 = a1[3];
  v28 = v12;
  v29 = v13;
  v30 = v14;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v15 = *v1;
    swift_beginAccess();
    v16 = *(v15 + 32);
    v17 = *(v15 + 48);
    v18 = *(v15 + 64);
    v26 = *(v15 + 80);
    v25[2] = v17;
    v25[3] = v18;
    v25[1] = v16;
    v25[0] = *(v15 + 16);
    *(v15 + 80) = v31;
    v19 = v30;
    v20 = v28;
    *(v15 + 48) = v29;
    *(v15 + 64) = v19;
    *(v15 + 16) = v27;
    *(v15 + 32) = v20;
    return sub_1BBACC18C(v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA28);
    v22 = swift_allocObject();
    v23 = v28;
    v24 = v30;
    *(v22 + 48) = v29;
    *(v22 + 64) = v24;
    *(v22 + 80) = v31;
    *(v22 + 16) = v27;
    *(v22 + 32) = v23;

    *v1 = v22;
  }

  return result;
}

void (*IntelligenceElement.RemoteProcess.processInfo.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[4];
  v4[2] = v5[3];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[4];
  v4[6] = v5[3];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  sub_1BBACBF34(v4, (v4 + 8));
  return sub_1BBACC270;
}

void sub_1BBACC270(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v2[12] = v2[4];
    v2[13] = v3;
    v4 = v2[7];
    v6 = v2[4];
    v5 = v2[5];
    v2[14] = v2[6];
    v2[15] = v4;
    v11 = v6;
    v12 = v5;
    v7 = v2[7];
    v13 = v2[6];
    v14 = v7;
    sub_1BBACBF34((v2 + 12), (v2 + 16));
    IntelligenceElement.RemoteProcess.processInfo.setter(&v11);
    v8 = v2[5];
    v2[8] = v2[4];
    v2[9] = v8;
    v9 = v2[7];
    v2[10] = v2[6];
    v2[11] = v9;
    sub_1BBACC138((v2 + 8));
  }

  else
  {
    v11 = v2[4];
    v12 = v3;
    v10 = v2[7];
    v13 = v2[6];
    v14 = v10;
    IntelligenceElement.RemoteProcess.processInfo.setter(&v11);
  }

  free(v2);
}

uint64_t IntelligenceElement.RemoteProcess.remoteContext.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  *a1 = *(v3 + 80);
}

uint64_t IntelligenceElement.RemoteProcess.remoteContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 64);
  v19[2] = *(v3 + 48);
  v19[3] = v5;
  v20 = *(v3 + 80);
  v19[1] = v4;
  v6 = *(v3 + 32);
  v19[0] = *(v3 + 16);
  v21 = *(v3 + 16);
  v22 = v6;
  v7 = *(v3 + 64);
  v23 = *(v3 + 48);
  v24 = v7;
  sub_1BBACC100(v19, v17);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *v1;
    swift_beginAccess();
    v9 = *(v8 + 48);
    v17[1] = *(v8 + 32);
    v17[2] = v9;
    v10 = *(v8 + 64);
    v18 = *(v8 + 80);
    v17[3] = v10;
    v17[0] = *(v8 + 16);
    v11 = v24;
    *(v8 + 48) = v23;
    *(v8 + 64) = v11;
    v12 = v22;
    *(v8 + 16) = v21;
    *(v8 + 32) = v12;
    *(v8 + 80) = v2;
    return sub_1BBACC18C(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA28);
    v14 = swift_allocObject();
    v15 = v22;
    *(v14 + 16) = v21;
    *(v14 + 32) = v15;
    v16 = v24;
    *(v14 + 48) = v23;
    *(v14 + 64) = v16;
    *(v14 + 80) = v2;

    *v1 = v14;
  }

  return result;
}

void (*IntelligenceElement.RemoteProcess.remoteContext.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 80);

  return sub_1BBACC540;
}

void sub_1BBACC540(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    IntelligenceElement.RemoteProcess.remoteContext.setter(&v3);
  }

  else
  {
    IntelligenceElement.RemoteProcess.remoteContext.setter(&v3);
  }

  free(v2);
}

__n128 IntelligenceElement.RemoteProcess.init(processInfo:remoteContext:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA28);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v6 + 48) = result;
  *(v6 + 64) = v9;
  *(v6 + 80) = v5;
  *a3 = v6;
  return result;
}

uint64_t sub_1BBACC62C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4365746F6D6572;
  }

  else
  {
    v3 = 0x49737365636F7270;
  }

  if (v2)
  {
    v4 = 0xEB000000006F666ELL;
  }

  else
  {
    v4 = 0xED0000747865746ELL;
  }

  if (*a2)
  {
    v5 = 0x6F4365746F6D6572;
  }

  else
  {
    v5 = 0x49737365636F7270;
  }

  if (*a2)
  {
    v6 = 0xED0000747865746ELL;
  }

  else
  {
    v6 = 0xEB000000006F666ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBACC6E8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBACC780()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBACC804()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBACC898@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BBACC8F8(uint64_t *a1@<X8>)
{
  v2 = 0x49737365636F7270;
  if (*v1)
  {
    v2 = 0x6F4365746F6D6572;
  }

  v3 = 0xEB000000006F666ELL;
  if (*v1)
  {
    v3 = 0xED0000747865746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BBACC94C()
{
  if (*v0)
  {
    return 0x6F4365746F6D6572;
  }

  else
  {
    return 0x49737365636F7270;
  }
}

uint64_t sub_1BBACC99C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BBACCA00(uint64_t a1)
{
  v2 = sub_1BBACD270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACCA3C(uint64_t a1)
{
  v2 = sub_1BBACD270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.RemoteProcess.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA30);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5];
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBACD270();
  sub_1BBB84478();
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 32);
  v10 = *(v7 + 64);
  v21 = *(v7 + 48);
  v22 = v10;
  v20[0] = v8;
  v20[1] = v9;
  v16 = v8;
  v17 = v9;
  v18 = v21;
  v19 = v10;
  v15 = 0;
  sub_1BBACBF34(v20, v14);
  sub_1BBACD2C4();
  sub_1BBB84288();
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  sub_1BBACC138(v14);
  if (!v2)
  {
    v13 = *(v7 + 80);
    v12[7] = 1;
    sub_1BBACD318();

    sub_1BBB84288();
  }

  return (*(v23 + 8))(v6, v4);
}

uint64_t IntelligenceElement.RemoteProcess.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBACD270();
  sub_1BBB84458();
  if (!v2)
  {
    v24 = 0;
    sub_1BBAA6A9C();
    sub_1BBB841B8();
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v23 = 1;
    sub_1BBACD36C();
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v9 = v14[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA28);
    v10 = swift_allocObject();
    v11 = v16;
    *(v10 + 16) = v15;
    *(v10 + 32) = v11;
    v12 = v18;
    *(v10 + 48) = v17;
    *(v10 + 64) = v12;
    *(v10 + 80) = v9;
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntelligenceElement.RemoteProcess.description.getter()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  *&v12[0] = 0;
  *(&v12[0] + 1) = 0xE000000000000000;
  sub_1BBB84028();

  strcpy(v13, "RemoteProcess(");
  HIBYTE(v13[1]) = -18;
  swift_beginAccess();
  v5 = *(v4 + 32);
  v12[0] = *(v4 + 16);
  v12[1] = v5;
  v6 = *(v4 + 64);
  v12[2] = *(v4 + 48);
  v12[3] = v6;
  v7 = IntelligenceProcessInfo.description.getter();
  MEMORY[0x1BFB16150](v7);

  MEMORY[0x1BFB16150](8236, 0xE200000000000000);
  v8 = *(v4 + 80) + *(**(v4 + 80) + 88);
  swift_beginAccess();
  v9 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBACD3C0(v8 + *(v9 + 20), v3);
  v10 = IntelligenceFragment.RemoteID.description.getter();
  MEMORY[0x1BFB16150](v10);

  sub_1BBACD424(v3);
  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v13[0];
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV13RemoteProcessV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  v12 = *(v10 + 52);
  v13 = *(v10 + 56);
  swift_beginAccess();
  if (v12 == *(v11 + 52) && v13 == *(v11 + 56))
  {
    v16 = *(v11 + 80);
    v17 = *(v10 + 80) + *(**(v10 + 80) + 88);
    swift_beginAccess();
    v18 = _s13RemoteContextV7StorageVMa(0);
    sub_1BBACD3C0(v17 + *(v18 + 20), v9);
    v19 = v16 + *(*v16 + 88);
    swift_beginAccess();
    sub_1BBACD3C0(v19 + *(v18 + 20), v7);

    v15 = sub_1BBB834C8();
    sub_1BBACD424(v7);
    sub_1BBACD424(v9);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_1BBACD270()
{
  result = qword_1EBC7BA38;
  if (!qword_1EBC7BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA38);
  }

  return result;
}

unint64_t sub_1BBACD2C4()
{
  result = qword_1ED6BDFF0;
  if (!qword_1ED6BDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDFF0);
  }

  return result;
}

unint64_t sub_1BBACD318()
{
  result = qword_1ED6BDB10;
  if (!qword_1ED6BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB10);
  }

  return result;
}

unint64_t sub_1BBACD36C()
{
  result = qword_1EBC7B070;
  if (!qword_1EBC7B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B070);
  }

  return result;
}

uint64_t sub_1BBACD3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBACD424(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BBACD4C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BBACD50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BBACD570()
{
  result = qword_1EBC7BA48;
  if (!qword_1EBC7BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA48);
  }

  return result;
}

unint64_t sub_1BBACD5C8()
{
  result = qword_1EBC7BA50;
  if (!qword_1EBC7BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA50);
  }

  return result;
}

unint64_t sub_1BBACD620()
{
  result = qword_1EBC7BA58;
  if (!qword_1EBC7BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA58);
  }

  return result;
}

uint64_t static IntelligenceCollectionListener.shared.getter()
{
  if (qword_1ED6BF250 != -1)
  {
    swift_once();
  }
}

BOOL IntelligenceCollectionListener.shouldCollect.getter()
{
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ED6BF200 + 2);
  os_unfair_lock_lock((v0 + 32));
  v1 = *(v0 + 24) != 0;
  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

void sub_1BBACD748(BOOL *a1@<X8>)
{
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v2 = *(off_1ED6BF200 + 2);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 24) != 0;
  os_unfair_lock_unlock((v2 + 32));
  *a1 = v3;
}

void (*IntelligenceCollectionListener.shouldCollect.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v3 = off_1ED6BF200;
  *(a1 + 8) = off_1ED6BF200;
  v4 = v3[2];
  os_unfair_lock_lock((v4 + 32));
  v5 = *(v4 + 24) != 0;
  os_unfair_lock_unlock((v4 + 32));
  *(a1 + 16) = v5;
  return sub_1BBACD878;
}

void sub_1BBACD878(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 8) + 16);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 24);
  if (v1)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    type metadata accessor for IntelligenceSupportAgentXPCConnection();
    swift_allocObject();
    v4 = sub_1BBA82D48();
    *(v4 + 24) = &off_1F3AAC260;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    sub_1BBA85620();

    v4 = 0;
  }

  *(v2 + 24) = v4;

LABEL_7:

  os_unfair_lock_unlock((v2 + 32));
}

uint64_t IntelligenceCollectionListener.__deallocating_deinit()
{
  sub_1BBACDA3C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BBACDA3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntelligenceElement.TableRow.index.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IntelligenceElement.TableRow.index.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    *(v6 + 16) = a1;
    *(v6 + 24) = v4;
    *(v6 + 32) = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v4;
    *(v8 + 32) = v5;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.TableRow.index.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 16);
  return sub_1BBACDC7C;
}

void sub_1BBACDC7C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[10];
  if (a2)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *v9;
LABEL_6:
      swift_beginAccess();
      *(v10 + 16) = v4;
      *(v10 + 24) = v6;
      *(v10 + 32) = v7;

      goto LABEL_8;
    }
  }

  else if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *v9;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;

  *v9 = v11;
LABEL_8:

  free(v3);
}

uint64_t IntelligenceElement.TableRow.isSelected.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t IntelligenceElement.TableRow.isSelected.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    *(v6 + 16) = v4;
    *(v6 + 24) = a1 & 1;
    *(v6 + 32) = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a1 & 1;
    *(v8 + 32) = v5;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.TableRow.isSelected.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v5 + 24);
  return sub_1BBACDF28;
}

void sub_1BBACDF28(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(v4 + 16);
  v7 = *(v4 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[9];
  if (a2)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *v9;
LABEL_6:
      swift_beginAccess();
      *(v10 + 16) = v6;
      *(v10 + 24) = v5;
      *(v10 + 32) = v7;

      goto LABEL_8;
    }
  }

  else if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *v9;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v7;

  *v9 = v11;
LABEL_8:

  free(v3);
}

uint64_t IntelligenceElement.TableRow.cells.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v6 + 32) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.TableRow.cells.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 32);

  return sub_1BBACE1C8;
}

void sub_1BBACE1C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    IntelligenceElement.TableRow.cells.setter(v4);
  }

  else
  {
    IntelligenceElement.TableRow.cells.setter(v3);
  }

  free(v2);
}

uint64_t IntelligenceElement.TableRow.init(index:isSelected:cells:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *a4 = result;
  return result;
}

uint64_t sub_1BBACE290(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_1BBAFF5D8(*(a1 + 16), *(a2 + 16));
  }
}

uint64_t sub_1BBACE2CC@<X0>(void *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *v4;
  swift_beginAccess();
  v11 = *(v10 + 32);

  v12 = Array<A>.recursiveMap<A>(_:transform:)(a1, a2, a3, v11);

  if (v5)
  {
  }

  v14 = *(v10 + 16);
  v15 = *(v10 + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    swift_beginAccess();
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v12;

    *a4 = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    *(v16 + 32) = v12;

    *a4 = v16;
  }

  return result;
}

uint64_t sub_1BBACE404(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7463656C65537369;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x736C6C6563;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7865646E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x7463656C65537369;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x736C6C6563;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7865646E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBACE504()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBACE5A4()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBACE630()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBACE6CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBACF1C4();
  *a1 = result;
  return result;
}

void sub_1BBACE6FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x7463656C65537369;
  if (v2 != 1)
  {
    v5 = 0x736C6C6563;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7865646E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBACE758()
{
  v1 = 0x7463656C65537369;
  if (*v0 != 1)
  {
    v1 = 0x736C6C6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1BBACE7B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBACF1C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BBACE7D8(uint64_t a1)
{
  v2 = sub_1BBACEFB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACE814(uint64_t a1)
{
  v2 = sub_1BBACEFB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.TableRow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBACEFB0();
  sub_1BBB84478();
  swift_beginAccess();
  LOBYTE(v11) = 0;
  sub_1BBB84278();
  if (!v2)
  {
    if (*(v8 + 24) == 1)
    {
      LOBYTE(v11) = 1;
      sub_1BBB84258();
    }

    v11 = *(v8 + 32);
    v10[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    sub_1BBAA0B24(&qword_1ED6BDCB0, sub_1BBAB5674);
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IntelligenceElement.TableRow.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBACEFB0();
  sub_1BBB84458();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1BBB841A8();
    v16 = 1;
    v11 = sub_1BBB84148();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    v15 = 2;
    sub_1BBAA0B24(&qword_1EBC7ABA0, sub_1BBAB80F0);
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v12 = v14[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v11 & 1;
    *(v13 + 32) = v12;
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntelligenceElement.TableRow.description.getter()
{
  v1 = *v0;
  strcpy(v17, "index: ");
  v17[1] = 0xE700000000000000;
  swift_beginAccess();
  v2 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v2);

  v3 = v17[0];
  v4 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1BBA86A94((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v3;
  *(v7 + 5) = 0xE700000000000000;
  if (*(v1 + 24) == 1)
  {
    strcpy(v17, "isSelected: ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x1BFB16150](1702195828, 0xE400000000000000);
    v8 = v17[0];
    v9 = v17[1];
    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_1BBA86A94((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[16 * v11];
    *(v12 + 4) = v8;
    *(v12 + 5) = v9;
  }

  strcpy(v17, "TableRow(");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v13 = sub_1BBB83938();
  v15 = v14;

  MEMORY[0x1BFB16150](v13, v15);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v17[0];
}

BOOL _s21UIIntelligenceSupport19IntelligenceElementV8TableRowV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  swift_beginAccess();
  result = 0;
  if (v4 == *(v3 + 16) && ((v5 ^ *(v3 + 24)) & 1) == 0)
  {
    v7 = *(v3 + 32);

    v8 = sub_1BBAFF5D8(v6, v7);

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1BBACEFB0()
{
  result = qword_1EBC7BA78;
  if (!qword_1EBC7BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA78);
  }

  return result;
}

uint64_t sub_1BBACF024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BBACF06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BBACF0C0()
{
  result = qword_1EBC7BA90;
  if (!qword_1EBC7BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA90);
  }

  return result;
}

unint64_t sub_1BBACF118()
{
  result = qword_1EBC7BA98;
  if (!qword_1EBC7BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BA98);
  }

  return result;
}

unint64_t sub_1BBACF170()
{
  result = qword_1EBC7BAA0;
  if (!qword_1EBC7BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BAA0);
  }

  return result;
}

uint64_t sub_1BBACF1C4()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBACF230(uint64_t a1)
{
  v2 = sub_1BBAD1BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACF26C(uint64_t a1)
{
  v2 = sub_1BBAD1BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBACF2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAD2910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBACF2D0(uint64_t a1)
{
  v2 = sub_1BBA9F374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACF30C(uint64_t a1)
{
  v2 = sub_1BBA9F374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBACF348(uint64_t a1)
{
  v2 = sub_1BBAD1B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACF384(uint64_t a1)
{
  v2 = sub_1BBAD1B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBACF3C0(uint64_t a1)
{
  v2 = sub_1BBA9F3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACF3FC(uint64_t a1)
{
  v2 = sub_1BBA9F3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBACF438(uint64_t a1)
{
  v2 = sub_1BBAD1C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBACF474(uint64_t a1)
{
  v2 = sub_1BBAD1C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Button.Role.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.Button.title.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *&v12[9] = *(v3 + 57);
  v7 = *&v12[9];
  v11[1] = v5;
  *v12 = v6;
  v11[0] = v4;
  *(a1 + 41) = v7;
  v8 = v3[2];
  *a1 = v3[1];
  a1[1] = v8;
  a1[2] = v3[3];
  return sub_1BBA9EDF0(v11, v10);
}

void (*IntelligenceElement.Button.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  *(v4 + 41) = *(v5 + 57);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  memmove(v4 + 4, v5 + 1, 0x39uLL);
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBACF658;
}

uint64_t IntelligenceElement.Button.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[6];
  v9[0] = v3[5];
  v9[1] = v4;
  v10[0] = v3[7];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 121);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

void (*IntelligenceElement.Button.image.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = v5[5];
  v7 = v5[6];
  v8 = v5[7];
  *(v4 + 41) = *(v5 + 121);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  *(v4 + 105) = *(v5 + 121);
  v4[5] = v10;
  v4[6] = v11;
  v4[4] = v9;
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBACF7A4;
}

void sub_1BBACF7BC(uint64_t a1, char a2, void (*a3)(__int128 *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v4[12] = v4[4];
    v4[13] = v5;
    v7 = v4[4];
    v6 = v4[5];
    v4[14] = v4[6];
    *(v4 + 233) = *(v4 + 105);
    v9 = v7;
    v10 = v6;
    v11[0] = v4[6];
    *(v11 + 9) = *(v4 + 105);
    sub_1BBA9EDF0((v4 + 12), (v4 + 16));
    a3(&v9);
    v8 = v4[5];
    v4[8] = v4[4];
    v4[9] = v8;
    v4[10] = v4[6];
    *(v4 + 169) = *(v4 + 105);
    sub_1BBA8BCC4((v4 + 8), &qword_1EBC7BAA8);
  }

  else
  {
    v9 = v4[4];
    v10 = v5;
    v11[0] = v4[6];
    *(v11 + 9) = *(v4 + 105);
    a3(&v9);
  }

  free(v4);
}

uint64_t IntelligenceElement.Button.role.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 137);
  return result;
}

uint64_t IntelligenceElement.Button.role.setter(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v35[2] = v3[3];
  v35[3] = v6;
  v35[1] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *&v36[11] = *(v3 + 123);
  v35[5] = v8;
  *v36 = v9;
  v35[4] = v7;
  v35[0] = v4;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[4];
  v39 = v3[3];
  v40 = v12;
  v37 = v10;
  v38 = v11;
  v13 = v3[5];
  v14 = v3[6];
  v15 = v3[7];
  *(v43 + 9) = *(v3 + 121);
  v42 = v14;
  v43[0] = v15;
  v41 = v13;
  v16 = v36[26];
  sub_1BBAB48D0(v35, v33);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v17 = *v1;
    swift_beginAccess();
    v18 = v17[5];
    v19 = v17[6];
    v20 = v17[7];
    *(v34 + 11) = *(v17 + 123);
    v34[0] = v20;
    v21 = v17[1];
    v22 = v17[2];
    v23 = v17[4];
    v33[2] = v17[3];
    v33[3] = v23;
    v33[4] = v18;
    v33[5] = v19;
    v33[0] = v21;
    v33[1] = v22;
    v24 = v38;
    v17[1] = v37;
    v17[2] = v24;
    v25 = v40;
    v17[3] = v39;
    v17[4] = v25;
    v26 = v42;
    v17[5] = v41;
    v17[6] = v26;
    v27 = v43[0];
    *(v17 + 121) = *(v43 + 9);
    v17[7] = v27;
    *(v17 + 137) = v2;
    *(v17 + 138) = v16;
    return sub_1BBAB4908(v33);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
    v29 = swift_allocObject();
    v30 = v42;
    *(v29 + 80) = v41;
    *(v29 + 96) = v30;
    *(v29 + 112) = v43[0];
    *(v29 + 121) = *(v43 + 9);
    v31 = v38;
    *(v29 + 16) = v37;
    *(v29 + 32) = v31;
    v32 = v40;
    *(v29 + 48) = v39;
    *(v29 + 64) = v32;
    *(v29 + 137) = v2;
    *(v29 + 138) = v16;

    *v1 = v29;
  }

  return result;
}

void (*IntelligenceElement.Button.role.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 137);
  return sub_1BBACFB2C;
}

uint64_t IntelligenceElement.Button.enablement.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 138);
  return result;
}

uint64_t IntelligenceElement.Button.enablement.setter(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v34[2] = v3[3];
  v34[3] = v6;
  v34[1] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *(v35 + 11) = *(v3 + 123);
  v34[5] = v8;
  v35[0] = v9;
  v34[4] = v7;
  v34[0] = v4;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[4];
  v38 = v3[3];
  v39 = v12;
  v36 = v10;
  v37 = v11;
  v13 = v3[5];
  v14 = v3[6];
  v15 = v3[7];
  *(v42 + 10) = *(v3 + 122);
  v41 = v14;
  v42[0] = v15;
  v40 = v13;
  sub_1BBAB48D0(v34, v32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *v1;
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    v19 = v16[7];
    *(v33 + 11) = *(v16 + 123);
    v33[0] = v19;
    v20 = v16[1];
    v21 = v16[2];
    v22 = v16[4];
    v32[2] = v16[3];
    v32[3] = v22;
    v32[4] = v17;
    v32[5] = v18;
    v32[0] = v20;
    v32[1] = v21;
    v23 = v37;
    v16[1] = v36;
    v16[2] = v23;
    v24 = v39;
    v16[3] = v38;
    v16[4] = v24;
    v25 = v41;
    v16[5] = v40;
    v16[6] = v25;
    v26 = v42[0];
    *(v16 + 122) = *(v42 + 10);
    v16[7] = v26;
    *(v16 + 138) = v2;
    return sub_1BBAB4908(v32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
    v28 = swift_allocObject();
    v29 = v41;
    *(v28 + 80) = v40;
    *(v28 + 96) = v29;
    *(v28 + 112) = v42[0];
    *(v28 + 122) = *(v42 + 10);
    v30 = v37;
    *(v28 + 16) = v36;
    *(v28 + 32) = v30;
    v31 = v39;
    *(v28 + 48) = v38;
    *(v28 + 64) = v31;
    *(v28 + 138) = v2;

    *v1 = v28;
  }

  return result;
}

void (*IntelligenceElement.Button.enablement.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 138);
  return sub_1BBACFDB4;
}

void sub_1BBACFDCC(uint64_t a1, char a2, void (*a3)(char *))
{
  v3 = *a1;
  if (a2)
  {
    v5 = *(*a1 + 32);
    v4 = &v5;
  }

  else
  {
    v6 = *(*a1 + 32);
    v4 = &v6;
  }

  a3(v4);

  free(v3);
}

__n128 IntelligenceElement.Button.init(title:image:role:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  *v10 = a1[2];
  *&v10[9] = *(a1 + 41);
  v11 = *a2;
  v12 = a2[1];
  *v13 = a2[2];
  *&v13[9] = *(a2 + 41);
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
  v6 = swift_allocObject();
  *(v6 + 80) = v11;
  *(v6 + 96) = v12;
  *(v6 + 112) = *v13;
  *(v6 + 121) = *&v13[9];
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  result = *v10;
  *(v6 + 48) = *v10;
  *(v6 + 64) = *&v10[16];
  *(v6 + 137) = v5;
  *(v6 + 138) = 2;
  *a4 = v6;
  return result;
}

uint64_t sub_1BBACFF04()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBACFFBC()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBAD0060()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAD0114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAD2A70();
  *a1 = result;
  return result;
}

void sub_1BBAD0144(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE400000000000000;
  v5 = 1701605234;
  if (*v1 != 2)
  {
    v5 = 0x656D656C62616E65;
    v4 = 0xEA0000000000746ELL;
  }

  if (*v1)
  {
    v3 = 0x6567616D69;
    v2 = 0xE500000000000000;
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

uint64_t sub_1BBAD01B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAD2A70();
  *a1 = result;
  return result;
}

uint64_t sub_1BBAD01E0(uint64_t a1)
{
  v2 = sub_1BBAA3008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAD021C(uint64_t a1)
{
  v2 = sub_1BBAA3008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Button.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BBAA3008();
  sub_1BBB84458();
  if (!v2)
  {
    v18 = a2;
    v37 = 0;
    sub_1BBAB80F0();
    sub_1BBB84178();
    v34 = v38;
    v35 = v39;
    *v36 = v40[0];
    *&v36[9] = *(v40 + 9);
    v30 = 1;
    sub_1BBB84178();
    v27 = v31;
    v28 = v32;
    *v29 = v33[0];
    *&v29[9] = *(v33 + 9);
    v25 = 2;
    sub_1BBAD1AC4();
    sub_1BBB841B8();
    v10 = v26;
    v25 = 3;
    sub_1BBAD1B18();
    sub_1BBB84178();
    (*(v6 + 8))(v8, v5);
    v19 = v34;
    v20 = v35;
    v21[0] = *v36;
    *(v21 + 9) = *&v36[9];
    if (v26 == 3)
    {
      v12 = 2;
    }

    else
    {
      v12 = v26;
    }

    v22 = v27;
    v23 = v28;
    *v24 = *v29;
    *&v24[9] = *&v29[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
    v13 = swift_allocObject();
    v14 = v23;
    *(v13 + 80) = v22;
    *(v13 + 96) = v14;
    *(v13 + 112) = *v24;
    *(v13 + 121) = *&v24[9];
    v15 = v20;
    *(v13 + 16) = v19;
    *(v13 + 32) = v15;
    v16 = v21[1];
    *(v13 + 48) = v21[0];
    *(v13 + 64) = v16;
    *(v13 + 137) = v10;
    *(v13 + 138) = v12;
    *v18 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t IntelligenceElement.Button.Role.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB08);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB10);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB18);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB20);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB28);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1BBA9F374();
  v17 = v48;
  sub_1BBB84458();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_1BBB841F8();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_1BBB84058();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v27 = &type metadata for IntelligenceElement.Button.Role;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_1BBAD1C14();
          v32 = v37;
          sub_1BBB84118();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_1BBA9F3C8();
          v28 = v37;
          sub_1BBB84118();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_1BBAD1BC0();
        v31 = v37;
        sub_1BBB84118();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_1BBAD1B6C();
        v33 = v37;
        sub_1BBB84118();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1BBAD0C90()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBAD0CC4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 17;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *IntelligenceElement.Button.description.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 137);
  if (*(v1 + 137))
  {
    v23[0] = 0x203A656C6F72;
    v23[1] = 0xE600000000000000;
    if (v2 == 1)
    {
      v3 = 0xE700000000000000;
      v4 = 0x7972616D697270;
    }

    else if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x6C65636E6163;
    }

    else
    {
      v3 = 0xEB00000000657669;
      v4 = 0x7463757274736564;
    }

    MEMORY[0x1BFB16150](v4, v3);

    v6 = v23[0];
    v7 = v23[1];
    v5 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v10 = &v5[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v7;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v1 + 138);
  if (v11 != 2)
  {
    strcpy(v23, "enablement: ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (v11)
    {
      v12 = 0x64656C6261736964;
    }

    else
    {
      v12 = 0x64656C62616E65;
    }

    if (v11)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    MEMORY[0x1BFB16150](v12, v13);

    v14 = v23[0];
    v15 = v23[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BBA86A94(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    if (v17 >= v16 >> 1)
    {
      v5 = sub_1BBA86A94((v16 > 1), v17 + 1, 1, v5);
    }

    *(v5 + 2) = v17 + 1;
    v18 = &v5[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v19 = sub_1BBB83938();
  v21 = v20;

  MEMORY[0x1BFB16150](v19, v21);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return strcpy(v23, "Button(");
}

uint64_t IntelligenceElement.Button.Role.description.getter()
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x7463757274736564;
  }

  if (*v0)
  {
    v1 = 0x7972616D697270;
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

uint64_t sub_1BBAD1038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v101 = a4;
  v9 = *v4;
  swift_beginAccess();
  v11 = *(v9 + 16);
  v10 = *(v9 + 32);
  v12 = *(v9 + 48);
  *&v100[9] = *(v9 + 57);
  v99[1] = v10;
  *v100 = v12;
  v99[0] = v11;
  if (*(&v12 + 1))
  {
    v13 = *(v9 + 32);
    v96 = *(v9 + 16);
    v97 = v13;
    *v98 = *(v9 + 48);
    *&v98[8] = *(&v12 + 1);
    *&v98[16] = *(v9 + 64);
    v98[24] = *(v9 + 72);

    sub_1BBA9EDF0(v99, &v76);
    IntelligenceElement.recursiveMap<A>(_:transform:)(v57, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(v99, &qword_1EBC7BAA8);
    }

    sub_1BBA8BCC4(v99, &qword_1EBC7BAA8);
    v16 = *(v9 + 16);
    v17 = *(v9 + 32);
    v18 = *(v9 + 64);
    v78 = *(v9 + 48);
    v79 = v18;
    v19 = *(v9 + 80);
    v20 = *(v9 + 96);
    v21 = *(v9 + 112);
    *(v82 + 11) = *(v9 + 123);
    v81 = v20;
    v82[0] = v21;
    v80 = v19;
    v76 = v16;
    v77 = v17;
    v22 = *(v9 + 32);
    *&v53[16] = *(v9 + 64);
    v23 = *(v9 + 16);
    *&v56[11] = *(v9 + 123);
    v55 = *(v9 + 96);
    *v56 = *(v9 + 112);
    v54 = *(v9 + 80);
    v24 = *(v9 + 48);
    *(v95 + 9) = *(v9 + 57);
    v94 = v22;
    v95[0] = v24;
    v93 = v23;
    sub_1BBAB48D0(&v76, &v59);
    sub_1BBA8BCC4(&v93, &qword_1EBC7BAA8);
    v51 = v57[0];
    v52 = v57[1];
    *v53 = v58[0];
    *&v53[9] = *(v58 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v25 = *(v9 + 80);
      v26 = *(v9 + 96);
      v27 = *(v9 + 112);
      *(v65 + 11) = *(v9 + 123);
      v64 = v26;
      v65[0] = v27;
      v63 = v25;
      v28 = *(v9 + 16);
      v29 = *(v9 + 32);
      v30 = *(v9 + 64);
      v61 = *(v9 + 48);
      v62 = v30;
      v59 = v28;
      v60 = v29;
      *(v9 + 16) = v51;
      *(v9 + 32) = v52;
      *(v9 + 48) = *v53;
      *(v9 + 64) = *&v53[16];
      *(v9 + 80) = v54;
      *(v9 + 96) = v55;
      *(v9 + 123) = *&v56[11];
      *(v9 + 112) = *v56;
      result = sub_1BBAB4908(&v59);
      v15 = v9;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
      v15 = swift_allocObject();
      v15[5] = v54;
      v15[6] = v55;
      v15[7] = *v56;
      *(v15 + 123) = *&v56[11];
      v15[1] = v51;
      v15[2] = v52;
      v15[3] = *v53;
      v15[4] = *&v53[16];
    }
  }

  else
  {

    v15 = v9;
  }

  *&v98[9] = *(v9 + 121);
  v31 = *(v9 + 112);
  v97 = *(v9 + 96);
  *v98 = v31;
  v96 = *(v9 + 80);
  if (*(&v31 + 1))
  {
    *(v95 + 9) = *(v9 + 121);
    v32 = *(v9 + 112);
    v94 = *(v9 + 96);
    v95[0] = v32;
    v85 = *(v9 + 80);
    v86 = v94;
    v87 = *(v9 + 112);
    v88 = *&v98[8];
    v89 = *(v9 + 128);
    v90 = *(v9 + 136);
    v93 = v85;
    sub_1BBA9B788(&v93, &v76);
    IntelligenceElement.recursiveMap<A>(_:transform:)(v91, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(&v96, &qword_1EBC7BAA8);
    }

    sub_1BBA8BCC4(&v96, &qword_1EBC7BAA8);
    v73 = v91[0];
    v74 = v91[1];
    v75[0] = v92[0];
    *(v75 + 9) = *(v92 + 9);
    swift_beginAccess();
    v33 = v15[6];
    v80 = v15[5];
    v81 = v33;
    v82[0] = v15[7];
    *(v82 + 11) = *(v15 + 123);
    v34 = v15[2];
    v76 = v15[1];
    v77 = v34;
    v35 = v15[4];
    v78 = v15[3];
    v79 = v35;
    memmove(&__dst, v15 + 1, 0x7BuLL);
    v83[0] = v70;
    v83[1] = v71;
    v84[0] = v72[0];
    *(v84 + 9) = *(v72 + 9);
    sub_1BBAB48D0(&v76, &v59);
    sub_1BBA8BCC4(v83, &qword_1EBC7BAA8);
    v70 = v73;
    v71 = v74;
    v72[0] = v75[0];
    *(v72 + 9) = *(v75 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v36 = v15[5];
      v37 = v15[6];
      v38 = v15[7];
      *(v65 + 11) = *(v15 + 123);
      v64 = v37;
      v65[0] = v38;
      v63 = v36;
      v39 = v15[1];
      v40 = v15[2];
      v41 = v15[4];
      v61 = v15[3];
      v62 = v41;
      v59 = v39;
      v60 = v40;
      v42 = v69;
      v15[3] = v68;
      v15[4] = v42;
      v43 = v67;
      v15[1] = __dst;
      v15[2] = v43;
      v45 = v71;
      v44 = v72[0];
      v46 = v70;
      *(v15 + 123) = *(v72 + 11);
      v15[6] = v45;
      v15[7] = v44;
      v15[5] = v46;
      result = sub_1BBAB4908(&v59);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
      v47 = swift_allocObject();
      v48 = v71;
      v47[5] = v70;
      v47[6] = v48;
      v47[7] = v72[0];
      *(v47 + 123) = *(v72 + 11);
      v49 = v67;
      v47[1] = __dst;
      v47[2] = v49;
      v50 = v69;
      v47[3] = v68;
      v47[4] = v50;

      v15 = v47;
    }
  }

  *v101 = v15;
  return result;
}

uint64_t sub_1BBAD1568(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v3 = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v21 + 9) = *(v2 + 57);
  v20[1] = v3;
  v21[0] = v5;
  v20[0] = v4;
  if (*(&v5 + 1))
  {
    v6 = *(v2 + 32);
    v17 = *(v2 + 16);
    v18 = v6;
    *v19 = *(v2 + 48);
    *&v19[8] = *(&v5 + 1);
    *&v19[16] = *(v2 + 64);
    v19[24] = *(v2 + 72);
    sub_1BBA9EDF0(v20, v12);
    IntelligenceElement.recursivelyPruned()(v12);
    IntelligenceElement.Button.title.setter(v12);
    sub_1BBA8BCC4(v20, &qword_1EBC7BAA8);
  }

  v7 = *a1;
  result = swift_beginAccess();
  *&v19[9] = *(v7 + 121);
  v9 = *(v7 + 112);
  v18 = *(v7 + 96);
  *v19 = v9;
  v17 = *(v7 + 80);
  if (*(&v9 + 1))
  {
    v10 = *(v7 + 96);
    v12[0] = *(v7 + 80);
    v12[1] = v10;
    v13 = *(v7 + 112);
    v14 = *&v19[8];
    v15 = *(v7 + 128);
    v16 = *(v7 + 136);
    sub_1BBA9EDF0(&v17, v11);
    IntelligenceElement.recursivelyPruned()(v11);
    IntelligenceElement.Button.image.setter(v11);
    return sub_1BBA8BCC4(&v17, &qword_1EBC7BAA8);
  }

  return result;
}

uint64_t sub_1BBAD16D4(void (*a1)(__int128 *__return_ptr, __int128 *))
{
  v3 = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  *(v31 + 9) = *(v5 + 57);
  v30 = v7;
  v31[0] = v8;
  v29 = v6;
  v9 = *(v5 + 32);
  v32 = *(v5 + 16);
  v33 = v9;
  v34 = *(v5 + 48);
  if (*(&v8 + 1))
  {
    v23 = v32;
    v24 = v33;
    *v25 = v34;
    *&v25[8] = *(&v8 + 1);
    *&v25[16] = *(v5 + 64);
    v25[24] = *(v5 + 72);
    v26 = v29;
    v27 = v30;
    v28[0] = v31[0];
    *(v28 + 9) = *(v31 + 9);
    sub_1BBA9B788(&v26, v17);
    a1(v15, &v23);
    if (v2)
    {
      v10 = &v29;
      return sub_1BBA8BCC4(v10, &qword_1EBC7BAA8);
    }

    IntelligenceElement.Button.title.setter(v15);
    sub_1BBA8BCC4(&v29, &qword_1EBC7BAA8);
  }

  v11 = *v3;
  result = swift_beginAccess();
  *(v28 + 9) = *(v11 + 121);
  v13 = *(v11 + 112);
  v27 = *(v11 + 96);
  v28[0] = v13;
  v26 = *(v11 + 80);
  if (!*(&v13 + 1))
  {
    return result;
  }

  *&v25[9] = *(v11 + 121);
  v14 = *(v11 + 112);
  v24 = *(v11 + 96);
  *v25 = v14;
  v17[0] = *(v11 + 80);
  v17[1] = v24;
  v18 = *(v11 + 112);
  v19 = *(&v28[0] + 1);
  v20 = *(v11 + 128);
  v21 = *(v11 + 136);
  v23 = v17[0];
  sub_1BBA9B788(&v23, v16);
  a1(v22, v17);
  if (!v2)
  {
    IntelligenceElement.Button.image.setter(v22);
  }

  v10 = &v26;
  return sub_1BBA8BCC4(v10, &qword_1EBC7BAA8);
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV6ButtonV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[4];
  v45[2] = v2[3];
  v45[3] = v6;
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  *(v46 + 11) = *(v2 + 123);
  v10 = *(v46 + 11);
  v45[5] = v8;
  v46[0] = v9;
  v45[4] = v7;
  v45[0] = v4;
  v45[1] = v5;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[4];
  v40 = v2[3];
  v41 = v13;
  v38 = v11;
  v39 = v12;
  v14 = v2[5];
  v15 = v2[6];
  v16 = v2[7];
  *(v44 + 11) = v10;
  v43 = v15;
  v44[0] = v16;
  v42 = v14;
  swift_beginAccess();
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[4];
  v47[2] = v3[3];
  v47[3] = v19;
  v47[1] = v18;
  v20 = v3[5];
  v21 = v3[6];
  v22 = v3[7];
  *(v48 + 11) = *(v3 + 123);
  v23 = *(v48 + 11);
  v47[5] = v21;
  v48[0] = v22;
  v47[4] = v20;
  v47[0] = v17;
  v24 = v3[1];
  v25 = v3[2];
  v26 = v3[4];
  v33 = v3[3];
  v34 = v26;
  v31 = v24;
  v32 = v25;
  v27 = v3[5];
  v28 = v3[6];
  v29 = v3[7];
  *(v37 + 11) = v23;
  v36 = v28;
  v37[0] = v29;
  v35 = v27;
  sub_1BBAB48D0(v45, v51);
  sub_1BBAB48D0(v47, v51);
  LOBYTE(v3) = sub_1BBAD2388(&v38, &v31);
  v49[4] = v35;
  v49[5] = v36;
  v50[0] = v37[0];
  *(v50 + 11) = *(v37 + 11);
  v49[0] = v31;
  v49[1] = v32;
  v49[2] = v33;
  v49[3] = v34;
  sub_1BBAB4908(v49);
  v51[4] = v42;
  v51[5] = v43;
  v52[0] = v44[0];
  *(v52 + 11) = *(v44 + 11);
  v51[0] = v38;
  v51[1] = v39;
  v51[2] = v40;
  v51[3] = v41;
  sub_1BBAB4908(v51);
  return v3 & 1;
}

unint64_t sub_1BBAD1A70()
{
  result = qword_1EBC7AD38;
  if (!qword_1EBC7AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD38);
  }

  return result;
}

unint64_t sub_1BBAD1AC4()
{
  result = qword_1EBC7ACE0;
  if (!qword_1EBC7ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACE0);
  }

  return result;
}

unint64_t sub_1BBAD1B18()
{
  result = qword_1EBC7AD30;
  if (!qword_1EBC7AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD30);
  }

  return result;
}

unint64_t sub_1BBAD1B6C()
{
  result = qword_1EBC7BAF0;
  if (!qword_1EBC7BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BAF0);
  }

  return result;
}

unint64_t sub_1BBAD1BC0()
{
  result = qword_1EBC7BAF8;
  if (!qword_1EBC7BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BAF8);
  }

  return result;
}

unint64_t sub_1BBAD1C14()
{
  result = qword_1EBC7BB00;
  if (!qword_1EBC7BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BB00);
  }

  return result;
}

unint64_t sub_1BBAD1C6C()
{
  result = qword_1EBC7BB38;
  if (!qword_1EBC7BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BB38);
  }

  return result;
}

uint64_t keypath_setTm_0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  sub_1BBA9EDF0(v10, &v9);
  return a5(a1);
}

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BBAD1DD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 123))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1BBAD1E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 123) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 123) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1BBAD1EBC()
{
  result = qword_1EBC7BB40;
  if (!qword_1EBC7BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BB40);
  }

  return result;
}

unint64_t sub_1BBAD1F14()
{
  result = qword_1EBC7BB48;
  if (!qword_1EBC7BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BB48);
  }

  return result;
}

unint64_t sub_1BBAD1F6C()
{
  result = qword_1EBC7B110;
  if (!qword_1EBC7B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B110);
  }

  return result;
}

unint64_t sub_1BBAD1FC4()
{
  result = qword_1EBC7B118;
  if (!qword_1EBC7B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B118);
  }

  return result;
}

unint64_t sub_1BBAD201C()
{
  result = qword_1EBC7B100;
  if (!qword_1EBC7B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B100);
  }

  return result;
}

unint64_t sub_1BBAD2074()
{
  result = qword_1EBC7B108;
  if (!qword_1EBC7B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B108);
  }

  return result;
}

unint64_t sub_1BBAD20CC()
{
  result = qword_1EBC7B128;
  if (!qword_1EBC7B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B128);
  }

  return result;
}

unint64_t sub_1BBAD2124()
{
  result = qword_1EBC7B130;
  if (!qword_1EBC7B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B130);
  }

  return result;
}

unint64_t sub_1BBAD217C()
{
  result = qword_1EBC7B0F0;
  if (!qword_1EBC7B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0F0);
  }

  return result;
}

unint64_t sub_1BBAD21D4()
{
  result = qword_1EBC7B0F8;
  if (!qword_1EBC7B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0F8);
  }

  return result;
}

unint64_t sub_1BBAD222C()
{
  result = qword_1EBC7B138;
  if (!qword_1EBC7B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B138);
  }

  return result;
}

unint64_t sub_1BBAD2284()
{
  result = qword_1EBC7B140;
  if (!qword_1EBC7B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B140);
  }

  return result;
}

unint64_t sub_1BBAD22DC()
{
  result = qword_1EBC7B150;
  if (!qword_1EBC7B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B150);
  }

  return result;
}

unint64_t sub_1BBAD2334()
{
  result = qword_1EBC7B158;
  if (!qword_1EBC7B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B158);
  }

  return result;
}

BOOL sub_1BBAD2388(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v59[0] = *a1;
  v59[1] = v4;
  v60[0] = a1[2];
  *(v60 + 9) = *(a1 + 41);
  v5 = a1[5];
  v61 = a1[4];
  v62 = v5;
  *v63 = a1[6];
  *&v63[9] = *(a1 + 105);
  *(v66 + 9) = *(a2 + 41);
  v6 = a2[2];
  v7 = *a2;
  v8 = *a2;
  v65 = a2[1];
  v66[0] = v6;
  v64 = v7;
  *&v69[9] = *(a2 + 105);
  v9 = a2[6];
  v68 = a2[5];
  *v69 = v9;
  v67 = a2[4];
  *&v58[7] = v8;
  v10 = *(a1 + 121);
  v11 = *(a1 + 122);
  v12 = *(a2 + 121);
  v13 = *(a2 + 122);
  v14 = *(&v60[0] + 1);
  *&v58[23] = v65;
  *&v58[39] = *(a2 + 4);
  v15 = *(&v6 + 1);
  if (!*(&v60[0] + 1))
  {
    if (!*(&v6 + 1))
    {
      v25 = a1[1];
      v50 = *a1;
      v51 = v25;
      *v52 = *(a1 + 4);
      *&v52[16] = *(a1 + 6);
      v52[24] = *(a1 + 56);
      sub_1BBA9EDF0(v59, &v47);
      sub_1BBA9EDF0(&v64, &v47);
      sub_1BBA8BCC4(&v50, &qword_1EBC7BAA8);
      goto LABEL_10;
    }

    sub_1BBA9EDF0(v59, &v50);
    sub_1BBA9EDF0(&v64, &v50);
LABEL_8:
    v23 = a1[1];
    v50 = *a1;
    v51 = v23;
    *v52 = *(a1 + 4);
    *&v52[8] = v14;
    *&v52[16] = *(a1 + 6);
    v52[24] = *(a1 + 56);
    v53 = *v58;
    *v54 = *&v58[16];
    *&v54[15] = *&v58[31];
    v57 = *(a2 + 56);
    v24 = *(a2 + 6);
    v55 = v15;
LABEL_18:
    v56 = v24;
    sub_1BBA8BCC4(&v50, &qword_1EBC7BB50);
    return 0;
  }

  v16 = *(a1 + 4);
  v17 = a1[1];
  v50 = *a1;
  v51 = v17;
  *v52 = v16;
  *&v52[8] = *(&v60[0] + 1);
  *&v52[16] = *(a1 + 6);
  v52[24] = *(a1 + 56);
  v47 = v50;
  v48 = v17;
  *(v49 + 9) = *&v52[9];
  v49[0] = *v52;
  if (!*(&v6 + 1))
  {
    v37 = v50;
    v38 = v51;
    *v39 = *v52;
    *&v39[9] = *&v52[9];
    sub_1BBA9EDF0(v59, &v34);
    sub_1BBA9EDF0(&v64, &v34);
    sub_1BBA9EDF0(&v50, &v34);
    sub_1BBA9E174(&v37);
    goto LABEL_8;
  }

  v18 = a2[1];
  v37 = *a2;
  v38 = v18;
  v19 = *(a2 + 4);
  v20 = *(a2 + 6);
  *&v39[8] = *(&v6 + 1);
  *&v39[16] = v20;
  v39[24] = *(a2 + 56);
  *v39 = v19;
  sub_1BBA9EDF0(v59, &v34);
  sub_1BBA9EDF0(&v64, &v34);
  sub_1BBA9EDF0(&v50, &v34);
  v21 = _s21UIIntelligenceSupport19IntelligenceElementV2eeoiySbAC_ACtFZ_0(&v47, &v37);
  v31 = v37;
  v32 = v38;
  v33[0] = *v39;
  *(v33 + 9) = *&v39[9];
  sub_1BBA9E174(&v31);
  v34 = v47;
  v35 = v48;
  v36[0] = v49[0];
  *(v36 + 9) = *(v49 + 9);
  sub_1BBA9E174(&v34);
  v22 = a1[1];
  v37 = *a1;
  v38 = v22;
  *v39 = *(a1 + 4);
  *&v39[8] = v14;
  *&v39[16] = *(a1 + 6);
  v39[24] = *(a1 + 56);
  sub_1BBA8BCC4(&v37, &qword_1EBC7BAA8);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v44 = v61;
  v45 = v62;
  *&v58[7] = v67;
  v26 = *&v63[8];
  v46 = *v63;
  v42 = *&v63[16];
  v43 = v63[24];
  *&v58[23] = v68;
  v27 = *&v69[8];
  *&v58[39] = *v69;
  v41 = v69[24];
  v40 = *&v69[16];
  if (*&v63[8])
  {
    v50 = v61;
    v51 = v62;
    *v52 = *v63;
    *&v52[16] = *&v63[16];
    v52[24] = v63[24];
    v47 = v61;
    v48 = v62;
    v49[0] = *v63;
    *(v49 + 9) = *&v52[9];
    if (*&v69[8])
    {
      v37 = v67;
      v38 = v68;
      *&v39[16] = *&v69[16];
      v39[24] = v69[24];
      *v39 = *v69;
      sub_1BBA9EDF0(&v61, &v34);
      sub_1BBA9EDF0(&v67, &v34);
      sub_1BBA9EDF0(&v50, &v34);
      v28 = _s21UIIntelligenceSupport19IntelligenceElementV2eeoiySbAC_ACtFZ_0(&v47, &v37);
      v31 = v37;
      v32 = v38;
      v33[0] = *v39;
      *(v33 + 9) = *&v39[9];
      sub_1BBA9E174(&v31);
      v34 = v47;
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 9) = *(v49 + 9);
      sub_1BBA9E174(&v34);
      v37 = v44;
      v38 = v45;
      *v39 = v46;
      *&v39[8] = v26;
      *&v39[16] = v42;
      v39[24] = v43;
      sub_1BBA8BCC4(&v37, &qword_1EBC7BAA8);
      if (v28)
      {
        return v10 == v12 && v11 == v13;
      }

      return 0;
    }

    v37 = v50;
    v38 = v51;
    *v39 = *v52;
    *&v39[9] = *&v52[9];
    sub_1BBA9EDF0(&v61, &v34);
    sub_1BBA9EDF0(&v67, &v34);
    sub_1BBA9EDF0(&v50, &v34);
    sub_1BBA9E174(&v37);
    goto LABEL_17;
  }

  if (*&v69[8])
  {
    sub_1BBA9EDF0(&v61, &v50);
    sub_1BBA9EDF0(&v67, &v50);
LABEL_17:
    v50 = v44;
    v51 = v45;
    *v52 = v46;
    *&v52[8] = v26;
    *&v52[16] = v42;
    v52[24] = v43;
    v53 = *v58;
    *v54 = *&v58[16];
    *&v54[15] = *&v58[31];
    v57 = v41;
    v24 = v40;
    v55 = v27;
    goto LABEL_18;
  }

  v50 = v61;
  v51 = v62;
  *v52 = *v63;
  *&v52[16] = *&v63[16];
  v52[24] = v63[24];
  sub_1BBA9EDF0(&v61, &v47);
  sub_1BBA9EDF0(&v67, &v47);
  sub_1BBA8BCC4(&v50, &qword_1EBC7BAA8);
  return v10 == v12 && v11 == v13;
}

uint64_t sub_1BBAD2910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463757274736564 && a2 == 0xEB00000000657669)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BBAD2A70()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBAD2ABC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v9 + 32);
  v12 = *(v9 + 48);
  *&v36[9] = *(v9 + 57);
  v35[1] = v11;
  *v36 = v12;
  v35[0] = v10;
  v13 = *(v9 + 32);
  v39 = *(v9 + 16);
  v40 = v13;
  v41 = *(v9 + 48);
  v14 = *(&v12 + 1);
  v15 = *(v9 + 64);
  v38 = *(v9 + 72);
  v37 = v15;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    inited = swift_initStackObject();
    v17 = v39;
    v18 = v40;
    *(inited + 16) = xmmword_1BBB85CE0;
    *(inited + 32) = v17;
    *(inited + 48) = v18;
    *(inited + 64) = v41;
    *(inited + 72) = v14;
    *(inited + 80) = v37;
    *(inited + 88) = v38;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9B788(a2, &v32);
      sub_1BBA9B788(a2, &v32);
      sub_1BBA9EDF0(v35, &v32);
      sub_1BBA9B788(a2, &v32);
      sub_1BBA9EDF0(v35, &v32);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x656C746954, 0xE500000000000000, &v32);
      *(a3 + 216) = v32;
    }

    else
    {
      sub_1BBA9B788(a2, &v32);
      sub_1BBA9B788(a2, &v32);
      sub_1BBA9EDF0(v35, &v32);
      sub_1BBA9B788(a2, &v32);
      sub_1BBA9EDF0(v35, &v32);
    }

    sub_1BBAA53D8(inited, a3, a4, a5);
    sub_1BBA9E174(a2);

    sub_1BBA8BCC4(v35, &qword_1EBC7BAA8);
  }

  else
  {
    sub_1BBA9B788(a2, &v32);
    sub_1BBA9B788(a2, &v32);
  }

  v19 = *(v9 + 112);
  v33 = *(v9 + 96);
  *v34 = v19;
  *&v34[9] = *(v9 + 121);
  v32 = *(v9 + 80);
  v29 = v32;
  v30 = v33;
  v31 = *(v9 + 112);
  v20 = *&v34[8];
  v21 = *(v9 + 128);
  v28 = *(v9 + 136);
  v27 = v21;
  if (*&v34[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v22 = swift_initStackObject();
    v23 = v29;
    v24 = v30;
    *(v22 + 16) = xmmword_1BBB85CE0;
    *(v22 + 32) = v23;
    *(v22 + 48) = v24;
    *(v22 + 64) = v31;
    *(v22 + 72) = v20;
    *(v22 + 80) = v27;
    *(v22 + 88) = v28;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9EDF0(&v32, v26);
      sub_1BBA9B788(a2, v26);
      sub_1BBA9EDF0(&v32, v26);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x6567616D49, 0xE500000000000000, v26);
      *(a3 + 216) = v26[0];
    }

    else
    {
      sub_1BBA9EDF0(&v32, v26);
      sub_1BBA9B788(a2, v26);
      sub_1BBA9EDF0(&v32, v26);
    }

    sub_1BBAA53D8(v22, a3, a4, a5);
    sub_1BBA9E174(a2);

    sub_1BBA8BCC4(&v32, &qword_1EBC7BAA8);
  }

  sub_1BBA9E174(a2);
  return sub_1BBA9E174(a2);
}

uint64_t sub_1BBAD2E28(uint64_t a1)
{
  v2 = sub_1BBB83F38();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1BBAD9F24(v2, *(a1 + 36), 0, a1);
}

uint64_t IntelligenceElement.ImageMedia.name.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for IntelligenceImage(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v11, v3, &qword_1EBC7B7E8);
  sub_1BBAC030C(v6);
  sub_1BBA8BCC4(v3, &qword_1EBC7B7E8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BBA8BCC4(v6, &qword_1EBC7B7F8);
    v12 = *(v11 + *(_s10ImageMediaV7StorageVMa() + 20));

    return v12;
  }

  sub_1BBADB2A8(v6, v10, type metadata accessor for IntelligenceImage);
  v13 = sub_1BBB00EFC();
  v14 = sub_1BBAD2E28(v13);

  if (v14)
  {
    sub_1BBADB310(v10, type metadata accessor for IntelligenceImage);
    v12 = *(v14 + 16);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceElement.ImageMedia.image.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v21 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = *v1;
  v12 = *(*v11 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v11 + v12, v10, &qword_1EBC7B7E8);
  sub_1BBA8BC5C(v10, v7, &qword_1EBC7B7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v21;
    v14 = *v7;
    v15 = v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16);
    v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v16));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
    sub_1BBA8BC5C(v15 + *(v17 + 28), v4, &qword_1EBC7B7D8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v4, 1, v18) == 1)
    {
      sub_1BBA8BC5C(v15 + *(v17 + 32), v13, &qword_1EBC7B7F8);
      if (v19(v4, 1, v18) != 1)
      {
        sub_1BBA8BCC4(v4, &qword_1EBC7B7D8);
      }
    }

    else
    {
      sub_1BBAA6758(v4, v13, &qword_1EBC7B7F8);
    }

    os_unfair_lock_unlock((v14 + v16));
  }

  else
  {
    sub_1BBAA6758(v7, v21, &qword_1EBC7B7F8);
  }

  return sub_1BBA8BCC4(v10, &qword_1EBC7B7E8);
}

uint64_t IntelligenceElement.ImageMedia.textDescription.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + *(_s10ImageMediaV7StorageVMa() + 28));

  return v2;
}

uint64_t sub_1BBAD34EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = (v3 + *(_s10ImageMediaV7StorageVMa() + 28));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t IntelligenceElement.ImageMedia.textDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = _s10ImageMediaV7StorageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = *(**v2 + 88);
  swift_beginAccess();
  sub_1BBAD9638(v9 + v10, v8, _s10ImageMediaV7StorageVMa);
  v11 = &v8[*(v6 + 36)];

  *v11 = a1;
  v11[1] = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *v2;
    v13 = *(*v12 + 88);
    swift_beginAccess();
    sub_1BBAD95D4(v8, v12 + v13);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v15 = swift_allocObject();
    sub_1BBADB2A8(v8, v15 + *(*v15 + 88), _s10ImageMediaV7StorageVMa);

    *v2 = v15;
  }

  return result;
}

void (*IntelligenceElement.ImageMedia.textDescription.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = (v5 + *(_s10ImageMediaV7StorageVMa() + 28));
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1BBAD37C0;
}

void sub_1BBAD37C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    IntelligenceElement.ImageMedia.textDescription.setter(v3, v4);
  }

  else
  {
    IntelligenceElement.ImageMedia.textDescription.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t IntelligenceElement.ImageMedia.sourceAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for IntelligenceImage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v13, v5, &qword_1EBC7B7E8);
  sub_1BBAC030C(v8);
  sub_1BBA8BCC4(v5, &qword_1EBC7B7E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BBA8BCC4(v8, &qword_1EBC7B7F8);
    v14 = _s10ImageMediaV7StorageVMa();
    return sub_1BBAD9638(v13 + *(v14 + 24), a1, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    sub_1BBADB2A8(v8, v12, type metadata accessor for IntelligenceImage);
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(a1);
    return sub_1BBADB310(v12, type metadata accessor for IntelligenceImage);
  }
}

uint64_t sub_1BBAD3AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = *a1;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v7 + v8, v6, &qword_1EBC7B7E8);
  sub_1BBAC030C(a2);
  return sub_1BBA8BCC4(v6, &qword_1EBC7B7E8);
}

uint64_t sub_1BBAD3B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1BBA8BC5C(a1, &v9 - v6, &qword_1EBC7B7F8);
  sub_1BBA8BC5C(v7, v4, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.ImageMedia.loadableImage.setter(v4);
  return sub_1BBA8BCC4(v7, &qword_1EBC7B7F8);
}

uint64_t IntelligenceElement.ImageMedia.image.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.ImageMedia.loadableImage.setter(v4);
  return sub_1BBA8BCC4(a1, &qword_1EBC7B7F8);
}

uint64_t IntelligenceElement.ImageMedia.loadableImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 88);
  swift_beginAccess();
  return sub_1BBA8BC5C(v3 + v4, a1, &qword_1EBC7B7E8);
}

uint64_t _s10ImageMediaV7StorageVMa()
{
  result = qword_1EBC7AFE0;
  if (!qword_1EBC7AFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceElement.ImageMedia.loadableImage.setter(uint64_t a1)
{
  v3 = _s10ImageMediaV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAD9638(v6 + v7, v5, _s10ImageMediaV7StorageVMa);
  sub_1BBAC1E64(a1, v5);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *v1;
    v9 = *(*v8 + 88);
    swift_beginAccess();
    sub_1BBAD95D4(v5, v8 + v9);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v11 = swift_allocObject();
    sub_1BBADB2A8(v5, v11 + *(*v11 + 88), _s10ImageMediaV7StorageVMa);

    *v1 = v11;
  }

  return result;
}

void (*IntelligenceElement.ImageMedia.image.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[6] = v10;
  v12 = *v1;
  v13 = *(*v12 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v12 + v13, v8, &qword_1EBC7B7E8);
  sub_1BBAC030C(v11);
  sub_1BBA8BCC4(v8, &qword_1EBC7B7E8);
  return sub_1BBAD4194;
}

void sub_1BBAD4194(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 48), v3, &qword_1EBC7B7F8);
    sub_1BBA8BC5C(v3, v5, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.ImageMedia.loadableImage.setter(v5);
    sub_1BBA8BCC4(v3, &qword_1EBC7B7F8);
  }

  else
  {
    sub_1BBA8BC5C(*(*a1 + 48), v5, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.ImageMedia.loadableImage.setter(v5);
  }

  sub_1BBA8BCC4(v4, &qword_1EBC7B7F8);
  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1BBAD42DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B7E8);
  return IntelligenceElement.ImageMedia.loadableImage.setter(v4);
}

void (*IntelligenceElement.ImageMedia.loadableImage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *v1;
  v10 = *(*v9 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v9 + v10, v8, &qword_1EBC7B7E8);
  return sub_1BBAD44A8;
}

void sub_1BBAD44A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 40), v3, &qword_1EBC7B7E8);
    IntelligenceElement.ImageMedia.loadableImage.setter(v3);
    sub_1BBA8BCC4(v4, &qword_1EBC7B7E8);
  }

  else
  {
    IntelligenceElement.ImageMedia.loadableImage.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t IntelligenceElement.ImageMedia.init(image:textDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = _s10ImageMediaV7StorageVMa();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBAD9638(a1, v10, type metadata accessor for IntelligenceImage);
  v17 = type metadata accessor for IntelligenceImage(0);
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  sub_1BBAA6758(v10, v13, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  v18 = sub_1BBB00EFC();
  v19 = sub_1BBAD2E28(v18);

  if (v19)
  {
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);

    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(&v16[v14[6]]);
    sub_1BBADB310(a1, type metadata accessor for IntelligenceImage);
    sub_1BBAA6758(v13, v16, &qword_1EBC7B7E8);
    v23 = &v16[v14[5]];
    *v23 = v22;
    *(v23 + 1) = v21;
    v24 = &v16[v14[7]];
    *v24 = a2;
    *(v24 + 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v25 = swift_allocObject();
    result = sub_1BBADB2A8(v16, v25 + *(*v25 + 88), _s10ImageMediaV7StorageVMa);
    *a4 = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IntelligenceElement.ImageMedia.init(name:textDescription:sourceAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _s10ImageMediaV7StorageVMa();
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntelligenceImage(0);
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_1BBAA6758(v13, v17, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  v19 = &v17[v15[7]];
  *v19 = a1;
  *(v19 + 1) = a2;
  sub_1BBADB2A8(a5, &v17[v15[8]], type metadata accessor for IntelligenceFile.Attributes);
  v20 = &v17[v15[9]];
  *v20 = a3;
  *(v20 + 1) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
  v21 = swift_allocObject();
  result = sub_1BBADB2A8(v17, v21 + *(*v21 + 88), _s10ImageMediaV7StorageVMa);
  *v24 = v21;
  return result;
}

uint64_t IntelligenceElement.ImageMedia.init(fromMetadataOfImageFileAt:name:textDescription:sourceAttributes:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v30 = a5;
  v31 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = _s10ImageMediaV7StorageVMa();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BBB832C8())
  {
    if (!a3)
    {
      a2 = sub_1BBB83318();
      a3 = v21;
    }

    IntelligenceFile.Attributes.resolved(using:)(a1, v20);
    sub_1BBADB310(a6, type metadata accessor for IntelligenceFile.Attributes);
    v22 = sub_1BBB833F8();
    (*(*(v22 - 8) + 8))(a1, v22);
    v23 = type metadata accessor for IntelligenceImage(0);
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    sub_1BBAA6758(v14, v17, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    v24 = &v17[v15[5]];
    *v24 = a2;
    v24[1] = a3;
    sub_1BBADB2A8(v20, &v17[v15[6]], type metadata accessor for IntelligenceFile.Attributes);
    v25 = &v17[v15[7]];
    v26 = v30;
    *v25 = a4;
    *(v25 + 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v27 = swift_allocObject();
    result = sub_1BBADB2A8(v17, v27 + *(*v27 + 88), _s10ImageMediaV7StorageVMa);
    *v31 = v27;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1BBB84028();

    v32 = 0xD000000000000017;
    v33 = 0x80000001BBB9AF00;
    v29 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v29);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBAD4DA0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAD4E78()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBAD4F3C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAD5010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBADB25C();
  *a1 = result;
  return result;
}

void sub_1BBAD5040(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6567616D69;
  v4 = 0x80000001BBB9A660;
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0x6373654474786574;
    v4 = 0xEF6E6F6974706972;
  }

  if (*v1)
  {
    v3 = 0x64656469766F7270;
    v2 = 0xEC000000656D614ELL;
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

unint64_t sub_1BBAD50D4()
{
  v1 = 0x6567616D69;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0x6373654474786574;
  }

  if (*v0)
  {
    v1 = 0x64656469766F7270;
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

uint64_t sub_1BBAD5164@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBADB25C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBAD518C(uint64_t a1)
{
  v2 = sub_1BBADA9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAD51C8(uint64_t a1)
{
  v2 = sub_1BBADA9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.ImageMedia.encode(to:)(void *a1)
{
  v18 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBADA9A4();
  v11 = v6;
  sub_1BBB84478();
  v12 = v10 + *(*v10 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v12, v5, &qword_1EBC7B7E8);
  v22 = 0;
  sub_1BBA91164(&qword_1ED6BDB70);
  v13 = v21;
  sub_1BBB84288();
  sub_1BBA8BCC4(v5, &qword_1EBC7B7E8);
  if (v13)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = v19;
  v16 = _s10ImageMediaV7StorageVMa();
  v22 = 1;

  sub_1BBB84248();

  sub_1BBAD9638(v12 + *(v16 + 24), v15, type metadata accessor for IntelligenceFile.Attributes);
  v22 = 2;
  sub_1BBADAA94(&qword_1EBC7ADF8, type metadata accessor for IntelligenceFile.Attributes);
  sub_1BBB84288();
  sub_1BBADB310(v15, type metadata accessor for IntelligenceFile.Attributes);
  v22 = 3;

  sub_1BBB84218();
  (*(v7 + 8))(v9, v11);
}

uint64_t IntelligenceElement.ImageMedia.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v29 = _s10ImageMediaV7StorageVMa();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB68);
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v28 - v11;
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BBADA9A4();
  v33 = v12;
  v14 = v34;
  sub_1BBB84458();
  if (!v14)
  {
    v15 = v10;
    v16 = v31;
    v39 = 0;
    sub_1BBA91164(&qword_1EBC7AD68);
    sub_1BBB841B8();
    v38 = 1;
    v17 = v15;
    v34 = sub_1BBB84188();
    v19 = v18;
    v37 = 2;
    sub_1BBADAA94(&qword_1EBC7ADF0, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBB841B8();
    v36 = 3;
    v21 = sub_1BBB84138();
    v23 = v22;
    (*(v17 + 8))(v33, v32);
    sub_1BBAA6758(v9, v16, &qword_1EBC7B7E8);
    v24 = v29;
    sub_1BBADB2A8(v6, v16 + *(v29 + 24), type metadata accessor for IntelligenceFile.Attributes);
    v25 = (v16 + *(v24 + 20));
    *v25 = v34;
    v25[1] = v19;
    v26 = (v16 + *(v24 + 28));
    *v26 = v21;
    v26[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v27 = swift_allocObject();
    sub_1BBADB2A8(v16, v27 + *(*v27 + 88), _s10ImageMediaV7StorageVMa);
    *v30 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t IntelligenceElement.ImageMedia.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v66 = &v61 - v2;
  v3 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBB83658();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v70 = type metadata accessor for IntelligenceImage(0);
  v16 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v61 - v19;
  v20 = *v0;
  v73 = 0x22203A656D616ELL;
  v74 = 0xE700000000000000;
  v72[0] = v20;
  v21 = IntelligenceElement.ImageMedia.name.getter();
  MEMORY[0x1BFB16150](v21);

  MEMORY[0x1BFB16150](34, 0xE100000000000000);
  v22 = v73;
  v23 = v74;
  v24 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1BBA86A94((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[16 * v26];
  *(v27 + 4) = v22;
  *(v27 + 5) = v23;
  v28 = v20 + *(*v20 + 88);
  swift_beginAccess();
  v62 = _s10ImageMediaV7StorageVMa();
  v29 = (v28 + *(v62 + 28));
  v30 = v29[1];
  if (v30)
  {
    v31 = *v29;
    v32 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v32 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v72[0] = 0;
      v72[1] = 0xE000000000000000;

      sub_1BBB84028();

      v72[0] = 0xD000000000000012;
      v72[1] = 0x80000001BBB9AE60;
      MEMORY[0x1BFB16150](v31, v30);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v33 = v72[0];
      v34 = v72[1];
      v36 = *(v24 + 2);
      v35 = *(v24 + 3);
      if (v36 >= v35 >> 1)
      {
        v24 = sub_1BBA86A94((v35 > 1), v36 + 1, 1, v24);
      }

      *(v24 + 2) = v36 + 1;
      v37 = &v24[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v34;
    }
  }

  sub_1BBA8BC5C(v28, v9, &qword_1EBC7B7E8);
  sub_1BBAC030C(v15);
  sub_1BBA8BCC4(v9, &qword_1EBC7B7E8);
  v38 = *(v16 + 48);
  if (v38(v15, 1, v70) == 1)
  {
    sub_1BBA8BCC4(v15, &qword_1EBC7B7F8);
  }

  else
  {
    sub_1BBADB2A8(v15, v64, type metadata accessor for IntelligenceImage);
    strcpy(v72, "image: ");
    v72[1] = 0xE700000000000000;
    v39 = sub_1BBAFEABC();
    MEMORY[0x1BFB16150](v39);

    v40 = v72[0];
    v41 = v72[1];
    v43 = *(v24 + 2);
    v42 = *(v24 + 3);
    if (v43 >= v42 >> 1)
    {
      v24 = sub_1BBA86A94((v42 > 1), v43 + 1, 1, v24);
    }

    sub_1BBADB310(v64, type metadata accessor for IntelligenceImage);
    *(v24 + 2) = v43 + 1;
    v44 = &v24[16 * v43];
    *(v44 + 4) = v40;
    *(v44 + 5) = v41;
  }

  sub_1BBA8BC5C(v28, v9, &qword_1EBC7B7E8);
  sub_1BBAC030C(v12);
  sub_1BBA8BCC4(v9, &qword_1EBC7B7E8);
  if (v38(v12, 1, v70) == 1)
  {
    sub_1BBA8BCC4(v12, &qword_1EBC7B7F8);
    v45 = v28 + *(v62 + 24);
    v46 = v65;
    sub_1BBAD9638(v45, v65, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v47 = v63;
    sub_1BBADB2A8(v12, v63, type metadata accessor for IntelligenceImage);
    v46 = v65;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v65);
    sub_1BBADB310(v47, type metadata accessor for IntelligenceImage);
  }

  v48 = v69;
  v49 = v66;
  sub_1BBA8BC5C(v46, v66, &qword_1EBC7B858);
  sub_1BBADB310(v46, type metadata accessor for IntelligenceFile.Attributes);
  v50 = v68;
  if ((*(v68 + 48))(v49, 1, v48) == 1)
  {
    sub_1BBA8BCC4(v49, &qword_1EBC7B858);
  }

  else
  {
    (*(v50 + 32))(v67, v49, v48);
    v72[0] = 0;
    v72[1] = 0xE000000000000000;
    sub_1BBB84028();

    strcpy(v72, "contentType: ");
    HIBYTE(v72[1]) = -18;
    sub_1BBADAA94(&qword_1EBC7BB70, MEMORY[0x1E69E8450]);
    v51 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v51);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v52 = v72[0];
    v53 = v72[1];
    v55 = *(v24 + 2);
    v54 = *(v24 + 3);
    if (v55 >= v54 >> 1)
    {
      v24 = sub_1BBA86A94((v54 > 1), v55 + 1, 1, v24);
    }

    (*(v50 + 8))(v67, v48);
    *(v24 + 2) = v55 + 1;
    v56 = &v24[16 * v55];
    *(v56 + 4) = v52;
    *(v56 + 5) = v53;
  }

  strcpy(v72, "ImageMedia(");
  HIDWORD(v72[1]) = -352321536;
  v71 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBAA6710(&qword_1EBC7AEB8, &qword_1EBC7B590);
  v57 = sub_1BBB83938();
  v59 = v58;

  MEMORY[0x1BFB16150](v57, v59);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v72[0];
}

uint64_t IntelligenceElement.ImageMedia.init(for:fromImageFileAt:name:textDescription:sourceAttributes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v153 = a4;
  v154 = a7;
  v143 = a5;
  v144 = a6;
  v147 = a3;
  v141 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB78);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v133 = &v127 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v127 - v12;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  MEMORY[0x1EEE9AC00](v151);
  v140 = (&v127 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v146 = (&v127 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v128 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v145 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v148 = &v127 - v21;
  v22 = _s10ImageMediaV7StorageVMa();
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v127 - v25;
  v27 = type metadata accessor for IntelligenceFile.Attributes(0);
  v138 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v127 - v31;
  v33 = a1[7];
  v168 = a1[6];
  v169[0] = v33;
  *(v169 + 15) = *(a1 + 127);
  v34 = a1[3];
  v164 = a1[2];
  v165 = v34;
  v35 = a1[5];
  v166 = a1[4];
  v167 = v35;
  v36 = a1[1];
  v162 = *a1;
  v163 = v36;
  if (sub_1BBB832C8())
  {
    v37 = sub_1BBB833F8();
    v142 = &v127;
    v38 = MEMORY[0x1EEE9AC00](v37);
    v40 = (&v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = v41;
    v43 = *(v41 + 16);
    v152 = v44;
    v136 = v41 + 16;
    v137 = v39;
    v135 = v43;
    (v43)(v40, a2, v38);
    sub_1BBAD9638(v154, v32, type metadata accessor for IntelligenceFile.Attributes);
    if (sub_1BBB832C8())
    {
      v150 = a2;
      v129 = v18;
      if (v153)
      {
        v45 = v147;
        v46 = v153;
      }

      else
      {
        v45 = sub_1BBB83318();
        v46 = v47;
      }

      IntelligenceFile.Attributes.resolved(using:)(v40, v29);
      sub_1BBADB310(v32, type metadata accessor for IntelligenceFile.Attributes);
      v134 = v42;
      v48 = v42 + 8;
      v49 = v40;
      v50 = *(v42 + 8);
      v51 = v152;
      v50(v49, v152);
      v52 = type metadata accessor for IntelligenceImage(0);
      v53 = v148;
      (*(*(v52 - 8) + 56))(v148, 1, 1, v52);
      v54 = v53;
      v55 = v29;
      sub_1BBAA6758(v54, v26, &qword_1EBC7B7F8);
      swift_storeEnumTagMultiPayload();
      v56 = &v26[v22[5]];
      *v56 = v45;
      v56[1] = v46;
      sub_1BBADB2A8(v29, &v26[v22[6]], type metadata accessor for IntelligenceFile.Attributes);
      v57 = &v26[v22[7]];
      v58 = v144;
      *v57 = v143;
      *(v57 + 1) = v58;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
      v60 = swift_allocObject();
      v61 = *(*v60 + 88);
      sub_1BBADB2A8(v26, v60 + v61, _s10ImageMediaV7StorageVMa);
      if (!BYTE9(v169[0]))
      {
        sub_1BBA96D48(&v162);

        sub_1BBADB310(v154, type metadata accessor for IntelligenceFile.Attributes);
        result = (v50)(v150, v51);
LABEL_24:
        *v141 = v60;
        return result;
      }

      v127 = v59;
      v142 = v50;
      v143 = v48;
      v62 = sub_1BBB838D8();
      (*(*(v62 - 8) + 56))(v149, 1, 1, v62);
      v63 = sub_1BBAD9638(v154, v29, type metadata accessor for IntelligenceFile.Attributes);
      v144 = &v127;
      v64 = v137;
      v65 = MEMORY[0x1EEE9AC00](v63);
      v66 = &v127 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      v135(v66, v150, v51, v65);
      v67 = (*(v138 + 80) + 159) & ~*(v138 + 80);
      v68 = v134;
      v69 = (v139 + *(v134 + 80) + v67) & ~*(v134 + 80);
      v70 = v64 + v69 + 7;
      v71 = v60;
      v72 = v55;
      v73 = v70 & 0xFFFFFFFFFFFFFFF8;
      v74 = v61;
      v75 = swift_allocObject();
      v76 = v169[0];
      v75[7] = v168;
      v75[8] = v76;
      *(v75 + 143) = *(v169 + 15);
      v77 = v165;
      v75[3] = v164;
      v75[4] = v77;
      v78 = v167;
      v75[5] = v166;
      v75[6] = v78;
      v79 = v163;
      v75[1] = v162;
      v75[2] = v79;
      v80 = v72;
      v60 = v71;
      sub_1BBADB2A8(v80, v75 + v67, type metadata accessor for IntelligenceFile.Attributes);
      (*(v68 + 32))(v75 + v69, v66, v152);
      v81 = (v75 + v73);
      v82 = v153;
      *v81 = v147;
      v81[1] = v82;
      swift_beginAccess();
      v153 = v74;
      v83 = v146;
      sub_1BBA8BC5C(v71 + v74, v146, &qword_1EBC7B7E8);
      sub_1BBA94F7C(&v162, &v157);

      v84 = v145;
      sub_1BBAC030C(v145);
      v85 = v140;
      sub_1BBA8BC5C(v83, v140, &qword_1EBC7B7E0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = *v85;
        v87 = qword_1ED6BDEB8;

        if (v87 != -1)
        {
          swift_once();
        }

        v88 = sub_1BBB83758();
        __swift_project_value_buffer(v88, qword_1ED6BDEC0);

        v89 = sub_1BBB83738();
        v90 = sub_1BBB83D48();
        v91 = os_log_type_enabled(v89, v90);
        v92 = v154;
        if (v91)
        {
          v93 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v157 = v151;
          *v93 = 136446210;
          v94 = (*(*v86 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((v86 + v94));
          v95 = sub_1BBAD9A4C();
          v97 = v96;
          v98 = (v86 + v94);
          v92 = v154;
          os_unfair_lock_unlock(v98);

          v99 = sub_1BBA85E50(v95, v97, &v157);
          v84 = v145;

          *(v93 + 4) = v99;
          _os_log_impl(&dword_1BBA81000, v89, v90, "LoadableValue is already being loaded asynchronously; returning existing async loadable for %{public}s", v93, 0xCu);
          v100 = v151;
          __swift_destroy_boxed_opaque_existential_1(v151);
          MEMORY[0x1BFB174E0](v100, -1, -1);
          v101 = v93;
          v83 = v146;
          MEMORY[0x1BFB174E0](v101, -1, -1);
        }

        else
        {
        }

        v118 = v149;

        goto LABEL_21;
      }

      v103 = qword_1ED6BF1F8;

      if (v103 != -1)
      {
        swift_once();
      }

      v104 = off_1ED6BF200;
      v105 = v162;
      v106 = DWORD1(v162);
      if (qword_1ED6BDAE8 != -1)
      {
        swift_once();
      }

      v107 = off_1ED6BDAF0;
      os_unfair_lock_lock(off_1ED6BDAF0 + 6);
      v108 = *(v107 + 2);
      if (!__OFADD__(v108, 1))
      {
        v144 = 0x80000001BBB9B330;
        *(v107 + 2) = v108 + 1;
        os_unfair_lock_unlock(v107 + 6);
        v147 = mach_continuous_time();
        v157 = v108;
        v158 = __PAIR64__(v106, v105);
        v138 = v105;
        v139 = 0xD000000000000021;
        v159 = 0xD000000000000021;
        v160 = 0x80000001BBB9B330;
        v161 = v147;
        v137 = v106;
        v109 = v104[2];
        MEMORY[0x1EEE9AC00](v147);
        *(&v127 - 12) = v105;
        *(&v127 - 11) = v110;
        *(&v127 - 5) = &v157;
        *(&v127 - 4) = v149;
        *(&v127 - 3) = &v162;
        v126 = v104;
        os_unfair_lock_lock((v109 + 32));
        sub_1BBADAD20((v109 + 16));
        os_unfair_lock_unlock((v109 + 32));
        v111 = v145;
        v112 = v148;
        sub_1BBA8BC5C(v145, v148, &qword_1EBC7B7F8);
        v113 = v130;
        v114 = v131;
        sub_1BBA8BC5C(v112, &v131[*(v130 + 32)], &qword_1EBC7B7F8);
        *(v114 + 32) = 0;
        *v114 = 0u;
        *(v114 + 16) = 0u;
        (*(v128 + 56))(v114 + *(v113 + 28), 1, 1, v129);
        v115 = v138 | (v137 << 32);

        *v114 = v108;
        *(v114 + 8) = v115;
        v84 = v111;
        v116 = v144;
        *(v114 + 16) = v139;
        *(v114 + 24) = v116;
        *(v114 + 32) = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB90);
        v86 = swift_allocObject();
        *(v86 + ((*(*v86 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        sub_1BBA8BC5C(v114, v86 + *(*v86 + *MEMORY[0x1E69E6B68] + 16), &qword_1EBC7B7F0);
        sub_1BBA8BCC4(v112, &qword_1EBC7B7F8);
        v117 = v114;
        v92 = v154;
        v83 = v146;
        v118 = v149;
        sub_1BBA8BCC4(v117, &qword_1EBC7B7F0);
        swift_retain_n();
        sub_1BBA8BCC4(v83, &qword_1EBC7B7E0);
        *v83 = v86;
        swift_storeEnumTagMultiPayload();
        sub_1BBA8BCC4(v140, &qword_1EBC7B7F8);
LABEL_21:
        v156[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB80);
        v156[4] = sub_1BBAA6710(&qword_1EBC7BB88, &qword_1EBC7BB80);

        sub_1BBA96D48(&v162);
        v156[0] = v86;
        v119 = v133;
        sub_1BBB83C68();
        v120 = sub_1BBB83C88();
        (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
        sub_1BBA98C94(v156, v155);
        v121 = swift_allocObject();
        v121[2] = 0;
        v121[3] = 0;
        v121[4] = &unk_1BBB875F8;
        v121[5] = v75;
        sub_1BBA97A80(v155, (v121 + 6));
        sub_1BBAD9314(0, 0, v119, &unk_1BBB87610, v121);

        sub_1BBADB310(v92, type metadata accessor for IntelligenceFile.Attributes);
        (v142)(v150, v152);
        sub_1BBA8BCC4(v119, &qword_1EBC7BB78);
        __swift_destroy_boxed_opaque_existential_1(v156);
        sub_1BBA8BCC4(v84, &qword_1EBC7B7F8);
        sub_1BBA8BCC4(v118, &qword_1EBC7CB00);
        v122 = v132;
        sub_1BBAD9638(v60 + v153, v132, _s10ImageMediaV7StorageVMa);
        sub_1BBAC1E64(v83, v122);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v123 = *(*v60 + 88);
          swift_beginAccess();
          sub_1BBAD95D4(v122, v60 + v123);
          result = swift_endAccess();
        }

        else
        {
          v124 = swift_allocObject();
          sub_1BBADB2A8(v122, v124 + *(*v124 + 88), _s10ImageMediaV7StorageVMa);

          v60 = v124;
        }

        goto LABEL_24;
      }

      __break(1u);
    }
  }

  v157 = 0;
  v158 = 0xE000000000000000;
  sub_1BBB84028();

  v157 = 0xD000000000000017;
  v158 = 0x80000001BBB9AF00;
  v125 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v125);

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t sub_1BBAD74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  type metadata accessor for IntelligenceImageProcessor.Input(0);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for IntelligenceImageProcessor.Options(0);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBAD75BC, 0, 0);
}

uint64_t sub_1BBAD75BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = type metadata accessor for IntelligenceFile.Attributes(0);
  v25 = v2;
  v26 = (*(v3 - 8) + 56);
  v27 = *v26;
  (*v26)(v2, 1, 1, v3);
  v24 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  if (qword_1ED6BDDC8 != -1)
  {
    swift_once();
  }

  memmove((inited + 48), &xmmword_1ED6BDDD0, 0x39uLL);
  *(inited + 112) = 72;
  if (qword_1ED6BEB10 != -1)
  {
    swift_once();
  }

  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v20 = v0[23];
  v21 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v22 = v0[20];
  v23 = v0[25];
  *(inited + 120) = qword_1ED6BEB18;
  *(inited + 128) = 0x3FE999999999999ALL;
  *(inited + 136) = 0;

  sub_1BBAC7278(inited);
  swift_setDeallocating();
  sub_1BBAC7878(inited + 32);
  v10 = *(v6 + 24);
  v11 = *MEMORY[0x1E69E7F88];
  v12 = sub_1BBB83848();
  (*(*(v12 - 8) + 104))(v5 + v10, v11, v12);
  v13 = v5 + *(v6 + 28);
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  v14 = *(v9 + 128);

  *(v25 + v24) = v14;
  *v13 = 1;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 257;
  sub_1BBA8BCC4(v5, &qword_1EBC7B848);
  sub_1BBAD9638(v8, v5, type metadata accessor for IntelligenceFile.Attributes);
  v27(v5, 0, 1, v3);
  static IntelligenceImageProcessor.Input.fileURL(_:name:)(v20, v21, v23, v7);
  static IntelligenceImageProcessor.processSynchronously(_:options:)(v7, v5, v22);
  v15 = v0[28];
  v16 = v0[20];
  sub_1BBADB310(v0[26], type metadata accessor for IntelligenceImageProcessor.Input);
  v17 = type metadata accessor for IntelligenceImage(0);
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_1BBADB310(v15, type metadata accessor for IntelligenceImageProcessor.Options);

  v18 = v0[1];

  return v18();
}

uint64_t IntelligenceElement.ImageMedia.init(for:fromImageFile:name:textDescription:sourceAttributes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v146 = a5;
  v147 = a6;
  v156 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB78);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v138 = v131 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
  MEMORY[0x1EEE9AC00](v134);
  v135 = v131 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  MEMORY[0x1EEE9AC00](v155);
  v141 = (v131 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v131 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v131 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v132 = *(v23 - 8);
  v133 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v148 = v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v149 = v131 - v26;
  v145 = _s10ImageMediaV7StorageVMa();
  MEMORY[0x1EEE9AC00](v145);
  v137 = v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v144 = v131 - v29;
  v30 = type metadata accessor for IntelligenceFile.Attributes(0);
  v139 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v136 = v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v154 = v131 - v33;
  v140 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v131 - v36;
  v38 = a1[7];
  v171 = a1[6];
  v172[0] = v38;
  *(v172 + 15) = *(a1 + 127);
  v39 = a1[3];
  v167 = a1[2];
  v168 = v39;
  v40 = a1[5];
  v169 = a1[4];
  v170 = v40;
  v41 = a1[1];
  v165 = *a1;
  v166 = v41;
  v157 = a4;
  v143 = a8;
  v150 = v19;
  v153 = v22;
  if (!a4)
  {
    v42 = *(a2 + 24);
    v156 = *(a2 + 16);
    v157 = v42;
  }

  v142 = a7;
  IntelligenceFile.Attributes.resolved(using:)(a2 + OBJC_IVAR____TtC21UIIntelligenceSupport16IntelligenceFile_attributes, v37);
  v43 = sub_1BBB833F8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v151 = v37;
  v47 = v131 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = v131 - v49;
  v152 = a2;
  IntelligenceFile.fileURL.getter(v131 - v49);
  if ((*(v44 + 48))(v50, 1, v43) == 1)
  {
    sub_1BBA8BCC4(v50, &qword_1EBC7BB98);
    v51 = v151;
    v52 = v154;
    sub_1BBAD9638(v151, v154, type metadata accessor for IntelligenceFile.Attributes);
    v53 = type metadata accessor for IntelligenceImage(0);
    v54 = v149;
    (*(*(v53 - 8) + 56))(v149, 1, 1, v53);
    v55 = v144;
    sub_1BBAA6758(v54, v144, &qword_1EBC7B7F8);
    swift_storeEnumTagMultiPayload();
    v56 = v145;
    v57 = (v55 + *(v145 + 5));
    v58 = v157;
    *v57 = v156;
    v57[1] = v58;
    sub_1BBADB2A8(v52, v55 + *(v56 + 6), type metadata accessor for IntelligenceFile.Attributes);
    v59 = (v55 + *(v56 + 7));
    v60 = v147;
    *v59 = v146;
    v59[1] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v61 = swift_allocObject();
    sub_1BBADB2A8(v55, v61 + *(*v61 + 88), _s10ImageMediaV7StorageVMa);

    v62 = v152;
  }

  else
  {
    v131[1] = v131;
    v63 = (*(v44 + 32))(v131 - v46, v50, v43);
    v131[0] = v131;
    v64 = MEMORY[0x1EEE9AC00](v63);
    v65 = (v131 - v46);
    (*(v44 + 16))(v131 - v46, v131 - v46, v43, v64);
    v66 = v151;
    v67 = v136;
    sub_1BBAD9638(v151, v136, type metadata accessor for IntelligenceFile.Attributes);
    if ((sub_1BBB832C8() & 1) == 0)
    {
      goto LABEL_27;
    }

    v68 = v157;

    v69 = v154;
    IntelligenceFile.Attributes.resolved(using:)(v65, v154);
    sub_1BBADB310(v67, type metadata accessor for IntelligenceFile.Attributes);
    v70 = *(v44 + 8);
    v70(v65, v43);
    v70(v47, v43);
    v71 = type metadata accessor for IntelligenceImage(0);
    v72 = v149;
    (*(*(v71 - 8) + 56))(v149, 1, 1, v71);
    v73 = v144;
    sub_1BBAA6758(v72, v144, &qword_1EBC7B7F8);
    swift_storeEnumTagMultiPayload();
    v74 = v145;
    v75 = (v73 + *(v145 + 5));
    *v75 = v156;
    v75[1] = v68;
    sub_1BBADB2A8(v69, v73 + *(v74 + 6), type metadata accessor for IntelligenceFile.Attributes);
    v76 = (v73 + *(v74 + 7));
    v77 = v147;
    *v76 = v146;
    v76[1] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
    v61 = swift_allocObject();
    sub_1BBADB2A8(v73, v61 + *(*v61 + 88), _s10ImageMediaV7StorageVMa);
    v62 = v152;
    v51 = v66;
  }

  v78 = v150;
  if (!BYTE9(v172[0]))
  {

    sub_1BBA96D48(&v165);

    sub_1BBADB310(v142, type metadata accessor for IntelligenceFile.Attributes);
    result = sub_1BBADB310(v51, type metadata accessor for IntelligenceFile.Attributes);
LABEL_25:
    *v143 = v61;
    return result;
  }

  v79 = sub_1BBB838D8();
  (*(*(v79 - 8) + 56))(v153, 1, 1, v79);
  v80 = v154;
  sub_1BBAD9638(v51, v154, type metadata accessor for IntelligenceFile.Attributes);
  v81 = (*(v139 + 80) + 159) & ~*(v139 + 80);
  v82 = (v140 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v172[0];
  v83[7] = v171;
  v83[8] = v84;
  *(v83 + 143) = *(v172 + 15);
  v85 = v168;
  v83[3] = v167;
  v83[4] = v85;
  v86 = v170;
  v83[5] = v169;
  v83[6] = v86;
  v87 = v166;
  v83[1] = v165;
  v83[2] = v87;
  sub_1BBADB2A8(v80, v83 + v81, type metadata accessor for IntelligenceFile.Attributes);
  *(v83 + v82) = v62;
  v88 = (v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8));
  v89 = v157;
  *v88 = v156;
  v88[1] = v89;
  v90 = *(*v61 + 88);
  swift_beginAccess();
  sub_1BBA8BC5C(v61 + v90, v78, &qword_1EBC7B7E8);
  sub_1BBA94F7C(&v165, &v160);

  v91 = v148;
  sub_1BBAC030C(v148);
  v92 = v141;
  sub_1BBA8BC5C(v78, v141, &qword_1EBC7B7E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v157 = v90;
  if (EnumCaseMultiPayload == 1)
  {
    v94 = *v92;
    v95 = qword_1ED6BDEB8;

    if (v95 != -1)
    {
      swift_once();
    }

    v96 = sub_1BBB83758();
    __swift_project_value_buffer(v96, qword_1ED6BDEC0);

    v97 = sub_1BBB83738();
    v98 = sub_1BBB83D48();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v155 = v99;
      v156 = swift_slowAlloc();
      v160 = v156;
      *v99 = 136446210;
      v100 = v78;
      v101 = (*(*v94 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v94 + v101));
      v102 = sub_1BBAD9A4C();
      v104 = v103;
      v105 = (v94 + v101);
      v78 = v100;
      os_unfair_lock_unlock(v105);

      v106 = sub_1BBA85E50(v102, v104, &v160);
      v51 = v151;

      v107 = v155;
      *(v155 + 4) = v106;
      v108 = v107;
      _os_log_impl(&dword_1BBA81000, v97, v98, "LoadableValue is already being loaded asynchronously; returning existing async loadable for %{public}s", v107, 0xCu);
      v109 = v156;
      __swift_destroy_boxed_opaque_existential_1(v156);
      MEMORY[0x1BFB174E0](v109, -1, -1);
      MEMORY[0x1BFB174E0](v108, -1, -1);
    }

    else
    {
    }

    v122 = v157;

    goto LABEL_22;
  }

  v111 = qword_1ED6BF1F8;

  if (v111 != -1)
  {
    swift_once();
  }

  v112 = off_1ED6BF200;
  v113 = v165;
  v114 = DWORD1(v165);
  if (qword_1ED6BDAE8 != -1)
  {
    swift_once();
  }

  v115 = off_1ED6BDAF0;
  os_unfair_lock_lock(off_1ED6BDAF0 + 6);
  v116 = *(v115 + 2);
  if (!__OFADD__(v116, 1))
  {
    v154 = *(v115 + 2);
    v156 = v61;
    v146 = 0x80000001BBB9B360;
    *(v115 + 2) = v116 + 1;
    os_unfair_lock_unlock(v115 + 6);
    v147 = mach_continuous_time();
    v145 = v131;
    v160 = v116;
    v161 = __PAIR64__(v114, v113);
    v162 = 0xD00000000000002ELL;
    v163 = 0x80000001BBB9B360;
    v164 = v147;
    v117 = v112[2];
    MEMORY[0x1EEE9AC00](v147);
    LODWORD(v131[-6]) = v113;
    HIDWORD(v131[-6]) = v114;
    v131[-5] = &v160;
    v131[-4] = v153;
    v131[-3] = &v165;
    v130 = v112;
    v61 = v156;
    os_unfair_lock_lock((v117 + 32));
    sub_1BBADB428((v117 + 16));
    os_unfair_lock_unlock((v117 + 32));
    v118 = v149;
    sub_1BBA8BC5C(v91, v149, &qword_1EBC7B7F8);
    v119 = v134;
    v120 = v135;
    sub_1BBA8BC5C(v118, &v135[*(v134 + 32)], &qword_1EBC7B7F8);
    *(v120 + 32) = 0;
    *v120 = 0u;
    *(v120 + 16) = 0u;
    (*(v132 + 56))(v120 + *(v119 + 28), 1, 1, v133);

    *v120 = v154;
    *(v120 + 8) = v113 | (v114 << 32);
    *(v120 + 16) = 0xD00000000000002ELL;
    v121 = v147;
    *(v120 + 24) = v146;
    *(v120 + 32) = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB90);
    v94 = swift_allocObject();
    *(v94 + ((*(*v94 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_1BBA8BC5C(v120, v94 + *(*v94 + *MEMORY[0x1E69E6B68] + 16), &qword_1EBC7B7F0);
    sub_1BBA8BCC4(v118, &qword_1EBC7B7F8);
    v122 = v157;
    sub_1BBA8BCC4(v120, &qword_1EBC7B7F0);
    swift_retain_n();
    v78 = v150;
    sub_1BBA8BCC4(v150, &qword_1EBC7B7E0);
    *v78 = v94;
    swift_storeEnumTagMultiPayload();
    sub_1BBA8BCC4(v141, &qword_1EBC7B7F8);
    v51 = v151;
LABEL_22:
    v159[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB80);
    v159[4] = sub_1BBAA6710(&qword_1EBC7BB88, &qword_1EBC7BB80);

    sub_1BBA96D48(&v165);
    v159[0] = v94;
    v123 = v138;
    sub_1BBB83C68();
    v124 = sub_1BBB83C88();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    sub_1BBA98C94(v159, v158);
    v125 = swift_allocObject();
    v125[2] = 0;
    v125[3] = 0;
    v125[4] = &unk_1BBB87628;
    v125[5] = v83;
    sub_1BBA97A80(v158, (v125 + 6));
    sub_1BBAD9314(0, 0, v123, &unk_1BBB87630, v125);

    sub_1BBADB310(v142, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBA8BCC4(v123, &qword_1EBC7BB78);
    __swift_destroy_boxed_opaque_existential_1(v159);
    sub_1BBA8BCC4(v148, &qword_1EBC7B7F8);
    sub_1BBA8BCC4(v153, &qword_1EBC7CB00);
    sub_1BBADB310(v51, type metadata accessor for IntelligenceFile.Attributes);
    v126 = v137;
    sub_1BBAD9638(v61 + v122, v137, _s10ImageMediaV7StorageVMa);
    sub_1BBAC1E64(v78, v126);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v127 = *(*v61 + 88);
      swift_beginAccess();
      sub_1BBAD95D4(v126, v61 + v127);
      result = swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB58);
      v128 = swift_allocObject();
      sub_1BBADB2A8(v126, v128 + *(*v128 + 88), _s10ImageMediaV7StorageVMa);

      v61 = v128;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_27:
  v160 = 0;
  v161 = 0xE000000000000000;
  sub_1BBB84028();

  v160 = 0xD000000000000017;
  v161 = 0x80000001BBB9AF00;
  v129 = sub_1BBB832F8();
  MEMORY[0x1BFB16150](v129);

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

uint64_t sub_1BBAD8CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  type metadata accessor for IntelligenceImageProcessor.Input(0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for IntelligenceImageProcessor.Options(0);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BBAD8D84, 0, 0);
}

uint64_t sub_1BBAD8D84()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = type metadata accessor for IntelligenceFile.Attributes(0);
  v32 = *(*(v3 - 8) + 56);
  v32(v1, 1, 1, v3);
  v31 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  if (qword_1ED6BDDC8 != -1)
  {
    swift_once();
  }

  memmove((inited + 48), &xmmword_1ED6BDDD0, 0x39uLL);
  *(inited + 112) = 72;
  if (qword_1ED6BEB10 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 176);
  v8 = *(v0 + 168);
  *(inited + 120) = qword_1ED6BEB18;
  *(inited + 128) = 0x3FE999999999999ALL;
  *(inited + 136) = 0;

  sub_1BBAC7278(inited);
  swift_setDeallocating();
  sub_1BBAC7878(inited + 32);
  v9 = *(v5 + 24);
  v10 = *MEMORY[0x1E69E7F88];
  v11 = sub_1BBB83848();
  (*(*(v11 - 8) + 104))(v6 + v9, v10, v11);
  v12 = v6 + *(v5 + 28);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  v13 = *(v8 + 128);

  *(v1 + v31) = v13;
  *v12 = 1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 257;
  sub_1BBA8BCC4(v6, &qword_1EBC7B848);
  sub_1BBAD9638(v7, v6, type metadata accessor for IntelligenceFile.Attributes);
  v32(v6, 0, 1, v3);
  v14 = sub_1BBB833F8();
  v15 = *(v14 - 8);
  v16 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB98);
  v17 = swift_task_alloc();
  IntelligenceFile.fileURL.getter(v17);
  if ((*(v15 + 48))(v17, 1, v14) == 1)
  {
    sub_1BBA8BCC4(v17, &qword_1EBC7BB98);

    v18 = IntelligenceFile.cgImage.getter();
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    *v19 = v18;
    v19[1] = v21;
    v19[2] = v22;
    type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
    swift_storeEnumTagMultiPayload();
    sub_1BBADB2A8(v19, v20, type metadata accessor for IntelligenceImageProcessor.Input);
  }

  else
  {
    v23 = *(v0 + 216);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    (*(v15 + 32))(v16, v17, v14);

    static IntelligenceImageProcessor.Input.fileURL(_:name:)(v16, v25, v24, v23);
    (*(v15 + 8))(v16, v14);
  }

  static IntelligenceImageProcessor.processSynchronously(_:options:)(*(v0 + 216), *(v0 + 232), *(v0 + 160));
  v26 = *(v0 + 232);
  v27 = *(v0 + 160);
  sub_1BBADB310(*(v0 + 216), type metadata accessor for IntelligenceImageProcessor.Input);
  v28 = type metadata accessor for IntelligenceImage(0);
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_1BBADB310(v26, type metadata accessor for IntelligenceImageProcessor.Options);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1BBAD9314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BBA8BC5C(a3, v25 - v10, &qword_1EBC7BB78);
  v12 = sub_1BBB83C88();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BBA8BCC4(v11, &qword_1EBC7BB78);
  }

  else
  {
    sub_1BBB83C78();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BBB83C18();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BBB83A88() + 32;
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

uint64_t sub_1BBAD95D4(uint64_t a1, uint64_t a2)
{
  v4 = _s10ImageMediaV7StorageVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBAD9638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBAD96A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1BBAD97DC;

  return v11(v8);
}

uint64_t sub_1BBAD97DC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1BBAD99A4;
  }

  else
  {
    v2 = sub_1BBAD98F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BBAD98F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 16))(v2, v3, v4);
  sub_1BBA8BCC4(v2, &qword_1EBC7B7F8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BBAD99A4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 32))(v1, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BBAD9A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *(v0 + 24);
  if (v8)
  {
    v9 = *(v0 + 16);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0x616F4C636E797341, 0xEF2228656C626164);
    MEMORY[0x1BFB16150](v9, v8);
    MEMORY[0x1BFB16150](0x5665736162202C22, 0xEE00203A65756C61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
    sub_1BBB84098();
    MEMORY[0x1BFB16150](41, 0xE100000000000000);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
    sub_1BBA8BC5C(v0 + *(v10 + 28), v3, &qword_1EBC7B7D8);
    v11 = *(v5 + 48);
    if (v11(v3, 1, v4) == 1)
    {
      sub_1BBA8BC5C(v0 + *(v10 + 32), v7, &qword_1EBC7B7F8);
      if (v11(v3, 1, v4) != 1)
      {
        sub_1BBA8BCC4(v3, &qword_1EBC7B7D8);
      }
    }

    else
    {
      sub_1BBAA6758(v3, v7, &qword_1EBC7B7F8);
    }

    sub_1BBB84098();
    sub_1BBA8BCC4(v7, &qword_1EBC7B7F8);
  }

  return v13;
}

uint64_t sub_1BBAD9D34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BBAD9E2C;

  return v6(a1);
}

uint64_t sub_1BBAD9E2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BBAD9F24(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV10ImageMediaV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFile.Attributes(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v83 = &v74[-v8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v77 = &v74[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v74[-v11];
  v12 = type metadata accessor for IntelligenceImage(0);
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v79 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v74[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v74[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B838);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v74[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v82 = &v74[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v81 = &v74[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v86 = &v74[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v74[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v74[-v35];
  v37 = *a1;
  v38 = *a2;
  v90 = *a1;
  v39 = IntelligenceElement.ImageMedia.name.getter();
  v41 = v40;
  v89 = v38;
  if (v39 == IntelligenceElement.ImageMedia.name.getter() && v41 == v42)
  {
  }

  else
  {
    v43 = sub_1BBB842F8();

    if ((v43 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v44 = v37 + *(*v37 + 88);
  swift_beginAccess();
  v45 = _s10ImageMediaV7StorageVMa();
  v46 = (v44 + *(v45 + 28));
  v47 = *v46;
  v48 = v46[1];
  v49 = v38 + *(*v38 + 88);
  swift_beginAccess();
  v76 = v45;
  v50 = *(v45 + 28);
  v51 = v49;
  v52 = (v49 + v50);
  v53 = v52[1];
  if (v48)
  {
    if (!v53 || (v47 != *v52 || v48 != v53) && (sub_1BBB842F8() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v53)
  {
    goto LABEL_12;
  }

  sub_1BBA8BC5C(v44, v24, &qword_1EBC7B7E8);
  sub_1BBAC030C(v36);
  sub_1BBA8BCC4(v24, &qword_1EBC7B7E8);
  sub_1BBA8BC5C(v49, v24, &qword_1EBC7B7E8);
  sub_1BBAC030C(v34);
  sub_1BBA8BCC4(v24, &qword_1EBC7B7E8);
  v55 = *(v19 + 48);
  sub_1BBA8BC5C(v36, v21, &qword_1EBC7B7F8);
  sub_1BBA8BC5C(v34, &v21[v55], &qword_1EBC7B7F8);
  v56 = v87;
  v57 = v88 + 48;
  v58 = *(v88 + 48);
  if (v58(v21, 1, v87) != 1)
  {
    sub_1BBA8BC5C(v21, v86, &qword_1EBC7B7F8);
    if (v58(&v21[v55], 1, v56) == 1)
    {
      sub_1BBA8BCC4(v34, &qword_1EBC7B7F8);
      sub_1BBA8BCC4(v36, &qword_1EBC7B7F8);
      sub_1BBADB310(v86, type metadata accessor for IntelligenceImage);
      goto LABEL_20;
    }

    v88 = v57;
    sub_1BBADB2A8(&v21[v55], v85, type metadata accessor for IntelligenceImage);
    v63 = sub_1BBB00EFC();
    v64 = sub_1BBB00EFC();
    v65 = sub_1BBADF440(v63, v64);

    if ((v65 & 1) == 0)
    {
      sub_1BBADB310(v85, type metadata accessor for IntelligenceImage);
      sub_1BBA8BCC4(v34, &qword_1EBC7B7F8);
      sub_1BBA8BCC4(v36, &qword_1EBC7B7F8);
      sub_1BBADB310(v86, type metadata accessor for IntelligenceImage);
      v62 = v21;
      v61 = &qword_1EBC7B7F8;
      goto LABEL_21;
    }

    v66 = v80;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v80);
    v67 = v77;
    v68 = v85;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v77);
    v75 = static IntelligenceFile.Attributes.== infix(_:_:)(v66, v67);
    sub_1BBADB310(v67, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBADB310(v80, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBADB310(v68, type metadata accessor for IntelligenceImage);
    sub_1BBA8BCC4(v34, &qword_1EBC7B7F8);
    sub_1BBA8BCC4(v36, &qword_1EBC7B7F8);
    sub_1BBADB310(v86, type metadata accessor for IntelligenceImage);
    sub_1BBA8BCC4(v21, &qword_1EBC7B7F8);
    if (v75)
    {
      goto LABEL_16;
    }

LABEL_12:
    v54 = 0;
    return v54 & 1;
  }

  v88 = v57;
  sub_1BBA8BCC4(v34, &qword_1EBC7B7F8);
  sub_1BBA8BCC4(v36, &qword_1EBC7B7F8);
  if (v58(&v21[v55], 1, v87) != 1)
  {
LABEL_20:
    v61 = &qword_1EBC7B838;
    v62 = v21;
LABEL_21:
    sub_1BBA8BCC4(v62, v61);
    v54 = 0;
    return v54 & 1;
  }

  sub_1BBA8BCC4(v21, &qword_1EBC7B7F8);
LABEL_16:
  sub_1BBA8BC5C(v44, v24, &qword_1EBC7B7E8);
  v59 = v81;
  sub_1BBAC030C(v81);
  sub_1BBA8BCC4(v24, &qword_1EBC7B7E8);
  if (v58(v59, 1, v87) == 1)
  {
    sub_1BBA8BCC4(v59, &qword_1EBC7B7F8);
    v60 = v83;
    sub_1BBAD9638(v44 + *(v76 + 24), v83, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v69 = v78;
    sub_1BBADB2A8(v59, v78, type metadata accessor for IntelligenceImage);
    v60 = v83;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v83);
    sub_1BBADB310(v69, type metadata accessor for IntelligenceImage);
  }

  v70 = v82;
  sub_1BBA8BC5C(v51, v24, &qword_1EBC7B7E8);
  sub_1BBAC030C(v70);
  sub_1BBA8BCC4(v24, &qword_1EBC7B7E8);
  if (v58(v70, 1, v87) == 1)
  {
    sub_1BBA8BCC4(v70, &qword_1EBC7B7F8);
    v71 = v84;
    sub_1BBAD9638(v51 + *(v76 + 24), v84, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v72 = v79;
    sub_1BBADB2A8(v70, v79, type metadata accessor for IntelligenceImage);
    v71 = v84;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v84);
    sub_1BBADB310(v72, type metadata accessor for IntelligenceImage);
  }

  v54 = static IntelligenceFile.Attributes.== infix(_:_:)(v60, v71);
  sub_1BBADB310(v71, type metadata accessor for IntelligenceFile.Attributes);
  sub_1BBADB310(v60, type metadata accessor for IntelligenceFile.Attributes);
  return v54 & 1;
}

unint64_t sub_1BBADA9A4()
{
  result = qword_1EBC7B000;
  if (!qword_1EBC7B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B000);
  }

  return result;
}

uint64_t sub_1BBADA9F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7F8);
    sub_1BBADAA94(a2, type metadata accessor for IntelligenceImage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBADAA94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBADAADC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntelligenceFile.Attributes(0) - 8);
  v6 = (*(v5 + 80) + 159) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1BBB833F8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1BBADB440;

  return sub_1BBAD74F4(a1, v1 + 16, v1 + v6, v1 + v9, v11, v12);
}

uint64_t sub_1BBADAC5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BBADB440;

  return sub_1BBAD96A0(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1BBADAD38(uint64_t a1)
{
  v4 = *(type metadata accessor for IntelligenceFile.Attributes(0) - 8);
  v5 = (*(v4 + 80) + 159) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BBADAE68;

  return sub_1BBAD8CB0(a1, v1 + 16, v1 + v5, v7, v9, v10);
}

uint64_t sub_1BBADAE68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BBADAFA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BBADAE68;

  return sub_1BBAD96A0(a1, v4, v5, v6, v7, (v1 + 6));
}

void sub_1BBADB0B0()
{
  sub_1BBAC2888();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntelligenceFile.Attributes(319);
    if (v1 <= 0x3F)
    {
      sub_1BBAC2838();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BBADB158()
{
  result = qword_1EBC7BBA0;
  if (!qword_1EBC7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BBA0);
  }

  return result;
}

unint64_t sub_1BBADB1B0()
{
  result = qword_1EBC7AFF0;
  if (!qword_1EBC7AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFF0);
  }

  return result;
}

unint64_t sub_1BBADB208()
{
  result = qword_1EBC7AFF8;
  if (!qword_1EBC7AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFF8);
  }

  return result;
}

uint64_t sub_1BBADB25C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBADB2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBADB310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBADB370(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBADB440;

  return sub_1BBAD9D34(a1, v4);
}

uint64_t sub_1BBADB444(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BBA97A80(a1, &v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1BBB40B7C(&v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BBA9C144(a2, type metadata accessor for IntelligenceDataSourceItem);
    *v2 = v6;
  }

  else
  {
    sub_1BBAE4684(a2, &v7);
    result = sub_1BBA9C144(a2, type metadata accessor for IntelligenceDataSourceItem);
    if (v8)
    {
      return __swift_destroy_boxed_opaque_existential_1(&v7);
    }
  }

  return result;
}

uint64_t Array<A>.recursiveMap<A>(_:transform:)(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v5 = *(a4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1BBAE4F20(0, v5, 0);
    v6 = v33;
    v9 = (a4 + 32);
    for (i = v5 - 1; ; --i)
    {
      v11 = v9[1];
      v31[0] = *v9;
      v31[1] = v11;
      v32[0] = v9[2];
      v12 = v32[0];
      *(v32 + 9) = *(v9 + 41);
      v26 = v31[0];
      v27 = v11;
      v28[0] = v12;
      *(v28 + 9) = *(v32 + 9);
      sub_1BBA9B788(v31, &v23);
      IntelligenceElement.recursiveMap<A>(_:transform:)(a1, a2, v34, v29);
      if (v4)
      {
        break;
      }

      v21[0] = v26;
      v21[1] = v27;
      v22[0] = v28[0];
      *(v22 + 9) = *(v28 + 9);
      sub_1BBA9E174(v21);
      *&v25[9] = *(v30 + 9);
      v24 = v29[1];
      *v25 = v30[0];
      v23 = v29[0];
      v33 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BBAE4F20((v13 > 1), v14 + 1, 1);
        v6 = v33;
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + (v14 << 6));
      v16 = v23;
      v17 = v24;
      v18 = *v25;
      *(v15 + 73) = *&v25[9];
      v15[3] = v17;
      v15[4] = v18;
      v15[2] = v16;
      if (!i)
      {
        return v6;
      }

      v9 += 4;
    }

    v23 = v26;
    v24 = v27;
    *v25 = v28[0];
    *&v25[9] = *(v28 + 9);
    sub_1BBA9E174(&v23);
  }

  return v6;
}