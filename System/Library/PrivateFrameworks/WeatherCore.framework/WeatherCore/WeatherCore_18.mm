uint64_t sub_1C96089C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5C84();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C9470AFC(v2, &unk_1EC3A5430);
    v7 = 1;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_1C96A4994();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

uint64_t sub_1C9608B5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5CF4();
  sub_1C960A6AC(&qword_1EC3A7130, MEMORY[0x1E69E18F0]);
  if (sub_1C96A6F94())
  {
    v7 = 0;
  }

  else
  {
    sub_1C96A5C84();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      sub_1C9470AFC(v2, &unk_1EC3A5430);
      v7 = 1;
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v7 = sub_1C96A4994();
      (*(v4 + 8))(v6, v3);
    }
  }

  return v7 & 1;
}

uint64_t sub_1C9608D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v78 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v63[-v8];
  v74 = sub_1C96A4A54();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v63[-v11];
  v12 = sub_1C96A5CF4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7128);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63[-v29];
  v76 = a1;
  sub_1C9605BE4(a1, &v63[-v29]);
  v77 = v13;
  v72 = *(v13 + 16);
  v72(v27, a2, v12);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v12);
  v31 = *(v19 + 56);
  sub_1C960A4A0(v30, v21);
  sub_1C960A4A0(v27, &v21[v31]);
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) == 1)
  {
    sub_1C9470AFC(v27, &qword_1EC3A7110);
    sub_1C9470AFC(v30, &qword_1EC3A7110);
    if (__swift_getEnumTagSinglePayload(&v21[v31], 1, v12) == 1)
    {
      sub_1C9470AFC(v21, &qword_1EC3A7110);
      v32 = 1;
      v33 = v78;
      return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
    }

    goto LABEL_6;
  }

  sub_1C960A4A0(v21, v24);
  if (__swift_getEnumTagSinglePayload(&v21[v31], 1, v12) == 1)
  {
    sub_1C9470AFC(v27, &qword_1EC3A7110);
    sub_1C9470AFC(v30, &qword_1EC3A7110);
    (*(v77 + 8))(v24, v12);
LABEL_6:
    sub_1C9470AFC(v21, &qword_1EC3A7128);
    v33 = v78;
    goto LABEL_7;
  }

  v65 = a2;
  v42 = v77;
  (*(v77 + 32))(v17, &v21[v31], v12);
  sub_1C960A6AC(&qword_1EC3A7130, MEMORY[0x1E69E18F0]);
  v64 = sub_1C96A6F94();
  v43 = *(v42 + 8);
  v43(v17, v12);
  sub_1C9470AFC(v27, &qword_1EC3A7110);
  sub_1C9470AFC(v30, &qword_1EC3A7110);
  v43(v24, v12);
  a2 = v65;
  v33 = v78;
  sub_1C9470AFC(v21, &qword_1EC3A7110);
  if (v64)
  {
    goto LABEL_11;
  }

LABEL_7:
  v34 = v76;
  v35 = sub_1C96095F0(a2, v76);
  if (v36)
  {
LABEL_11:
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
  }

  v37 = v35;
  v38 = v73;
  sub_1C96A5C84();
  v39 = v74;
  if (__swift_getEnumTagSinglePayload(v38, 1, v74) == 1)
  {
    v40 = v33;
    sub_1C9470AFC(v38, &unk_1EC3A5430);
    v41 = v75;
LABEL_18:
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v54 = sub_1C96A6154();
    __swift_project_value_buffer(v54, qword_1EDB7AC90);
    v72(v41, a2, v12);
    v55 = sub_1C96A6134();
    v56 = sub_1C96A76A4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v79 = v58;
      *v57 = 136446210;
      sub_1C96A5C84();
      v59 = sub_1C96A70A4();
      v61 = v60;
      (*(v77 + 8))(v41, v12);
      v62 = sub_1C9484164(v59, v61, &v79);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1C945E000, v55, v56, "Next forecast period summary does not expire before next fetch opportunity %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1CCA8E3D0](v58, -1, -1);
      MEMORY[0x1CCA8E3D0](v57, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v41, v12);
    }

    v32 = 1;
    v33 = v40;
    return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
  }

  v44 = v38;
  v45 = v69;
  v46 = v71;
  (*(v69 + 32))(v71, v44, v39);
  v47 = v68;
  v65 = a2;
  sub_1C96A5CE4();
  sub_1C96A4964();
  v49 = v48;
  v50 = *(v45 + 8);
  v50(v47, v39);
  result = type metadata accessor for PrecipitationNotificationConfiguration();
  v41 = v75;
  if (v49 >= *(v70 + *(result + 32)))
  {
    v50(v46, v39);
    v40 = v78;
    a2 = v65;
    goto LABEL_18;
  }

  v52 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v53 = v71;
  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v52 < *(v34 + 16))
  {
    v33 = v78;
    v72(v78, v34 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52, v12);
    v50(v53, v39);
    v32 = 0;
    return __swift_storeEnumTagSinglePayload(v33, v32, 1, v12);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C96095F0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    sub_1C96A5CF4();
    sub_1C960A6AC(&qword_1EC3A7130, MEMORY[0x1E69E18F0]);
    if (sub_1C96A6F94())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_1C960970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v78 = a5;
  v82 = a4;
  v80 = a3;
  v85 = a2;
  v8 = sub_1C96A5DD4();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v70[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v70[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70[-v16];
  v18 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v70[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v70[-v25];
  v27 = sub_1C96A5CF4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v70[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v70[-v32];
  sub_1C960A4A0(a1, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1C9470AFC(v26, &qword_1EC3A7110);
    v34 = v83;
    v35 = a6;
LABEL_18:
    sub_1C96A5CC4();
    v69 = sub_1C96A5DC4();
    result = (*(v84 + 8))(v17, v34);
    v62 = v69 & 1;
    goto LABEL_19;
  }

  v75 = a6;
  v36 = *(v28 + 32);
  v79 = v33;
  v36(v33, v26, v27);
  v37 = v28;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v38 = sub_1C96A6154();
  __swift_project_value_buffer(v38, qword_1EDB7AC90);
  (*(v28 + 16))(v30, v85, v27);
  sub_1C960A530(v80, v23, type metadata accessor for NotificationSubscription);
  v39 = sub_1C96A6134();
  v40 = sub_1C96A76A4();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v81;
  v74 = v37;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v72 = v39;
    v44 = v43;
    v73 = swift_slowAlloc();
    v86 = v73;
    *v44 = 136446723;
    sub_1C960A6AC(&qword_1EC3A7120, MEMORY[0x1E69E18F0]);
    v71 = v40;
    v45 = sub_1C96A7DB4();
    v47 = v46;
    v80 = *(v37 + 8);
    v80(v30, v27);
    v48 = sub_1C9484164(v45, v47, &v86);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2160;
    *(v44 + 14) = 1752392040;
    *(v44 + 22) = 2081;
    sub_1C960A64C(v23, v20, type metadata accessor for NotificationSubscription);
    v49 = *v20;
    v50 = v20[1];
    sub_1C96A53C4();
    sub_1C960A590(v20, type metadata accessor for NotificationSubscription);
    v51 = sub_1C9484164(v49, v50, &v86);

    *(v44 + 24) = v51;
    v52 = v72;
    _os_log_impl(&dword_1C945E000, v72, v71, "After next summary: %{public}s for subscription: %{private,mask.hash}s", v44, 0x20u);
    v53 = v73;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
    MEMORY[0x1CCA8E3D0](v44, -1, -1);
  }

  else
  {

    sub_1C960A590(v23, type metadata accessor for NotificationSubscription);
    v80 = *(v37 + 8);
    v80(v30, v27);
  }

  sub_1C96A5CC4();
  v54 = sub_1C96A5DC4() & 1;
  v34 = v83;
  v55 = *(v84 + 8);
  v55(v17, v83);
  sub_1C96A5CC4();
  v56 = sub_1C96A5DC4() & 1;
  v55(v42, v34);
  v35 = v75;
  if (v54 == v56)
  {
    goto LABEL_17;
  }

  sub_1C96A5CC4();
  v57 = sub_1C96A5DC4() & 1;
  v55(v17, v34);
  sub_1C96A5CC4();
  v58 = sub_1C96A5DC4() & 1;
  v55(v42, v34);
  if (v57 == v58)
  {
    goto LABEL_17;
  }

  v59 = v77;
  sub_1C96A5CC4();
  v60 = sub_1C96A5DC4();
  v55(v59, v34);
  if ((v60 & 1) != 0 && ForecastSummary.meetsNotificationThresholds(with:)(v78))
  {
    result = (v80)(v79, v27);
    v62 = 2;
    goto LABEL_19;
  }

  v63 = v76;
  sub_1C96A5CC4();
  v64 = sub_1C96A5DC4();
  v65 = v63;
  v66 = v78;
  v55(v65, v34);
  if ((v64 & 1) == 0 || !ForecastSummary.meetsNotificationThresholds(with:)(v66))
  {
LABEL_17:
    v80(v79, v27);
    goto LABEL_18;
  }

  v67 = v79;
  v68 = ForecastSummary.meetsNotificationThresholds(with:)(v66);
  result = (v80)(v67, v27);
  if (!v68)
  {
    goto LABEL_18;
  }

  v62 = 3;
LABEL_19:
  *v35 = v62;
  return result;
}

BOOL ForecastSummary.meetsNotificationThresholds(with:)(uint64_t a1)
{
  v2 = sub_1C96A5C14();
  if (v3)
  {
    return 0;
  }

  v4 = *&v2;
  v5 = sub_1C96A5C24();
  if (v6)
  {
    return 0;
  }

  v7 = *&v5;
  v8 = type metadata accessor for PrecipitationNotificationConfiguration();
  return *(a1 + v8[10]) <= v4 && (*(a1 + v8[11]) <= v4 || *(a1 + v8[12]) <= v7) && *(a1 + v8[13]) < v4 * v7;
}

uint64_t sub_1C9609F68@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v29 = sub_1C96A5B84();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = "anguageTag";
  switch(a1)
  {
    case 2:
      goto LABEL_3;
    case 3:
      v7 = "starting-stopping";
LABEL_3:
      if (0x80000001C96CB7E0 != (v7 | 0x8000000000000000))
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    default:
LABEL_5:
      v8 = sub_1C96A7DE4();

      if (v8)
      {
LABEL_6:
        v9 = *MEMORY[0x1E69E18D0];
        v10 = sub_1C96A5CB4();
        v11 = *(*(v10 - 8) + 104);

        return v11(a2, v9, v10);
      }

      else
      {
        v13 = sub_1C960A2C0(a1);
        v14 = *(v13 + 16);
        if (v14)
        {
          v27[2] = a2;
          v30 = MEMORY[0x1E69E7CC0];
          sub_1C9522E00(0, v14, 0);
          v15 = v30;
          v17 = *(v4 + 16);
          v16 = v4 + 16;
          v28 = v17;
          v18 = *(v16 + 64);
          v27[1] = v13;
          v19 = v13 + ((v18 + 32) & ~v18);
          v20 = *(v16 + 56);
          v21 = (v16 - 8);
          do
          {
            v22 = v29;
            v28(v6, v19, v29);
            sub_1C96A5B64();
            v24 = v23;
            (*v21)(v6, v22);
            v30 = v15;
            v26 = *(v15 + 16);
            v25 = *(v15 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_1C9522E00((v25 > 1), v26 + 1, 1);
              v15 = v30;
            }

            *(v15 + 16) = v26 + 1;
            *(v15 + 8 * v26 + 32) = v24;
            v19 += v20;
            --v14;
          }

          while (v14);
        }

        else
        {

          v15 = MEMORY[0x1E69E7CC0];
        }

        sub_1C960A424(v15);

        return sub_1C96A5CA4();
      }
  }
}

uint64_t sub_1C960A2C0(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      v2 = sub_1C96A7DE4();

      if ((v2 & 1) == 0)
      {
        if (a1 != 1)
        {
          v3 = a1 == 2 ? "anguageTag" : "starting-stopping";
          if (0x80000001C96CB7C0 == (v3 | 0x8000000000000000))
          {
            goto LABEL_8;
          }
        }

        sub_1C96A7DE4();
      }

      break;
    default:
LABEL_8:

      break;
  }

  return sub_1C96A5D24();
}

uint64_t sub_1C960A424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C960A4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C960A530(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C960A590(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C960A64C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C960A6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_56_3@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  v2[1] = a1;
  *(v2 + *(v3 + 28)) = 0x408C200000000000;

  return type metadata accessor for PrecipitationNotificationPolicy();
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_1C96A70A4();
}

uint64_t sub_1C960A770()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C960A7B4()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C960A7F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  __swift_allocate_value_buffer(v0, qword_1EC3C3DB0);
  v1 = OUTLINED_FUNCTION_11();
  v3 = __swift_project_value_buffer(v1, v2);
  return sub_1C960A84C(v3);
}

uint64_t sub_1C960A84C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1C96A4764();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:5 inDomains:1];

  sub_1C96A72A4();
  sub_1C9492F8C();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C94BE204(v4, &qword_1EC3A4A70);
    v11 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1C96A4704();
    (*(v6 + 8))(v8, v5);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v5);
}

WeatherCore::StubPPTWeatherDataManager::CoordinateString __swiftcall StubPPTWeatherDataManager.CoordinateString.init(latitude:longitude:)(Swift::String latitude, Swift::String longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t static StubPPTWeatherDataManager.CoordinateString.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C96A7DE4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_11();

      return sub_1C96A7DE4();
    }
  }

  return result;
}

uint64_t StubPPTWeatherDataManager.CoordinateString.hash(into:)()
{
  sub_1C96A7144();

  return sub_1C96A7144();
}

uint64_t StubPPTWeatherDataManager.CoordinateString.hashValue.getter()
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t StubPPTWeatherDataManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StubPPTWeatherDataManager.init()();
  return v0;
}

Swift::Bool __swiftcall StubPPTWeatherDataManager.isServiceAvailable()()
{
  v1 = sub_1C96A7084();
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v48 - v8;
  v10 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7140);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  v21 = sub_1C96A43B4();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  sub_1C96A4394();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v28 = &qword_1EC3A7140;
    v29 = v20;
LABEL_3:
    sub_1C94BE204(v29, v28);
    goto LABEL_10;
  }

  v48[0] = v0;
  v48[1] = v5;
  v49 = v12;
  (*(v23 + 32))(v27, v20, v21);
  sub_1C96A50D4();
  sub_1C96A50C4();
  v30 = sub_1C96A5074();
  v32 = v31;

  if ((v32 & 1) == 0 && !v30)
  {
    v33 = OUTLINED_FUNCTION_3_43();
    v34(v33);
    goto LABEL_10;
  }

  sub_1C96A50C4();
  sub_1C96A5074();

  sub_1C96A4374();
  sub_1C96A4344();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v35 = OUTLINED_FUNCTION_3_43();
    v36(v35);
    v28 = &qword_1EC3A4A70;
    v29 = v9;
    goto LABEL_3;
  }

  v37 = v49;
  (*(v49 + 32))(v16, v9, v10);
  sub_1C96A47B4();
  sub_1C96A7074();
  OUTLINED_FUNCTION_15_29();
  v39 = sub_1C96A7044();
  if (v40)
  {
    if (*(v48[0] + 72) != v39 || v40 != *(v48[0] + 80))
    {
      sub_1C96A7DE4();
    }

    v42 = OUTLINED_FUNCTION_15_29();
    sub_1C9482F3C(v42, v43);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_15_29();
    sub_1C9482F3C(v44, v45);
  }

  (*(v37 + 8))(v16, v10);
  v46 = OUTLINED_FUNCTION_3_43();
  v47(v46);
LABEL_10:
  OUTLINED_FUNCTION_101();
  return result;
}

uint64_t sub_1C960B088@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C96A7084();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v16 = *MEMORY[0x1E69D6480];
    goto LABEL_9;
  }

  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7ACB8);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Response to ping", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  sub_1C96A7074();
  v10 = sub_1C96A7034();
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
  if (v12 >> 60 != 15)
  {

    *a1 = v10;
    a1[1] = v12;
    v14 = *MEMORY[0x1E69D6478];
    v15 = sub_1C96A5234();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    v16 = *MEMORY[0x1E69D6468];
LABEL_9:
    v17 = sub_1C96A5244();
    return (*(*(v17 - 8) + 104))(a1, v16, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C960B318@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C96A5BE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    v9 = __swift_project_value_buffer(v8, qword_1EDB7ACB8);
    sub_1C96A3D04();
    v43[2] = v9;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A76A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v44 = v13;
      *v12 = 136446210;
      v14 = (*(v7 + 48) + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName);
      v43[1] = v7;
      v15 = v5;
      v16 = v2;
      v17 = v3;
      v18 = a1;
      v20 = *v14;
      v19 = v14[1];
      sub_1C96A53C4();
      v21 = sub_1C9484164(v20, v19, &v44);

      *(v12 + 4) = v21;
      a1 = v18;
      v3 = v17;
      v2 = v16;
      v5 = v15;
      _os_log_impl(&dword_1C945E000, v10, v11, "Response to v3 airQualityScale for %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    v22 = sub_1C960A7B4();
    if (v23 >> 60 == 15)
    {
      sub_1C96A3D04();
      sub_1C9640920();

      sub_1C94AF7BC(&qword_1EDB77EC8, 255, MEMORY[0x1E69E18C0]);
      v32 = sub_1C96A41E4();
      v34 = v33;
      (*(v3 + 8))(v5, v2);
      v35 = sub_1C96A6134();
      v36 = sub_1C96A76A4();
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C945E000, v35, v36, "Serve air quality data", v38, 2u);
        MEMORY[0x1CCA8E3D0](v38, -1, -1);
      }

      sub_1C94874C0(v32, v34);
      sub_1C94B0888(v32, v34);

      *a1 = v32;
      a1[1] = v34;
    }

    else
    {
      v27 = v22;
      v28 = v23;
      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C945E000, v29, v30, "Serve cached air quality data", v31, 2u);
        MEMORY[0x1CCA8E3D0](v31, -1, -1);
      }

      *a1 = v27;
      a1[1] = v28;
    }

    v39 = *MEMORY[0x1E69D6478];
    v40 = sub_1C96A5234();
    (*(*(v40 - 8) + 104))(a1, v39, v40);
    v41 = *MEMORY[0x1E69D6468];
    v42 = sub_1C96A5244();
    return (*(*(v42 - 8) + 104))(a1, v41, v42);
  }

  else
  {
    v24 = *MEMORY[0x1E69D6480];
    v25 = sub_1C96A5244();
    return (*(*(v25 - 8) + 104))(a1, v24, v25);
  }
}

uint64_t sub_1C960B898@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C96A7084();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A7074();
  v6 = sub_1C96A7034();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = v8;
    v10 = *MEMORY[0x1E69D6478];
    v11 = sub_1C96A5234();
    (*(*(v11 - 8) + 104))(a1, v10, v11);
    v12 = *MEMORY[0x1E69D6468];
    v13 = sub_1C96A5244();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  return result;
}

void StubPPTWeatherDataManager.setupStubData(for:defaultCondition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v49 = a1;
  v48 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A41C4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  if (qword_1EDB7ACB0 != -1)
  {
    OUTLINED_FUNCTION_1_59();
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7ACB8);
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v18))
  {
    v19 = OUTLINED_FUNCTION_29();
    *v19 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v20, v21, v22, v23, v19, 2u);
    OUTLINED_FUNCTION_26();
  }

  v24 = *(v3 + 16);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 >> 16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1C96A5094();
  (*(v11 + 104))(v15, *MEMORY[0x1E6967FA8], v9);
  sub_1C96A41D4();
  v25 = sub_1C96A6134();
  v26 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v26))
  {
    v27 = OUTLINED_FUNCTION_29();
    *v27 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v28, v29, v30, v31, v27, 2u);
    OUTLINED_FUNCTION_26();
  }

  v45 = *(v3 + 48);
  *(v45 + 81) = *(v3 + 64);
  OUTLINED_FUNCTION_8_3();
  v32 = *(v3 + 32);
  v33 = *(v3 + 40);
  v50 = 0xD00000000000002DLL;
  v51 = v34;
  MEMORY[0x1CCA8CB00](v32, v33);
  v44 = v50;
  OUTLINED_FUNCTION_23_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_10_35();
  v36 = v46;
  v37 = v48;
  (*(v5 + 16))(v46, v47, v48);
  v38 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v39 = swift_allocObject();
  v40 = v49;
  *(v39 + 16) = v35;
  *(v39 + 24) = v40;
  (*(v5 + 32))(v39 + v38, v36, v37);
  sub_1C96A3D04();
  sub_1C96A53C4();
  sub_1C96A5084();

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1C96A7A94();

  OUTLINED_FUNCTION_8_3();
  v50 = 0xD00000000000001FLL;
  v51 = v41;
  v42 = *(v45 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName);
  v43 = *(v45 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName + 8);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](v42, v43);

  OUTLINED_FUNCTION_23_0();
  swift_allocObject();
  OUTLINED_FUNCTION_10_35();
  sub_1C96A3D04();
  sub_1C96A5084();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C960BF70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v72 = a3;
  v7 = sub_1C96A5814();
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7158);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v68 - v11;
  v13 = sub_1C96A5AD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v70 = v14;
    v21 = sub_1C94C9408(0x656475746974616CLL, 0xE800000000000000, a1);
    if (v22)
    {
      v23 = v21;
      v24 = a1;
      v25 = v22;
      v68 = v24;
      v69 = a4;
      v26 = sub_1C94C9408(0x64757469676E6F6CLL, 0xE900000000000065, v24);
      if (v27)
      {
        sub_1C94FA8B8(v23, v25, v26, v27, a2, v12);

        if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
        {
          sub_1C94BE204(v12, &qword_1EC3A7158);
          v28 = *(v20 + 48);
          v29 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
          swift_beginAccess();
          v30 = *(v70 + 24);
          sub_1C96A3D04();
          v30(v28 + v29, v72, v13);
        }

        else
        {
          v35 = v70;
          (*(v70 + 32))(v18, v12, v13);
          v36 = *(v20 + 48);
          v37 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
          swift_beginAccess();
          v38 = *(v35 + 40);
          sub_1C96A3D04();
          v38(v36 + v37, v18, v13);
        }

        swift_endAccess();

        sub_1C96A3D04();
        sub_1C94C9628(v9);

        sub_1C94AF7BC(&qword_1EDB77ED0, 255, MEMORY[0x1E69E17E8]);
        v39 = sub_1C96A41E4();
        a4 = v69;
        v44 = v39;
        v72 = v45;
        (*(v73 + 8))(v9, v7);
        if (qword_1EDB7ACB0 != -1)
        {
          swift_once();
        }

        v46 = sub_1C96A6154();
        __swift_project_value_buffer(v46, qword_1EDB7ACB8);
        sub_1C96A53C4();
        sub_1C96A3D04();
        v47 = sub_1C96A6134();
        v48 = sub_1C96A76A4();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v74[0] = v73;
          *v49 = 136446466;
          v50 = sub_1C96A6EE4();
          v52 = sub_1C9484164(v50, v51, v74);

          *(v49 + 4) = v52;
          *(v49 + 12) = 2080;
          v53 = *(v20 + 48);
          v54 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
          swift_beginAccess();
          v55 = v70;
          v56 = v53 + v54;
          v57 = v71;
          (*(v70 + 16))(v71, v56, v13);
          v58 = v44;
          v59 = sub_1C96A5AC4();
          v61 = v60;
          (*(v55 + 8))(v57, v13);
          v62 = v59;
          v44 = v58;
          v63 = sub_1C9484164(v62, v61, v74);
          a4 = v69;

          *(v49 + 14) = v63;
          _os_log_impl(&dword_1C945E000, v47, v48, "Serve data with param:%{public}s with condition:%s", v49, 0x16u);
          v64 = v73;
          swift_arrayDestroy();
          MEMORY[0x1CCA8E3D0](v64, -1, -1);
          MEMORY[0x1CCA8E3D0](v49, -1, -1);
        }

        v65 = v72;
        *a4 = v44;
        a4[1] = v65;
        v66 = *MEMORY[0x1E69D6478];
        v67 = sub_1C96A5234();
        (*(*(v67 - 8) + 104))(a4, v66, v67);
        v40 = MEMORY[0x1E69D6468];
        goto LABEL_15;
      }

      a4 = v69;
    }

    else
    {
    }
  }

  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1C96A6154();
  __swift_project_value_buffer(v31, qword_1EDB7ACB8);
  v32 = sub_1C96A6134();
  v33 = sub_1C96A7684();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1C945E000, v32, v33, "Failed to generate JSON weather data. Invalid path.", v34, 2u);
    MEMORY[0x1CCA8E3D0](v34, -1, -1);
  }

  v40 = MEMORY[0x1E69D6480];
LABEL_15:
  v41 = *v40;
  v42 = sub_1C96A5244();
  return (*(*(v42 - 8) + 104))(a4, v41, v42);
}

uint64_t sub_1C960C7AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C96A5BE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C96A3D04();
    sub_1C9640920();

    sub_1C94AF7BC(&qword_1EDB77EC8, 255, MEMORY[0x1E69E18C0]);
    v11 = sub_1C96A41E4();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7ACB8);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C945E000, v15, v16, "Serve air quality data", v17, 2u);
      MEMORY[0x1CCA8E3D0](v17, -1, -1);
    }

    *a1 = v11;
    a1[1] = v13;
    v18 = *MEMORY[0x1E69D6478];
    v19 = sub_1C96A5234();
    (*(*(v19 - 8) + 104))(a1, v18, v19);
    v10 = MEMORY[0x1E69D6468];
  }

  else
  {
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C96A6154();
    __swift_project_value_buffer(v6, qword_1EDB7ACB8);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A7684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "Failed to generate JSON air quality data", v9, 2u);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
    }

    v10 = MEMORY[0x1E69D6480];
  }

  v20 = *v10;
  v21 = sub_1C96A5244();
  return (*(*(v21 - 8) + 104))(a1, v20, v21);
}

uint64_t StubPPTWeatherDataManager.deinit()
{

  return v0;
}

uint64_t StubPPTWeatherDataManager.__deallocating_deinit()
{
  StubPPTWeatherDataManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1C960CC30@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1C960BF70(a1, v7, v8, a2);
}

unint64_t sub_1C960CCD4()
{
  result = qword_1EC3A7148;
  if (!qword_1EC3A7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7148);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationTestDataLocator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C960CE40(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000016;
  }
}

unint64_t sub_1C960CE84()
{
  result = qword_1EC3A7168;
  if (!qword_1EC3A7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7168);
  }

  return result;
}

void NSUbiquitousKeyValueStore.set<A>(_:for:)()
{
  v1 = sub_1C96A7DD4();
  v2 = sub_1C96A7004();
  [v0 setObject:v1 forKey:v2];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NSUbiquitousKeyValueStore.remove(for:)(Swift::String a1)
{
  v2 = sub_1C96A7004();
  [v1 removeObjectForKey_];
}

uint64_t sub_1C960D038(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C960FAFC(&qword_1EDB7D0A8, 255, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C946C9C4();
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(v5 + 16) = sub_1C96A5124();
  sub_1C94670AC(a1, v5 + 24);
  sub_1C94670AC(a2, v5 + 64);
  sub_1C94670AC(a3, v5 + 104);
  sub_1C94670AC(a4, v5 + 144);
  sub_1C94670AC(a5, v5 + 184);
  return v5;
}

uint64_t sub_1C960D244()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
  sub_1C96A5554();

  return v1;
}

uint64_t sub_1C960D2E8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7D040);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C945E000, v14, v15, "Attempting app location list migration to Coherence", v16, 2u);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  sub_1C960D69C(a2, v12);
  v17 = a1[26];
  v18 = a1[27];
  __swift_project_boxed_opaque_existential_1(a1 + 23, v17);
  if (((*(v18 + 8))(v17, v18) & 1) == 0)
  {
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C945E000, v29, v30, "Not signed signed into iCloud. Can't migrate the remote store at this point in time.", v31, 2u);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    sub_1C960DB98(a3, v12);
LABEL_14:
    LOBYTE(v34) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
    swift_allocObject();
    v28 = sub_1C96A56A4();
    goto LABEL_15;
  }

  v19 = a4;
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = a4;
    v34 = v23;
    *v22 = 136446210;
    v24 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v25 = sub_1C96A70A4();
    v27 = sub_1C9484164(v25, v26, &v34);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1C945E000, v20, v21, "We encountered an error synchronizing with the store. Can't migrate it. Error=%{public}s.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1CCA8E3D0](v23, -1, -1);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
  }

  LOBYTE(v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
  swift_allocObject();
  v28 = sub_1C96A56A4();

LABEL_15:
  result = sub_1C94BE204(v12, &unk_1EC3A5F90);
  *a5 = v28;
  return result;
}

uint64_t sub_1C960D69C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v14 = sub_1C96A6154();
  __swift_project_value_buffer(v14, qword_1EDB7D040);
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C945E000, v15, v16, "About to attempt migrating the local location list store to Coherence.", v17, 2u);
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
  }

  v18 = v3[11];
  v19 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v18);
  (*(v19 + 40))(v18, v19);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1C960FB44(v7, v13, type metadata accessor for SyncedData);
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C945E000, v29, v30, "Local store migration (to Coherence) is not required because it has already happened - aborting.", v31, 2u);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    v32 = v13;
    goto LABEL_21;
  }

  sub_1C94BE204(v7, &unk_1EC3A5F90);
  v20 = v3[11];
  v21 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v20);
  (*(v21 + 56))(v20, v21);
  if (!sub_1C960F13C(a1))
  {
    v33 = sub_1C96A6134();
    v34 = sub_1C96A76A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C945E000, v33, v34, "Local store did not contain any locations.  Moving on to the remote store migration", v35, 2u);
      MEMORY[0x1CCA8E3D0](v35, -1, -1);
    }

    goto LABEL_17;
  }

  SyncedData.init(locationDataModels:)();
  v22 = v3[11];
  v23 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v22);
  v24 = (*(v23 + 48))(v10, v22, v23);
  if (v25 >> 60 != 15)
  {
    sub_1C9485BFC(v24, v25);
    v38 = sub_1C96A6134();
    v39 = sub_1C96A76A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1C945E000, v38, v39, "Successfully migrated the local location list store to Coherence.", v40, 2u);
      MEMORY[0x1CCA8E3D0](v40, -1, -1);
    }

    v32 = v10;
LABEL_21:
    v37 = v43;
    sub_1C960FB44(v32, v43, type metadata accessor for SyncedData);
    v36 = 0;
    return __swift_storeEnumTagSinglePayload(v37, v36, 1, v8);
  }

  v26 = sub_1C96A6134();
  v27 = sub_1C96A7684();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C945E000, v26, v27, "Error serializing synced data to disk - aborting local migration to Coherence.", v28, 2u);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
  }

  sub_1C9573AC8(v10);
LABEL_17:
  v36 = 1;
  v37 = v43;
  return __swift_storeEnumTagSinglePayload(v37, v36, 1, v8);
}

void sub_1C960DB98(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v77 - v7;
  v8 = sub_1C96A6AE4();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v86 = sub_1C96A6154();
  v15 = __swift_project_value_buffer(v86, qword_1EDB7D040);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C945E000, v16, v17, "About to attempt migrating the remote location list store to Coherence.", v18, 2u);
    MEMORY[0x1CCA8E3D0](v18, -1, -1);
  }

  if (sub_1C960E4F8(a1))
  {
    v19 = v3[6];
    v20 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v19);
    if ((*(v20 + 24))(a1, v19, v20))
    {
      SyncedData.init(locationDataModels:)();
      sub_1C960EED4(a2, v11);
      v21 = v3[16];
      v22 = v3[17];
      __swift_project_boxed_opaque_existential_1(v3 + 13, v21);
      v23 = (*(v22 + 24))(v11, v21, v22);
      v24 = sub_1C96A6134();
      v25 = sub_1C96A76A4();
      v26 = os_log_type_enabled(v24, v25);
      v27 = &unk_1C96BC000;
      v79 = v15;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v78 = a1;
        v29 = v28;
        v77 = swift_slowAlloc();
        v87[0] = v77;
        *v29 = 134349571;
        *(v29 + 4) = *(v23 + 16);
        *(v29 + 12) = 2160;
        *(v29 + 14) = 1752392040;
        *(v29 + 22) = 2081;
        v30 = type metadata accessor for LocationDataModel();
        v31 = MEMORY[0x1CCA8CC40](v23, v30);
        v32 = v6;
        v33 = v14;
        v34 = v11;
        v36 = v35;

        v37 = sub_1C9484164(v31, v36, v87);
        v11 = v34;
        v14 = v33;
        v6 = v32;
        v27 = &unk_1C96BC000;

        *(v29 + 24) = v37;
        _os_log_impl(&dword_1C945E000, v24, v25, "Saved Locations before migration merge: count=%{public}ld locations=%{private,mask.hash}s", v29, 0x20u);
        v38 = v77;
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x1CCA8E3D0](v38, -1, -1);
        v39 = v29;
        a1 = v78;
        MEMORY[0x1CCA8E3D0](v39, -1, -1);
      }

      else
      {
      }

      static SyncedData.== infix(_:_:)();
      if ((v44 & 1) == 0)
      {
        sub_1C960FAFC(&qword_1EDB7A5D8, 255, type metadata accessor for SyncedData);
        v45 = v81;
        sub_1C96A6924();
        (*(v82 + 8))(v45, v83);
        v46 = v84;
        sub_1C95C8040();
        (*(v85 + 5))(v11, v46, v6);
      }

      v47 = v3[16];
      v48 = v3[17];
      __swift_project_boxed_opaque_existential_1(v3 + 13, v47);
      v49 = *(v48 + 24);
      v85 = v11;
      v50 = v49(v11, v47, v48);
      if (qword_1EDB7D060 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v86, qword_1EDB7D068);
      sub_1C96A53C4();
      v51 = sub_1C96A6134();
      v52 = sub_1C96A76A4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v87[0] = v54;
        *v53 = v27[489];
        *(v53 + 4) = *(v50 + 16);

        *(v53 + 12) = 2160;
        *(v53 + 14) = 1752392040;
        *(v53 + 22) = 2081;
        v55 = type metadata accessor for LocationDataModel();
        v56 = MEMORY[0x1CCA8CC40](v50, v55);
        v58 = v57;

        v59 = sub_1C9484164(v56, v58, v87);

        *(v53 + 24) = v59;
        _os_log_impl(&dword_1C945E000, v51, v52, "Saved Locations after migration merge: count=%{public}ld locations=%{private,mask.hash}s", v53, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1CCA8E3D0](v54, -1, -1);
        MEMORY[0x1CCA8E3D0](v53, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v60 = v3[11];
      v61 = v3[12];
      __swift_project_boxed_opaque_existential_1(v3 + 8, v60);
      v62 = v85;
      v63 = (*(v61 + 48))(v85, v60, v61);
      if (v64 >> 60 == 15)
      {
        v65 = sub_1C96A6134();
        v66 = sub_1C96A7684();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1C945E000, v65, v66, "Error serializing synced data to disk - aborting remote migration to Coherence", v67, 2u);
          MEMORY[0x1CCA8E3D0](v67, -1, -1);
        }
      }

      else
      {
        v68 = v63;
        v69 = v64;
        v70 = a1[3];
        v71 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v70);
        v87[0] = v68;
        v87[1] = v69;
        (*(v71 + 16))(v87, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v70, v71);
        v72 = a1[3];
        v73 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v72);
        (*(v73 + 32))(v72, v73);
        v74 = sub_1C96A6134();
        v75 = sub_1C96A76A4();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_1C945E000, v74, v75, "Successfully migrated the remote location list store to Coherence.", v76, 2u);
          MEMORY[0x1CCA8E3D0](v76, -1, -1);
        }

        sub_1C9485BFC(v68, v69);
      }

      sub_1C9573AC8(v14);
      sub_1C9573AC8(v62);
      return;
    }

    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Legacy locations object not found so a migration is not possible - aborting";
      goto LABEL_13;
    }
  }

  else
  {
    v40 = sub_1C96A6134();
    v41 = sub_1C96A76A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Remote KVS migration (to Coherence) is not required because it happened already - exiting";
LABEL_13:
      _os_log_impl(&dword_1C945E000, v40, v41, v43, v42, 2u);
      MEMORY[0x1CCA8E3D0](v42, -1, -1);
    }
  }

  sub_1C960E664(a2, a1);
}

BOOL sub_1C960E4F8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(&v11, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v1, v2);
  v3 = v11;
  v4 = v12;
  v5 = v12 >> 60;
  if (v12 >> 60 == 15)
  {
    if (qword_1EDB7D038 != -1)
    {
      swift_once();
    }

    v6 = sub_1C96A6154();
    __swift_project_value_buffer(v6, qword_1EDB7D040);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A76A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "No mergeable synced data object found - migration required", v9, 2u);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
      sub_1C9485BFC(v3, v4);
    }
  }

  else
  {
    sub_1C9485BFC(v11, v12);
  }

  return v5 > 0xE;
}

void sub_1C960E664(uint64_t a1, void *a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v67 - v7;
  v9 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v67 - v18;
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v19 = sub_1C96A6154();
  __swift_project_value_buffer(v19, qword_1EDB7D040);
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v13;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C945E000, v20, v21, "About to attempt removing duplicate locations.", v23, 2u);
    v24 = v23;
    v13 = v22;
    MEMORY[0x1CCA8E3D0](v24, -1, -1);
  }

  sub_1C9573924(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v28 = v74;
    sub_1C960FB44(v8, v74, type metadata accessor for SyncedData);
    sub_1C95F5AE8(v28, v16);
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68 = v13;
      v33 = v32;
      v75[0] = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      sub_1C960FAFC(&unk_1EC3A6160, 255, type metadata accessor for SyncedData);
      v34 = sub_1C96A7DB4();
      v36 = v35;
      sub_1C9573AC8(v16);
      v37 = sub_1C9484164(v34, v36, v75);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_1C945E000, v29, v30, "Removing duplicate locations from: %{private,mask.hash}s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v38 = v33;
      v13 = v68;
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    else
    {

      sub_1C9573AC8(v16);
    }

    sub_1C95F5AE8(v74, v13);
    sub_1C95C8040();
    (*(v72 + 40))(v13, v5, v73);
    static SyncedData.== infix(_:_:)();
    if (v39)
    {
      v40 = sub_1C96A6134();
      v41 = sub_1C96A76A4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1C945E000, v40, v41, "No duplicates were removed - no need to commit.", v42, 2u);
        MEMORY[0x1CCA8E3D0](v42, -1, -1);
      }
    }

    else
    {
      v43 = v70;
      sub_1C95F5AE8(v13, v70);
      v44 = sub_1C96A6134();
      v45 = sub_1C96A76A4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v75[0] = v47;
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        sub_1C960FAFC(&unk_1EC3A6160, 255, type metadata accessor for SyncedData);
        v48 = sub_1C96A7DB4();
        v50 = v49;
        sub_1C9573AC8(v43);
        v51 = sub_1C9484164(v48, v50, v75);

        *(v46 + 14) = v51;
        _os_log_impl(&dword_1C945E000, v44, v45, "Commiting unique synced data. %{private,mask.hash}s", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1CCA8E3D0](v47, -1, -1);
        MEMORY[0x1CCA8E3D0](v46, -1, -1);
      }

      else
      {

        sub_1C9573AC8(v43);
      }

      v52 = v71[11];
      v53 = v71[12];
      __swift_project_boxed_opaque_existential_1(v71 + 8, v52);
      v54 = (*(v53 + 48))(v13, v52, v53);
      if (v55 >> 60 == 15)
      {
        v56 = sub_1C96A6134();
        v57 = sub_1C96A7684();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = "Error serializing unique synced data to disk";
LABEL_25:
          _os_log_impl(&dword_1C945E000, v56, v57, v59, v58, 2u);
          MEMORY[0x1CCA8E3D0](v58, -1, -1);
        }

LABEL_26:

        sub_1C9573AC8(v74);
        sub_1C9573AC8(v13);
        return;
      }

      v60 = v54;
      v61 = v55;
      v62 = v69;
      v63 = v69[3];
      v64 = v69[4];
      __swift_project_boxed_opaque_existential_1(v69, v63);
      v75[0] = v60;
      v75[1] = v61;
      (*(v64 + 16))(v75, 0x61446465636E7973, 0xEA00000000006174, MEMORY[0x1E6969080], v63, v64);
      v65 = v62[3];
      v66 = v62[4];
      __swift_project_boxed_opaque_existential_1(v62, v65);
      (*(v66 + 32))(v65, v66);
      sub_1C9485BFC(v60, v61);
    }

    v56 = sub_1C96A6134();
    v57 = sub_1C96A76A4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "Successfully removed duplicates";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  sub_1C94BE204(v8, &unk_1EC3A5F90);
  v25 = sub_1C96A6134();
  v26 = sub_1C96A76A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C945E000, v25, v26, "Unable to remove duplicates: no data.", v27, 2u);
    MEMORY[0x1CCA8E3D0](v27, -1, -1);
  }
}

uint64_t sub_1C960EED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1C9573924(a1, &v13 - v5);
  v7 = type metadata accessor for SyncedData();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return sub_1C960FB44(v6, a2, type metadata accessor for SyncedData);
  }

  sub_1C94BE204(v6, &unk_1EC3A5F90);
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7D040);
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "No synced data object found locally. Creating a new one.", v11, 2u);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  type metadata accessor for SyncedLocationDisplayContext();
  sub_1C960FAFC(&qword_1EDB7D730, 255, type metadata accessor for SyncedLocationDisplayContext);
  result = sub_1C96A6BE4();
  *(a2 + *(v7 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1C960F13C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6138);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for LocationDataModel();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v10;
  if (qword_1EDB7D038 != -1)
  {
LABEL_25:
    swift_once();
  }

  v11 = sub_1C96A6154();
  v12 = __swift_project_value_buffer(v11, qword_1EDB7D040);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C945E000, v13, v14, "Attempting to fetch legacy locations last saved in the local cache", v15, 2u);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = *(v17 + 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60F8);
  v18(v58, 0x736569746943, 0xE600000000000000, v19, v16, v17);
  v20 = v58[0];
  if (v58[0])
  {
    v53 = v12;
    v21 = 0;
    a1 = 0;
    v22 = *(v58[0] + 16);
    v23 = v58[0] + 32;
    v57 = MEMORY[0x1E69E7CC0];
    v52 = v58[0] + 32;
LABEL_6:
    v24 = v23 + 32 * v21;
    while (v22 != v21)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_1C9484328(v24, v58);
      sub_1C960F72C(v58, v2, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        v51 = v2;
        v25 = v54;
        sub_1C960FB44(v6, v54, type metadata accessor for LocationDataModel);
        sub_1C960FB44(v25, v56, type metadata accessor for LocationDataModel);
        v26 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C94FB930();
          v26 = v32;
        }

        v27 = v26;
        v28 = *(v26 + 16);
        v57 = v27;
        v29 = v28 + 1;
        v2 = v51;
        if (v28 >= *(v27 + 24) >> 1)
        {
          v50 = v28 + 1;
          sub_1C94FB930();
          v29 = v50;
          v57 = v33;
        }

        ++v21;
        v30 = v56;
        v31 = v57;
        *(v57 + 16) = v29;
        sub_1C960FB44(v30, v31 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v28, type metadata accessor for LocationDataModel);
        v23 = v52;
        goto LABEL_6;
      }

      sub_1C94BE204(v6, &qword_1EC3A6138);
      v24 += 32;
      ++v21;
    }

    v34 = v57;
    sub_1C96A53C4();
    v35 = sub_1C96A6134();
    v36 = sub_1C96A76A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58[0] = v38;
      *v37 = 134218499;
      *(v37 + 4) = *(v34 + 16);

      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      v39 = MEMORY[0x1CCA8CC40](v34, v7);
      v41 = sub_1C9484164(v39, v40, v58);

      *(v37 + 24) = v41;
      _os_log_impl(&dword_1C945E000, v35, v36, "Successfully fetched locations from the local key value store. Location count = %ld. Locations=%{private,mask.hash}s", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v37, -1, -1);
    }

    else
    {
    }

    v46 = v2[21];
    v47 = v2[22];
    __swift_project_boxed_opaque_existential_1(v2 + 18, v46);
    v45 = (*(v47 + 24))(v34, v46, v47);
  }

  else
  {
    v42 = sub_1C96A6134();
    v43 = sub_1C96A76A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1C945E000, v42, v43, "No local locations list object found - returning nil", v44, 2u);
      MEMORY[0x1CCA8E3D0](v44, -1, -1);
    }

    return 0;
  }

  return v45;
}

uint64_t sub_1C960F72C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[16];
  v7 = a2[17];
  __swift_project_boxed_opaque_existential_1(a2 + 13, v6);
  (*(v7 + 8))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7D038 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7D040);
    sub_1C9484328(a1, v26);
    v9 = v3;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446723;
      v25 = v3;
      v14 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      sub_1C9484328(v26, &v25);
      v18 = sub_1C96A70A4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v21 = sub_1C9484164(v18, v20, &v27);

      *(v12 + 24) = v21;
      _os_log_impl(&dword_1C945E000, v10, v11, "Skipping a local location after an unexpected parsing error: %{public}s, localLocation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v24 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
  }

  else
  {
    v22 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }
}

uint64_t sub_1C960F9E4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
  return v0;
}

uint64_t sub_1C960FA2C()
{
  sub_1C960F9E4();

  return MEMORY[0x1EEE6BDC0](v0, 224, 7);
}

uint64_t sub_1C960FAFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C960FB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CachedIdentityService.__allocating_init()()
{
  v0 = swift_allocObject();
  CachedIdentityService.init()();
  return v0;
}

uint64_t CachedIdentityService.init()()
{
  if (qword_1EDB7CDE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDB7CDE8;
  *(v0 + 16) = qword_1EDB7CDE8;
  v2 = OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity;
  v3 = type metadata accessor for UserIdentity();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = v1;
  return v0;
}

uint64_t CachedIdentityService.identity.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity;
  swift_beginAccess();
  sub_1C94C895C(v1 + v9, v8);
  v10 = type metadata accessor for UserIdentity();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1C956CAA4(v8, a1);
  }

  sub_1C9600814(v8);
  sub_1C960FF50(a1);
  sub_1C956CA40(a1, v5);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1C9610464(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1C960FDF0(uint64_t a1)
{
  v2 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C956CA40(a1, v4);
  return CachedIdentityService.identity.setter(v4);
}

uint64_t CachedIdentityService.identity.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C956CAA4(a1, &v9 - v4);
  v6 = type metadata accessor for UserIdentity();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity;
  swift_beginAccess();
  sub_1C9610464(v5, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1C960FF50@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1C94B2FFC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C9600814(v4);
    if (qword_1EDB7CF60 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7CF68);
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C945E000, v12, v13, "Creating user identity due to lacking cached variant", v14, 2u);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    return sub_1C956BE78(a1);
  }

  else
  {
    sub_1C956CAA4(v4, v10);
    if (qword_1EDB7CF60 != -1)
    {
      swift_once();
    }

    v16 = sub_1C96A6154();
    __swift_project_value_buffer(v16, qword_1EDB7CF68);
    sub_1C956CA40(v10, v7);
    v17 = sub_1C96A6134();
    v18 = sub_1C96A76A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446210;
      v21 = *v7;
      v22 = v7[1];
      sub_1C96A53C4();
      sub_1C94B648C(v7);
      v23 = sub_1C9484164(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1C945E000, v17, v18, "Using cached user identity with identifier: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
      MEMORY[0x1CCA8E3D0](v19, -1, -1);
    }

    else
    {

      sub_1C94B648C(v7);
    }

    return sub_1C956CAA4(v10, a1);
  }
}

void (*CachedIdentityService.identity.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for UserIdentity() - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  CachedIdentityService.identity.getter(v4);
  return sub_1C9610320;
}

void sub_1C9610320(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1C956CA40(v3, v2);
    CachedIdentityService.identity.setter(v2);
    sub_1C94B648C(v3);
  }

  else
  {
    CachedIdentityService.identity.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t CachedIdentityService.__deallocating_deinit()
{
  sub_1C9600814(v0 + OBJC_IVAR____TtC11WeatherCore21CachedIdentityService____lazy_storage___identity);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C9610464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CachedIdentityService()
{
  result = qword_1EDB797A8;
  if (!qword_1EDB797A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9610528()
{
  sub_1C9469F0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t Throttler.__allocating_init(interval:queue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Throttler.init(interval:queue:)(a1, a2);
  return v4;
}

uint64_t Throttler.init(interval:queue:)(uint64_t a1, double a2)
{
  v5 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_14();
  *(v2 + 32) = 0;
  sub_1C96A4954();
  v6 = OBJC_IVAR____TtC11WeatherCore9Throttler_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v2 + v6) = sub_1C96A5124();
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t Throttler.execute(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C96A6604();
  OUTLINED_FUNCTION_1();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = v32 - v10;
  v33 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = sub_1C96A6564();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v32[1] = OBJC_IVAR____TtC11WeatherCore9Throttler_lock;
  sub_1C96A3D04();
  sub_1C96A50E4();

  if (*(v2 + 32))
  {
    sub_1C96A3D04();
    sub_1C96A6644();
  }

  *(v2 + 32) = 0;

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  aBlock[4] = sub_1C9610D10;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_15;
  _Block_copy(aBlock);
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C94D19D8();
  sub_1C96A3D04();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C94D1A34();
  sub_1C96A79E4();
  sub_1C96A6654();
  swift_allocObject();
  v22 = sub_1C96A6634();

  *(v2 + 32) = v22;
  sub_1C96A3D04();

  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v23 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
  swift_beginAccess();
  v24 = v33;
  (*(v12 + 16))(v15, v3 + v23, v33);
  sub_1C96A4964();
  v25 = *(v12 + 8);
  v25(v15, v24);
  v25(v18, v24);
  v26 = v34;
  sub_1C96A65F4();
  v27 = v35;
  sub_1C96A6684();
  v28 = *(v36 + 8);
  v29 = v26;
  v30 = v37;
  v28(v29, v37);
  sub_1C96A7744();

  v28(v27, v30);
  sub_1C96A3D04();
  sub_1C96A50F4();
}

uint64_t sub_1C9610B98(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1C96A3D04();
    sub_1C96A50E4();

    sub_1C96A4A14();
    v9 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
    swift_beginAccess();
    (*(v4 + 40))(v8 + v9, v6, v3);
    swift_endAccess();
    sub_1C96A3D04();
    sub_1C96A50F4();

    a2(v10);
  }

  return result;
}

Swift::Void __swiftcall Throttler.reset()()
{
  v1 = v0;
  v2 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1C96A3D04();
  sub_1C96A50E4();

  if (*(v0 + 32))
  {
    sub_1C96A3D04();
    sub_1C96A6644();
  }

  *(v0 + 32) = 0;

  sub_1C96A4A14();
  v9 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v9, v8, v2);
  swift_endAccess();
  sub_1C96A3D04();
  sub_1C96A50F4();
}

uint64_t Throttler.deinit()
{

  v1 = OBJC_IVAR____TtC11WeatherCore9Throttler_previousRun;
  v2 = sub_1C96A4A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Throttler.__deallocating_deinit()
{
  Throttler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for Throttler()
{
  result = qword_1EC3A7188;
  if (!qword_1EC3A7188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9610F94()
{
  result = sub_1C96A4A54();
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

uint64_t UnitDefaults.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C96A4C14();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id sub_1C9611120(void (*a1)(__n128))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  a1(v7);
  v10 = sub_1C94A4584(v1, v9);
  (*(v5 + 8))(v9, v3);
  return v10;
}

uint64_t UnitDefaults.pressure.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5668);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB7FD98);
  v3 = OUTLINED_FUNCTION_2_58();
  v4(v3);
  sub_1C96A4654();
  OUTLINED_FUNCTION_6_45();
  return sub_1C96A76C4();
}

uint64_t UnitDefaults.temperature.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5660);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB80068);
  v3 = OUTLINED_FUNCTION_2_58();
  v4(v3);
  sub_1C96A4664();
  OUTLINED_FUNCTION_6_45();
  return sub_1C96A76F4();
}

uint64_t UnitDefaults.windGust.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5658);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB80070);
  v3 = OUTLINED_FUNCTION_2_58();
  v4(v3);
  sub_1C96A4614();
  OUTLINED_FUNCTION_6_45();
  return sub_1C96A7644();
}

uint64_t sub_1C96114E4()
{
  sub_1C96A4C14();
  sub_1C94A49F8(&qword_1EDB80048, MEMORY[0x1E6969770]);
  sub_1C96A6F34();
  type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670);
  sub_1C94A4B68();
  return sub_1C96A6F34();
}

uint64_t sub_1C9611598()
{
  sub_1C96A7EE4();
  sub_1C96A4C14();
  sub_1C94A49F8(&qword_1EDB80048, MEMORY[0x1E6969770]);
  sub_1C96A6F34();
  type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670);
  sub_1C94A4B68();
  sub_1C96A6F34();
  return sub_1C96A7F24();
}

uint64_t UnitDefaults.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C96A4C14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.sendNotificationsForPredictedLocations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.demoSendNotificationsForPredictedLocationsAfterFeatureEnablement()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForNotifications()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.cancelScheduledPredictedLocationsRefreshForNotifications()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.donateIntentsForPredictedLocations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForIntentDonations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsServiceProxyType.cancelScheduledPredictedLocationsRefreshForIntentDonations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

id sub_1C9611DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C96A7004();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1C9611E34(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1C9611EC8(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9611F88, 0, 0);
}

uint64_t sub_1C9611F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_108;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_111_0;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613830(v49);
  }
}

uint64_t sub_1C96121E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C96122E0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C96123A0, 0, 0);
}

uint64_t sub_1C96123A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_92;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_95;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613B0C(v49);
  }
}

uint64_t sub_1C9612600(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C96126C0, 0, 0);
}

uint64_t sub_1C96126C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_76;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_79;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613C88(v49);
  }
}

uint64_t sub_1C9612920(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C96129E0, 0, 0);
}

uint64_t sub_1C96129E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_60;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_63_0;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9613F88(v49);
  }
}

uint64_t sub_1C9612C40(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9612D00, 0, 0);
}

uint64_t sub_1C9612D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_44;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_47;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9614104(v49);
  }
}

uint64_t sub_1C9612F60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9613058()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 152);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C96130E0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 152);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C961315C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C961321C, 0, 0);
}

uint64_t sub_1C961321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_28;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_31_0;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C9614280(v49);
  }
}

uint64_t sub_1C961347C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_1C96A5294();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C961353C, 0, 0);
}

uint64_t sub_1C961353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_42_10();
  if (qword_1EDB7C728 != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  v20 = OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_40_8(v20, qword_1EDB7C730);
  v21 = OUTLINED_FUNCTION_48_8();
  v23 = OUTLINED_FUNCTION_45_8(v21, v22);
  OUTLINED_FUNCTION_21_23(v23);
  sub_1C96A5284();
  v24 = OUTLINED_FUNCTION_10_36();
  v26 = v25(v24);
  OUTLINED_FUNCTION_35_8(v26, sel_setRemoteObjectInterface_);

  OUTLINED_FUNCTION_5_44();
  v16[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_60();
  v16[4] = v27;
  v16[5] = &block_descriptor_16;
  v28 = _Block_copy(v15);
  OUTLINED_FUNCTION_35_8(v28, sel_setInterruptionHandler_);
  _Block_release(v28);
  OUTLINED_FUNCTION_4_54();
  v16[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_86();
  v16[10] = v29;
  v16[11] = &block_descriptor_15_1;
  v30 = _Block_copy(v14);
  OUTLINED_FUNCTION_35_8(v30, sel_setInvalidationHandler_);
  _Block_release(v30);
  v31 = OUTLINED_FUNCTION_49_7(v17);
  OUTLINED_FUNCTION_47_4(v31);
  if (v15)
  {

    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_12_30();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_75();
    }

    v41 = OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_41_10(v41, qword_1EDB7AC48);
    v42 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_51_6();
    if (OUTLINED_FUNCTION_50_4())
    {
      OUTLINED_FUNCTION_32_6();
      OUTLINED_FUNCTION_30_11();
      OUTLINED_FUNCTION_39_7();
      *(v19 + 4) = OUTLINED_FUNCTION_22_22(4.8751e-34, v43);
      OUTLINED_FUNCTION_20_22(&dword_1C945E000, v44, v45, "Will connect to predicted locations XPC service on weatherd to %{public}s");
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_28_16();
    }

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_37_8(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_15_30(v47);
    OUTLINED_FUNCTION_12_30();

    return sub_1C96143FC(v49);
  }
}

uint64_t sub_1C961379C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(42);

  return sub_1C9611EC8(v3, v4);
}

uint64_t sub_1C9613850()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_sendNotificationsForPredictedLocationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9613918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9613A14(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_1C9611E34(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_1C9613A78()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(67);

  return sub_1C96122E0(v3, v4);
}

uint64_t sub_1C9613B2C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_demoSendNotificationsForPredictedLocationsAfterFeatureEnablementWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9613BF4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(31);

  return sub_1C9612600(v3, v4);
}

uint64_t sub_1C9613CA8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_reschedulePredictedLocationsRefreshForNotificationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9613D70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9613E90()
{
  OUTLINED_FUNCTION_30();
  swift_willThrow();
  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C9613EF4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(39);

  return sub_1C9612920(v3, v4);
}

uint64_t sub_1C9613FA8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_cancelScheduledPredictedLocationsRefreshForNotificationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9614070()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(38);

  return sub_1C9612C40(v3, v4);
}

uint64_t sub_1C9614124()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_donateIntentsForPredictedLocationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C96141EC()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(49);

  return sub_1C961315C(v3, v4);
}

uint64_t sub_1C96142A0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_reschedulePredictedLocationsRefreshForIntentDonationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C9614368()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_28(v1);
  v3 = OUTLINED_FUNCTION_38_5(57);

  return sub_1C961347C(v3, v4);
}

uint64_t sub_1C961441C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17_29();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_29_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A71A0);
  OUTLINED_FUNCTION_3_45(v3);
  OUTLINED_FUNCTION_36_6(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_46_4(v4, sel_cancelScheduledPredictedLocationsRefreshForIntentDonationsWithCompletionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C96144E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C961379C();
}

uint64_t sub_1C9614574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9613A78();
}

uint64_t sub_1C9614604()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9613BF4();
}

uint64_t sub_1C9614694()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9613EF4();
}

uint64_t sub_1C9614724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9614070();
}

uint64_t sub_1C96147B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C96141EC();
}

uint64_t sub_1C9614844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;

  return sub_1C9614368();
}

void **OUTLINED_FUNCTION_49_7(void *a1)
{

  return sub_1C95D7A0C(a1);
}

uint64_t OUTLINED_FUNCTION_51_6()
{
}

void Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_23_21();
  OUTLINED_FUNCTION_18_26();
  v37 = v21;
  v38 = v22;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  v23 = OUTLINED_FUNCTION_43_13();
  MEMORY[0x1CCA8CB00](v23);
  MEMORY[0x1CCA8CB00](v18, v17);

  if (v20 == v14 && v19 == 0xE700000000000000)
  {

    v25 = 1;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_39_8();
  }

  v26 = type metadata accessor for Location();
  v27 = OUTLINED_FUNCTION_28_17(v26);
  *(v15 + 48) = v25 & 1;
  *(v15 + 56) = v37;
  *(v15 + 64) = v38;
  v28 = *(v27 + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v29 + 32))(v15 + v28, v16);
  sub_1C948E818(a6, v15 + *(v25 + 24));
  OUTLINED_FUNCTION_25_18((v15 + *(v25 + 28)), v32, v33, v34);
  *v30 = v35;
  v30[1] = a12;
  v31 = (v15 + *(v25 + 40));
  *v31 = a13;
  v31[1] = a14;
}

uint64_t Location.inlineName.getter()
{
  v1 = (v0 + *(type metadata accessor for Location() + 40));
  v2 = v1[1];
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (!v2)
  {
    goto LABEL_13;
  }

  v5 = *v1;
  v6 = *v1 == v4 && v2 == v3;
  if (v6 || (sub_1C96A7DE4() & 1) != 0)
  {
    goto LABEL_13;
  }

  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_13:
    sub_1C96A53C4();
  }

  else
  {
    v8 = qword_1EDB7AB08;
    sub_1C96A53C4();
    if (v8 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v9 = qword_1EDB94A58;
    OUTLINED_FUNCTION_38_6();
    sub_1C96A4534();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C96AEF50;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1C94CF210();
    *(v10 + 32) = v4;
    *(v10 + 40) = v3;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v5;
    *(v10 + 80) = v2;
    sub_1C96A53C4();
    v4 = sub_1C96A7014();
  }

  return v4;
}

uint64_t Location.init(locationDataModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_90();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_42();
  v10 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = type metadata accessor for LocationDataModel();
  sub_1C9470AA0(a1 + v20[5], v2, &unk_1EC3A5F60);
  v21 = OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_23_1(v21, v22, v10);
  if (v23)
  {
    OUTLINED_FUNCTION_19_25();
    sub_1C9470AFC(v2, &unk_1EC3A5F60);
    v45 = type metadata accessor for Location();
    v42 = a2;
    v43 = 1;
    v44 = 1;
  }

  else
  {
    v24 = *(v12 + 32);
    v24(v19, v2, v10);
    OUTLINED_FUNCTION_50_5(__src);
    v24(v16, v19, v10);
    v25 = sub_1C96A4A54();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v25);
    v26 = (a1 + v20[8]);
    v27 = *v26;
    v28 = v26[1];
    v29 = (a1 + v20[9]);
    v30 = *v29;
    v31 = v29[1];
    v49 = v27;
    v50 = v30;
    v32 = v20[11];
    v33 = (a1 + v20[10]);
    v34 = v33[1];
    v47 = *v33;
    v35 = *(a1 + v32 + 8);
    v48 = *(a1 + v32);
    sub_1C95087DC(__src, v52);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_19_25();
    v36 = type metadata accessor for Location();
    *&a2[v36[11]] = 0;
    memcpy(a2, __src, 0x48uLL);
    v24(&a2[v36[5]], v16, v10);
    sub_1C948E818(v51, &a2[v36[6]]);
    v37 = &a2[v36[7]];
    v38 = v50;
    *v37 = v49;
    *(v37 + 1) = v28;
    v39 = &a2[v36[8]];
    *v39 = v38;
    *(v39 + 1) = v31;
    v40 = &a2[v36[9]];
    *v40 = v47;
    *(v40 + 1) = v34;
    v41 = &a2[v36[10]];
    *v41 = v48;
    *(v41 + 1) = v35;
    v42 = OUTLINED_FUNCTION_1_7();
    v45 = v36;
  }

  return __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
}

void Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_26_13();
  v16 = type metadata accessor for Location();
  OUTLINED_FUNCTION_34_10(v16);
  v17 = v15[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v18 + 32))(v14 + v17, v13);
  sub_1C948E818(v12, v14 + v15[6]);
  OUTLINED_FUNCTION_37_9();
  *v19 = v11;
  v19[1] = a7;
  v20 = (v14 + v15[9]);
  *v20 = a8;
  v20[1] = a9;
  v21 = (v14 + v15[10]);
  *v21 = a10;
  v21[1] = a11;
}

void Location.clLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Location() + 44);

  *(v1 + v3) = a1;
}

uint64_t static Location.sanitizedSecondaryName(_:name:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a1 != a3 || a4 != a2)
    {
      OUTLINED_FUNCTION_11();
      if ((sub_1C96A7DE4() & 1) == 0)
      {
        v7 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v7 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          sub_1C96A53C4();
        }
      }
    }
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t Location.searchTitle.getter()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.searchSubtitle.getter()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.preciseName.getter()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

uint64_t Location.secondaryName.getter()
{
  type metadata accessor for Location();
  OUTLINED_FUNCTION_27_0();
  return OUTLINED_FUNCTION_11();
}

void (*Location.clLocation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Location() + 44);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v1 + 32) longitude:*(v1 + 40)];
    v4 = 0;
  }

  *(a1 + 16) = v4;
  *a1 = v5;
  v6 = v4;
  return sub_1C9615334;
}

void sub_1C9615334(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v6;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

void Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_26_13();
  v15 = type metadata accessor for Location();
  OUTLINED_FUNCTION_34_10(v15);
  v16 = v13[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v17 + 32))(v12 + v16, v11);
  sub_1C948E818(v10, v12 + v13[6]);
  OUTLINED_FUNCTION_37_9();
  *v18 = v9;
  v18[1] = a7;
  v19 = (v12 + v13[9]);
  *v19 = a8;
  v19[1] = a9;
  v20 = (v12 + v13[10]);
  *v20 = 0;
  v20[1] = 0;
  OUTLINED_FUNCTION_30_12();
}

void Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_23_21();
  OUTLINED_FUNCTION_18_26();
  v35 = v19;
  v36 = v20;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  v21 = OUTLINED_FUNCTION_43_13();
  MEMORY[0x1CCA8CB00](v21);
  MEMORY[0x1CCA8CB00](v16, v15);

  if (v18 == v12 && v17 == 0xE700000000000000)
  {

    v23 = 1;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_39_8();
  }

  v24 = type metadata accessor for Location();
  v25 = OUTLINED_FUNCTION_28_17(v24);
  *(v13 + 48) = v23 & 1;
  *(v13 + 56) = v35;
  *(v13 + 64) = v36;
  v26 = *(v25 + 20);
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v27 + 32))(v13 + v26, v14);
  sub_1C948E818(a6, v13 + *(v23 + 24));
  OUTLINED_FUNCTION_25_18((v13 + *(v23 + 28)), v30, v31, v32);
  *v28 = v33;
  v28[1] = a12;
  v29 = (v13 + *(v23 + 40));
  *v29 = 0;
  v29[1] = 0;
}

id Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:clLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  OUTLINED_FUNCTION_19();
  v98 = v13;
  v99 = v14;
  v89 = v15;
  v17 = v16;
  v88 = v18;
  v20 = v19;
  v86 = v21;
  v82 = v22;
  v24 = v23;
  v26 = v25;
  v85 = v27;
  v95 = a12;
  v87 = a10;
  v94 = a9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v29 = OUTLINED_FUNCTION_7(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_57(&v81 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v35);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v81 - v37;
  v92 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v91 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_57(v42 - v41);
  v43 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_14();
  v47 = v46 - v45;
  memcpy(v97, v26, sizeof(v97));
  if (v97[1])
  {
    v84 = v97[1];
    v83 = v97[0];
    OUTLINED_FUNCTION_8_39(v97[3]);
    v48 = v97[4];
    v49 = v97[5];
    OUTLINED_FUNCTION_7_37(v97[8]);
    OUTLINED_FUNCTION_47_5(LOBYTE(v97[6]));
  }

  else
  {
    memcpy(v96, v12, sizeof(v96));
    OUTLINED_FUNCTION_7_37(v96[8]);
    OUTLINED_FUNCTION_47_5(LOBYTE(v96[6]));
    v48 = v96[4];
    v49 = v96[5];
    OUTLINED_FUNCTION_8_39(v96[3]);
    OUTLINED_FUNCTION_29_12();
  }

  sub_1C9470AA0(v24, v38, &unk_1EC3A5F60);
  v50 = v92;
  OUTLINED_FUNCTION_23_1(v38, 1, v92);
  if (v51)
  {
    (*(v91 + 16))(v90, &v12[v43[5]], v50);
    v52 = OUTLINED_FUNCTION_23_1(v38, 1, v50);
    if (!v51)
    {
      OUTLINED_FUNCTION_51_7(v52, v53, &qword_1EC3A71A8);
      sub_1C9470AFC(v38, &unk_1EC3A5F60);
      goto LABEL_9;
    }
  }

  else
  {
    v52 = (*(v91 + 32))(v90, v38, v50);
  }

  OUTLINED_FUNCTION_51_7(v52, v53, &qword_1EC3A71A8);
LABEL_9:
  sub_1C9470AA0(v82, v32, &unk_1EC3A5430);
  v54 = sub_1C96A4A54();
  OUTLINED_FUNCTION_23_1(v32, 1, v54);
  if (v51)
  {
    sub_1C9470AA0(&v12[v43[6]], v93, &unk_1EC3A5430);
    OUTLINED_FUNCTION_23_1(v32, 1, v54);
    if (!v51)
    {
      sub_1C9470AFC(v32, &unk_1EC3A5430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    v56 = v93;
    (*(v55 + 32))(v93, v32, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
  }

  v57 = v20;
  if (!v20)
  {
    v58 = &v12[v43[7]];
    v57 = *(v58 + 1);
    v86 = *v58;
    sub_1C96A53C4();
  }

  v59 = v17;
  if (!v17)
  {
    v60 = &v12[v43[8]];
    v59 = *(v60 + 1);
    v88 = *v60;
    sub_1C96A53C4();
  }

  v61 = v94;
  if (!v94)
  {
    v62 = &v12[v43[9]];
    v61 = *(v62 + 1);
    v89 = *v62;
    sub_1C96A53C4();
  }

  v63 = a11;
  if (!a11)
  {
    v64 = &v12[v43[10]];
    v63 = *(v64 + 1);
    v87 = *v64;
    sub_1C96A53C4();
  }

  v82 = v12;
  v65 = v43[11];
  *(v47 + v65) = 0;
  OUTLINED_FUNCTION_49_8();
  *v47 = v67;
  *(v47 + 8) = v66;
  OUTLINED_FUNCTION_48_9();
  *(v47 + 16) = v69;
  *(v47 + 24) = v68;
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  *(v47 + 48) = v70;
  OUTLINED_FUNCTION_41_11();
  *(v47 + 56) = v72;
  *(v47 + 64) = v71;
  (*(v91 + 32))(v47 + v43[5], v90, v92);
  sub_1C948E818(v93, v47 + v43[6]);
  v73 = (v47 + v43[7]);
  *v73 = v86;
  v73[1] = v57;
  v74 = (v47 + v43[8]);
  *v74 = v88;
  v74[1] = v59;
  v75 = (v47 + v43[9]);
  *v75 = v89;
  v75[1] = v61;
  v76 = (v47 + v43[10]);
  *v76 = v87;
  v76[1] = v63;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v77 = v95;
  if (!v95)
  {
    v77 = Location.clLocation.getter();
  }

  *(v47 + v65) = v77;
  sub_1C94898C4(v47, v85);
  OUTLINED_FUNCTION_30_12();

  return v78;
}

uint64_t Location.hashValue.getter()
{
  sub_1C96A7EE4();
  memcpy(v2, v0, sizeof(v2));
  Location.Identifier.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C9615C80@<X0>(uint64_t *a1@<X8>)
{
  result = Location.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9615CA8()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C9615D20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9615CA8();
  *a1 = result;
  return result;
}

uint64_t sub_1C9615D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9489414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9615D7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9615CF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9615DA4(uint64_t a1)
{
  v2 = sub_1C94893C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9615DE0(uint64_t a1)
{
  v2 = sub_1C94893C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Location.preciseInlineName.getter()
{
  v1 = (v0 + *(type metadata accessor for Location() + 36));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v5 = Location.sanitizedSecondaryName.getter();
    if (v4)
    {
      v6 = v4;
      v7 = qword_1EDB7AB08;
      sub_1C96A53C4();
      if (v7 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v8 = qword_1EDB94A58;
      sub_1C96A4534();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C96AB910;
      v10 = MEMORY[0x1E69E6158];
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v11 = sub_1C94CF210();
      *(v9 + 32) = v3;
      *(v9 + 40) = v2;
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 64) = v11;
      *(v9 + 72) = v13;
      *(v9 + 80) = v12;
      *(v9 + 136) = v10;
      *(v9 + 144) = v11;
      *(v9 + 112) = v5;
      *(v9 + 120) = v6;
      sub_1C96A53C4();
      sub_1C96A7014();
    }

    else
    {
      v15 = qword_1EDB7AB08;
      sub_1C96A53C4();
      if (v15 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v16 = qword_1EDB94A58;
      OUTLINED_FUNCTION_38_6();
      sub_1C96A4534();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C96AEF50;
      v18 = MEMORY[0x1E69E6158];
      *(v17 + 56) = MEMORY[0x1E69E6158];
      v19 = sub_1C94CF210();
      *(v17 + 32) = v3;
      *(v17 + 40) = v2;
      v21 = *(v0 + 16);
      v20 = *(v0 + 24);
      *(v17 + 96) = v18;
      *(v17 + 104) = v19;
      *(v17 + 64) = v19;
      *(v17 + 72) = v21;
      *(v17 + 80) = v20;
      sub_1C96A53C4();
      sub_1C96A7014();
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30_12();
  }

  else
  {
    OUTLINED_FUNCTION_30_12();

    Location.inlineName.getter();
  }
}

id Location.preservingName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  if (!a2 || (*(v3 + 16) == a1 ? (v8 = *(v3 + 24) == a2) : (v8 = 0), v8 || (sub_1C96A7DE4() & 1) != 0))
  {

    return sub_1C9489760(v3, a3);
  }

  else
  {
    OUTLINED_FUNCTION_50_5(v27);
    OUTLINED_FUNCTION_50_5(__src);
    sub_1C95087DC(v27, v29);
    Location.Identifier.with(id:name:coordinate:)(0.0, 0, a1, a2, 0.0, 0.0, 1, v29);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C953AEDC(__dst);
    v10 = type metadata accessor for Location();
    v11 = v10[5];
    sub_1C96A4DF4();
    OUTLINED_FUNCTION_6();
    (*(v12 + 16))(&a3[v11], v4 + v11);
    sub_1C9470AA0(v4 + v10[6], &a3[v10[6]], &unk_1EC3A5430);
    v13 = v10[8];
    v14 = (v4 + v10[7]);
    v16 = *v14;
    v15 = v14[1];
    v18 = *(v4 + v13);
    v17 = *(v4 + v13 + 8);
    v19 = (v4 + v10[9]);
    v21 = *v19;
    v20 = v19[1];
    v22 = v10[11];
    *&a3[v22] = 0;
    memcpy(a3, v29, 0x48uLL);
    v23 = &a3[v10[7]];
    *v23 = v16;
    *(v23 + 1) = v15;
    v24 = &a3[v10[8]];
    *v24 = v18;
    *(v24 + 1) = v17;
    v25 = &a3[v10[9]];
    *v25 = v21;
    *(v25 + 1) = v20;
    OUTLINED_FUNCTION_14_11(v10[10]);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    result = Location.clLocation.getter();
    *&a3[v22] = result;
  }

  return result;
}

void sub_1C96162DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C96A7934();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C9616334()
{
  result = qword_1EC3A71C8;
  if (!qword_1EC3A71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A71C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C9470AA0(v3 - 176, v3 - 248, a3);
}

uint64_t DataProtectionError.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C9616470()
{
  result = qword_1EC3A71D0;
  if (!qword_1EC3A71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A71D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataProtectionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t static WidgetUtilities.reloadWidget(reason:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C954DFD0();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = objc_allocWithZone(MEMORY[0x1E6994360]);
      swift_bridgeObjectRetain_n();
      v9 = sub_1C9616898();
      v10 = sub_1C96A7004();
      v11 = [v9 reloadTimelineWithReason_];

      if (v11)
      {
        if (qword_1EC3A47B8 != -1)
        {
          swift_once();
        }

        v12 = sub_1C96A6154();
        __swift_project_value_buffer(v12, qword_1EC3A7490);
        sub_1C96A53C4();
        v13 = v11;
        v14 = sub_1C96A6134();
        v15 = sub_1C96A76A4();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = a2;
          v18 = swift_slowAlloc();
          v26 = v18;
          *v16 = 136315394;
          v19 = sub_1C9484164(v6, v7, &v26);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2080;
          v20 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
          v21 = sub_1C96A70A4();
          v23 = sub_1C9484164(v21, v22, &v26);

          *(v16 + 14) = v23;
          _os_log_impl(&dword_1C945E000, v14, v15, "reloadWidget: %s: error:%s", v16, 0x16u);
          swift_arrayDestroy();
          v24 = v18;
          a2 = v17;
          MEMORY[0x1CCA8E3D0](v24, -1, -1);
          MEMORY[0x1CCA8E3D0](v16, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

id sub_1C9616898()
{
  v1 = sub_1C96A7004();

  v2 = sub_1C96A7004();

  v3 = [v0 initWithExtensionBundleIdentifier:v1 kind:v2];

  return v3;
}

_BYTE *storeEnumTagSinglePayload for WidgetUtilities(_BYTE *result, int a2, int a3)
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

void sub_1C96169CC()
{
  OUTLINED_FUNCTION_30_1();
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_1();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  qword_1EC3A71D8 = sub_1C96A4F74();
  OUTLINED_FUNCTION_20_4();
}

void sub_1C9616BA8()
{
  OUTLINED_FUNCTION_30_1();
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  type metadata accessor for Settings.Notifications.Precipitation.Overrides();
  (*(v9 + 104))(v13, *MEMORY[0x1E69D6E90], v7);
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v14 = __swift_project_value_buffer(v0, qword_1EDB80028);
  (*(v2 + 16))(v6, v14, v0);
  qword_1EC3A71E0 = sub_1C96A4E74();
  OUTLINED_FUNCTION_20_4();
}

uint64_t sub_1C9616D74()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72F0);
  v16 = 0;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7300);
  *(swift_allocObject() + 16) = xmmword_1C96BA7C0;
  v15 = 0;
  sub_1C96A4F44();
  v14 = 1;
  sub_1C96A4F44();
  v13 = 2;
  sub_1C96A4F44();
  v12 = 3;
  sub_1C96A4F44();
  v11 = 4;
  sub_1C96A4F44();
  v10 = 5;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B100();
  result = sub_1C96A4F54();
  qword_1EC3A71E8 = result;
  return result;
}

uint64_t sub_1C96171A4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D0);
  v9[15] = 0;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72E0);
  *(swift_allocObject() + 16) = xmmword_1C96B20F0;
  v9[14] = 0;
  sub_1C96A4F44();
  v9[13] = 1;
  sub_1C96A4F44();
  v9[12] = 2;
  sub_1C96A4F44();
  v9[11] = 3;
  sub_1C96A4F44();
  v9[10] = 4;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B0AC();
  result = sub_1C96A4F54();
  qword_1EC3A71F0 = result;
  return result;
}

uint64_t sub_1C961754C()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D0);
  v15 = 1;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72E0);
  *(swift_allocObject() + 16) = xmmword_1C96B20F0;
  v14 = 0;
  sub_1C96A4F44();
  v13 = 1;
  sub_1C96A4F44();
  v12 = 2;
  sub_1C96A4F44();
  v11 = 3;
  sub_1C96A4F44();
  v10 = 4;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B0AC();
  result = sub_1C96A4F54();
  qword_1EC3A71F8 = result;
  return result;
}

uint64_t sub_1C96178F4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72B0);
  v9[15] = 0;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72C0);
  *(swift_allocObject() + 16) = xmmword_1C96AB910;
  v9[14] = 0;
  sub_1C96A4F44();
  v9[13] = 1;
  sub_1C96A4F44();
  v9[12] = 2;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B058();
  result = sub_1C96A4F54();
  qword_1EC3A7200 = result;
  return result;
}

uint64_t sub_1C9617C48()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7290);
  v10[1] = "tions.severe.debug";
  v10[2] = v8;
  v18 = 3;
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001C96D2580;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A72A0);
  *(swift_allocObject() + 16) = xmmword_1C96AE890;
  v17 = 0;
  sub_1C96A4F44();
  v16 = 1;
  sub_1C96A4F44();
  v15 = 2;
  sub_1C96A4F44();
  v14 = 3;
  sub_1C96A4F44();
  v13 = 4;
  sub_1C96A4F44();
  v12 = 5;
  sub_1C96A4F44();
  v11 = 6;
  sub_1C96A4F44();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1C961B004();
  result = sub_1C96A4F54();
  qword_1EC3A7208 = result;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.Location.rawValue.getter()
{
  result = 0x615020656C707041;
  switch(*v0)
  {
    case 1:
      result = 0x7469685720656854;
      break;
    case 2:
      result = 0x696E69615220744DLL;
      break;
    case 3:
    case 4:
      result = 0x6E616C726564654ELL;
      break;
    case 5:
      result = 0x746E6572727543;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C9618150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30_1();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v25 = OUTLINED_FUNCTION_7(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_23();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  switch(*v18)
  {
    case 1:
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v35);
      if (!v40)
      {
        OUTLINED_FUNCTION_5_3();
        v48 = *(v49 + 32);
        v46 = v23;
        v47 = v35;
        goto LABEL_26;
      }

      sub_1C96A4DE4();
      OUTLINED_FUNCTION_25_1(v35);
      if (v40)
      {
        goto LABEL_27;
      }

      v41 = v35;
      goto LABEL_21;
    case 2:
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v32);
      if (!v40)
      {
        OUTLINED_FUNCTION_5_3();
        v48 = *(v44 + 32);
        v46 = v23;
        v47 = v32;
        goto LABEL_26;
      }

      sub_1C96A4DE4();
      OUTLINED_FUNCTION_25_1(v32);
      if (v40)
      {
        goto LABEL_27;
      }

      v41 = v32;
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_15_31();
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v19);
      if (!v40)
      {
        OUTLINED_FUNCTION_5_3();
        v48 = *(v45 + 32);
        v46 = v23;
        v47 = v19;
        goto LABEL_26;
      }

      sub_1C96A4DE4();
      OUTLINED_FUNCTION_25_1(v19);
      if (v40)
      {
        goto LABEL_27;
      }

      v41 = v19;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_15_31();
      sub_1C96A4D64();
      v42 = sub_1C96A4DF4();
      if (__swift_getEnumTagSinglePayload(v28, 1, v42) != 1)
      {
        (*(*(v42 - 8) + 32))(v23, v28, v42);
        goto LABEL_27;
      }

      sub_1C96A4DE4();
      if (__swift_getEnumTagSinglePayload(v28, 1, v42) == 1)
      {
        goto LABEL_27;
      }

      v41 = v28;
      goto LABEL_21;
    case 5:
      OUTLINED_FUNCTION_20_4();

      sub_1C96A4DE4();
      return;
    default:
      sub_1C96A4D64();
      v39 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_25_1(v38);
      if (v40)
      {
        sub_1C96A4DE4();
        OUTLINED_FUNCTION_25_1(v38);
        if (!v40)
        {
          v41 = v38;
LABEL_21:
          sub_1C94BE204(v41, &unk_1EC3A5F60);
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_3();
        v46 = OUTLINED_FUNCTION_74_0();
LABEL_26:
        v48(v46, v47, v39);
      }

LABEL_27:
      OUTLINED_FUNCTION_20_4();
      return;
  }
}

uint64_t Settings.Notifications.Precipitation.Overrides.Location.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 6;
  if (v1 < 6)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1C96185C8@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.Location.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C96185F0(uint64_t a1)
{
  v2 = sub_1C961AFB0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AFB0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C96186A0(uint64_t a1)
{
  v2 = sub_1C961AFB0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Notifications.Precipitation.Overrides.Conditions.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 5;
  if (v1 < 5)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.Conditions.rawValue.getter()
{
  result = 0x7261656C63;
  switch(*v0)
  {
    case 1:
      result = 1852399986;
      break;
    case 2:
      result = 1818845544;
      break;
    case 3:
      result = 0x7465656C73;
      break;
    case 4:
      result = 2003791475;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C96187E4@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.Conditions.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C961880C(uint64_t a1)
{
  v2 = sub_1C961AF5C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AF5C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C96188BC(uint64_t a1)
{
  v2 = sub_1C961AF5C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Notifications.Precipitation.Overrides.Intensity.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 3;
  if (v1 < 3)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.Intensity.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7976616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1C96189DC@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.Intensity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9618A04(uint64_t a1)
{
  v2 = sub_1C961AF08();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AF08();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C9618AB4(uint64_t a1)
{
  v2 = sub_1C961AF08();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Notifications.Precipitation.Overrides.EventDate.init(rawValue:)()
{
  OUTLINED_FUNCTION_5_45();
  sub_1C96A7BE4();
  result = OUTLINED_FUNCTION_23_22();
  v3 = 7;
  if (v1 < 7)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

unint64_t Settings.Notifications.Precipitation.Overrides.EventDate.rawValue.getter()
{
  result = 7827310;
  switch(*v0)
  {
    case 1:
      result = 0x756E694D65766966;
      break;
    case 2:
      result = 0x74756E694D6E6574;
      break;
    case 3:
      result = 0x4D6E656574666966;
      break;
    case 4:
      result = 0x694D797472696874;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E694D7974786973;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9618C74@<X0>(unint64_t *a1@<X8>)
{
  result = Settings.Notifications.Precipitation.Overrides.EventDate.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9618C9C(uint64_t a1)
{
  v2 = sub_1C961AEB4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9618CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C961AEB4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C9618D4C(uint64_t a1)
{
  v2 = sub_1C961AEB4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

void Settings.Notifications.Precipitation.Overrides.__allocating_init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_6_29();
  v2(v1);
  OUTLINED_FUNCTION_11_18();
  v3 = OUTLINED_FUNCTION_74_0();
  v4(v3);
  OUTLINED_FUNCTION_20_4();
}

void Settings.Notifications.Precipitation.Overrides.init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_6_29();
  v2(v1);
  OUTLINED_FUNCTION_11_18();
  v3 = OUTLINED_FUNCTION_74_0();
  v4(v3);
  OUTLINED_FUNCTION_20_4();
}

uint64_t Settings.Notifications.Precipitation.Overrides.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C11WeatherCoreE8LocationV21ForceDefaultLocationsCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C9618F68()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7210 = result;
  return result;
}

uint64_t sub_1C96191B4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7218 = result;
  return result;
}

uint64_t sub_1C96193E0()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A7220 = result;
  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.subscription.getter@<X0>(void *a1@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v87 - v12;
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v87 = v14;
  v88 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  v18 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  if (qword_1EC3A4750 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC3A71E8;
  type metadata accessor for Settings.Notifications.Precipitation.Overrides();
  v23 = sub_1C96A4E44();
  v89 = v9;
  v90 = a1;
  switch(v92)
  {
    case 1:
      v3 = 0x404371EB851EB852;
      v4 = 0xC05341EB851EB852;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(v65, v66, v67, v68, v69, v70, v71, v72, 1, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v22 = 0x7469685720656854;
      v39 = 0xEF6573756F482065;
      break;
    case 2:
      v3 = 0x40476CCCCCCCCCCDLL;
      v4 = 0xC05E70A3D70A3D71;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(v49, v50, v51, v52, v53, v54, v55, v56, 2, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v39 = 0xEA00000000007265;
      v22 = 0x696E69615220744DLL;
      break;
    case 3:
      OUTLINED_FUNCTION_21_24();
      v3 = 0x4043FAE147AE147BLL;
      v4 = 0xC05A60A3D70A3D71;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(v57, v58, v59, v60, v61, v62, v63, v64, 3, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v48 = 0x4F43202C64;
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_21_24();
      v3 = 0x403DF851EB851EB8;
      v4 = 0xC0577F5C28F5C28FLL;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_7_38(v40, v41, v42, v43, v44, v45, v46, v47, 4, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v48 = 0x5854202C64;
LABEL_8:
      v39 = v48 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_7_38(v23, v24, v25, v26, v27, v28, v29, v30, 5, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      CLLocationCoordinate2DMake(0.0, 0.0);
      OUTLINED_FUNCTION_10_37();
      v1 = 0x746E6572727563;
      v22 = 0x746E6572727543;
      v2 = 0xE700000000000000;
      v39 = 0xE700000000000000;
      break;
    default:
      v3 = 0x404287AE147AE148;
      v4 = 0xC05E37AE147AE148;
      OUTLINED_FUNCTION_11_32();
      sub_1C96A7844();
      OUTLINED_FUNCTION_12_32();
      HIBYTE(v94) = 0;
      sub_1C9618150(v31, v32, v33, v34, v35, v36, v37, v38, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_11_32();
      OUTLINED_FUNCTION_10_37();
      v22 = 0x615020656C707041;
      v39 = 0xEA00000000006B72;
      break;
  }

  sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v92 = v1;
  v93 = v2;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  v77 = OUTLINED_FUNCTION_74_0();
  MEMORY[0x1CCA8CB00](v77);

  v79 = v92;
  v78 = v93;
  if (v1 == 0x746E6572727563 && v2 == 0xE700000000000000)
  {

    v81 = 1;
  }

  else
  {
    v81 = sub_1C96A7DE4();
  }

  *(v21 + v18[11]) = 0;
  *v21 = v1;
  *(v21 + 8) = v2;
  *(v21 + 16) = v22;
  *(v21 + 24) = v39;
  *(v21 + 32) = v3;
  *(v21 + 40) = v4;
  *(v21 + 48) = v81 & 1;
  *(v21 + 56) = v79;
  *(v21 + 64) = v78;
  (*(v87 + 32))(v21 + v18[5], v17, v88);
  sub_1C948E818(v91, v21 + v18[6]);
  OUTLINED_FUNCTION_34_1(v18[7]);
  OUTLINED_FUNCTION_34_1(v18[8]);
  OUTLINED_FUNCTION_34_1(v18[9]);
  OUTLINED_FUNCTION_34_1(v18[10]);
  v82 = v89;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v18);
  return NotificationSubscription.init(location:locationOverride:precipitation:severe:)(v21, v82, 1, 1, v90);
}

uint64_t type metadata accessor for Settings.Notifications.Precipitation.Overrides()
{
  result = qword_1EC3A7260;
  if (!qword_1EC3A7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Settings.Notifications.Precipitation.Overrides.forecast.getter@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7228);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7230);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v76 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v66 - v14;
  sub_1C96A5FF4();
  OUTLINED_FUNCTION_1();
  v83 = v15;
  v84 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v82 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v66 - v20;
  v77 = sub_1C96A5CB4();
  OUTLINED_FUNCTION_1();
  v75 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  v25 = v24 - v23;
  v70 = v24 - v23;
  v26 = sub_1C96A5CF4();
  v68 = *(v26 - 8);
  v69 = v26;
  v79 = v68;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v66 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v81 = &v66 - v30;
  v31 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v74 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_23();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v66 - v36;
  v72 = &v66 - v36;
  sub_1C961A208();
  sub_1C961A31C(v1, v37);
  sub_1C961A5A4(v25);
  sub_1C961A67C();
  sub_1C96A5954();
  sub_1C96A5944();
  sub_1C96A49B4();
  v38 = v67;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v31);
  sub_1C96A5FC4();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_1C96A59B4();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = v80;
  sub_1C96A5FD4();
  (*(v84 + 16))(v82, v50, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7238);
  v51 = *(v68 + 72);
  v52 = v79;
  v53 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C96AEF50;
  v55 = v54 + v53;
  v56 = *(v52 + 16);
  v57 = v69;
  v56(v55, v81, v69);
  v58 = v66;
  v56(v55 + v51, v66, v57);
  sub_1C96A5944();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v31);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51E0);
  sub_1C96A5B84();
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  v62 = v76;
  sub_1C96A5944();
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v31);
  v63 = v70;
  sub_1C96A5C94();
  sub_1C96A5B74();
  sub_1C96A5D44();
  (*(v84 + 8))(v80, v83);
  v64 = *(v79 + 8);
  v64(v58, v57);
  (*(v75 + 8))(v63, v77);
  v64(v81, v57);
  return (*(v74 + 8))(v72, v31);
}

uint64_t sub_1C961A208()
{
  if (qword_1EC3A4770 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides();
  sub_1C96A4E44();
  switch(v1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      result = sub_1C96A49B4();
      break;
    default:
      sub_1C96A5954();
      result = sub_1C96A5944();
      break;
  }

  return result;
}

uint64_t sub_1C961A31C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C96A4A54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-v8];
  if (qword_1EC3A4758 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides();
  sub_1C96A4E44();
  v10 = v12[15];
  (*(v4 + 16))(v9, a2, v3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  sub_1C96A4954();
  switch(v10)
  {
    case 1:
      sub_1C96A5C44();
      break;
    case 2:
      sub_1C96A5C34();
      break;
    case 3:
      sub_1C96A5C74();
      break;
    case 4:
      sub_1C96A5C54();
      break;
    default:
      sub_1C96A5C64();
      break;
  }

  (*(v4 + 8))(v6, v3);
  return sub_1C94BE204(v9, &unk_1EC3A5430);
}

uint64_t sub_1C961A5A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4768 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides();
  sub_1C96A4E44();
  v2 = sub_1C96A5CB4();
  return (*(*(v2 - 8) + 104))(a1, **(&unk_1E8340E48 + v4), v2);
}

uint64_t sub_1C961A67C()
{
  v0 = sub_1C96A4A54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  if (qword_1EC3A4760 != -1)
  {
    swift_once();
  }

  type metadata accessor for Settings.Notifications.Precipitation.Overrides();
  sub_1C96A4E44();
  v7 = v9[15];
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v0);
  sub_1C96A4954();
  switch(v7)
  {
    case 1:
      sub_1C96A5C44();
      break;
    case 2:
      sub_1C96A5C34();
      break;
    case 3:
      sub_1C96A5C74();
      break;
    case 4:
      sub_1C96A5C54();
      break;
    default:
      sub_1C96A5C64();
      break;
  }

  (*(v1 + 8))(v3, v0);
  return sub_1C94BE204(v6, &unk_1EC3A5430);
}

unint64_t sub_1C961A8E0()
{
  result = qword_1EC3A7240;
  if (!qword_1EC3A7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7240);
  }

  return result;
}

unint64_t sub_1C961A934()
{
  result = qword_1EC3A7248;
  if (!qword_1EC3A7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7248);
  }

  return result;
}

unint64_t sub_1C961A988()
{
  result = qword_1EC3A7250;
  if (!qword_1EC3A7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7250);
  }

  return result;
}

unint64_t sub_1C961A9DC()
{
  result = qword_1EC3A7258;
  if (!qword_1EC3A7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7258);
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC8LocationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC10ConditionsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC9IntensityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13NotificationsV13PrecipitationV9OverridesC9EventDateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C961AE08(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C961AEB4()
{
  result = qword_1EC3A7270;
  if (!qword_1EC3A7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7270);
  }

  return result;
}

unint64_t sub_1C961AF08()
{
  result = qword_1EC3A7278;
  if (!qword_1EC3A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7278);
  }

  return result;
}

unint64_t sub_1C961AF5C()
{
  result = qword_1EC3A7280;
  if (!qword_1EC3A7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7280);
  }

  return result;
}

unint64_t sub_1C961AFB0()
{
  result = qword_1EC3A7288;
  if (!qword_1EC3A7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7288);
  }

  return result;
}

unint64_t sub_1C961B004()
{
  result = qword_1EC3A72A8;
  if (!qword_1EC3A72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A72A8);
  }

  return result;
}

unint64_t sub_1C961B058()
{
  result = qword_1EC3A72C8;
  if (!qword_1EC3A72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A72C8);
  }

  return result;
}

unint64_t sub_1C961B0AC()
{
  result = qword_1EC3A72E8;
  if (!qword_1EC3A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A72E8);
  }

  return result;
}

unint64_t sub_1C961B100()
{
  result = qword_1EC3A7308;
  if (!qword_1EC3A7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7308);
  }

  return result;
}

uint64_t CLLocationCoordinate2D.intentIdentifier.getter()
{
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_0_87();
  return 0;
}

uint64_t Location.intentIdentifier.getter()
{
  if (*(v0 + 48))
  {
    return OUTLINED_FUNCTION_1_62();
  }

  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_0_87();
  return 0;
}

id sub_1C961B254()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C96A7004();

  v2 = [v0 initWithDescription_];

  return v2;
}

id PrecipitationNotificationsManager.init(weatherDataService:policyHandler:notificationContentFactory:notificationDeliveryScheduler:notificationFetchScheduler:notificationSubscriptionManager:notificationConfigurationProvider:notificationAuthorizationStatusProvider:locationManager:locationComparator:notificationsEnablementTracker:notificationAccuracyTracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v14);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94_2(v16);
  sub_1C96A5404();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v18 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_operationQueue;
  sub_1C946B5D0(0, &qword_1EDB77CF0);
  *&v12[v18] = sub_1C96A76D4();
  v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation] = 0;
  v19 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_scheduleDeduper;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1C94D7CBC(&unk_1EDB7D088, MEMORY[0x1E69D67A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390);
  OUTLINED_FUNCTION_12_33();
  sub_1C9469CB4(v20, &unk_1EC3A6390);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7328);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  *&v12[v19] = sub_1C96A5314();
  *&v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_weatherDataService] = a1;
  sub_1C9469B6C(a2, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler]);
  sub_1C9469B6C(a3, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory]);
  sub_1C9469B6C(a4, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationDeliveryScheduler]);
  sub_1C9469B6C(a5, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler]);
  sub_1C9469B6C(a6, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager]);
  sub_1C9469B6C(a7, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationConfigurationProvider]);
  sub_1C9469B6C(a8, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider]);
  sub_1C9469B6C(a9, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager]);
  sub_1C9469B6C(a10, &v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator]);
  *&v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_lazyNotificationsEnablementTracker] = a11;
  *&v12[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_lazyNotificationAccuracyTracker] = a12;
  v41.receiver = v12;
  v41.super_class = ObjectType;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  v21 = objc_msgSendSuper2(&v41, sel_init);
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v21;
  v27 = sub_1C96A5E34();
  OUTLINED_FUNCTION_1_63();
  v30 = sub_1C94D7CBC(v28, v29);
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = v30;
  v31[4] = v26;
  OUTLINED_FUNCTION_104();
  sub_1C951C258();

  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v26;
}

uint64_t sub_1C961B778()
{
  *(v0 + 16) = sub_1C96A5E34();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C961B810;

  return sub_1C961BA44();
}

uint64_t sub_1C961B810()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  sub_1C96A5E24();
  OUTLINED_FUNCTION_1_63();
  sub_1C94D7CBC(v3, v4);
  v6 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C961B954, v6, v5);
}

uint64_t sub_1C961B954()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C961B9AC()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_32(v1);

  return sub_1C961B778();
}

uint64_t sub_1C961BA44()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for NotificationSubscription(0);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v3 = sub_1C96A7374();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C961BB70, v3, v2);
}

uint64_t sub_1C961BB70()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_65_5((*(v0 + 16) + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider));
  v1 = OUTLINED_FUNCTION_44_8();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_33_10((*(v0 + 16) + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
    OUTLINED_FUNCTION_42();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_29_13(v3);

    return v5(v4);
  }

  else
  {

    sub_1C961C00C();
    OUTLINED_FUNCTION_86_0();

    OUTLINED_FUNCTION_17();

    return v7();
  }
}

uint64_t sub_1C961BCF8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C961BF7C;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C961BE08;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C961BE08()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_106_2();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_1C9470AFC(v2[3], &qword_1EC3A58D0);
LABEL_8:
    sub_1C961C00C();
    goto LABEL_9;
  }

  v3 = v2[4];
  v4 = v2[5];
  OUTLINED_FUNCTION_4_56();
  sub_1C96287F0();
  v5 = *(v4 + *(v3 + 24));
  if (v5 == 2 || (v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_47();
    sub_1C948EA44(v9, v10);
    goto LABEL_8;
  }

  v6 = v2[2];
  v7 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation;
  v8 = v2[5];
  if (*(v6 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation))
  {
    sub_1C948EA44(v2[5], type metadata accessor for NotificationSubscription);
  }

  else
  {
    v13 = *(v6 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 24);
    v14 = *(v6 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager), v13);
    (*(v14 + 64))(v6, &protocol witness table for PrecipitationNotificationsManager, v13, v14);
    OUTLINED_FUNCTION_3_47();
    sub_1C948EA44(v8, v15);
    *(v6 + v7) = 1;
  }

LABEL_9:
  OUTLINED_FUNCTION_86_0();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_1C961BF7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v0);
  sub_1C9470AFC(*(v1 + 24), &qword_1EC3A58D0);
  sub_1C961C00C();
  OUTLINED_FUNCTION_86_0();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1C961C00C()
{
  v1 = v0;
  v2 = sub_1C96A6664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  *v5 = sub_1C96A7704();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1C96A66A4();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation;
    if (*(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_observingCurrentLocation) == 1)
    {
      v9 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 24);
      v10 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager), v9);
      result = (*(v10 + 72))(v1, &protocol witness table for PrecipitationNotificationsManager, v9, v10);
      *(v1 + v8) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C961C18C()
{
  v1 = v0;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v33 = *(Schedule - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](Schedule);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationSubscription(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  sub_1C9489AA0();
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EDB7AC90);
  sub_1C9489AA0();
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1C96287F0();
    v30 = v12;
    v20 = *v6;
    v19 = v6[1];
    sub_1C96A53C4();
    sub_1C948EA44(v6, type metadata accessor for NotificationSubscription);
    v21 = sub_1C9484164(v20, v19, v35);
    v12 = v30;

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1C945E000, v14, v15, "Evaluating notification subscription: %{private,mask.hash}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1CCA8E3D0](v18, -1, -1);
    v22 = v17;
    v1 = v31;
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
  }

  else
  {

    sub_1C948EA44(v9, type metadata accessor for NotificationSubscription);
  }

  sub_1C96A5444();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  sub_1C9489AA0();
  sub_1C9489AA0();
  *(swift_allocObject() + 16) = v1;
  sub_1C96287F0();
  sub_1C96287F0();
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73C8));
  v24 = v1;
  v25 = sub_1C96A53E4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
  MEMORY[0x1EEE9AC00](v26);
  *(&v30 - 2) = v24;
  v27 = v25;
  v28 = sub_1C96A5754();

  sub_1C948EA44(v12, type metadata accessor for NotificationSubscription);
  return v28;
}

uint64_t sub_1C961C6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v13 = *(Schedule - 8);
  v12[3] = *(v13 + 64);
  MEMORY[0x1EEE9AC00](Schedule);
  v12[1] = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationSubscription(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v14 = v5;
  v12[0] = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v6 = sub_1C96A7704();
  v15 = type metadata accessor for NotificationSubscription;
  sub_1C9489AA0();
  swift_allocObject();
  v12[2] = type metadata accessor for NotificationSubscription;
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationConfiguration();
  type metadata accessor for PrecipitationNotificationsManager();
  sub_1C96A5774();

  v7 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationPolicy();
  sub_1C96A5654();

  v8 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96A5654();

  v9 = sub_1C96A55A4();
  v10 = sub_1C96A56C4();

  return v10;
}

uint64_t sub_1C961CA70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB7AC90);
  sub_1C9489AA0();
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1C96287F0();
    v15 = *v6;
    v16 = v6[1];
    sub_1C96A53C4();
    sub_1C948EA44(v6, type metadata accessor for NotificationSubscription);
    v17 = sub_1C9484164(v15, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v11, v12, "Constructing configuration for subscription: %{private,mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  else
  {

    sub_1C948EA44(v9, type metadata accessor for NotificationSubscription);
  }

  v18 = (v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationConfigurationProvider);
  v19 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationConfigurationProvider + 24);
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  return (*(v20 + 8))(a1, v19, v20);
}

uint64_t sub_1C961CD04(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  ObjectType = swift_getObjectType();
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v41 = *(Schedule - 8);
  MEMORY[0x1EEE9AC00](Schedule);
  v42 = v4;
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrecipitationNotificationConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = v7;
  v45 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationSubscription(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  v40[5] = a1;
  sub_1C9489AA0();
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7AC90);
  sub_1C9489AA0();
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();
  v20 = os_log_type_enabled(v18, v19);
  v46 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1C96287F0();
    v23 = *v10;
    v24 = v10[1];
    sub_1C96A53C4();
    sub_1C948EA44(v10, type metadata accessor for NotificationSubscription);
    v25 = sub_1C9484164(v23, v24, &v55);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_1C945E000, v18, v19, "Determining notification policy for subscription: %{private,mask.hash}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  else
  {

    sub_1C948EA44(v13, type metadata accessor for NotificationSubscription);
  }

  v52 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v26 = sub_1C96A7704();
  v51 = type metadata accessor for NotificationSubscription;
  sub_1C9489AA0();
  v50 = type metadata accessor for PrecipitationNotificationConfiguration;
  sub_1C9489AA0();
  v27 = *(v49 + 80);
  v28 = *(v6 + 80);
  v47 = (v27 + 16) & ~v27;
  v29 = (v9 + v28 + v47) & ~v28;
  v30 = v29 + v48;
  v48 = v27 | v28 | 7;
  v40[3] = v30;
  swift_allocObject();
  v49 = type metadata accessor for NotificationSubscription;
  sub_1C96287F0();
  v40[1] = type metadata accessor for PrecipitationNotificationConfiguration;
  v40[2] = v29;
  sub_1C96287F0();
  sub_1C96A5D64();
  v31 = v44;
  v40[4] = sub_1C96A5774();

  v32 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  sub_1C9489AA0();
  v33 = (v42 + ((v30 + *(v41 + 80)) & ~*(v41 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  sub_1C96287F0();
  *(v34 + v33) = v31;
  type metadata accessor for PrecipitationNotificationPolicy();
  v35 = v31;
  sub_1C96A5654();

  v36 = sub_1C96A7704();
  v37 = v46;
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  v38 = sub_1C96A56D4();

  sub_1C948EA44(v37, type metadata accessor for NotificationSubscription);
  return v38;
}

uint64_t sub_1C961D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v82 = a2;
  v3 = type metadata accessor for NotificationSubscription(0);
  v77 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = (v66 - v7);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v81 = v66 - v10;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v74 = *(Schedule - 8);
  MEMORY[0x1EEE9AC00](Schedule);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = v66 - v14;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v19 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  v70 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v66 - v22;
  v24 = type metadata accessor for PrecipitationNotification();
  v69 = *(v24 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v73 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v66 - v27;
  v29 = type metadata accessor for PrecipitationNotificationPolicy();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C9489AA0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C96287F0();
    v30 = v12;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB7AC90);
    sub_1C9489AA0();
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      __src[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = v83;
      sub_1C96287F0();
      v37 = *v36;
      v38 = v36[1];
      sub_1C96A53C4();
      sub_1C948EA44(v36, type metadata accessor for NotificationSubscription);
      v39 = sub_1C9484164(v37, v38, __src);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_1C945E000, v32, v33, "Received reschedule policy for subscription: %{private,mask.hash}s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1CCA8E3D0](v35, -1, -1);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
    }

    else
    {

      sub_1C948EA44(v5, type metadata accessor for NotificationSubscription);
    }

    sub_1C9489AA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
    swift_allocObject();
    v52 = sub_1C96A56A4();
    sub_1C948EA44(v30, type metadata accessor for PrecipitationNotificationFetchSchedule);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118);
    v76 = v28;
    sub_1C96287F0();
    v79 = v23;
    sub_1C96287F0();
    sub_1C96287F0();
    v40 = v18;
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v41 = sub_1C96A6154();
    __swift_project_value_buffer(v41, qword_1EDB7AC90);
    v42 = v81;
    sub_1C9489AA0();
    v43 = sub_1C96A6134();
    v44 = sub_1C96A76A4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      __src[0] = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v47 = v83;
      sub_1C96287F0();
      v48 = v40;
      v49 = *v47;
      v50 = v47[1];
      sub_1C96A53C4();
      sub_1C948EA44(v47, type metadata accessor for NotificationSubscription);
      v51 = sub_1C9484164(v49, v50, __src);
      v40 = v48;

      *(v45 + 14) = v51;
      _os_log_impl(&dword_1C945E000, v43, v44, "Received notify policy for subscription: %{private,mask.hash}s", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1CCA8E3D0](v46, -1, -1);
      MEMORY[0x1CCA8E3D0](v45, -1, -1);
    }

    else
    {

      sub_1C948EA44(v42, type metadata accessor for NotificationSubscription);
    }

    v52 = v79;
    v53 = v76;
    v54 = sub_1C961E0E4();
    v55 = *(v82 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory + 24);
    v56 = *(v82 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory + 32);
    __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationContentFactory), v55);
    v57 = v85;
    (*(v56 + 8))(__src, v53, v88, v54, v55, v56);

    if (v57)
    {
      sub_1C948EA44(v40, type metadata accessor for PrecipitationNotificationFetchSchedule);
      sub_1C948EA44(v52, type metadata accessor for PrecipitationNotificationDeliverySchedule);
      sub_1C948EA44(v53, type metadata accessor for PrecipitationNotification);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      v58 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
      v85 = 0;
      v68 = v58;
      v59 = sub_1C96A7704();
      v66[1] = type metadata accessor for PrecipitationNotification;
      sub_1C9489AA0();
      sub_1C9489AA0();
      v60 = *(v69 + 80);
      v67 = v40;
      v69 = ((v60 + 16) & ~v60) + v25;
      v81 = (v60 | 7);
      v61 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v71 = type metadata accessor for PrecipitationNotification;
      sub_1C96287F0();
      memcpy((v62 + v61), __dst, 0x48uLL);
      sub_1C96287F0();
      type metadata accessor for PrecipitationNotificationsManager();
      v82 = sub_1C96A5774();

      v63 = sub_1C96A7704();
      sub_1C9489AA0();
      sub_1C9489AA0();
      v64 = v67;
      sub_1C9489AA0();
      swift_allocObject();
      sub_1C96287F0();
      sub_1C96287F0();
      sub_1C96287F0();
      v52 = sub_1C96A5634();

      sub_1C948EA44(v64, type metadata accessor for PrecipitationNotificationFetchSchedule);
      sub_1C948EA44(v79, type metadata accessor for PrecipitationNotificationDeliverySchedule);
      sub_1C948EA44(v76, type metadata accessor for PrecipitationNotification);
    }
  }

  return v52;
}

uint64_t sub_1C961E0E4()
{
  v0 = sub_1C96A41C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6967FA8], v0);
  sub_1C96A41D4();
  type metadata accessor for PrecipitationNotification();
  sub_1C96A5D64();
  sub_1C94D7CBC(&qword_1EC3A4C00, MEMORY[0x1E69E1908]);
  v4 = sub_1C96A41E4();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C96CC3C0;
  *(inited + 72) = MEMORY[0x1E6969080];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v8 = sub_1C96A6F04();

  return v8;
}

uint64_t sub_1C961E2E8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v7 = (a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationDeliveryScheduler);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  memcpy(__dst, a3, sizeof(__dst));
  return (*(v9 + 8))(a2, __dst, a4, v8, v9);
}

uint64_t sub_1C961E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[3] = a4;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  MEMORY[0x1EEE9AC00](Schedule - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for PrecipitationNotification();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7AC90);
  sub_1C9489AA0();
  sub_1C9489AA0();
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446723;
    v29[1] = v7;
    v29[2] = v4;
    v23 = *v16;
    v22 = v16[1];
    sub_1C96A53C4();
    sub_1C948EA44(v16, type metadata accessor for PrecipitationNotification);
    v24 = sub_1C9484164(v23, v22, &v30);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    sub_1C96287F0();
    v25 = *v10;
    v26 = v10[1];
    sub_1C96A53C4();
    sub_1C948EA44(v10, type metadata accessor for NotificationSubscription);
    v27 = sub_1C9484164(v25, v26, &v30);

    *(v20 + 24) = v27;
    _os_log_impl(&dword_1C945E000, v18, v19, "Sent notification with identifier: %{public}s for subscription: %{private,mask.hash}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
  }

  else
  {

    sub_1C948EA44(v13, type metadata accessor for NotificationSubscription);
    sub_1C948EA44(v16, type metadata accessor for PrecipitationNotification);
  }

  sub_1C9489AA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961E774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v58 = sub_1C96A5D64();
  MEMORY[0x1EEE9AC00](v58);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrecipitationNotificationConfiguration();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v9;
  v61 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Location();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v56 = type metadata accessor for NotificationSubscription(0);
  v62 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v65 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v53 - v18;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v20 = sub_1C96A6154();
  v21 = __swift_project_value_buffer(v20, qword_1EDB7AC90);
  sub_1C9489AA0();
  v55 = v21;
  v22 = sub_1C96A6134();
  v23 = sub_1C96A76A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54 = v15;
    v53[4] = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53[2] = v11;
    v53[1] = a2;
    v27 = v3;
    v28 = v26;
    v67[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v29 = v65;
    sub_1C96287F0();
    v30 = v7;
    v31 = *v29;
    v32 = v29[1];
    sub_1C96A53C4();
    sub_1C948EA44(v29, type metadata accessor for NotificationSubscription);
    v33 = sub_1C9484164(v31, v32, v67);
    v7 = v30;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_1C945E000, v22, v23, "Fetching next hour forecast for subscription: %{private,mask.hash}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v34 = v28;
    v3 = v27;
    MEMORY[0x1CCA8E3D0](v34, -1, -1);
    v15 = v54;
    MEMORY[0x1CCA8E3D0](v25, -1, -1);
  }

  else
  {

    sub_1C948EA44(v19, type metadata accessor for NotificationSubscription);
  }

  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if ((sub_1C96A4E94() & 1) == 0)
  {
    sub_1C96A5444();
    type metadata accessor for NotificationSubscription.Location(0);
    sub_1C9489AA0();
    v36 = v15[48] == 1;
    v53[3] = v12;
    if (v36)
    {
    }

    else
    {
      v37 = sub_1C96A7DE4();

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v38 = *(v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 24);
    v39 = *(v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager), v38);
    v40 = (*(v39 + 48))(v38, v39);
    if (v40)
    {
      v41 = v40;
      [v40 coordinate];
      v43 = v42;
      v45 = v44;

LABEL_20:
      sub_1C946B5D0(0, &qword_1EDB7CDB0);
      v49 = sub_1C96A7704();
      sub_1C9469B6C(v67, v66);
      sub_1C9489AA0();
      sub_1C9489AA0();
      v50 = swift_allocObject();
      sub_1C94670AC(v66, v50 + 16);
      *(v50 + 56) = v43;
      *(v50 + 64) = v45;
      sub_1C96287F0();
      sub_1C96287F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73E0);
      sub_1C96A5774();

      v51 = sub_1C96A7704();
      sub_1C9489AA0();
      swift_allocObject();
      sub_1C96287F0();
      v35 = sub_1C96A5634();

      sub_1C948EA44(v15, type metadata accessor for Location);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      return v35;
    }

    v46 = sub_1C96A6134();
    v47 = sub_1C96A7684();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C945E000, v46, v47, "Current location unknown while fetching next hour forecast. Falling back to coordinate from saved locations store, which is not necessarily up-to-date.", v48, 2u);
      MEMORY[0x1CCA8E3D0](v48, -1, -1);
    }

LABEL_19:
    v43 = *(v15 + 4);
    v45 = *(v15 + 5);
    goto LABEL_20;
  }

  Settings.Notifications.Precipitation.Overrides.forecast.getter(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73E8);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a6;
  v30 = a2;
  v31 = a5;
  v28 = a3;
  v29 = a4;
  v7 = type metadata accessor for PrecipitationNotificationPolicy();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_1C96A5FF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5D54();
  v15 = sub_1C96A5FB4();
  (*(v12 + 8))(v14, v11);
  if (v15 == 2 || (v15 & 1) == 0)
  {
    v18 = *(v30 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler + 24);
    v19 = *(v30 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler + 32);
    __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_policyHandler), v18);
    (*(v19 + 8))(v28, a1, v29, v18, v19);
    v20 = sub_1C96A5444();
    MEMORY[0x1EEE9AC00](v20);
    *(&v28 - 4) = v35;
    *(&v28 - 3) = v10;
    v21 = v31;
    *(&v28 - 2) = a1;
    *(&v28 - 1) = v21;
    sub_1C96A5784();
    sub_1C9489AA0();
    swift_allocObject();
    sub_1C96287F0();
    v22 = sub_1C96A55A4();
    sub_1C96A5634();

    v23 = swift_allocObject();
    v24 = v34;
    *(v23 + 16) = v34;
    v25 = v24;
    v26 = sub_1C96A55A4();
    v17 = sub_1C96A56B4();

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_1C948EA44(v10, type metadata accessor for PrecipitationNotificationPolicy);
  }

  else
  {
    sub_1C962879C();
    swift_allocError();
    *v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73D0);
    swift_allocObject();
    return sub_1C96A5694();
  }

  return v17;
}

uint64_t sub_1C961F404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(a2, a3, a4, v7, v8);
}

uint64_t sub_1C961F480()
{
  v0 = type metadata accessor for PrecipitationNotificationPolicy();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C9489AA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73D0);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961F570(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = sub_1C96A4A94();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for PrecipitationNotificationPolicy();
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36[-v13];
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7AC90);
  sub_1C9489AA0();
  v16 = a1;
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v3;
    v20 = v19;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1C96287F0();
    v37 = v18;
    v38 = v17;
    v21 = *v11;
    v22 = v11[1];
    sub_1C96A53C4();
    sub_1C948EA44(v11, type metadata accessor for NotificationSubscription);
    v23 = sub_1C9484164(v21, v22, &v46);

    *(v20 + 14) = v23;
    *(v20 + 22) = 2081;
    v45 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v25 = sub_1C96A70A4();
    v27 = sub_1C9484164(v25, v26, &v46);

    *(v20 + 24) = v27;
    v28 = v38;
    _os_log_impl(&dword_1C945E000, v38, v37, "Recovering from notification subscription evaluation of subscription: %{private,mask.hash}s with error: %{private}s", v20, 0x20u);
    v29 = v39;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v29, -1, -1);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
  }

  else
  {

    sub_1C948EA44(v14, type metadata accessor for NotificationSubscription);
  }

  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_1C9489AA0();
  type metadata accessor for PrecipitationNotificationConfiguration();
  sub_1C96A49B4();
  v31 = v43;
  sub_1C96A4A84();
  v32 = sub_1C96A4A64();
  v34 = v33;
  (*(v5 + 8))(v31, v41);
  *v8 = v32;
  v8[1] = v34;
  *(v8 + *(Schedule + 28)) = 0x408C200000000000;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73D0);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C961FA04(uint64_t a1, void *a2, char *a3, char *a4)
{
  v73 = a1;
  v62 = a4;
  v63 = a3;
  v72 = sub_1C96A5F54();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A63F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6400);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6408);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v53 - v21;
  v23 = sub_1C96A5834();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6410);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v53 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v53 - v30;
  v32 = sub_1C96A5874();
  v64 = *(v32 - 8);
  v65 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v61 = v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2[3];
  v59 = a2[4];
  v60 = v34;
  v58 = __swift_project_boxed_opaque_existential_1(a2, v34);
  v35 = sub_1C96A4AF4();
  v56 = v36;
  v57 = v35;
  v37 = *(type metadata accessor for Location() + 20);
  v38 = sub_1C96A4DF4();
  (*(*(v38 - 8) + 16))(v31, &v63[v37], v38);
  v63 = v31;
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v38);
  v39 = WCCountryCodeEstimate();
  if (v39)
  {
    v40 = v39;
    v55 = sub_1C96A7024();
    v54 = v41;
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  type metadata accessor for PrecipitationNotificationConfiguration();
  sub_1C96A5884();
  v42 = sub_1C96A5894();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v42);
  v74 = MEMORY[0x1E69E7CC0];
  sub_1C94D7CBC(&qword_1EDB7ACF0, MEMORY[0x1E69E17F8]);
  v62 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6418);
  sub_1C9469CB4(&qword_1EDB7AB70, &unk_1EC3A6418);
  v53[1] = v25;
  sub_1C96A79E4();
  v43 = sub_1C96A42B4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v43);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v43);
  v44 = sub_1C96A58C4();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v44);
  v45 = sub_1C96A58A4();
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v45);
  v46 = sub_1C96A58B4();
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v46);
  v47 = sub_1C96A58D4();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v47);
  v48 = sub_1C96A5E44();
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v48);
  sub_1C96A4B54();
  (*(v70 + 104))(v71, *MEMORY[0x1E69E1958], v72);
  v49 = v61;
  sub_1C96A5864();
  sub_1C96A5854();
  (*(v64 + 8))(v49, v65);
  v50 = sub_1C96A55A4();
  type metadata accessor for PrecipitationNotificationsManager();
  v51 = sub_1C96A56C4();

  return v51;
}

NSObject *sub_1C96201E4(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v38 - v6;
  v44 = sub_1C96A5D64();
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v9;
  v10 = sub_1C96A5844();
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BE8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21)
  {
    v22 = 0;
    while (v22 < *(v20 + 16))
    {
      sub_1C9489AA0();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1C949E15C();
        sub_1C955FEC0();
        if (__swift_getEnumTagSinglePayload(v16, 1, v44) != 1)
        {
          v35 = v39;
          v34 = v40;
          v36 = v44;
          (*(v40 + 32))(v39, v16, v44);
          (*(v34 + 16))(v38, v35, v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73E8);
          swift_allocObject();
          v25 = sub_1C96A56A4();
          (*(v34 + 8))(v35, v36);
          sub_1C9470AFC(v19, &qword_1EC3A4BE8);
          return v25;
        }

        sub_1C9470AFC(v19, &qword_1EC3A4BE8);
        sub_1C9470AFC(v16, &qword_1EC3A4BE8);
      }

      else
      {
        sub_1C948EA44(v13, MEMORY[0x1E69E1808]);
      }

      if (v21 == ++v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  if (qword_1EDB7AC88 != -1)
  {
LABEL_17:
    swift_once();
  }

  v23 = sub_1C96A6154();
  __swift_project_value_buffer(v23, qword_1EDB7AC90);
  v24 = v43;
  sub_1C9489AA0();
  v25 = sub_1C96A6134();
  v26 = sub_1C96A7684();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = v41;
    sub_1C96287F0();
    v30 = *v29;
    v31 = v29[1];
    sub_1C96A53C4();
    sub_1C948EA44(v29, type metadata accessor for NotificationSubscription);
    v32 = sub_1C9484164(v30, v31, &v47);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_1C945E000, v25, v26, "Failed to fetch next hour forecast for: %{private,mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1CCA8E3D0](v28, -1, -1);
    MEMORY[0x1CCA8E3D0](v27, -1, -1);
  }

  else
  {

    sub_1C948EA44(v24, type metadata accessor for NotificationSubscription);
  }

  sub_1C962879C();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
  return v25;
}

uint64_t sub_1C96207C4()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSubscription(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v24[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-1] - v6;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7AC90);
  sub_1C9489AA0();
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1C96287F0();
    v23 = v1;
    v14 = *v4;
    v13 = v4[1];
    sub_1C96A53C4();
    sub_1C948EA44(v4, type metadata accessor for NotificationSubscription);
    v15 = sub_1C9484164(v14, v13, v24);
    v1 = v23;

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1C945E000, v9, v10, "Calculating fetch schedule for subscription: %{private,mask.hash}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1CCA8E3D0](v12, -1, -1);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  else
  {

    sub_1C948EA44(v7, type metadata accessor for NotificationSubscription);
  }

  sub_1C96A5444();
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  sub_1C9489AA0();
  *(swift_allocObject() + 16) = v1;
  sub_1C96287F0();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73C8));
  v17 = v1;
  v18 = sub_1C96A53E4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 2) = v17;
  v20 = v18;
  v21 = sub_1C96A5754();

  return v21;
}

uint64_t sub_1C9620BA4()
{
  v0 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v1 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationConfiguration();
  type metadata accessor for PrecipitationNotificationsManager();
  sub_1C96A5774();

  v2 = sub_1C96A7704();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_1C96A5654();

  v3 = sub_1C96A55A4();
  v4 = sub_1C96A56C4();

  return v4;
}

uint64_t sub_1C9620E10()
{
  swift_getObjectType();
  v0 = type metadata accessor for PrecipitationNotificationConfiguration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v2 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  sub_1C96A5D64();
  sub_1C96A5774();

  v3 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_1C96A5644();

  v4 = sub_1C96A7704();
  sub_1C9489AA0();
  sub_1C9489AA0();
  swift_allocObject();
  sub_1C96287F0();
  sub_1C96287F0();
  sub_1C96A56E4();

  v5 = sub_1C96A7704();
  v6 = sub_1C96A5634();

  return v6;
}

uint64_t sub_1C9621248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a3;
  v47 = a1;
  v6 = sub_1C96A4A94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A5FF4();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v20 = sub_1C96A6154();
  __swift_project_value_buffer(v20, qword_1EDB7AC90);
  v46 = a2;
  sub_1C9489AA0();
  v21 = sub_1C96A6134();
  v22 = sub_1C96A76A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = v6;
    v26 = v25;
    v50 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    sub_1C96287F0();
    v42 = a4;
    v28 = *v16;
    v27 = v16[1];
    sub_1C96A53C4();
    sub_1C948EA44(v16, type metadata accessor for NotificationSubscription);
    v29 = sub_1C9484164(v28, v27, &v50);
    a4 = v42;

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1C945E000, v21, v22, "Using forecast data to calculate fetch schedule for subscription: %{private,mask.hash}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v30 = v26;
    v6 = v41;
    MEMORY[0x1CCA8E3D0](v30, -1, -1);
    v31 = v24;
    v7 = v40;
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
  }

  else
  {

    sub_1C948EA44(v19, type metadata accessor for NotificationSubscription);
  }

  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_1C9489AA0();
  v33 = v43;
  sub_1C96A5D54();
  sub_1C96A5FA4();
  (*(v44 + 8))(v33, v45);
  v34 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v34);
  PrecipitationNotificationConfiguration.reschedulingDate(from:)(v13, a4 + *(Schedule + 24));
  sub_1C9470AFC(v13, &unk_1EC3A5430);
  v35 = v48;
  sub_1C96A4A84();
  v36 = sub_1C96A4A64();
  v38 = v37;
  result = (*(v7 + 8))(v35, v6);
  *a4 = v36;
  a4[1] = v38;
  *(a4 + *(Schedule + 28)) = 0x408C200000000000;
  return result;
}

uint64_t sub_1C9621708@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v8 = sub_1C96A4A94();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB7AC90);
  v41 = a2;
  sub_1C9489AA0();
  v18 = a1;
  v19 = sub_1C96A6134();
  v20 = sub_1C96A7684();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v4;
    v22 = v21;
    v38 = swift_slowAlloc();
    v45 = v38;
    *v22 = 136381187;
    v44 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v24 = sub_1C96A70A4();
    v26 = sub_1C9484164(v24, v25, &v45);
    v39 = v8;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    sub_1C96287F0();
    v28 = *v13;
    v29 = v13[1];
    sub_1C96A53C4();
    sub_1C948EA44(v13, type metadata accessor for NotificationSubscription);
    v30 = sub_1C9484164(v28, v29, &v45);
    v8 = v39;

    *(v22 + 24) = v30;
    _os_log_impl(&dword_1C945E000, v19, v20, "Error occurred while calculating fetch schedule: %{private}s for subscription: %{private,mask.hash}s", v22, 0x20u);
    v31 = v38;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
  }

  else
  {

    sub_1C948EA44(v16, type metadata accessor for NotificationSubscription);
  }

  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_1C9489AA0();
  type metadata accessor for PrecipitationNotificationConfiguration();
  sub_1C96A49B4();
  sub_1C96A4A84();
  v33 = sub_1C96A4A64();
  v35 = v34;
  result = (*(v43 + 8))(v10, v8);
  *a4 = v33;
  a4[1] = v35;
  *(a4 + *(Schedule + 28)) = 0x408C200000000000;
  return result;
}

uint64_t sub_1C9621B08()
{
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  MEMORY[0x1EEE9AC00](Schedule - 8);
  sub_1C9489AA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C9621BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_1C94DA5C0;
  v15[5] = v13;
  v15[6] = a5;
  v15[7] = a3;
  v15[8] = a4;
  sub_1C96A3D04();
  v16 = a5;
  sub_1C96A3D04();
  sub_1C951C258();
}

uint64_t sub_1C9621D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for NotificationSubscription(0);
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9621DE8, 0, 0);
}

uint64_t sub_1C9621DE8()
{
  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if (sub_1C96A4E94())
  {
    v3 = v2[9];
    v4 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C48);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C96AA1C0;
    Settings.Notifications.Precipitation.Overrides.subscription.getter((v6 + v5));
    v4(v6);

    OUTLINED_FUNCTION_17();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_33_10((v2[5] + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
    v2[2] = 1;
    OUTLINED_FUNCTION_42();
    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v2[12] = v10;
    *v10 = v2;
    v10[1] = sub_1C962200C;

    return (v11)(v2 + 2, v0, v1);
  }
}

uint64_t sub_1C962200C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (v0)
  {
    v5 = sub_1C96223CC;
  }

  else
  {
    v5 = sub_1C9622114;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C9622114()
{
  v2 = 0;
  OUTLINED_FUNCTION_39_9();
  v18 = v0[13];
  v3 = *(v18 + 16);
  v4 = (v0[5] + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationManager);
  v17 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    if (v2 >= *(v18 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[11];
    sub_1C9489AA0();
    OUTLINED_FUNCTION_89_2();
    v7 = v5 + v6;
    if (*(v5 + v6 + 48) == 1)
    {

LABEL_7:
      v9 = v7 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);
      v10 = *v9 == v1 && *(v9 + 8) == 0xE700000000000000;
      if (!v10 && (sub_1C96A7DE4() & 1) == 0 || *(v9 + 32) != 0.0 || *(v9 + 40) != 0.0)
      {
        v1 = v4[4];
        __swift_project_boxed_opaque_existential_1(v4, v4[3]);
        OUTLINED_FUNCTION_39_9();
        if (v11() == 3)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_3_47();
      sub_1C948EA44(v12, v13);
      ++v2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_16:
      OUTLINED_FUNCTION_4_56();
      sub_1C96287F0();
      v14 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9522BD0();
        v14 = v17;
      }

      v1 = *(v14 + 16);
      if (v1 >= *(v14 + 24) >> 1)
      {
        sub_1C9522BD0();
        v14 = v17;
      }

      ++v2;
      *(v14 + 16) = v1 + 1;
      v17 = v14;
      OUTLINED_FUNCTION_4_56();
      sub_1C96287F0();
      OUTLINED_FUNCTION_39_9();
    }
  }

  v15 = v0[3];

  v15(v17);

  OUTLINED_FUNCTION_17();

  v16();
}

uint64_t sub_1C96223CC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 112);
  (*(v0 + 48))(v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t PrecipitationNotificationsManager.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

id PrecipitationNotificationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrecipitationNotificationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PrecipitationNotificationsManager.schedule()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7AC90);
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v10))
  {
    v11 = OUTLINED_FUNCTION_29();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "Updating notification fetching schedule", v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  v12 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 24);
  v13 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider), v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v27[0] = 0x656C756465686373;
    v27[1] = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](v14);
    v27[-2] = v1;
    sub_1C96A3D04();
    v15 = sub_1C96A5324();
  }

  else
  {
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v17))
    {
      v18 = OUTLINED_FUNCTION_29();
      *v18 = 0;
      _os_log_impl(&dword_1C945E000, v16, v17, "Unscheduling; Weather is not authorized to send notifications", v18, 2u);
      OUTLINED_FUNCTION_26();
    }

    v19 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v20 = *(v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v19);
    (*(v20 + 48))(v19, v20);
    sub_1C961C00C();
    sub_1C96A4A54();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = &v5[*(v2 + 48)];
    sub_1C949E15C();
    *v25 = 0;
    v25[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v15;
}

uint64_t sub_1C96229C4(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_1C96A5624();
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v3 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7390);
  sub_1C96A5654();

  v4 = sub_1C96A7704();
  sub_1C96A5654();

  v5 = sub_1C96A7704();
  *(swift_allocObject() + 16) = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
  sub_1C9469CB4(&qword_1EC3A73F0, &qword_1EC3A7390);
  sub_1C96A5724();

  v7 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7398);
  sub_1C96A5634();

  v8 = sub_1C96A7704();
  sub_1C96A5654();

  v9 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
  sub_1C96A5654();

  v10 = sub_1C96A7704();
  v11 = sub_1C96A5654();

  return v11;
}

uint64_t sub_1C9622D74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v4 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v3);
  return (*(v4 + 16))(v2, v3, v4);
}

uint64_t sub_1C9622DE4(uint64_t a1, uint64_t a2)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = sub_1C96A4A54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C9470AFC(v9, &unk_1EC3A5430);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v17 = sub_1C96A6154();
    __swift_project_value_buffer(v17, qword_1EDB7AC90);
    v18 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C945E000, v18, v19, "Did not receive new fetch schedule date", v20, 2u);
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
    }

    v21 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v22 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v21);
    (*(v22 + 48))(v21, v22);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v23 = sub_1C96A6154();
    __swift_project_value_buffer(v23, qword_1EDB7AC90);
    (*(v11 + 16))(v13, v16, v10);
    v24 = sub_1C96A6134();
    v25 = sub_1C96A76A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = v26;
      v43 = swift_slowAlloc();
      v48 = v43;
      *v26 = 136446210;
      sub_1C94D7CBC(&qword_1EDB7CC50, MEMORY[0x1E6969530]);
      v27 = sub_1C96A7DB4();
      v44 = a1;
      v29 = v28;
      v30 = *(v11 + 8);
      v30(v13, v10);
      v31 = sub_1C9484164(v27, v29, &v48);

      v32 = v42;
      *(v42 + 1) = v31;
      _os_log_impl(&dword_1C945E000, v24, v25, "Updated notification fetch schedule with date: %{public}s", v32, 0xCu);
      v33 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
      MEMORY[0x1CCA8E3D0](v32, -1, -1);

      v30(v16, v10);
    }

    else
    {

      v34 = *(v11 + 8);
      v34(v13, v10);
      v34(v16, v10);
    }
  }

  v35 = v45;
  sub_1C955FEC0();
  v36 = *(v46 + 48);
  v37 = *&v35[v36];
  v38 = v35[v36 + 8];
  v39 = &v47[v36];
  sub_1C949E15C();
  *v39 = v37;
  v39[8] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C9623344()
{
  *(v0 + 16) = sub_1C96A5E34();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C96233DC;

  return sub_1C961BA44();
}

uint64_t sub_1C96233DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  sub_1C96A5E24();
  OUTLINED_FUNCTION_1_63();
  sub_1C94D7CBC(v3, v4);
  v6 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C9623520, v6, v5);
}

uint64_t sub_1C9623520()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t PrecipitationNotificationsManager.evaluate()()
{
  v41[2] = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7AC90);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_1(v9))
  {
    v10 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v10);
    OUTLINED_FUNCTION_28_3(&dword_1C945E000, v11, v12, "Evaluating notification subscriptions");
    OUTLINED_FUNCTION_38_0();
  }

  sub_1C96A5444();
  v13 = v41[3];
  NotificationEnablementTracker.trackEnablement()();
  sub_1C96A5434();
  v14 = *&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 24];
  v15 = *&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationAuthorizationStatusProvider], v14);
  if ((*(v15 + 8))(v14, v15))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
    OUTLINED_FUNCTION_23_0();
    *(swift_allocObject() + 16) = v0;
    v16 = v0;
    sub_1C96A5624();
    sub_1C946B5D0(0, &qword_1EDB7CDB0);
    v17 = sub_1C96A7704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7390);
    sub_1C96A5654();

    v18 = sub_1C96A7704();
    OUTLINED_FUNCTION_23_0();
    v19 = swift_allocObject();
    v41[1] = v1;
    *(v19 + 16) = v16;
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7398);
    sub_1C96A5654();
    v41[0] = v13;

    v21 = sub_1C96A7704();
    OUTLINED_FUNCTION_23_0();
    *(swift_allocObject() + 16) = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
    OUTLINED_FUNCTION_12_33();
    sub_1C9469CB4(v23, &qword_1EC3A7398);
    sub_1C96A5724();

    v24 = sub_1C96A7704();
    sub_1C96A5634();

    v25 = sub_1C96A7704();
    sub_1C96A5654();

    v26 = sub_1C96A7704();
    v27 = sub_1C96A5654();
  }

  else
  {
    v28 = sub_1C96A6134();
    v29 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v29))
    {
      v30 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v30);
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v31, v32, "Skipping evaluation; Weather is not authorized to send notifications");
      OUTLINED_FUNCTION_38_0();
    }

    OUTLINED_FUNCTION_65_5(&v0[OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler]);
    v33 = OUTLINED_FUNCTION_44_8();
    v34(v33);
    sub_1C961C00C();
    sub_1C96A4A54();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v39 = &v4[*(v1 + 48)];
    sub_1C949E15C();
    *v39 = 0;
    v39[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F0);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    v27 = sub_1C96A56A4();
  }

  return v27;
}

uint64_t sub_1C9623B44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50E8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C9623BAC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v46 = a3;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = v7;
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v41 - v9;
  v51 = sub_1C96A4A94();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C96A4A54();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationSubscription(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v41 - v19);
  v21 = *a1;
  if (qword_1EC3A4748 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v22 = sub_1C96A4E94();
    v52 = v4;
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D00);
      v23 = (type metadata accessor for PrecipitationNotificationFetchSchedule() - 8);
      v24 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C96AA1C0;
      v26 = (v25 + v24);
      Settings.Notifications.Precipitation.Overrides.subscription.getter(v20);
      _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
      sub_1C96A4A84();
      v27 = sub_1C96A4A64();
      v29 = v28;
      (*(v49 + 8))(v11, v51);
      *v26 = v27;
      v26[1] = v29;
      sub_1C96287F0();
      (*(v48 + 32))(v26 + v23[8], v13, v50);
      *(v26 + v23[9]) = 0x408C200000000000;
      v53 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50E0);
      swift_allocObject();
      return sub_1C96A56A4();
    }

    v13 = *(v21 + 16);
    if (!v13)
    {
      break;
    }

    v4 = 0;
    v20 = (v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
    while (v4 < *(v21 + 16))
    {
      sub_1C9489AA0();
      if (v17[*(v14 + 20) + 48] == 1)
      {

LABEL_12:
        v32 = v47;
        sub_1C96287F0();
        v31 = 0;
        goto LABEL_13;
      }

      v11 = sub_1C96A7DE4();

      if (v11)
      {
        goto LABEL_12;
      }

      ++v4;
      sub_1C948EA44(v17, type metadata accessor for NotificationSubscription);
      if (v13 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_10:
  v31 = 1;
  v32 = v47;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v32, v31, 1, v14);
  v33 = *(v42 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v34 = *(v42 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v33);
  (*(v34 + 8))(v21, v33, v34);
  sub_1C955FEC0();
  v35 = (v44 + ((*(v43 + 80) + 16) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1C949E15C();
  v37 = v46;
  *(v36 + v35) = v46;
  v38 = v37;
  v39 = sub_1C96A55A4();
  sub_1C9469CB4(&qword_1EC3A73A8, &qword_1EC3A7398);
  v30 = sub_1C96A5734();

  sub_1C9470AFC(v32, &qword_1EC3A58D0);
  return v30;
}

uint64_t sub_1C9624244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v59 = a2;
  v61 = a1;
  v4 = sub_1C96A4A54();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v20 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if (sub_1C96A4E94())
  {
    goto LABEL_7;
  }

  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EC3A4740 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v63)
  {
LABEL_7:
    v22 = 1;
    return v22 & 1;
  }

  v52 = v16;
  v54 = v3;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  v23 = v61 + *(Schedule + 20);
  v24 = *(v20 + 20);
  if (*(v23 + v24 + *(type metadata accessor for NotificationSubscription.Location(0) + 20) + 48) == 1)
  {

LABEL_22:
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    v22 = sub_1C96A4994();
    (*(v60 + 8))(v6, v4);
    return v22 & 1;
  }

  v25 = sub_1C96A7DE4();

  if (v25)
  {
    goto LABEL_22;
  }

  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C9470AFC(v19, &qword_1EC3A58D0);
    goto LABEL_22;
  }

  v26 = v58;
  sub_1C96287F0();
  v27 = *(v26 + *(v20 + 24));
  if (v27 == 2 || (v27 & 1) == 0)
  {
    v49 = v26;
LABEL_21:
    sub_1C948EA44(v49, type metadata accessor for NotificationSubscription);
    goto LABEL_22;
  }

  v28 = v52;
  sub_1C9489AA0();
  v29 = v28;
  v30 = v57;
  sub_1C9489AA0();
  v31 = *(v56 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator + 24);
  v32 = *(v56 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator + 32);
  __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_locationComparator), v31);
  if (((*(v32 + 8))(v29, v30, v31, v32) & 1) == 0)
  {
    sub_1C948EA44(v30, type metadata accessor for Location);
    sub_1C948EA44(v29, type metadata accessor for Location);
    v49 = v58;
    goto LABEL_21;
  }

  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v33 = sub_1C96A6154();
  __swift_project_value_buffer(v33, qword_1EDB7AC90);
  sub_1C9489AA0();
  v34 = v55;
  sub_1C9489AA0();
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v37 = 141558787;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    sub_1C94D7CBC(&qword_1EDB7ADD0, type metadata accessor for Location);
    v38 = sub_1C96A7DB4();
    v40 = v39;
    sub_1C948EA44(v11, type metadata accessor for Location);
    v41 = sub_1C9484164(v38, v40, &v62);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2160;
    *(v37 + 24) = 1752392040;
    *(v37 + 32) = 2081;
    v42 = v55;
    v43 = sub_1C96A7DB4();
    v45 = v44;
    sub_1C948EA44(v42, type metadata accessor for Location);
    v46 = sub_1C9484164(v43, v45, &v62);

    *(v37 + 34) = v46;
    _os_log_impl(&dword_1C945E000, v35, v36, "Suppressing notifications for location because it's near current location, subscriptionLocation=%{private,mask.hash}s, currentLocation=%{private,mask.hash}s", v37, 0x2Au);
    v47 = v61;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v47, -1, -1);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);

    sub_1C948EA44(v57, type metadata accessor for Location);
    v48 = v52;
  }

  else
  {

    sub_1C948EA44(v34, type metadata accessor for Location);
    sub_1C948EA44(v11, type metadata accessor for Location);
    sub_1C948EA44(v30, type metadata accessor for Location);
    v48 = v29;
  }

  sub_1C948EA44(v48, type metadata accessor for Location);
  sub_1C948EA44(v58, type metadata accessor for NotificationSubscription);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C9624A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73A0);
  v0 = sub_1C96A55A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73B8);
  sub_1C9469CB4(&qword_1EC3A73C0, &qword_1EC3A73B8);
  v1 = sub_1C96A5614();

  return v1;
}

uint64_t sub_1C9624AF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v4 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v3);
  return (*(v4 + 24))(v2, v3, v4);
}

uint64_t sub_1C9624B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
  v3 = *(a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t PrecipitationNotificationsManager.unregister()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C9624C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  sub_1C96A3D04();
  v13 = a5;
  v14 = sub_1C96A5E34();
  v15 = sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;
  v16[5] = sub_1C94F0310;
  v16[6] = v11;
  sub_1C951C258();
}

uint64_t sub_1C9624D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v8 = sub_1C96A7374();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C9624E5C, v8, v7);
}