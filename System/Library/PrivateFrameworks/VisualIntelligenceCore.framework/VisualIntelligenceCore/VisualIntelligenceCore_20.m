uint64_t sub_1D894EFE8(uint64_t a1, uint64_t a2)
{
  v84 = sub_1D8B13240();
  v4 = *(v84 - 8);
  v5 = MEMORY[0x1EEE9AC00](v84);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v69 - v8;
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v85 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v69 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v89);
  v18 = &v69 - v17;
  v91 = type metadata accessor for DetectionRequest(0);
  v19 = MEMORY[0x1EEE9AC00](v91);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v69 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = &v69 - v26;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v28 = 0;
  v29 = a1 + 56;
  v30 = 1 << *(a1 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a1 + 56);
  v33 = (v30 + 63) >> 6;
  v94 = a2 + 56;
  v81 = (v4 + 8);
  v79 = (v4 + 32);
  v82 = v15;
  if (!v32)
  {
    goto LABEL_8;
  }

  do
  {
    v71 = v33;
    v72 = v29;
    v78 = v7;
    v34 = __clz(__rbit64(v32));
    v70 = (v32 - 1) & v32;
LABEL_13:
    v73 = v28;
    v76 = a1;
    v37 = *(a1 + 48);
    v75 = v25;
    v93 = *(v25 + 72);
    sub_1D8959330(v37 + v93 * (v34 | (v28 << 6)), v27, type metadata accessor for DetectionRequest);
    v74 = v27;
    v38 = v90;
    sub_1D8959398(v27, v90, type metadata accessor for DetectionRequest);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](*v38);
    v39 = v91;
    v88 = v91[5];
    DetectionRequest.Originator.hash(into:)(v95);
    v83 = *&v38[v39[6]];
    sub_1D8818BD0(v95, v83);
    v40 = &v38[v39[7]];
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    v44 = v40[3];
    sub_1D88911A0(*v40, v42, v43, v44);
    v45 = v39[8];
    v46 = *&v38[v45];
    if (v46 == 0.0)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = *&v38[v45];
    }

    MEMORY[0x1DA720250](*&v47);
    v48 = sub_1D8B16D80();
    v49 = -1 << *(a2 + 32);
    v50 = v48 & ~v49;
    if (((*(v94 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
LABEL_57:
      sub_1D8959400(v90, type metadata accessor for DetectionRequest);
      return 0;
    }

    v51 = ~v49;
    v92 = *v90;
    v77 = v10;
    v87 = a2;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v50 * v93, v21, type metadata accessor for DetectionRequest);
      if (*v21 != v92)
      {
        goto LABEL_21;
      }

      v52 = &v18[*(v89 + 48)];
      sub_1D8959330(&v21[v91[5]], v18, type metadata accessor for DetectionRequest.Originator);
      sub_1D8959330(&v90[v88], v52, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v57 = v82;
        sub_1D8959330(v18, v82, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*v81)(v57, v84);
          goto LABEL_19;
        }

        v58 = *v79;
        v59 = v57;
        v60 = v84;
        (*v79)(v9, v59, v84);
        v61 = v9;
        v62 = v78;
        v58(v78, v52, v60);
        v80 = sub_1D8B13200();
        v63 = *v81;
        v64 = v62;
        v9 = v61;
        v10 = v77;
        (*v81)(v64, v60);
        v63(v9, v60);
        sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
        a2 = v87;
        if (v80)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_45;
          }

          goto LABEL_19;
        }

        v54 = v85;
        sub_1D8959330(v18, v85, type metadata accessor for DetectionRequest.Originator);
        v55 = *v54;
        if (swift_getEnumCaseMultiPayload() != 3)
        {

          goto LABEL_19;
        }

        v56 = sub_1D894FA18(v55, *v52);

        sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
        a2 = v87;
        if (v56)
        {
          goto LABEL_46;
        }
      }

LABEL_21:
      sub_1D8959400(v21, type metadata accessor for DetectionRequest);
      v50 = (v50 + 1) & v51;
      if (((*(v94 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1D8959400(v52, type metadata accessor for DetectionRequest.Originator);
LABEL_45:
        sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
        a2 = v87;
        goto LABEL_46;
      }

LABEL_19:
      sub_1D87A14E4(v18, &unk_1ECA64FB0);
LABEL_20:
      a2 = v87;
      goto LABEL_21;
    }

    v65 = v86;
    sub_1D8959330(v18, v86, type metadata accessor for DetectionRequest.Originator);
    v66 = *v65;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_19;
    }

    v67 = *v52;
    v68 = *(v52 + 4);
    if (!*(v86 + 4))
    {
      if (!v68)
      {
        goto LABEL_44;
      }

      goto LABEL_50;
    }

    if (*(v86 + 4) == 1)
    {
      if (v68 == 1)
      {
LABEL_44:
        if (v66 == v67)
        {
          goto LABEL_45;
        }
      }

LABEL_50:
      sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
      goto LABEL_20;
    }

    sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
    a2 = v87;
    if (v67 != 0.0 || v68 != 2)
    {
      goto LABEL_21;
    }

LABEL_46:
    if ((sub_1D894CAAC(*&v21[v91[6]], v83) & 1) == 0)
    {
      goto LABEL_21;
    }

    v96.origin.x = v41;
    v96.origin.y = v42;
    v96.size.width = v43;
    v96.size.height = v44;
    if (!CGRectEqualToRect(*&v21[v91[7]], v96) || *&v21[v91[8]] != v46)
    {
      goto LABEL_21;
    }

    sub_1D8959400(v21, type metadata accessor for DetectionRequest);
    result = sub_1D8959400(v90, type metadata accessor for DetectionRequest);
    a1 = v76;
    v7 = v78;
    v25 = v75;
    v27 = v74;
    v28 = v73;
    v29 = v72;
    v33 = v71;
    v32 = v70;
  }

  while (v70);
LABEL_8:
  v35 = v28;
  while (1)
  {
    v28 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v28 >= v33)
    {
      return 1;
    }

    v36 = *(v29 + 8 * v28);
    ++v35;
    if (v36)
    {
      v71 = v33;
      v72 = v29;
      v78 = v7;
      v34 = __clz(__rbit64(v36));
      v70 = (v36 - 1) & v36;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894FA18(uint64_t a1, uint64_t a2)
{
  v74 = sub_1D8B13240();
  v4 = *(v74 - 8);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v70 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v57 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v79);
  v9 = &v57 - v8;
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v73 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v57 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v57 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v57 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v57 - v24;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v26 = 0;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v78 = a2 + 56;
  v71 = (v4 + 8);
  v66 = (v4 + 32);
  v77 = a2;
  v62 = a1;
  v61 = v23;
  v60 = v25;
  v59 = a1 + 56;
  v58 = v31;
  v65 = v10;
  if (!v30)
  {
    goto LABEL_8;
  }

  do
  {
    v32 = __clz(__rbit64(v30));
    v63 = (v30 - 1) & v30;
LABEL_13:
    v64 = v26;
    v35 = *(v23 + 72);
    v36 = *(a1 + 48) + v35 * (v32 | (v26 << 6));
    v37 = v25;
    sub_1D8959330(v36, v25, type metadata accessor for DetectionRequest.Originator);
    sub_1D8959398(v37, v80, type metadata accessor for DetectionRequest.Originator);
    sub_1D8B16D20();
    DetectionRequest.Originator.hash(into:)(v81);
    v38 = sub_1D8B16D80();
    v39 = -1 << *(a2 + 32);
    v40 = v38 & ~v39;
    if (((*(v78 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
LABEL_47:
      sub_1D8959400(v80, type metadata accessor for DetectionRequest.Originator);
      return 0;
    }

    v76 = ~v39;
    v67 = v35;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v40 * v35, v19, type metadata accessor for DetectionRequest.Originator);
      v41 = &v9[*(v79 + 48)];
      sub_1D8959330(v19, v9, type metadata accessor for DetectionRequest.Originator);
      sub_1D8959330(v80, v41, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v46 = v72;
        sub_1D8959330(v9, v72, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
          (*v71)(v46, v74);
          goto LABEL_16;
        }

        v47 = v46;
        v48 = *v66;
        v49 = v69;
        v50 = v74;
        (*v66)(v69, v47, v74);
        v51 = v70;
        v48(v70, v41, v50);
        v35 = v67;
        v68 = sub_1D8B13200();
        v52 = *v71;
        (*v71)(v51, v50);
        v52(v49, v50);
        sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
        sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
        if (v68)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_43;
          }

          goto LABEL_16;
        }

        v43 = v73;
        sub_1D8959330(v9, v73, type metadata accessor for DetectionRequest.Originator);
        v44 = *v43;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);

          goto LABEL_16;
        }

        v45 = sub_1D894FA18(v44, *v41);

        sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
        sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
        if (v45)
        {
          goto LABEL_44;
        }
      }

LABEL_17:
      a2 = v77;
      v40 = (v40 + 1) & v76;
      if (((*(v78 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
      v53 = v75;
      sub_1D8959330(v9, v75, type metadata accessor for DetectionRequest.Originator);
      v54 = *v53;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v55 = *v41;
      v56 = *(v41 + 4);
      if (!*(v75 + 4))
      {
        if (v56)
        {
LABEL_39:
          sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_17;
        }

LABEL_38:
        if (v54 == v55)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (*(v75 + 4) == 1)
      {
        if (v56 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
      if (v55 == 0.0 && v56 == 2)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_16:
      sub_1D87A14E4(v9, &unk_1ECA64FB0);
      goto LABEL_17;
    }

    sub_1D8959400(v41, type metadata accessor for DetectionRequest.Originator);
LABEL_43:
    sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
LABEL_44:
    result = sub_1D8959400(v80, type metadata accessor for DetectionRequest.Originator);
    a2 = v77;
    a1 = v62;
    v23 = v61;
    v25 = v60;
    v26 = v64;
    v27 = v59;
    v31 = v58;
    v30 = v63;
  }

  while (v63);
LABEL_8:
  v33 = v26;
  while (1)
  {
    v26 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v26 >= v31)
    {
      return 1;
    }

    v34 = *(v27 + 8 * v26);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v63 = (v34 - 1) & v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8950304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D8959460(&qword_1EE0E3A80, MEMORY[0x1E69E0220]);
      v26 = sub_1D8B15790();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D8959460(&qword_1EE0E3A78, MEMORY[0x1E69E0220]);
        v31 = sub_1D8B158C0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89506B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v24 = &v64 - v23;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v79 = v13;
  v78 = v11;
  v25 = 0;
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(a1 + 56);
  v30 = (v27 + 63) >> 6;
  v31 = a2 + 56;
  v32 = (v5 + 48);
  if (!v29)
  {
    goto LABEL_8;
  }

  do
  {
    v77 = v32;
    v69 = v30;
    v70 = v26;
    v80 = result;
    v75 = v10;
    v74 = v7;
    v76 = v4;
    v33 = __clz(__rbit64(v29));
    v68 = (v29 - 1) & v29;
LABEL_13:
    v73 = a1;
    v36 = *(a1 + 48);
    v72 = v22;
    v37 = *(v22 + 72);
    v38 = v24;
    sub_1D8959330(v36 + v37 * (v33 | (v25 << 6)), v24, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v71 = v38;
    sub_1D8959398(v38, v20, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    sub_1D8B16D20();
    sub_1D8B13240();
    sub_1D8959460(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    v39 = type metadata accessor for ActionPin(0);
    v40 = &v20[v39[5]];
    v41 = v40[3];
    v88 = v40[2];
    v89 = v41;
    v42 = v40[1];
    v86 = *v40;
    v87 = v42;
    sub_1D8818B80(v86.f64[0], v86.f64[1]);
    sub_1D8818B80(v87.f64[0], v87.f64[1]);
    sub_1D8818B80(v88.f64[0], v88.f64[1]);
    sub_1D8818B80(v89.f64[0], v89.f64[1]);
    v43 = &v20[v39[6]];
    v44 = *v43;
    v84 = *(v43 + 1);
    v85 = v44;
    sub_1D8B15A60();
    v83 = *&v20[v39[7]];
    sub_1D87CF3E8(&v90, v83);
    v81 = v20[v39[8]];
    sub_1D8B16D40();
    v82 = &v20[*(v80 + 20)];
    ActionPin.Pill.hash(into:)(&v90);
    v45 = sub_1D8B16D80();
    v46 = -1 << *(a2 + 32);
    v47 = v45 & ~v46;
    if (((*(v31 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
LABEL_54:
      sub_1D8959400(v20, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      return 0;
    }

    v48 = ~v46;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v47 * v37, v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      if ((sub_1D8B13200() & 1) == 0 || (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v17[v39[5]], v86), vceqq_f64(*&v17[v39[5] + 16], v87)), vuzp1q_s32(vceqq_f64(*&v17[v39[5] + 32], v88), vceqq_f64(*&v17[v39[5] + 48], v89))))) & 1) == 0)
      {
        goto LABEL_16;
      }

      v49 = &v17[v39[6]];
      v50 = *v49 == v85 && *(v49 + 1) == v84;
      if (!v50 && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ((sub_1D88E245C(*&v17[v39[7]], v83) & 1) == 0 || v81 != v17[v39[8]])
      {
        goto LABEL_16;
      }

      v51 = &v17[*(v80 + 20)];
      v52 = *v51 == *v82 && *(v51 + 1) == *(v82 + 1);
      if (!v52 && (sub_1D8B16BA0() & 1) == 0 || (*(v51 + 2) != *(v82 + 2) || *(v51 + 3) != *(v82 + 3)) && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ((*(v51 + 4) != *(v82 + 4) || *(v51 + 5) != *(v82 + 5)) && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_16;
      }

      v53 = *(v51 + 7);
      v54 = *(v82 + 7);
      if (v53)
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_42;
      }

LABEL_16:
      sub_1D8959400(v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v47 = (v47 + 1) & v48;
      if (((*(v31 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (!v54 || (*(v51 + 6) != *(v82 + 6) || v53 != v54) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_42:
    if (*(v51 + 8) != *(v82 + 8))
    {
      goto LABEL_16;
    }

    v66 = *(type metadata accessor for ActionPin.Pill(0) + 36);
    v67 = *(v78 + 48);
    v65 = type metadata accessor for ActionPin.Pill.Source;
    v55 = &v51[v66];
    v56 = v79;
    sub_1D8959330(v55, v79, type metadata accessor for ActionPin.Pill.Source);
    sub_1D8959330(&v82[v66], v56 + v67, v65);
    v57 = v56;
    v58 = v76;
    v66 = *v77;
    if ((v66)(v57, 1, v76) == 1)
    {
      if ((v66)(&v79[v67], 1, v58) == 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v76 = v58;
    v59 = v79;
    sub_1D8959330(v79, v75, type metadata accessor for ActionPin.Pill.Source);
    v60 = v59 + v67;
    v61 = v67;
    if ((v66)(v60, 1, v76) == 1)
    {
      sub_1D8959400(v75, type metadata accessor for BuiltInAction);
LABEL_48:
      sub_1D87A14E4(v79, &qword_1ECA63E58);
      goto LABEL_16;
    }

    v62 = &v79[v61];
    v63 = v74;
    sub_1D8959398(v62, v74, type metadata accessor for BuiltInAction);
    LODWORD(v67) = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v75, v63);
    sub_1D8959400(v63, type metadata accessor for BuiltInAction);
    sub_1D8959400(v75, type metadata accessor for BuiltInAction);
    if ((v67 & 1) == 0)
    {
      sub_1D8959400(v79, type metadata accessor for ActionPin.Pill.Source);
      goto LABEL_16;
    }

LABEL_51:
    sub_1D8959400(v79, type metadata accessor for ActionPin.Pill.Source);
    sub_1D8959400(v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    sub_1D8959400(v20, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    a1 = v73;
    v4 = v76;
    v7 = v74;
    v10 = v75;
    result = v80;
    v22 = v72;
    v24 = v71;
    v26 = v70;
    v30 = v69;
    v32 = v77;
    v29 = v68;
  }

  while (v68);
LABEL_8:
  v34 = v25;
  while (1)
  {
    v25 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      return 1;
    }

    v35 = *(v26 + 8 * v25);
    ++v34;
    if (v35)
    {
      v77 = v32;
      v69 = v30;
      v70 = v26;
      v80 = result;
      v75 = v10;
      v74 = v7;
      v76 = v4;
      v33 = __clz(__rbit64(v35));
      v68 = (v35 - 1) & v35;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89510C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13FA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D8959460(&qword_1ECA649A0, MEMORY[0x1E69A1168]);
      v26 = sub_1D8B15790();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D8959460(&qword_1ECA67E10, MEMORY[0x1E69A1168]);
        v31 = sub_1D8B158C0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8951478(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1D8B16D10();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89515CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v199[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v199[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v199[-v12];
  v241 = type metadata accessor for DetectionRequest.Originator(0);
  v14 = MEMORY[0x1EEE9AC00](v241);
  v227 = &v199[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v230 = &v199[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v226 = &v199[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v225 = &v199[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v224 = &v199[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v229 = &v199[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v223 = &v199[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v222 = &v199[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v199[-v30];
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  v31 = MEMORY[0x1EEE9AC00](v235);
  v233 = &v199[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v31);
  v231 = &v199[-v34];
  MEMORY[0x1EEE9AC00](v33);
  v232 = &v199[-v35];
  v238 = type metadata accessor for DetectionRequest(0);
  v36 = MEMORY[0x1EEE9AC00](v238);
  v236 = &v199[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v234 = &v199[-v38];
  v237 = type metadata accessor for ProcessorState(0);
  v39 = MEMORY[0x1EEE9AC00](v237);
  v242 = &v199[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = MEMORY[0x1EEE9AC00](v39);
  v245 = &v199[-v42];
  MEMORY[0x1EEE9AC00](v41);
  v240 = &v199[-v43];
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E90);
  MEMORY[0x1EEE9AC00](v247);
  v45 = &v199[-v44];
  v248 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v46 = MEMORY[0x1EEE9AC00](v248);
  v48 = &v199[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = MEMORY[0x1EEE9AC00](v46);
  v249 = &v199[-v50];
  result = MEMORY[0x1EEE9AC00](v49);
  v54 = &v199[-v53];
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v215 = v13;
  v55 = 0;
  v56 = a1 + 56;
  v57 = 1 << *(a1 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & *(a1 + 56);
  v60 = (v57 + 63) >> 6;
  v239 = a2 + 56;
  v216 = (v8 + 8);
  v214 = (v8 + 32);
  v220 = v6;
  v61 = v245;
  if (v59)
  {
LABEL_7:
    v203 = v60;
    v204 = v56;
    v210 = v11;
    v213 = v7;
    v208 = v4;
    v202 = (v59 - 1) & v59;
    v201 = v55;
    v62 = __clz(__rbit64(v59)) | (v55 << 6);
LABEL_13:
    v207 = a1;
    v66 = *(a1 + 48);
    v206 = v52;
    v67 = *(v52 + 72);
    v68 = v54;
    sub_1D8959330(v66 + v67 * v62, v54, type metadata accessor for TrackManager.TrackedProcessorState);
    v205 = v68;
    v69 = v249;
    sub_1D8959398(v68, v249, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D8B16D20();
    v70.f64[0] = *(v69 + 2);
    v71 = v69[24];
    *v257 = *(v69 + 25);
    *&v257[3] = *(v69 + 7);
    *&v72 = *(v69 + 4);
    v73 = v69[40];
    *v260 = *(v69 + 41);
    *&v260[3] = *(v69 + 11);
    v74 = *(v69 + 6);
    v75 = *(v69 + 7);
    v76 = *(v69 + 8);
    v77 = *(v69 + 9);
    v252 = *v69;
    v254 = v252;
    v253 = v70;
    v255 = v70.f64[0];
    v256 = v71;
    v219 = v72;
    v258 = v72;
    v250 = v73;
    v259 = v73;
    v261 = v74;
    v262 = v75;
    v263 = v76;
    v264 = v77;
    CameraSourceFrameMetadata.hash(into:)();
    v78 = v248;
    v244 = *(v248 + 20);
    sub_1D8A36918(&v265);
    v209 = v69[*(v78 + 24)];
    MEMORY[0x1DA720210]();
    v79 = sub_1D8B16D80();
    v80 = v71;
    v81 = -1 << *(a2 + 32);
    v82 = v79 & ~v81;
    v83 = v239;
    v84 = v237;
    if ((*(v239 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
    {
      v251 = ~v81;
      v85.f64[0] = v253.f64[0];
      *&v85.f64[1] = v219;
      v253 = v85;
      v217 = a2;
      v243 = v67;
      v246 = v80;
      v221 = v45;
      do
      {
        sub_1D8959330(*(a2 + 48) + v82 * v67, v48, type metadata accessor for TrackManager.TrackedProcessorState);
        v86.f64[0] = *(v48 + 2);
        v86.f64[1] = *(v48 + 4);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v48, v252), vceqq_f64(v86, v253))))))
        {
          goto LABEL_42;
        }

        if ((v48[24] ^ v80))
        {
          goto LABEL_42;
        }

        if ((v48[40] ^ v250))
        {
          goto LABEL_42;
        }

        v266.origin.x = v74;
        v266.origin.y = v75;
        v266.size.width = v76;
        v266.size.height = v77;
        if (!CGRectEqualToRect(*(v48 + 48), v266))
        {
          goto LABEL_42;
        }

        v87 = &v45[*(v247 + 48)];
        sub_1D8959330(&v48[*(v248 + 20)], v45, type metadata accessor for ProcessorState);
        sub_1D8959330(&v249[v244], v87, type metadata accessor for ProcessorState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          v100 = v240;
          sub_1D8959330(v45, v240, type metadata accessor for ProcessorState);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D8959400(v100, type metadata accessor for DetectionRequest);
            v83 = v239;
LABEL_39:
            v80 = v246;
LABEL_41:
            sub_1D87A14E4(v45, &qword_1ECA65E90);
            v67 = v243;
            goto LABEL_42;
          }

          v119 = v234;
          sub_1D8959398(v87, v234, type metadata accessor for DetectionRequest);
          v120 = v119;
          v121 = v100;
          if (*v100 != *v119)
          {
            goto LABEL_165;
          }

          v122 = v238[5];
          v123 = v232;
          v124 = &v232[*(v235 + 48)];
          v125 = v120;
          sub_1D8959330(&v121[v122], v232, type metadata accessor for DetectionRequest.Originator);
          sub_1D8959330(&v125[v122], v124, type metadata accessor for DetectionRequest.Originator);
          v126 = swift_getEnumCaseMultiPayload();
          if (v126 > 1)
          {
            if (v126 == 2)
            {
              v166 = v222;
              sub_1D8959330(v123, v222, type metadata accessor for DetectionRequest.Originator);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                (*v216)(v166, v213);
                goto LABEL_105;
              }

              v167 = *v214;
              v168 = v215;
              v169 = v166;
              v170 = v213;
              (*v214)(v215, v169, v213);
              v171 = v210;
              (v167)(v210, v124, v170);
              v172 = sub_1D8B13200();
              v173 = *v216;
              (*v216)(v171, v170);
              v173(v168, v170);
              sub_1D8959400(v232, type metadata accessor for DetectionRequest.Originator);
              v120 = v234;
              v84 = v237;
              v61 = v245;
              v121 = v240;
              if ((v172 & 1) == 0)
              {
                goto LABEL_165;
              }

              goto LABEL_154;
            }

            if (v126 == 3)
            {
              v127 = v223;
              sub_1D8959330(v123, v223, type metadata accessor for DetectionRequest.Originator);
              v128 = *v127;
              if (swift_getEnumCaseMultiPayload() != 3)
              {

LABEL_105:
                v84 = v237;
LABEL_106:
                sub_1D87A14E4(v232, &unk_1ECA64FB0);
                goto LABEL_107;
              }

              v129 = sub_1D894FA18(v128, *v124);

              sub_1D8959400(v123, type metadata accessor for DetectionRequest.Originator);
              v120 = v234;
              v84 = v237;
              v61 = v245;
              v121 = v240;
              if ((v129 & 1) == 0)
              {
                goto LABEL_165;
              }

              goto LABEL_154;
            }

            v174 = swift_getEnumCaseMultiPayload();
            v84 = v237;
            if (v174 != 4)
            {
              goto LABEL_106;
            }

LABEL_153:
            sub_1D8959400(v232, type metadata accessor for DetectionRequest.Originator);
            v120 = v234;
            v61 = v245;
            v121 = v240;
LABEL_154:
            v193 = sub_1D894CAAC(*&v121[v238[6]], *&v120[v238[6]]);
            v121 = v240;
            v120 = v234;
            if ((v193 & 1) == 0)
            {
              goto LABEL_165;
            }

            v194 = CGRectEqualToRect(*&v240[v238[7]], *&v234[v238[7]]);
            v121 = v240;
            v120 = v234;
            if (!v194 || *&v240[v238[8]] != *&v234[v238[8]])
            {
              goto LABEL_165;
            }

            v195 = v240;
            sub_1D8959400(v234, type metadata accessor for DetectionRequest);
            sub_1D8959400(v195, type metadata accessor for DetectionRequest);
            goto LABEL_158;
          }

          if (!v126)
          {
            v131 = swift_getEnumCaseMultiPayload();
            v84 = v237;
            if (v131)
            {
              goto LABEL_106;
            }

            sub_1D8959400(v124, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_153;
          }

          v175 = v228;
          sub_1D8959330(v123, v228, type metadata accessor for DetectionRequest.Originator);
          v176 = *v175;
          v177 = swift_getEnumCaseMultiPayload();
          v84 = v237;
          if (v177 != 1)
          {
            goto LABEL_106;
          }

          v178 = *v124;
          v179 = *(v124 + 4);
          if (*(v228 + 4))
          {
            if (*(v228 + 4) != 1)
            {
              sub_1D8959400(v232, type metadata accessor for DetectionRequest.Originator);
              v120 = v234;
              v61 = v245;
              v121 = v240;
              if (v178 != 0.0 || v179 != 2)
              {
                goto LABEL_165;
              }

              goto LABEL_154;
            }

            if (v179 != 1)
            {
              goto LABEL_162;
            }
          }

          else if (v179)
          {
            goto LABEL_162;
          }

          if (v176 != v178)
          {
LABEL_162:
            sub_1D8959400(v232, type metadata accessor for DetectionRequest.Originator);
LABEL_107:
            v120 = v234;
            v61 = v245;
            v121 = v240;
LABEL_165:
            v198 = v121;
            sub_1D8959400(v120, type metadata accessor for DetectionRequest);
            sub_1D8959400(v198, type metadata accessor for DetectionRequest);
            sub_1D8959400(v45, type metadata accessor for ProcessorState);
            v83 = v239;
            v67 = v243;
            v80 = v246;
LABEL_42:
            sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
            goto LABEL_43;
          }

          goto LABEL_153;
        }

        if (EnumCaseMultiPayload != 1)
        {
          v101 = v84;
          v102 = v242;
          sub_1D8959330(v45, v242, type metadata accessor for ProcessorState);
          v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48);
          v104 = *&v102[v103 + 8];
          v218 = *&v102[v103];
          v105 = v101;
          v106 = swift_getEnumCaseMultiPayload();
          v80 = v246;
          if (v106 != 2)
          {

            sub_1D8959400(v102, type metadata accessor for DetectionRequest);
            v61 = v245;
            v84 = v105;
            v45 = v221;
            goto LABEL_41;
          }

          *&v219 = v104;
          v107 = *(v87 + v103 + 8);
          v212 = *(v87 + v103);
          v108 = v236;
          sub_1D8959398(v87, v236, type metadata accessor for DetectionRequest);
          if (*v102 != *v108)
          {

            v67 = v243;
            v84 = v105;
            v45 = v221;
LABEL_143:
            sub_1D8959400(v242, type metadata accessor for DetectionRequest);
            v190 = type metadata accessor for TrackManager.TrackedProcessorState;
            v191 = v48;
LABEL_144:
            sub_1D8959400(v191, v190);
            sub_1D8959400(v108, type metadata accessor for DetectionRequest);
            sub_1D8959400(v45, type metadata accessor for ProcessorState);
            v61 = v245;
            goto LABEL_43;
          }

          v211 = v107;
          v109 = v238[5];
          v110 = &v233[*(v235 + 48)];
          sub_1D8959330(&v102[v109], v233, type metadata accessor for DetectionRequest.Originator);
          sub_1D8959330(&v108[v109], v110, type metadata accessor for DetectionRequest.Originator);
          v111 = swift_getEnumCaseMultiPayload();
          if (v111 > 1)
          {
            v112 = v230;
            if (v111 == 2)
            {
              v147 = v233;
              sub_1D8959330(v233, v230, type metadata accessor for DetectionRequest.Originator);
              v148 = swift_getEnumCaseMultiPayload();
              v83 = v239;
              v149 = v110;
              v45 = v221;
              if (v148 != 2)
              {

                (*v216)(v112, v213);
                v159 = v147;
                v108 = v236;
                v84 = v237;
                v80 = v246;
                goto LABEL_102;
              }

              v150 = *v214;
              v151 = v215;
              v152 = v213;
              (*v214)();
              v153 = v150;
              v154 = v210;
              (v153)(v210, v149, v152);
              v200 = sub_1D8B13200();
              v155 = *v216;
              (*v216)(v154, v152);
              v155(v151, v152);
              sub_1D8959400(v233, type metadata accessor for DetectionRequest.Originator);
              v84 = v237;
LABEL_74:
              v80 = v246;
              if ((v200 & 1) == 0)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v113 = v110;
              v83 = v239;
              v45 = v221;
              if (v111 == 3)
              {
                v114 = v233;
                v115 = v227;
                sub_1D8959330(v233, v227, type metadata accessor for DetectionRequest.Originator);
                v116 = *v115;
                v117 = v113;
                v118 = swift_getEnumCaseMultiPayload();
                v84 = v237;
                if (v118 != 3)
                {

                  v108 = v236;
                  v80 = v246;
                  v159 = v114;
                  goto LABEL_102;
                }

                v200 = sub_1D894FA18(v116, *v117);

                sub_1D8959400(v114, type metadata accessor for DetectionRequest.Originator);
                goto LABEL_74;
              }

              v156 = swift_getEnumCaseMultiPayload();
              v157 = v233;
              v84 = v237;
              v80 = v246;
              if (v156 != 4)
              {
                v158 = v233;

                v159 = v158;
                v108 = v236;
                goto LABEL_102;
              }

LABEL_131:
              sub_1D8959400(v157, type metadata accessor for DetectionRequest.Originator);
            }

LABEL_132:
            v186 = v238;
            v187 = v242;
            v108 = v236;
            if ((sub_1D894CAAC(*&v242[v238[6]], *&v236[v238[6]]) & 1) == 0)
            {

              goto LABEL_142;
            }

            v188 = CGRectEqualToRect(*&v187[v186[7]], *&v108[v186[7]]);
            v189 = v186;
            v67 = v243;
            if (!v188)
            {

              goto LABEL_143;
            }

            if (*&v187[v189[8]] != *&v108[v189[8]])
            {
              sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);

              v190 = type metadata accessor for DetectionRequest;
              v191 = v187;
              goto LABEL_144;
            }

            sub_1D8959400(v187, type metadata accessor for DetectionRequest);
            if (v218 == v212 && v219 == v211)
            {

              sub_1D8959400(v108, type metadata accessor for DetectionRequest);
            }

            else
            {
              LODWORD(v218) = sub_1D8B16BA0();

              sub_1D8959400(v108, type metadata accessor for DetectionRequest);
              if ((v218 & 1) == 0)
              {
                sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
                sub_1D8959400(v45, type metadata accessor for ProcessorState);
                v61 = v245;
                goto LABEL_128;
              }
            }

            goto LABEL_159;
          }

          v84 = v105;
          if (!v111)
          {
            v130 = swift_getEnumCaseMultiPayload();
            v83 = v239;
            v80 = v246;
            if (v130)
            {

              v108 = v236;
              goto LABEL_101;
            }

            sub_1D8959400(v110, type metadata accessor for DetectionRequest.Originator);
            v157 = v233;
            v45 = v221;
            goto LABEL_131;
          }

          v160 = v226;
          sub_1D8959330(v233, v226, type metadata accessor for DetectionRequest.Originator);
          v161 = *v160;
          v162 = swift_getEnumCaseMultiPayload();
          v83 = v239;
          if (v162 != 1)
          {

            v108 = v236;
            v80 = v246;
LABEL_101:
            v159 = v233;
            v45 = v221;
LABEL_102:
            sub_1D87A14E4(v159, &unk_1ECA64FB0);
LABEL_142:
            v67 = v243;
            goto LABEL_143;
          }

          v163 = *(v160 + 4);
          v164 = *v110;
          v165 = *(v110 + 4);
          v45 = v221;
          if (*(v160 + 4))
          {
            v80 = v246;
            if (v163 != 1)
            {
              v192 = v164;
              sub_1D8959400(v233, type metadata accessor for DetectionRequest.Originator);
              if (v192 != 0.0 || v165 != 2)
              {
                goto LABEL_141;
              }

              goto LABEL_132;
            }

            v157 = v233;
            if (v165 != 1)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v80 = v246;
            v157 = v233;
            if (v165)
            {
              goto LABEL_140;
            }
          }

          if (v161 != v164)
          {
LABEL_140:
            sub_1D8959400(v157, type metadata accessor for DetectionRequest.Originator);
LABEL_141:

            v108 = v236;
            goto LABEL_142;
          }

          goto LABEL_131;
        }

        sub_1D8959330(v45, v61, type metadata accessor for ProcessorState);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D8959400(v61, type metadata accessor for DetectionResult);
          goto LABEL_39;
        }

        v89 = v220;
        sub_1D8959398(v87, v220, type metadata accessor for DetectionResult);
        v90 = v61;
        if (*v61 != *v89)
        {
          goto LABEL_127;
        }

        v91 = v238[5];
        v92 = v231;
        v93 = &v231[*(v235 + 48)];
        sub_1D8959330(&v90[v91], v231, type metadata accessor for DetectionRequest.Originator);
        sub_1D8959330(&v89[v91], v93, type metadata accessor for DetectionRequest.Originator);
        v94 = swift_getEnumCaseMultiPayload();
        if (v94 <= 1)
        {
          if (v94)
          {
            v142 = v92;
            v143 = v229;
            sub_1D8959330(v142, v229, type metadata accessor for DetectionRequest.Originator);
            v144 = *v143;
            v92 = v231;
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              goto LABEL_96;
            }

            v145 = *v93;
            v146 = *(v93 + 4);
            if (*(v229 + 4))
            {
              if (*(v229 + 4) != 1)
              {
                sub_1D8959400(v92, type metadata accessor for DetectionRequest.Originator);
                v89 = v220;
                v84 = v237;
                v90 = v245;
                if (v145 != 0.0 || v146 != 2)
                {
                  goto LABEL_127;
                }

                goto LABEL_112;
              }

              if (v146 != 1)
              {
                goto LABEL_124;
              }
            }

            else if (v146)
            {
              goto LABEL_124;
            }

            if (v144 != v145)
            {
LABEL_124:
              sub_1D8959400(v92, type metadata accessor for DetectionRequest.Originator);
LABEL_97:
              v89 = v220;
              v84 = v237;
              v90 = v245;
LABEL_127:
              sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
              sub_1D8959400(v89, type metadata accessor for DetectionResult);
              sub_1D8959400(v90, type metadata accessor for DetectionResult);
              sub_1D8959400(v45, type metadata accessor for ProcessorState);
              v61 = v90;
              a2 = v217;
              v83 = v239;
              v67 = v243;
LABEL_128:
              v80 = v246;
              goto LABEL_43;
            }
          }

          else
          {
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_96;
            }

            sub_1D8959400(v93, type metadata accessor for DetectionRequest.Originator);
          }
        }

        else
        {
          if (v94 == 2)
          {
            v132 = v92;
            v133 = v92;
            v134 = v224;
            sub_1D8959330(v132, v224, type metadata accessor for DetectionRequest.Originator);
            if (swift_getEnumCaseMultiPayload() != 2)
            {
              (*v216)(v134, v213);
              v92 = v133;
LABEL_96:
              sub_1D87A14E4(v92, &unk_1ECA64FB0);
              goto LABEL_97;
            }

            v135 = *v214;
            v136 = v215;
            v137 = v134;
            v138 = v213;
            (*v214)(v215, v137, v213);
            v139 = v210;
            (v135)(v210, v93, v138);
            v140 = sub_1D8B13200();
            v141 = *v216;
            (*v216)(v139, v138);
            v141(v136, v138);
            sub_1D8959400(v133, type metadata accessor for DetectionRequest.Originator);
            v89 = v220;
            v84 = v237;
            v90 = v245;
            if ((v140 & 1) == 0)
            {
              goto LABEL_127;
            }

            goto LABEL_112;
          }

          if (v94 == 3)
          {
            v95 = v92;
            v96 = v92;
            v97 = v225;
            sub_1D8959330(v95, v225, type metadata accessor for DetectionRequest.Originator);
            v98 = *v97;
            if (swift_getEnumCaseMultiPayload() != 3)
            {

              v92 = v96;
              goto LABEL_96;
            }

            v99 = sub_1D894FA18(v98, *v93);

            sub_1D8959400(v96, type metadata accessor for DetectionRequest.Originator);
            v89 = v220;
            v84 = v237;
            v90 = v245;
            if ((v99 & 1) == 0)
            {
              goto LABEL_127;
            }

            goto LABEL_112;
          }

          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_96;
          }
        }

        sub_1D8959400(v92, type metadata accessor for DetectionRequest.Originator);
        v89 = v220;
        v84 = v237;
        v90 = v245;
LABEL_112:
        if ((sub_1D894CAAC(*&v90[v238[6]], *&v89[v238[6]]) & 1) == 0)
        {
          goto LABEL_127;
        }

        result = CGRectEqualToRect(*&v90[v238[7]], *&v89[v238[7]]);
        if (!result)
        {
          goto LABEL_127;
        }

        if (*&v90[v238[8]] != *&v89[v238[8]])
        {
          goto LABEL_127;
        }

        v180 = *(v208 + 20);
        v181 = *&v90[v180];
        v182 = *&v89[v180];
        v183 = *(v182 + 16);
        *&v219 = *(v181 + 16);
        if (v219 != v183)
        {
          goto LABEL_127;
        }

        if (v219 && v181 != v182)
        {
          v184 = 0;
          v218 = v181 + 32;
          v212 = v182 + 32;
          while (v184 < *(v181 + 16))
          {
            v254.f64[0] = *(v218 + 8 * v184);
            if (v184 >= *(v182 + 16))
            {
              goto LABEL_173;
            }

            *&v265 = *(v212 + 8 * v184);

            v185 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v254, &v265);

            v89 = v220;
            v90 = v245;
            if ((v185 & 1) == 0)
            {
              goto LABEL_127;
            }

            if (v219 == ++v184)
            {
              goto LABEL_123;
            }
          }

          goto LABEL_172;
        }

LABEL_123:
        sub_1D8959400(v220, type metadata accessor for DetectionResult);
        sub_1D8959400(v245, type metadata accessor for DetectionResult);
        a2 = v217;
LABEL_158:
        v83 = v239;
        v67 = v243;
LABEL_159:
        sub_1D8959400(v45, type metadata accessor for ProcessorState);
        v196 = v48[*(v248 + 24)];
        sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
        v197 = v196 == v209;
        v61 = v245;
        v80 = v246;
        if (v197)
        {
          result = sub_1D8959400(v249, type metadata accessor for TrackManager.TrackedProcessorState);
          a1 = v207;
          v4 = v208;
          v7 = v213;
          v11 = v210;
          v52 = v206;
          v54 = v205;
          v56 = v204;
          v60 = v203;
          v59 = v202;
          v55 = v201;
          if (v202)
          {
            goto LABEL_7;
          }

          goto LABEL_8;
        }

LABEL_43:
        v82 = (v82 + 1) & v251;
      }

      while (((*(v83 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0);
    }

    sub_1D8959400(v249, type metadata accessor for TrackManager.TrackedProcessorState);
    return 0;
  }

LABEL_8:
  v63 = v55;
  while (1)
  {
    v64 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v64 >= v60)
    {
      return 1;
    }

    v65 = *(v56 + 8 * v64);
    ++v63;
    if (v65)
    {
      v203 = v60;
      v204 = v56;
      v210 = v11;
      v213 = v7;
      v208 = v4;
      v202 = (v65 - 1) & v65;
      v201 = v64;
      v62 = __clz(__rbit64(v65)) | (v64 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

uint64_t sub_1D8953784()
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8953808()
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8953864@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D8B16930();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D8953904@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D8B16930();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D895395C(uint64_t a1)
{
  v2 = sub_1D8953B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8953998(uint64_t a1)
{
  v2 = sub_1D8953B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextActionsClassifier.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8953B80();

  sub_1D8B16DD0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E40);
  sub_1D8958C10(&qword_1ECA65E48, &qword_1ECA65E50);
  sub_1D8B16AE0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D8953B80()
{
  result = qword_1ECA65E38;
  if (!qword_1ECA65E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E38);
  }

  return result;
}

uint64_t TextActionsClassifier.Result.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8819574(v3, v1);
  return sub_1D8B16D80();
}

uint64_t TextActionsClassifier.Result.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8953B80();
  sub_1D8B16DB0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E40);
    sub_1D8958C10(&qword_1ECA65E60, &qword_1ECA65E68);
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8953DE8()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8819574(v3, v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8953E38()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8819574(v3, v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8953EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v94 - v8;
  v10 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetaDetectionResult();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CVTrackSnapshot(0);
  v105 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  *&v106 = *v3;
  result = sub_1D8954D44();
  if ((result & 1) == 0)
  {
    v88 = xmmword_1D8B26630;
LABEL_50:
    *a3 = v88;
    goto LABEL_51;
  }

  if (!v19)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
LABEL_51:
    *(a3 + 16) = 2;
    return result;
  }

  v21 = sub_1D891A6E8();
  v103 = *(v21 + 16);
  if (!v103)
  {

LABEL_49:
    v88 = xmmword_1D8B26640;
    goto LABEL_50;
  }

  v97 = v10;
  v96 = a1;
  v95 = a3;
  v100 = *(v15 + 20);
  v102 = v21 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
  v104 = v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v22 = 0;
  v23 = (v13 + 56);
  v24 = v99;
  while (1)
  {
    if (v22 >= *(v104 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v25 = v23;
    sub_1D8959330(v102 + *(v105 + 72) * v22, v17, type metadata accessor for CVTrackSnapshot);
    v26 = sub_1D8B16910();
    v27 = sub_1D881F7DC(1);
    if (v28)
    {
      goto LABEL_57;
    }

    v29 = v26 + 8;
    *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v27;
    *(v26[6] + v27) = 1;
    *(v26[7] + 8 * v27) = 0x3FE999999999999ALL;
    v30 = v26[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_58;
    }

    v26[2] = v32;
    v33 = sub_1D881F7DC(12);
    if (v34)
    {
      goto LABEL_59;
    }

    *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(v26[6] + v33) = 12;
    *(v26[7] + 8 * v33) = 0x3FE0000000000000;
    v35 = v26[2];
    v31 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v31)
    {
      goto LABEL_60;
    }

    v26[2] = v36;
    v37 = sub_1D881F7DC(13);
    if (v38)
    {
      goto LABEL_61;
    }

    *(v29 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    *(v26[6] + v37) = 13;
    *(v26[7] + 8 * v37) = 0x3FE0000000000000;
    v39 = v26[2];
    v31 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v31)
    {
      goto LABEL_62;
    }

    v26[2] = v40;
    v41 = sub_1D881F7DC(5);
    if (v42)
    {
      goto LABEL_63;
    }

    *(v29 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    *(v26[6] + v41) = 5;
    *(v26[7] + 8 * v41) = 0x4020000000000000;
    v43 = v26[2];
    v31 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v31)
    {
      goto LABEL_64;
    }

    v26[2] = v44;
    v45 = 1.0;
    if (v44)
    {
      v46 = sub_1D881F7DC(5);
      if (v47)
      {
        v45 = *(v26[7] + 8 * v46);
      }
    }

    ++v22;

    switch(*&v17[v100] >> 60)
    {
      case 1:
        v64 = type metadata accessor for GroundedParseDetectorResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v64;
        *&v108 = sub_1D8959460(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_29;
      case 2:
        v57 = swift_projectBox();
        *(&v107 + 1) = v12;
        *&v108 = sub_1D8959460(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v58 = type metadata accessor for MetaDetectionResult;
        v59 = v57;
        goto LABEL_30;
      case 3:
      case 8:
        v48 = type metadata accessor for ObjectDetectorResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v48;
        *&v108 = sub_1D8959460(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_29;
      case 4:
        v65 = type metadata accessor for ParseDetectorResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v65;
        *&v108 = sub_1D8959460(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for ParseDetectorResult;
        goto LABEL_29;
      case 5:
        v66 = type metadata accessor for TextDetectorResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v66;
        *&v108 = sub_1D8959460(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for TextDetectorResult;
        goto LABEL_29;
      case 6:
      case 7:
        v52 = type metadata accessor for StreamingBarcodeDetectorResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v52;
        *&v108 = sub_1D8959460(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_29;
      case 9:
      case 0xALL:
        v53 = swift_projectBox();
        v54 = v98;
        sub_1D8959330(v53, v98, type metadata accessor for AFMResult);
        *(&v107 + 1) = v97;
        *&v108 = sub_1D8959460(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v55 = __swift_allocate_boxed_opaque_existential_1(&v106);
        sub_1D8959398(v54, v55, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v56 = type metadata accessor for SyntheticDetectionResult();
        v49 = swift_projectBox();
        *(&v107 + 1) = v56;
        *&v108 = sub_1D8959460(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_29;
      case 0xCLL:
        v60 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v60;
        *&v108 = sub_1D8959460(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_29;
      case 0xDLL:
        v67 = type metadata accessor for GroundedParseClassificationsResult(0);
        v49 = swift_projectBox();
        *(&v107 + 1) = v67;
        *&v108 = sub_1D8959460(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v51 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_29:
        v58 = v51;
        v59 = v49;
LABEL_30:
        sub_1D8959330(v59, boxed_opaque_existential_1, v58);
        break;
      default:
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
        v62 = swift_projectBox();
        *(&v107 + 1) = v61;
        *&v108 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v63 = __swift_allocate_boxed_opaque_existential_1(&v106);
        sub_1D87A0E38(v62, v63, &qword_1ECA67750);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v68 = swift_dynamicCast();
    v23 = v25;
    v69 = *v25;
    if ((v68 & 1) == 0)
    {
      v69(v9, 1, 1, v12);
      sub_1D87A14E4(v9, &qword_1ECA64BB8);
LABEL_43:
      sub_1D8959400(v17, type metadata accessor for CVTrackSnapshot);
      goto LABEL_44;
    }

    v69(v9, 0, 1, v12);
    sub_1D8959398(v9, v24, type metadata accessor for MetaDetectionResult);
    if (*v24 != 5 || (v70 = *&v24[v12[8]], v70 != v18) || (v71 = v12[9], v24[v71] == 2) && v18 - v70 > v45 || (CVBundle.latestEstimate.getter(&v114), v113 = v114, CVDetection.detection.getter(v110), v72 = v111, v73 = v112, __swift_project_boxed_opaque_existential_1(v110, v111), (*(v73 + 64))(&v106, v72, v73), __swift_destroy_boxed_opaque_existential_1(v110), Corners.bounds.getter(), v75 = v74, v77 = v76, v79 = v78, v81 = v80, v24 = v99, , v119.origin.x = 0.0, v119.origin.y = 0.0, v119.size.width = 1.0, v119.size.height = 1.0, v115.origin.x = v75, v115.origin.y = v77, v115.size.width = v79, v115.size.height = v81, v116 = CGRectIntersection(v115, v119), x = v116.origin.x, y = v116.origin.y, width = v116.size.width, height = v116.size.height, v86 = &v24[v12[5]], *&v116.origin.y = v86[1], v106 = *v86, v107 = *&v116.origin.y, *&v116.origin.y = v86[3], v108 = v86[2], v109 = *&v116.origin.y, Corners.bounds.getter(), v23 = v25, v120.origin.x = x, v120.origin.y = y, v120.size.width = width, v120.size.height = height, v118 = CGRectIntersection(v117, v120), width * height * 0.9 > v118.size.width * v118.size.height))
    {
      sub_1D8959400(v24, type metadata accessor for MetaDetectionResult);
      goto LABEL_43;
    }

    v87 = v24[v71];
    if (v87 == 3)
    {
      break;
    }

    sub_1D8959400(v24, type metadata accessor for MetaDetectionResult);
    sub_1D8959400(v17, type metadata accessor for CVTrackSnapshot);
    if (v87 == 2)
    {

      v90 = v95;
LABEL_55:
      *v90 = 0;
      *(v90 + 8) = 0;
      *(v90 + 16) = -1;
      return result;
    }

LABEL_44:
    if (v103 == v22)
    {

      a3 = v95;
      goto LABEL_49;
    }
  }

  if (qword_1EE0E54C0 == -1)
  {
    goto LABEL_53;
  }

LABEL_65:
  swift_once();
LABEL_53:
  v89 = sub_1D8B0AAA4();
  v90 = v95;
  if ((v89 & 1) == 0)
  {

    sub_1D8959400(v24, type metadata accessor for MetaDetectionResult);
    result = sub_1D8959400(v17, type metadata accessor for CVTrackSnapshot);
    goto LABEL_55;
  }

  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_1D8B16720();

  *&v106 = 0xD00000000000002FLL;
  *(&v106 + 1) = 0x80000001D8B43DD0;
  v91 = &v24[v12[10]];
  if (v91[1])
  {
    v92 = *v91;
    v93 = v91[1];
  }

  else
  {
    v93 = 0xEF6E65766967206ELL;
    v92 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v92, v93);

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

BOOL sub_1D8954D44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  CVBundle.latestEstimate.getter(&v11);
  if (v11 >> 60 != 11)
  {
    if (v11 >> 60)
    {
LABEL_5:

      return 0;
    }

    v3 = swift_projectBox();
    sub_1D87A0E38(v3, v2, &qword_1ECA67750);
    v4 = sub_1D8A05CB0();
    v5 = sub_1D88E0474(&unk_1F5426EC8, v4);

    if (v5)
    {
      sub_1D87A14E4(v2, &qword_1ECA67750);
      goto LABEL_5;
    }

    v7 = *(CVBundle.textDetections.getter() + 2);

    if (!v7)
    {
      v8 = sub_1D891AC38();
      sub_1D87A14E4(v2, &qword_1ECA67750);
      v9 = *(v8 + 16);

      return v9 != 0;
    }

    sub_1D87A14E4(v2, &qword_1ECA67750);
  }

  return 1;
}

uint64_t sub_1D8954ED8(uint64_t a1, _OWORD *a2)
{
  v2 = a2[3];
  v14 = a2[2];
  v15 = v2;
  v16 = a2[4];
  v3 = a2[1];
  v13[0] = *a2;
  v13[1] = v3;
  if ((BYTE8(v14) & 1) == 0 || !sub_1D8954D44())
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v6 = sub_1D893EA58(&unk_1F5426C18);
  v7 = 1.0;
  if (*(v6 + 16))
  {
    v8 = sub_1D881F7DC(5);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 8 * v8);
    }
  }

  *(inited + 40) = v7;
  v10 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v11 = sub_1D89E0D68(a1, v13, v10);

  return v11;
}

uint64_t sub_1D8954FF4(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v4 = sub_1D8B152F0();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v3[25] = swift_task_alloc();
  v5 = sub_1D8B131D0();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[29] = v6;
  v3[30] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D89551C8, 0, 0);
}

uint64_t sub_1D89551C8()
{
  v54 = v0;
  v1 = *(v0 + 240);
  CVBundle.latestEstimate.getter(&v52);
  v53[0] = v52;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 248) = (*(v3 + 88))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69E0208], v4);
  v8 = sub_1D8A562B8(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  *(v0 + 120) = v8;
  v9 = (v0 + 120);
  sub_1D8AA4CCC(v1);
  CVBundle.latestEstimate.getter(v53);
  if (v53[0] >> 60)
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v10 = *(v0 + 232);
    v11 = swift_projectBox();
    sub_1D87A0E38(v11, v10, &qword_1ECA67750);
    v12 = sub_1D8956C9C();
    sub_1D87A14E4(v10, &qword_1ECA67750);
  }

  v13 = (v0 + 56);

  sub_1D8AA4CCC(v12);
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v14 = qword_1EE0E54C8;
    v15 = sub_1D8B0AAA4();
    v16 = *(v0 + 208);
    v17 = *(v0 + 216);
    v18 = *(v0 + 200);
    if (v15)
    {
      v19 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
      swift_beginAccess();
      sub_1D87A0E38(v14 + v19, v18, &qword_1ECA631A8);
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
        goto LABEL_11;
      }
    }

    else
    {
      (*(v17 + 56))(*(v0 + 200), 1, 1, *(v0 + 208));
    }

    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
    if ((*(v20 + 48))(v22, 1, v21) != 1)
    {
      sub_1D87A14E4(*(v0 + 200), &qword_1ECA631A8);
    }

LABEL_11:
    CVBundle.latestEstimate.getter(&v51);
    v52 = v51;
    CVDetection.detection.getter(v13);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1(v13, v23);
    (*(v24 + 64))(v53, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v13);
    Corners.bounds.getter();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v53[0] = CVBundle.textDetectorResults.getter();

    v13 = 0;
    sub_1D8956E24(v53, v26, v28, v30, v32);
    v33 = *(v0 + 224);

    v34 = v53[0];
    v35 = swift_task_alloc();
    *(v35 + 16) = v33;
    *(v35 + 24) = v9;
    v36 = sub_1D89167A8(sub_1D89592F0, v35, v34);
    *(v0 + 256) = 0;

    v37 = *(v36 + 16);
    if (!v37)
    {
      break;
    }

    v38 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v38 < *(v36 + 16))
    {
      v39 = *(v36 + 32 + 8 * v38);
      v13 = *(v39 + 16);
      v40 = v9[2];
      v41 = v13 + v40;
      if (__OFADD__(v40, v13))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v41 <= v9[3] >> 1)
      {
        if (*(v39 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v43 = v13 + v40;
        }

        else
        {
          v43 = v40;
        }

        v9 = sub_1D87C84B0(isUniquelyReferenced_nonNull_native, v43, 1, v9);
        if (*(v39 + 16))
        {
LABEL_25:
          v44 = (v9[3] >> 1) - v9[2];
          sub_1D8B15240();
          if (v44 < v13)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          if (v13)
          {
            v45 = v9[2];
            v46 = __OFADD__(v45, v13);
            v47 = v13 + v45;
            if (v46)
            {
              goto LABEL_37;
            }

            v9[2] = v47;
          }

          goto LABEL_14;
        }
      }

      if (v13)
      {
        goto LABEL_35;
      }

LABEL_14:
      if (v37 == ++v38)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v48 = sub_1D87C4D68(v9);
  *(v0 + 264) = v48;

  sub_1D8B15320();
  v49 = swift_task_alloc();
  *(v0 + 272) = v49;
  *v49 = v0;
  v49[1] = sub_1D895587C;

  return MEMORY[0x1EEE4FAC8](v48);
}

uint64_t sub_1D895587C(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D895599C, 0, 0);
}

uint64_t sub_1D895599C()
{
  v62 = v0;
  v1 = sub_1D8956274(v0[35]);

  if (qword_1EE0E4468 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_1D8B151E0();
  v4 = __swift_project_value_buffer(v3, qword_1EE0E4470);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v0[16] = MEMORY[0x1E69E7CD0];
  v6 = swift_task_alloc();
  v6[2] = sub_1D8956AB0;
  v6[3] = 0;
  v6[4] = v0 + 16;
  v6[5] = v2;
  v7 = sub_1D8820F44(sub_1D8959310, v6, v1);

  sub_1D87A14E4(v2, &qword_1ECA65E98);

  v9 = sub_1D87C4F04(v8);

  v10 = *(v1 + 16);

  if (v10)
  {

    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16200();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v13 = 136315138;
      v14 = v7[2];
      if (v14)
      {
        v49 = v13;
        v50 = v12;
        v51 = v11;
        v52 = v9;
        v15 = v0[22];
        v57 = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v14, 0);
        v55 = *(v15 + 16);
        v16 = v7;
        v17 = v57;
        v18 = v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v19 = (v15 + 8);
        v54 = *(v15 + 72);
        do
        {
          v20 = v0[23];
          v21 = v0[21];
          v55(v20, v18, v21);
          v58 = 91;
          v59 = 0xE100000000000000;
          v60 = 95;
          v61 = 0xE100000000000000;
          v0[17] = sub_1D8B152E0();
          v22 = sub_1D8B16B50();
          MEMORY[0x1DA71EFA0](v22);

          MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
          v23 = sub_1D8B152A0();
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v23 = 0x656C746974;
            v25 = 0xE500000000000000;
          }

          MEMORY[0x1DA71EFA0](v23, v25);

          MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
          v26 = sub_1D8B152D0();
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v26 = 0x6D614E6567616D69;
            v28 = 0xE900000000000065;
          }

          MEMORY[0x1DA71EFA0](v26, v28);

          MEMORY[0x1DA71EFA0](v60, v61);

          MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
          v29 = v58;
          v30 = v59;
          (*v19)(v20, v21);
          v57 = v17;
          v32 = *(v17 + 16);
          v31 = *(v17 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D87F3F54((v31 > 1), v32 + 1, 1);
            v17 = v57;
          }

          *(v17 + 16) = v32 + 1;
          v33 = v17 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
          v18 += v54;
          --v14;
        }

        while (v14);

        v11 = v51;
        v9 = v52;
        v12 = v50;
        v13 = v49;
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      v0[18] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v38 = sub_1D8B15810();
      v40 = v39;

      v41 = sub_1D89AC714(v38, v40, &v56);

      *(v13 + 4) = v41;
      _os_log_impl(&dword_1D8783000, v11, v12, "Data detectors: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA721330](v53, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    else
    {
    }

    v42 = v0[19];
    *v42 = v9;
    type metadata accessor for BundleClassification.ClassificationType(0);
    swift_storeEnumTagMultiPayload();
    v36 = type metadata accessor for BundleClassification(0);
    v43 = v42 + *(v36 + 20);
    *v43 = 2;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v43 = 2;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
  }

  else
  {
    v34 = v0[31];
    v35 = v0[19];

    *v35 = v9;
    type metadata accessor for BundleClassification.ClassificationType(0);
    swift_storeEnumTagMultiPayload();
    v36 = type metadata accessor for BundleClassification(0);
    v37 = v35 + *(v36 + 20);
    *v37 = 2;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v37 = xmmword_1D8B2CCC0;
    *(v37 + 2) = 0x80000001D8B44AE0;
    *(v37 + 3) = 128;
    *(v37 + 4) = v34;
  }

  v44 = v0[28];
  v45 = v0[26];
  v46 = v0[27];
  *(v0[19] + *(v36 + 24)) = v0[31];
  (*(v46 + 8))(v44, v45);

  v47 = v0[1];

  return v47();
}

BOOL sub_1D8956098(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for TextDetectorResult(0);
  Corners.bounds.getter();
  width = v22.size.width;
  height = v22.size.height;
  v19 = a3 * a4;
  r2 = a1;
  v26.origin.x = a1;
  v21 = a2;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v23 = CGRectIntersection(v22, v26);
  v10 = v23.size.width;
  v11 = v23.size.height;
  v12 = 0.0;
  v13 = 0.0;
  if (!CGRectIsNull(v23))
  {
    v13 = v10 * v11 / (v19 + width * height - v10 * v11);
  }

  Corners.bounds.getter();
  v14 = v24.size.width;
  v15 = v24.size.height;
  v27.origin.x = r2;
  v27.origin.y = v21;
  v27.size.width = a3;
  v27.size.height = a4;
  v25 = CGRectIntersection(v24, v27);
  v16 = v25.size.width;
  v17 = v25.size.height;
  if (!CGRectIsNull(v25))
  {
    v12 = v16 * v17 / (v19 + v14 * v15 - v16 * v17);
  }

  return v12 < v13;
}

uint64_t sub_1D8956208@<X0>(unint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(MEMORY[0x1E69E7CC0], a1, 1);
  v6 = sub_1D8958E3C(v5, a2);

  *a3 = v6;
  return result;
}

uint64_t sub_1D8956274(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = sub_1D8B15270();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B152F0();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v74 = v14;
    v70 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v70;
    v16 = *(v13 + 56);
    v72 = (v3 + 88);
    v69 = (v3 + 8);
    v71 = *MEMORY[0x1E69E0200];
    v65 = "No actionables found";
    v63 = "\\d{1,4}[- ]?\\d{4}$";
    v61 = (v13 - 8);
    v17 = (v13 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    v62 = xmmword_1D8B1AB90;
    v76 = v5;
    v77 = v2;
    v75 = v13;
    v73 = v16;
    while (1)
    {
      v19 = v6;
      v74(v11, v15, v6);
      sub_1D8B15290();
      v20 = (*v72)(v5, v2);
      if (v20 != v71)
      {
        break;
      }

      v21 = sub_1D8B152C0();
      if (!v22)
      {
        goto LABEL_8;
      }

      v23 = v21;
      v24 = v22;
      v25 = sub_1D8B15940();
      if (DDResultIsValidPhoneNumberString())
      {

LABEL_8:
        v26 = *v17;
        v6 = v19;
        (*v17)(v78, v11, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4948(0, *(v18 + 16) + 1, 1);
          v18 = v81;
        }

        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D87F4948(v28 > 1, v29 + 1, 1);
          v18 = v81;
        }

        *(v18 + 16) = v29 + 1;
        v30 = v73;
        v26((v18 + v70 + v29 * v73), v78, v6);
        v5 = v76;
        v2 = v77;
        goto LABEL_13;
      }

      v68 = v25;
      v31 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v32 = sub_1D8B15940();
      v79 = 0;
      v33 = [v31 initWithPattern:v32 options:0 error:&v79];

      v34 = v79;
      v67 = v23;
      v66 = HIBYTE(v24) & 0xF;
      if (v33)
      {
        if ((v24 & 0x1000000000000000) != 0)
        {
          v35 = sub_1D8B15B10();
        }

        else
        {
          v35 = sub_1D8B15B20();
        }

        v64 = v35;
        v36 = v34;
        v37 = sub_1D8B15940();
        v38 = [v33 firstMatchInString:v37 options:0 range:{0, v64}];

        if (v38)
        {

          goto LABEL_8;
        }
      }

      else
      {
        v39 = v79;
        v40 = sub_1D8B12EB0();

        v64 = v40;
        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
        v41 = swift_allocObject();
        *(v41 + 16) = v62;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D8B16720();

        v79 = 0x2064696C61766E49;
        v80 = 0xEF203A7865676572;
        swift_getErrorValue();
        v42 = sub_1D8B16C90();
        MEMORY[0x1DA71EFA0](v42);

        v43 = v79;
        v44 = v80;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 32) = v43;
        *(v41 + 40) = v44;
        sub_1D8B16CF0();
      }

      v45 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v46 = sub_1D8B15940();
      v79 = 0;
      v47 = [v45 initWithPattern:v46 options:0 error:&v79];

      v48 = v79;
      if (v47)
      {
        if ((v24 & 0x1000000000000000) != 0)
        {
          v49 = sub_1D8B15B10();
        }

        else
        {
          v49 = sub_1D8B15B20();
        }

        v66 = v49;
        v50 = v48;
        v51 = sub_1D8B15940();
        v52 = [v47 firstMatchInString:v51 options:0 range:{0, v66}];

        if (v52)
        {

          goto LABEL_8;
        }
      }

      else
      {
        v53 = v79;
        v54 = sub_1D8B12EB0();

        v67 = v54;
        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
        v55 = swift_allocObject();
        *(v55 + 16) = v62;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D8B16720();

        v79 = 0x2064696C61766E49;
        v80 = 0xEF203A7865676572;
        swift_getErrorValue();
        v56 = sub_1D8B16C90();
        MEMORY[0x1DA71EFA0](v56);

        v57 = v79;
        v58 = v80;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 32) = v57;
        *(v55 + 40) = v58;
        sub_1D8B16CF0();
      }

      v6 = v19;
      (*v61)(v11, v19);
      v5 = v76;
      v2 = v77;
      v30 = v73;
LABEL_13:
      v15 += v30;
      if (!--v12)
      {
        return v18;
      }
    }

    (*v69)(v5, v2);
    goto LABEL_8;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8956AB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8956ADC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8956ADC()
{
  sub_1D8B152E0();
  v0 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v0);

  MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
  v1 = sub_1D8B152A0();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA71EFA0](v1, v3);

  MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
  v4 = sub_1D8B152D0();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x6D614E6567616D69;
    v6 = 0xE900000000000065;
  }

  MEMORY[0x1DA71EFA0](v4, v6);

  return 95;
}

uint64_t sub_1D8956BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v8 = swift_task_alloc();
  *(v5 + 64) = v8;
  *v8 = v5;
  v8[1] = sub_1D88DFAD0;

  return sub_1D8954FF4(a1, a2);
}

char sub_1D8956C9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v2 = *(v0 + *(v1 + 44));
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  LOBYTE(v1) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v2 + 32));
  if (v9 == 181)
  {
LABEL_8:
    __break(1u);
    return v1;
  }

  if (v9 == 102)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
    v3 = sub_1D8B15270();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D8B1AB90;
    (*(v4 + 104))(v6 + v5, *MEMORY[0x1E69E0218], v3);
    v7 = sub_1D8A562B8(v6);
    swift_setDeallocating();
    (*(v4 + 8))(v6 + v5, v3);
    swift_deallocClassInstance();
    LOBYTE(v1) = v7;
  }

  else
  {
    LOBYTE(v1) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1D8956E24(void **a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5)
{
  v10 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1D885D36C(v11);
  }

  v12 = v11[2];
  v14[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14[1] = v12;
  result = sub_1D8956EFC(v14, a2, a3, a4, a5);
  *a1 = v11;
  return result;
}

uint64_t sub_1D8956EFC(uint64_t *a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5)
{
  v10 = a1[1];
  result = sub_1D8B16B30();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TextDetectorResult(0);
        v14 = sub_1D8B15D60();
        *(v14 + 16) = v13;
      }

      v15 = *(type metadata accessor for TextDetectorResult(0) - 8);
      v16[0] = (v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
      v16[1] = v13;
      sub_1D89574AC(v16, a2, a3, a4, a5, v17, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return sub_1D8957068(0, v10, 1, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1D8957068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v80 = a8;
  v15 = type metadata accessor for TextDetectorResult(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v71 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v25 = &v71 - v24;
  v73 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v79 = a7 * v80;
    v27 = *(v23 + 72);
    v28 = v26 + v27 * (a3 - 1);
    v29 = -v27;
    v30 = a1 - a3;
    v78 = v26;
    v72 = v27;
    v31 = v26 + v27 * a3;
LABEL_5:
    v76 = v28;
    v77 = a3;
    v74 = v31;
    v75 = v30;
    while (1)
    {
      sub_1D8959330(v31, v25, type metadata accessor for TextDetectorResult);
      sub_1D8959330(v28, v21, type metadata accessor for TextDetectorResult);
      v32 = &v25[*(v15 + 24)];
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = v32[3];
      v37 = v32[4];
      v38 = v32[5];
      v39 = v32[6];
      v40 = v32[7];
      if (v35 >= *v32)
      {
        v41 = *v32;
      }

      else
      {
        v41 = v32[2];
      }

      if (v37 < v41)
      {
        v41 = v32[4];
      }

      if (v39 < v41)
      {
        v41 = v32[6];
      }

      if (v36 >= v34)
      {
        v42 = v32[1];
      }

      else
      {
        v42 = v32[3];
      }

      if (v38 < v42)
      {
        v42 = v32[5];
      }

      if (v40 < v42)
      {
        v42 = v32[7];
      }

      if (v33 <= v35)
      {
        v33 = v32[2];
      }

      if (v33 <= v37)
      {
        v33 = v32[4];
      }

      if (v33 <= v39)
      {
        v33 = v32[6];
      }

      if (v34 <= v36)
      {
        v34 = v32[3];
      }

      if (v34 <= v38)
      {
        v34 = v32[5];
      }

      if (v34 <= v40)
      {
        v34 = v32[7];
      }

      v43 = v33 - v41;
      v44 = v34 - v42;
      v45 = v33 - v41;
      v46 = v34 - v42;
      v83.origin.x = a5;
      v83.origin.y = a6;
      v83.size.width = a7;
      v83.size.height = v80;
      v81 = CGRectIntersection(*&v41, v83);
      width = v81.size.width;
      height = v81.size.height;
      if (CGRectIsNull(v81))
      {
        v49 = &v21[*(v15 + 24)];
        v51 = *v49;
        v50 = v49[1];
        v52 = v49[2];
        v53 = v49[3];
        v55 = v49[4];
        v54 = v49[5];
        v57 = v49[6];
        v56 = v49[7];
        v58 = 0.0;
      }

      else
      {
        v58 = width * height / (v79 + v43 * v44 - width * height);
        v59 = &v21[*(v15 + 24)];
        v51 = *v59;
        v50 = v59[1];
        v52 = v59[2];
        v53 = v59[3];
        v55 = v59[4];
        v54 = v59[5];
        v57 = v59[6];
        v56 = v59[7];
      }

      v60 = v52;
      if (v52 >= v51)
      {
        v60 = v52;
        v52 = v51;
      }

      if (v55 < v52)
      {
        v52 = v55;
      }

      if (v57 < v52)
      {
        v52 = v57;
      }

      if (v53 >= v50)
      {
        v61 = v50;
      }

      else
      {
        v61 = v53;
      }

      if (v54 < v61)
      {
        v61 = v54;
      }

      if (v56 < v61)
      {
        v61 = v56;
      }

      if (v51 <= v60)
      {
        v51 = v60;
      }

      if (v51 <= v55)
      {
        v51 = v55;
      }

      if (v51 <= v57)
      {
        v51 = v57;
      }

      if (v50 <= v53)
      {
        v50 = v53;
      }

      if (v50 <= v54)
      {
        v50 = v54;
      }

      if (v50 <= v56)
      {
        v50 = v56;
      }

      v62 = v51 - v52;
      v63 = v50 - v61;
      v64 = v51 - v52;
      v65 = v63;
      v84.origin.x = a5;
      v84.origin.y = a6;
      v84.size.width = a7;
      v84.size.height = v80;
      v82 = CGRectIntersection(*&v52, v84);
      v66 = v82.size.width;
      v67 = v82.size.height;
      if (CGRectIsNull(v82))
      {
        v69 = 0.0;
      }

      else
      {
        v68 = v66 * v67 / (v79 + v62 * v63 - v66 * v67);
        v69 = v68;
      }

      sub_1D8959400(v21, type metadata accessor for TextDetectorResult);
      result = sub_1D8959400(v25, type metadata accessor for TextDetectorResult);
      if (v69 >= v58)
      {
LABEL_4:
        a3 = v77 + 1;
        v28 = v76 + v72;
        v30 = v75 - 1;
        v31 = v74 + v72;
        if (v77 + 1 == v73)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v78)
      {
        break;
      }

      sub_1D8959398(v31, v18, type metadata accessor for TextDetectorResult);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D8959398(v18, v28, type metadata accessor for TextDetectorResult);
      v28 += v29;
      v31 += v29;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89574AC(char **a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = v8;
  v207 = a3;
  v190 = a1;
  v16 = type metadata accessor for TextDetectorResult(0);
  v199 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v192 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v205 = &v185 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v185 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v185 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v202 = &v185 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v186 = &v185 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v200 = a7;
  v35 = *(a7 + 8);
  if (v35 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_209:
    v9 = *v190;
    if (!*v190)
    {
      goto LABEL_251;
    }

    a7 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_245;
    }

    result = a7;
LABEL_212:
    v208 = result;
    a7 = *(result + 16);
    if (a7 >= 2)
    {
      while (*v200)
      {
        v181 = *(result + 16 * a7);
        v182 = result;
        v183 = *(result + 16 * (a7 - 1) + 40);
        sub_1D8958358(&(*v200)[*(v199 + 72) * v181], &(*v200)[*(v199 + 72) * *(result + 16 * (a7 - 1) + 32)], &(*v200)[*(v199 + 72) * v183], v9, a2, v207, a4, a5);
        if (v10)
        {
        }

        if (v183 < v181)
        {
          goto LABEL_238;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_1D885CC68(v182);
        }

        if (a7 - 2 >= *(v182 + 2))
        {
          goto LABEL_239;
        }

        v184 = &v182[16 * a7];
        *v184 = v181;
        *(v184 + 1) = v183;
        v208 = v182;
        sub_1D885CBDC(a7 - 1);
        result = v208;
        a7 = *(v208 + 16);
        if (a7 <= 1)
        {
        }
      }

      goto LABEL_249;
    }
  }

  v187 = &v185 - v33;
  v201 = v34;
  v36 = 0;
  v206 = a4 * a5;
  v37 = MEMORY[0x1E69E7CC0];
  v189 = a8;
  while (1)
  {
    v193 = v37;
    if (v36 + 1 < v35)
    {
      v203 = v35;
      v38 = *v200;
      v39 = *(v199 + 72);
      v9 = &(*v200)[v39 * (v36 + 1)];
      a7 = v36;
      v204 = type metadata accessor for TextDetectorResult;
      sub_1D8959330(v9, v187, type metadata accessor for TextDetectorResult);
      v198 = v38;
      v40 = &v38[v39 * v36];
      v41 = v186;
      sub_1D8959330(v40, v186, v204);
      LODWORD(v197) = sub_1D8956098(a2, v207, a4, a5);
      if (!v10)
      {
        sub_1D8959400(v41, type metadata accessor for TextDetectorResult);
        result = sub_1D8959400(v187, type metadata accessor for TextDetectorResult);
        v188 = v36;
        v42 = (v36 + 2);
        v43 = v198 + v39 * (v36 + 2);
        v44 = v39;
        v198 = v39;
        v196 = 0;
        while (1)
        {
          v57 = v203;
          if (v203 == v42)
          {
            break;
          }

          v58 = v202;
          sub_1D8959330(v43, v202, type metadata accessor for TextDetectorResult);
          a7 = v201;
          sub_1D8959330(v9, v201, type metadata accessor for TextDetectorResult);
          v59 = (v58 + *(v16 + 24));
          v60 = *v59;
          v61 = v59[1];
          v62 = v59[2];
          v63 = v59[3];
          v64 = v59[4];
          v65 = v59[5];
          v66 = v59[6];
          v67 = v59[7];
          if (v62 >= *v59)
          {
            v68 = *v59;
          }

          else
          {
            v68 = v59[2];
          }

          if (v64 < v68)
          {
            v68 = v59[4];
          }

          if (v66 < v68)
          {
            v68 = v59[6];
          }

          if (v63 >= v61)
          {
            v69 = v59[1];
          }

          else
          {
            v69 = v59[3];
          }

          if (v65 < v69)
          {
            v69 = v59[5];
          }

          if (v67 < v69)
          {
            v69 = v59[7];
          }

          if (v60 <= v62)
          {
            v60 = v59[2];
          }

          if (v60 <= v64)
          {
            v60 = v59[4];
          }

          if (v60 <= v66)
          {
            v60 = v59[6];
          }

          if (v61 <= v63)
          {
            v61 = v59[3];
          }

          if (v61 <= v65)
          {
            v61 = v59[5];
          }

          if (v61 <= v67)
          {
            v61 = v59[7];
          }

          v70 = v60 - v68;
          v71 = v61 - v69;
          v72 = v60 - v68;
          v73 = v61 - v69;
          v214.origin.x = a2;
          v214.origin.y = v207;
          v214.size.width = a4;
          v214.size.height = a5;
          v210 = CGRectIntersection(*&v68, v214);
          width = v210.size.width;
          height = v210.size.height;
          if (CGRectIsNull(v210))
          {
            v76 = (a7 + *(v16 + 24));
            v47 = *v76;
            v48 = v76[1];
            v45 = v76[2];
            v77 = v76[3];
            v79 = v76[4];
            v78 = v76[5];
            v81 = v76[6];
            v80 = v76[7];
            LODWORD(v204) = 0;
          }

          else
          {
            v82 = width * height / (v206 + v70 * v71 - width * height);
            *&v204 = v82;
            v83 = (a7 + *(v16 + 24));
            v47 = *v83;
            v48 = v83[1];
            v45 = v83[2];
            v77 = v83[3];
            v79 = v83[4];
            v78 = v83[5];
            v81 = v83[6];
            v80 = v83[7];
          }

          v84 = v45;
          v10 = v196;
          if (v45 >= v47)
          {
            v84 = v45;
            v45 = v47;
          }

          if (v79 < v45)
          {
            v45 = v79;
          }

          if (v81 < v45)
          {
            v45 = v81;
          }

          if (v77 >= v48)
          {
            v46 = v48;
          }

          else
          {
            v46 = v77;
          }

          if (v78 < v46)
          {
            v46 = v78;
          }

          if (v80 < v46)
          {
            v46 = v80;
          }

          if (v47 <= v84)
          {
            v47 = v84;
          }

          if (v47 <= v79)
          {
            v47 = v79;
          }

          if (v47 <= v81)
          {
            v47 = v81;
          }

          if (v48 <= v77)
          {
            v48 = v77;
          }

          if (v48 <= v78)
          {
            v48 = v78;
          }

          if (v48 <= v80)
          {
            v48 = v80;
          }

          v49 = v47 - v45;
          v50 = v48 - v46;
          v51 = v47 - v45;
          v52 = v50;
          v213.origin.x = a2;
          v213.origin.y = v207;
          v213.size.width = a4;
          v213.size.height = a5;
          v209 = CGRectIntersection(*&v45, v213);
          v53 = v209.size.width;
          v54 = v209.size.height;
          if (CGRectIsNull(v209))
          {
            v56 = 0.0;
          }

          else
          {
            v55 = v53 * v54 / (v206 + v49 * v50 - v53 * v54);
            v56 = v55;
          }

          sub_1D8959400(v201, type metadata accessor for TextDetectorResult);
          result = sub_1D8959400(v202, type metadata accessor for TextDetectorResult);
          v42 = (v42 + 1);
          v44 = v198;
          v43 += v198;
          v9 += v198;
          if (((v197 ^ (v56 >= *&v204)) & 1) == 0)
          {
            v57 = (v42 - 1);
            break;
          }
        }

        a8 = v189;
        v36 = v188;
        if (v197)
        {
          if (v57 < v188)
          {
            goto LABEL_244;
          }

          if (v188 < v57)
          {
            v85 = v44 * (v57 - 1);
            v86 = v57 * v44;
            v203 = v57;
            v87 = v188;
            a7 = v188 * v44;
            do
            {
              v57 = (v57 - 1);
              if (v87 != v57)
              {
                v204 = v57;
                v9 = *v200;
                if (!*v200)
                {
                  goto LABEL_248;
                }

                sub_1D8959398(&v9[a7], v192, type metadata accessor for TextDetectorResult);
                if (a7 < v85 || &v9[a7] >= &v9[v86])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a7 != v85)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1D8959398(v192, &v9[v85], type metadata accessor for TextDetectorResult);
                v44 = v198;
                v57 = v204;
              }

              v87 = (v87 + 1);
              v85 -= v44;
              v86 -= v44;
              a7 += v44;
            }

            while (v87 < v57);
            v10 = v196;
            a8 = v189;
            v36 = v188;
            v57 = v203;
          }
        }

        goto LABEL_82;
      }

      sub_1D8959400(v41, type metadata accessor for TextDetectorResult);
      sub_1D8959400(v187, type metadata accessor for TextDetectorResult);
    }

    v57 = (v36 + 1);
LABEL_82:
    v88 = v200[1];
    if (v57 < v88)
    {
      if (__OFSUB__(v57, v36))
      {
        goto LABEL_241;
      }

      if (v57 - v36 < a8)
      {
        if (__OFADD__(v36, a8))
        {
          goto LABEL_242;
        }

        if (v36 + a8 < v88)
        {
          v88 = (v36 + a8);
        }

        if (v88 < v36)
        {
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          result = sub_1D885CC68(a7);
          goto LABEL_212;
        }

        if (v57 != v88)
        {
          break;
        }
      }
    }

LABEL_156:
    if (v57 < v36)
    {
      goto LABEL_240;
    }

    v194 = v57;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v37 = v193;
    }

    else
    {
      result = sub_1D87C7C5C(0, *(v193 + 2) + 1, 1, v193);
      v37 = result;
    }

    a7 = *(v37 + 2);
    v136 = *(v37 + 3);
    v137 = a7 + 1;
    if (a7 >= v136 >> 1)
    {
      result = sub_1D87C7C5C((v136 > 1), a7 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 2) = v137;
    v138 = &v37[16 * a7];
    v139 = v194;
    *(v138 + 4) = v36;
    *(v138 + 5) = v139;
    v204 = *v190;
    if (!v204)
    {
      goto LABEL_250;
    }

    if (a7)
    {
      while (1)
      {
        v140 = v137 - 1;
        if (v137 >= 4)
        {
          break;
        }

        if (v137 == 3)
        {
          v141 = *(v37 + 4);
          v142 = *(v37 + 5);
          v151 = __OFSUB__(v142, v141);
          v143 = v142 - v141;
          v144 = v151;
LABEL_176:
          if (v144)
          {
            goto LABEL_229;
          }

          v157 = &v37[16 * v137];
          v159 = *v157;
          v158 = *(v157 + 1);
          v160 = __OFSUB__(v158, v159);
          v161 = v158 - v159;
          v162 = v160;
          if (v160)
          {
            goto LABEL_232;
          }

          v163 = &v37[16 * v140 + 32];
          v165 = *v163;
          v164 = *(v163 + 1);
          v151 = __OFSUB__(v164, v165);
          v166 = v164 - v165;
          if (v151)
          {
            goto LABEL_235;
          }

          if (__OFADD__(v161, v166))
          {
            goto LABEL_236;
          }

          if (v161 + v166 >= v143)
          {
            if (v143 < v166)
            {
              v140 = v137 - 2;
            }

            goto LABEL_197;
          }

          goto LABEL_190;
        }

        v167 = &v37[16 * v137];
        v169 = *v167;
        v168 = *(v167 + 1);
        v151 = __OFSUB__(v168, v169);
        v161 = v168 - v169;
        v162 = v151;
LABEL_190:
        if (v162)
        {
          goto LABEL_231;
        }

        v170 = &v37[16 * v140];
        v172 = *(v170 + 4);
        v171 = *(v170 + 5);
        v151 = __OFSUB__(v171, v172);
        v173 = v171 - v172;
        if (v151)
        {
          goto LABEL_234;
        }

        if (v173 < v161)
        {
          goto LABEL_3;
        }

LABEL_197:
        a7 = v140 - 1;
        if (v140 - 1 >= v137)
        {
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        if (!*v200)
        {
          goto LABEL_247;
        }

        v9 = v37;
        v178 = *&v37[16 * a7 + 32];
        v179 = *&v37[16 * v140 + 40];
        sub_1D8958358(&(*v200)[*(v199 + 72) * v178], &(*v200)[*(v199 + 72) * *&v37[16 * v140 + 32]], &(*v200)[*(v199 + 72) * v179], v204, a2, v207, a4, a5);
        if (v10)
        {
        }

        if (v179 < v178)
        {
          goto LABEL_225;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (a7 >= *(v9 + 2))
        {
          goto LABEL_226;
        }

        v180 = &v9[16 * a7];
        *(v180 + 4) = v178;
        *(v180 + 5) = v179;
        v208 = v9;
        result = sub_1D885CBDC(v140);
        v37 = v208;
        v137 = *(v208 + 16);
        if (v137 <= 1)
        {
          goto LABEL_3;
        }
      }

      v145 = &v37[16 * v137 + 32];
      v146 = *(v145 - 64);
      v147 = *(v145 - 56);
      v151 = __OFSUB__(v147, v146);
      v148 = v147 - v146;
      if (v151)
      {
        goto LABEL_227;
      }

      v150 = *(v145 - 48);
      v149 = *(v145 - 40);
      v151 = __OFSUB__(v149, v150);
      v143 = v149 - v150;
      v144 = v151;
      if (v151)
      {
        goto LABEL_228;
      }

      v152 = &v37[16 * v137];
      v154 = *v152;
      v153 = *(v152 + 1);
      v151 = __OFSUB__(v153, v154);
      v155 = v153 - v154;
      if (v151)
      {
        goto LABEL_230;
      }

      v151 = __OFADD__(v143, v155);
      v156 = v143 + v155;
      if (v151)
      {
        goto LABEL_233;
      }

      if (v156 >= v148)
      {
        v174 = &v37[16 * v140 + 32];
        v176 = *v174;
        v175 = *(v174 + 1);
        v151 = __OFSUB__(v175, v176);
        v177 = v175 - v176;
        if (v151)
        {
          goto LABEL_237;
        }

        if (v143 < v177)
        {
          v140 = v137 - 2;
        }

        goto LABEL_197;
      }

      goto LABEL_176;
    }

LABEL_3:
    v35 = v200[1];
    v36 = v194;
    a8 = v189;
    if (v194 >= v35)
    {
      goto LABEL_209;
    }
  }

  v194 = v88;
  v196 = v10;
  v89 = *v200;
  v90 = *(v199 + 72);
  v91 = &(*v200)[v90 * (v57 - 1)];
  v92 = -v90;
  v188 = v36;
  v93 = v36 - v57;
  v204 = v89;
  v191 = v90;
  v9 = v89 + v57 * v90;
LABEL_92:
  v203 = v57;
  v195 = v9;
  v197 = v93;
  v198 = v91;
  v94 = v91;
  while (1)
  {
    sub_1D8959330(v9, v26, type metadata accessor for TextDetectorResult);
    sub_1D8959330(v94, v23, type metadata accessor for TextDetectorResult);
    v95 = &v26[*(v16 + 24)];
    v96 = *v95;
    v97 = v95[1];
    v98 = v95[2];
    v99 = v95[3];
    v100 = v95[4];
    v101 = v95[5];
    v102 = v95[6];
    v103 = v95[7];
    if (v98 >= *v95)
    {
      v104 = *v95;
    }

    else
    {
      v104 = v95[2];
    }

    if (v100 < v104)
    {
      v104 = v95[4];
    }

    if (v102 < v104)
    {
      v104 = v95[6];
    }

    if (v99 >= v97)
    {
      v105 = v95[1];
    }

    else
    {
      v105 = v95[3];
    }

    if (v101 < v105)
    {
      v105 = v95[5];
    }

    if (v103 < v105)
    {
      v105 = v95[7];
    }

    if (v96 <= v98)
    {
      v96 = v95[2];
    }

    if (v96 <= v100)
    {
      v96 = v95[4];
    }

    if (v96 <= v102)
    {
      v96 = v95[6];
    }

    if (v97 <= v99)
    {
      v97 = v95[3];
    }

    if (v97 <= v101)
    {
      v97 = v95[5];
    }

    if (v97 <= v103)
    {
      v97 = v95[7];
    }

    v106 = v96 - v104;
    v107 = v97 - v105;
    v108 = v96 - v104;
    v109 = v97 - v105;
    v215.origin.x = a2;
    v215.origin.y = v207;
    v215.size.width = a4;
    v215.size.height = a5;
    v211 = CGRectIntersection(*&v104, v215);
    v110 = v211.size.width;
    v111 = v211.size.height;
    if (CGRectIsNull(v211))
    {
      v112 = &v23[*(v16 + 24)];
      v114 = *v112;
      v113 = v112[1];
      v115 = v112[2];
      v116 = v112[3];
      v118 = v112[4];
      v117 = v112[5];
      v120 = v112[6];
      v119 = v112[7];
      v121 = 0.0;
    }

    else
    {
      v121 = v110 * v111 / (v206 + v106 * v107 - v110 * v111);
      v122 = &v23[*(v16 + 24)];
      v114 = *v122;
      v113 = v122[1];
      v115 = v122[2];
      v116 = v122[3];
      v118 = v122[4];
      v117 = v122[5];
      v120 = v122[6];
      v119 = v122[7];
    }

    v123 = v115;
    if (v115 >= v114)
    {
      v123 = v115;
      v115 = v114;
    }

    if (v118 < v115)
    {
      v115 = v118;
    }

    if (v120 < v115)
    {
      v115 = v120;
    }

    if (v116 >= v113)
    {
      v124 = v113;
    }

    else
    {
      v124 = v116;
    }

    if (v117 < v124)
    {
      v124 = v117;
    }

    if (v119 < v124)
    {
      v124 = v119;
    }

    if (v114 <= v123)
    {
      v114 = v123;
    }

    if (v114 <= v118)
    {
      v114 = v118;
    }

    if (v114 <= v120)
    {
      v114 = v120;
    }

    if (v113 <= v116)
    {
      v113 = v116;
    }

    if (v113 <= v117)
    {
      v113 = v117;
    }

    if (v113 <= v119)
    {
      v113 = v119;
    }

    v125 = v114 - v115;
    v126 = v113 - v124;
    v127 = v114 - v115;
    v128 = v126;
    v216.origin.x = a2;
    v216.origin.y = v207;
    v216.size.width = a4;
    v216.size.height = a5;
    v212 = CGRectIntersection(*&v115, v216);
    v129 = v212.size.width;
    v130 = v212.size.height;
    if (CGRectIsNull(v212))
    {
      v132 = 0.0;
    }

    else
    {
      v131 = v129 * v130 / (v206 + v125 * v126 - v129 * v130);
      v132 = v131;
    }

    sub_1D8959400(v23, type metadata accessor for TextDetectorResult);
    result = sub_1D8959400(v26, type metadata accessor for TextDetectorResult);
    if (v132 >= v121)
    {
LABEL_91:
      v57 = (v203 + 1);
      v91 = v198 + v191;
      v93 = v197 - 1;
      v9 = &v195[v191];
      if ((v203 + 1) == v194)
      {
        v10 = v196;
        v36 = v188;
        v57 = v194;
        goto LABEL_156;
      }

      goto LABEL_92;
    }

    if (!v204)
    {
      break;
    }

    a7 = v26;
    v133 = v23;
    v134 = v205;
    sub_1D8959398(v9, v205, type metadata accessor for TextDetectorResult);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D8959398(v134, v94, type metadata accessor for TextDetectorResult);
    v94 += v92;
    v9 += v92;
    v135 = __CFADD__(v93++, 1);
    v23 = v133;
    v26 = a7;
    if (v135)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
  return result;
}

uint64_t sub_1D8958358(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v130 = a5;
  v131 = a6;
  v14 = type metadata accessor for TextDetectorResult(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v129 = &v120 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v120 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v120 - v24;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_175;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_176;
  }

  v29 = (a2 - a1) / v27;
  v134 = a1;
  v133 = a4;
  if (v29 >= v28 / v27)
  {
    v31 = v28 / v27 * v27;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a4 + v31;
    if (v31 >= 1)
    {
      v73 = -v27;
      v126 = a7 * a8;
      v74 = a4 + v31;
      v127 = -v27;
      v128 = v17;
      v123 = a4;
      do
      {
        v121 = v72;
        v75 = a2;
        a2 += v73;
        v124 = a2;
        v125 = v75;
        while (1)
        {
          if (v75 <= a1)
          {
            v134 = v75;
            v72 = v121;
            goto LABEL_172;
          }

          v77 = a3;
          v122 = v72;
          v78 = v74 + v73;
          v79 = v14;
          v80 = v129;
          sub_1D8959330(v78, v129, type metadata accessor for TextDetectorResult);
          sub_1D8959330(a2, v17, type metadata accessor for TextDetectorResult);
          v81 = (v80 + *(v79 + 24));
          v82 = *v81;
          v83 = v81[1];
          v84 = v81[2];
          v85 = v81[3];
          v86 = v81[4];
          v87 = v81[5];
          v88 = v81[6];
          v89 = v81[7];
          if (v84 >= *v81)
          {
            v90 = *v81;
          }

          else
          {
            v90 = v81[2];
          }

          if (v86 < v90)
          {
            v90 = v81[4];
          }

          if (v88 < v90)
          {
            v90 = v81[6];
          }

          if (v85 >= v83)
          {
            v91 = v81[1];
          }

          else
          {
            v91 = v81[3];
          }

          if (v87 < v91)
          {
            v91 = v81[5];
          }

          if (v89 < v91)
          {
            v91 = v81[7];
          }

          if (v82 <= v84)
          {
            v82 = v81[2];
          }

          if (v82 <= v86)
          {
            v82 = v81[4];
          }

          if (v82 <= v88)
          {
            v82 = v81[6];
          }

          if (v83 <= v85)
          {
            v83 = v81[3];
          }

          if (v83 <= v87)
          {
            v83 = v81[5];
          }

          if (v83 <= v89)
          {
            v83 = v81[7];
          }

          v92 = v82 - v90;
          v93 = v83 - v91;
          v94 = v82 - v90;
          v95 = v83 - v91;
          v141.origin.x = v130;
          v141.origin.y = v131;
          v141.size.width = a7;
          v141.size.height = a8;
          v137 = CGRectIntersection(*&v90, v141);
          width = v137.size.width;
          height = v137.size.height;
          if (CGRectIsNull(v137))
          {
            v98 = &v17[*(v79 + 24)];
            v100 = *v98;
            v99 = v98[1];
            v101 = v98[2];
            v102 = v98[3];
            v104 = v98[4];
            v103 = v98[5];
            v106 = v98[6];
            v105 = v98[7];
            v107 = 0.0;
          }

          else
          {
            v107 = width * height / (v126 + v92 * v93 - width * height);
            v108 = &v17[*(v79 + 24)];
            v100 = *v108;
            v99 = v108[1];
            v101 = v108[2];
            v102 = v108[3];
            v104 = v108[4];
            v103 = v108[5];
            v106 = v108[6];
            v105 = v108[7];
          }

          v109 = v101;
          v14 = v79;
          if (v101 >= v100)
          {
            v109 = v101;
            v101 = v100;
          }

          if (v104 < v101)
          {
            v101 = v104;
          }

          if (v106 < v101)
          {
            v101 = v106;
          }

          if (v102 >= v99)
          {
            v110 = v99;
          }

          else
          {
            v110 = v102;
          }

          if (v103 < v110)
          {
            v110 = v103;
          }

          if (v105 < v110)
          {
            v110 = v105;
          }

          if (v100 <= v109)
          {
            v100 = v109;
          }

          if (v100 <= v104)
          {
            v100 = v104;
          }

          if (v100 <= v106)
          {
            v100 = v106;
          }

          if (v99 <= v102)
          {
            v99 = v102;
          }

          if (v99 <= v103)
          {
            v99 = v103;
          }

          if (v99 <= v105)
          {
            v99 = v105;
          }

          v111 = v100 - v101;
          v112 = v99 - v110;
          v113 = v100 - v101;
          v114 = v112;
          v142.origin.x = v130;
          v142.origin.y = v131;
          v142.size.width = a7;
          v142.size.height = a8;
          v138 = CGRectIntersection(*&v101, v142);
          v115 = v138.size.width;
          v116 = v138.size.height;
          if (CGRectIsNull(v138))
          {
            v118 = 0.0;
          }

          else
          {
            v117 = v115 * v116 / (v126 + v111 * v112 - v115 * v116);
            v118 = v117;
          }

          a3 += v127;
          sub_1D8959400(v128, type metadata accessor for TextDetectorResult);
          sub_1D8959400(v129, type metadata accessor for TextDetectorResult);
          v119 = v123;
          a2 = v124;
          if (v118 < v107)
          {
            break;
          }

          v72 = v78;
          if (v77 < v74 || a3 >= v74)
          {
            swift_arrayInitWithTakeFrontToBack();
            v72 = v78;
            v17 = v128;
          }

          else
          {
            v17 = v128;
            if (v77 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
              v72 = v78;
            }
          }

          v74 = v72;
          v76 = v78 > v119;
          v73 = v127;
          v75 = v125;
          if (!v76)
          {
            v134 = v125;
            goto LABEL_172;
          }
        }

        if (v77 < v125 || a3 >= v125)
        {
          swift_arrayInitWithTakeFrontToBack();
          v73 = v127;
          v17 = v128;
        }

        else
        {
          v73 = v127;
          v17 = v128;
          if (v77 != v125)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v72 = v122;
      }

      while (v74 > v119);
    }

    v134 = a2;
LABEL_172:
    v132 = v72;
  }

  else
  {
    v30 = v29 * v27;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v129 = a4 + v30;
    v132 = a4 + v30;
    if (v30 >= 1 && a2 < a3)
    {
      v33 = a7 * a8;
      do
      {
        sub_1D8959330(a2, v25, type metadata accessor for TextDetectorResult);
        sub_1D8959330(a4, v22, type metadata accessor for TextDetectorResult);
        v34 = &v25[*(v14 + 24)];
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[2];
        v38 = v34[3];
        v39 = v34[4];
        v40 = v34[5];
        v41 = v34[6];
        v42 = v34[7];
        if (v37 >= *v34)
        {
          v43 = *v34;
        }

        else
        {
          v43 = v34[2];
        }

        if (v39 < v43)
        {
          v43 = v34[4];
        }

        if (v41 < v43)
        {
          v43 = v34[6];
        }

        if (v38 >= v36)
        {
          v44 = v34[1];
        }

        else
        {
          v44 = v34[3];
        }

        if (v40 < v44)
        {
          v44 = v34[5];
        }

        if (v42 < v44)
        {
          v44 = v34[7];
        }

        if (v35 <= v37)
        {
          v35 = v34[2];
        }

        if (v35 <= v39)
        {
          v35 = v34[4];
        }

        if (v35 <= v41)
        {
          v35 = v34[6];
        }

        if (v36 <= v38)
        {
          v36 = v34[3];
        }

        if (v36 <= v40)
        {
          v36 = v34[5];
        }

        if (v36 <= v42)
        {
          v36 = v34[7];
        }

        v45 = v35 - v43;
        v46 = v36 - v44;
        v47 = v35 - v43;
        v48 = v36 - v44;
        v139.origin.x = v130;
        v139.origin.y = v131;
        v139.size.width = a7;
        v139.size.height = a8;
        v135 = CGRectIntersection(*&v43, v139);
        v49 = v135.size.width;
        v50 = v135.size.height;
        if (CGRectIsNull(v135))
        {
          v51 = &v22[*(v14 + 24)];
          v53 = *v51;
          v52 = v51[1];
          v54 = v51[2];
          v55 = v51[3];
          v57 = v51[4];
          v56 = v51[5];
          v59 = v51[6];
          v58 = v51[7];
          v60 = 0.0;
        }

        else
        {
          v60 = v49 * v50 / (v33 + v45 * v46 - v49 * v50);
          v61 = &v22[*(v14 + 24)];
          v53 = *v61;
          v52 = v61[1];
          v54 = v61[2];
          v55 = v61[3];
          v57 = v61[4];
          v56 = v61[5];
          v59 = v61[6];
          v58 = v61[7];
        }

        v62 = v54;
        if (v54 >= v53)
        {
          v62 = v54;
          v54 = v53;
        }

        if (v57 < v54)
        {
          v54 = v57;
        }

        if (v59 < v54)
        {
          v54 = v59;
        }

        if (v55 >= v52)
        {
          v63 = v52;
        }

        else
        {
          v63 = v55;
        }

        if (v56 < v63)
        {
          v63 = v56;
        }

        if (v58 < v63)
        {
          v63 = v58;
        }

        if (v53 <= v62)
        {
          v53 = v62;
        }

        if (v53 <= v57)
        {
          v53 = v57;
        }

        if (v53 <= v59)
        {
          v53 = v59;
        }

        if (v52 <= v55)
        {
          v52 = v55;
        }

        if (v52 <= v56)
        {
          v52 = v56;
        }

        if (v52 <= v58)
        {
          v52 = v58;
        }

        v64 = v53 - v54;
        v65 = v52 - v63;
        v66 = v53 - v54;
        v67 = v65;
        v140.origin.x = v130;
        v140.origin.y = v131;
        v140.size.width = a7;
        v140.size.height = a8;
        v136 = CGRectIntersection(*&v54, v140);
        v68 = v136.size.width;
        v69 = v136.size.height;
        if (CGRectIsNull(v136))
        {
          v71 = 0.0;
        }

        else
        {
          v70 = v68 * v69 / (v33 + v64 * v65 - v68 * v69);
          v71 = v70;
        }

        sub_1D8959400(v22, type metadata accessor for TextDetectorResult);
        sub_1D8959400(v25, type metadata accessor for TextDetectorResult);
        if (v71 >= v60)
        {
          if (a1 < a4 || a1 >= a4 + v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v133 = a4 + v27;
          a4 += v27;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        a1 += v27;
        v134 = a1;
      }

      while (a4 < v129 && a2 < a3);
    }
  }

  sub_1D885CE84(&v134, &v133, &v132);
  return 1;
}

uint64_t sub_1D8958C10(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65E40);
    sub_1D8959460(a2, MEMORY[0x1E69E0248]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8958CB0()
{
  result = qword_1ECA65E70;
  if (!qword_1ECA65E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E70);
  }

  return result;
}

unint64_t sub_1D8958D38()
{
  result = qword_1ECA65E78;
  if (!qword_1ECA65E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E78);
  }

  return result;
}

unint64_t sub_1D8958D90()
{
  result = qword_1ECA65E80;
  if (!qword_1ECA65E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E80);
  }

  return result;
}

unint64_t sub_1D8958DE8()
{
  result = qword_1ECA65E88;
  if (!qword_1ECA65E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E88);
  }

  return result;
}

uint64_t sub_1D8958E3C(uint64_t a1, uint64_t *a2)
{
  v44 = a2;
  v3 = sub_1D8B15270();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v34 - v7;
  v8 = sub_1D8B15240();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v11;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  v16 = *(v12 + 16);
  v15 = v12 + 16;
  v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v47 = *(v15 + 56);
  v36 = v4;
  v37 = v17;
  v38 = a1 + v17;
  v39 = v16;
  v50 = v4 + 16;
  v53 = (v4 + 8);
  v35 = (v15 - 8);
  v18 = MEMORY[0x1E69E7CC0];
  v45 = (v15 + 16);
  v41 = v15;
  v42 = v8;
  v40 = &v34 - v11;
  do
  {
    v48 = v18;
    v49 = v14;
    v39(v13, v38 + v47 * v14, v8);
    v19 = *v44;

    sub_1D8B15220();
    if (*(v19 + 16) && (sub_1D8959460(&qword_1EE0E3A80, MEMORY[0x1E69E0220]), v20 = sub_1D8B15790(), v21 = -1 << *(v19 + 32), v22 = v20 & ~v21, v52 = v19 + 56, ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      v24 = *(v36 + 72);
      v25 = *(v36 + 16);
      while (1)
      {
        v26 = v51;
        v25(v51, *(v19 + 48) + v24 * v22, v3);
        sub_1D8959460(&qword_1EE0E3A78, MEMORY[0x1E69E0220]);
        v27 = sub_1D8B158C0();
        v28 = *v53;
        (*v53)(v26, v3);
        if (v27)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v52 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v28(v54, v3);
      v13 = v40;
      v8 = v42;
      (*v35)(v40, v42);
      v18 = v48;
    }

    else
    {
LABEL_10:

      (*v53)(v54, v3);
      v29 = *v45;
      v13 = v40;
      v8 = v42;
      (*v45)(v46, v40, v42);
      v18 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4AD8(0, *(v18 + 16) + 1, 1);
        v18 = v55;
      }

      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D87F4AD8(v31 > 1, v32 + 1, 1);
        v18 = v55;
      }

      *(v18 + 16) = v32 + 1;
      v29((v18 + v37 + v32 * v47), v46, v8);
    }

    v14 = v49 + 1;
  }

  while (v49 + 1 != v43);
  return v18;
}

uint64_t sub_1D8959330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8959398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8959400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8959460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D89594B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v101 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v89 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v93 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVTrackSnapshot(0);
  v102 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 32);
  v96 = *(a2 + 40);
  v20 = *v3;
  sub_1D895C54C(a1, v18, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1D8B13240();
    result = (*(*(v21 - 8) + 8))(v18, v21);
LABEL_8:
    v25 = xmmword_1D8B26630;
LABEL_9:
    v26 = v101;
    *v101 = v25;
    goto LABEL_10;
  }

  sub_1D895C61C(v18, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v107);
  if (*&v107 >> 60 != 11)
  {

    goto LABEL_8;
  }

  *&v23 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
  if (*(swift_projectBox() + *(v23 + 24)))
  {
    v24 = sub_1D8B16BA0();

    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (!(v96 & 1 | ((v20 & 1) == 0)))
  {
    v26 = v101;
    *v101 = 0;
    *(v26 + 1) = 0;
LABEL_10:
    v27 = 2;
LABEL_11:
    *(v26 + 16) = v27;
    return result;
  }

  v90 = *&v23;
  v92 = a1;
  v100 = sub_1D891A6E8();
  v28 = *(v100 + 16);
  v91 = *&v9;
  v29 = v95;
  v99 = v28;
  if (!v28)
  {
LABEL_104:

    v25 = xmmword_1D8B26640;
    goto LABEL_9;
  }

  v30 = 0;
  v98 = v100 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v97 = *(v13 + 20);
  v31 = v93 + 7;
  v93 += 7;
  while (v30 < *(v100 + 16))
  {
    sub_1D895C54C(v98 + *(v102 + 72) * v30++, v15, type metadata accessor for CVTrackSnapshot);
    switch(*&v15[v97] >> 60)
    {
      case 1:
        *&v48 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v33 = swift_projectBox();
        v110 = *&v48;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_32;
      case 2:
        v40 = swift_projectBox();
        v110 = *&v11;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v41 = type metadata accessor for MetaDetectionResult;
        goto LABEL_25;
      case 3:
      case 8:
        *&v32 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v33 = swift_projectBox();
        v110 = *&v32;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_32;
      case 4:
        *&v49 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v33 = swift_projectBox();
        v110 = *&v49;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for ParseDetectorResult;
        goto LABEL_32;
      case 5:
        *&v50 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v33 = swift_projectBox();
        v110 = *&v50;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for TextDetectorResult;
        goto LABEL_32;
      case 6:
      case 7:
        *&v36 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v33 = swift_projectBox();
        v110 = *&v36;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_32;
      case 9:
      case 0xALL:
        v37 = swift_projectBox();
        v38 = v94;
        sub_1D895C54C(v37, v94, type metadata accessor for AFMResult);
        v110 = v91;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E3F80, type metadata accessor for AFMResult));
        v39 = __swift_allocate_boxed_opaque_existential_1(&v107);
        sub_1D895C5B4(v38, v39, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v40 = swift_projectBox();
        v110 = v90;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v41 = type metadata accessor for SyntheticDetectionResult;
LABEL_25:
        v42 = v41;
        v43 = v40;
        goto LABEL_33;
      case 0xCLL:
        *&v44 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v33 = swift_projectBox();
        v110 = *&v44;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_32;
      case 0xDLL:
        *&v51 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v33 = swift_projectBox();
        v110 = *&v51;
        v111 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v35 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_32:
        v42 = v35;
        v43 = v33;
LABEL_33:
        sub_1D895C54C(v43, boxed_opaque_existential_1, v42);
        break;
      default:
        *&v45 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
        v46 = swift_projectBox();
        v110 = *&v45;
        v111 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750));
        v47 = __swift_allocate_boxed_opaque_existential_1(&v107);
        sub_1D894733C(v46, v47);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v52 = swift_dynamicCast();
    v53 = *v31;
    if (v52)
    {
      v53(v8, 0, 1, v11);
      sub_1D895C5B4(v8, v29, type metadata accessor for MetaDetectionResult);
      if (*v29 == 5 && ((v96 & 1) == 0 || *&v29[v11[8]] == v19))
      {
        v54 = v11[9];
        if (v29[v54] == 2 && v19 - *&v29[v11[8]] > 0.0001)
        {
          goto LABEL_93;
        }

        CVBundle.latestEstimate.getter(&v115);
        v106 = v115;
        CVDetection.detection.getter(v103);
        v55 = v104;
        v56 = v105;
        __swift_project_boxed_opaque_existential_1(v103, v104);
        v57 = *(v56 + 64);
        v58 = v56;
        v29 = v95;
        v57(&v107, v55, v58);
        __swift_destroy_boxed_opaque_existential_1(v103);

        v59 = v107;
        v60 = v108;
        if (v109 >= v107)
        {
          v61 = v107;
        }

        else
        {
          v61 = v109;
        }

        if (v111 < v61)
        {
          v61 = v111;
        }

        if (v113 < v61)
        {
          v61 = v113;
        }

        if (v110 >= v108)
        {
          v62 = v108;
        }

        else
        {
          v62 = v110;
        }

        if (v112 < v62)
        {
          v62 = v112;
        }

        if (v114 < v62)
        {
          v62 = v114;
        }

        if (v107 <= v109)
        {
          v59 = v109;
        }

        if (v59 <= v111)
        {
          v59 = v111;
        }

        if (v59 <= v113)
        {
          v59 = v113;
        }

        if (v108 <= v110)
        {
          v60 = v110;
        }

        if (v60 <= v112)
        {
          v60 = v112;
        }

        if (v60 <= v114)
        {
          v60 = v114;
        }

        v63 = v59 - v61;
        v64 = v60 - v62;
        v118.origin.x = 0.0;
        v118.origin.y = 0.0;
        v118.size.width = 1.0;
        v118.size.height = 1.0;
        v116 = CGRectIntersection(*&v61, v118);
        x = v116.origin.x;
        y = v116.origin.y;
        width = v116.size.width;
        height = v116.size.height;
        v69 = &v29[v11[5]];
        v70 = *v69;
        v71 = v69[1];
        v72 = v69[2];
        v73 = v69[3];
        v74 = v69[4];
        v75 = v69[5];
        v76 = v69[6];
        v77 = v69[7];
        if (v72 >= *v69)
        {
          v78 = *v69;
        }

        else
        {
          v78 = v69[2];
        }

        if (v74 < v78)
        {
          v78 = v69[4];
        }

        if (v76 < v78)
        {
          v78 = v69[6];
        }

        if (v73 >= v71)
        {
          v79 = v69[1];
        }

        else
        {
          v79 = v69[3];
        }

        if (v75 < v79)
        {
          v79 = v69[5];
        }

        if (v77 < v79)
        {
          v79 = v69[7];
        }

        if (v70 <= v72)
        {
          v70 = v69[2];
        }

        if (v70 <= v74)
        {
          v70 = v69[4];
        }

        if (v70 <= v76)
        {
          v70 = v69[6];
        }

        if (v71 <= v73)
        {
          v71 = v69[3];
        }

        if (v71 <= v75)
        {
          v71 = v69[5];
        }

        if (v71 <= v77)
        {
          v71 = v69[7];
        }

        v80 = v70 - v78;
        v81 = v71 - v79;
        v82 = width;
        v83 = height;
        v117 = CGRectIntersection(*&v78, *&x);
        if (width * height * 0.9 > v117.size.width * v117.size.height)
        {
LABEL_93:
          sub_1D895C61C(v29, type metadata accessor for MetaDetectionResult);
          v31 = v93;
        }

        else
        {
          v84 = v29[v54];
          if (v84 == 3)
          {
            if (qword_1EE0E54C0 != -1)
            {
              swift_once();
            }

            v85 = sub_1D8B0AAA4();
            v31 = v93;
            if (v85)
            {
              goto LABEL_107;
            }

            sub_1D895C61C(v29, type metadata accessor for MetaDetectionResult);
            if (v96)
            {
              goto LABEL_105;
            }
          }

          else
          {
            sub_1D895C61C(v29, type metadata accessor for MetaDetectionResult);
            v31 = v93;
            if (v84 == 2)
            {
LABEL_105:

              result = sub_1D895C61C(v15, type metadata accessor for CVTrackSnapshot);
              v26 = v101;
              *v101 = 0;
              *(v26 + 1) = 0;
              v27 = -1;
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        sub_1D895C61C(v29, type metadata accessor for MetaDetectionResult);
      }
    }

    else
    {
      v53(v8, 1, 1, v11);
      sub_1D87A14E4(v8, &qword_1ECA64BB8);
    }

    sub_1D895C61C(v15, type metadata accessor for CVTrackSnapshot);
    if (v99 == v30)
    {
      goto LABEL_104;
    }
  }

  __break(1u);
LABEL_107:
  v107 = 0.0;
  v108 = -2.68156159e154;
  sub_1D8B16720();

  v107 = -2.31584178e77;
  v108 = COERCE_DOUBLE(0x80000001D8B43DD0);
  v86 = &v29[v11[10]];
  if (v86[1])
  {
    v87 = *v86;
    v88 = v86[1];
  }

  else
  {
    v88 = 0xEF6E65766967206ELL;
    v87 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v87, v88);

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D895A3E4(uint64_t a1, _OWORD *a2)
{
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  v24 = a2[2];
  v25 = v8;
  v26 = a2[4];
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  if (*v2 == 1 && (BYTE8(v24) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1D895C54C(a1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    (*(*(v10 - 8) + 8))(v7, v10);
    return MEMORY[0x1E69E7CD0];
  }

  sub_1D895C61C(v7, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v22);
  if (v22 >> 60 != 11)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v11 = type metadata accessor for SyntheticDetectionResult();
  if (*(swift_projectBox() + *(v11 + 24)))
  {
    v12 = sub_1D8B16BA0();

    if ((v12 & 1) == 0)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v15 = sub_1D893EA58(&unk_1F5426BB8);
  v16 = 1.0;
  if (*(v15 + 16))
  {
    v17 = sub_1D881F7DC(5);
    if (v18)
    {
      v16 = *(*(v15 + 56) + 8 * v17);
    }
  }

  *(inited + 40) = v16;
  v19 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v20 = sub_1D89E0D5C(a1, v23, v19);

  return v20;
}

uint64_t sub_1D895A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a2;
  v5[47] = a5;
  v5[45] = a1;
  v7 = sub_1D8B12EE0();
  v5[48] = v7;
  v5[49] = *(v7 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = type metadata accessor for AFMResult(0);
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  v5[53] = swift_task_alloc();
  v8 = type metadata accessor for TextDetectorResult(0);
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D895A820, 0, 0);
}

uint64_t sub_1D895A820()
{
  v58 = v0;
  v1 = sub_1D891F590(*(v0 + 464));
  v9 = v1;
  v56 = *(v1 + 16);
  if (v56)
  {
    v10 = 0;
    v55 = v1 + 32;
    v11 = *(v0 + 440);
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 < *(v9 + 16))
    {
      v13 = *(v55 + 8 * v10++);
      switch(v13 >> 60)
      {
        case 1uLL:
          v29 = type metadata accessor for GroundedParseDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v29;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_18;
        case 2uLL:
          v24 = type metadata accessor for MetaDetectionResult();
          v15 = swift_projectBox();
          *(v0 + 40) = v24;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for MetaDetectionResult;
          goto LABEL_18;
        case 3uLL:
        case 8uLL:
          v14 = type metadata accessor for ObjectDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v14;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_18;
        case 4uLL:
          v30 = type metadata accessor for ParseDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v30;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for ParseDetectorResult;
          goto LABEL_18;
        case 5uLL:
          v31 = *(v0 + 432);
          v32 = swift_projectBox();
          *(v0 + 40) = v31;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v33 = type metadata accessor for TextDetectorResult;
          v34 = v32;
          goto LABEL_19;
        case 6uLL:
        case 7uLL:
          v18 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v18;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_18;
        case 9uLL:
        case 0xAuLL:
          v20 = *(v0 + 408);
          v19 = *(v0 + 416);
          v21 = swift_projectBox();
          sub_1D895C54C(v21, v19, type metadata accessor for AFMResult);
          *(v0 + 40) = v20;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_1D895C5B4(v19, v22, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v23 = type metadata accessor for SyntheticDetectionResult();
          v15 = swift_projectBox();
          *(v0 + 40) = v23;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_18;
        case 0xCuLL:
          v25 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v25;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_18;
        case 0xDuLL:
          v35 = type metadata accessor for GroundedParseClassificationsResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v35;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_18:
          v33 = v17;
          v34 = v15;
LABEL_19:
          sub_1D895C54C(v34, boxed_opaque_existential_1, v33);
          break;
        default:
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v27 = swift_projectBox();
          *(v0 + 40) = v26;
          *(v0 + 48) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_1D894733C(v27, v28);
          break;
      }

      v37 = *(v0 + 424);
      v36 = *(v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v38 = swift_dynamicCast();
      (*(v11 + 56))(v37, v38 ^ 1u, 1, v36);
      if ((*(v11 + 48))(v37, 1, v36) == 1)
      {
        v1 = sub_1D87A14E4(*(v0 + 424), &qword_1ECA64820);
      }

      else
      {
        sub_1D895C5B4(*(v0 + 424), *(v0 + 456), type metadata accessor for TextDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D87C7EE0(0, v12[2] + 1, 1, v12);
        }

        v40 = v12[2];
        v39 = v12[3];
        if (v40 >= v39 >> 1)
        {
          v12 = sub_1D87C7EE0(v39 > 1, v40 + 1, 1, v12);
        }

        v41 = *(v0 + 456);
        v12[2] = v40 + 1;
        v1 = sub_1D895C5B4(v41, v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v40, type metadata accessor for TextDetectorResult);
      }

      if (v56 == v10)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v57 = v12;

  sub_1D89DC06C(&v57);

  v42 = v57;
  *(v0 + 472) = v57;
  if (v42[2])
  {
    v43 = *(v0 + 448);
    v44 = *(v0 + 432);
    v45 = *(*(v0 + 440) + 80);
    sub_1D895C54C(v42 + ((v45 + 32) & ~v45), v43, type metadata accessor for TextDetectorResult);
    v46 = *(v43 + *(v44 + 48));
    *(v0 + 480) = v46;
    if (v46)
    {
      v47 = *(v0 + 368);
      v48 = swift_task_alloc();
      *(v0 + 488) = v48;
      *(v48 + 16) = v46;
      *(v48 + 24) = v47;
      v49 = v46;
      v50 = swift_task_alloc();
      *(v0 + 496) = v50;
      *v50 = v0;
      v50[1] = sub_1D895B21C;
      v8 = MEMORY[0x1E69E6370];
      v6 = sub_1D895C2C4;
      v1 = v0 + 512;
      v4 = 0xD00000000000003ALL;
      v5 = 0x80000001D8B44BA0;
      v2 = 0;
      v3 = 0;
      v7 = v48;

      return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
    }

    sub_1D895C61C(*(v0 + 448), type metadata accessor for TextDetectorResult);
  }

  v51 = *(v0 + 464);
  v52 = *(v0 + 376);

  *v52 = 0;
  *(v52 + 8) = 0xD00000000000002CLL;
  *(v52 + 16) = 0x80000001D8B44B70;
  *(v52 + 24) = 0x80;
  *(v52 + 32) = v51;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD00000000000002CLL;
  *(v0 + 72) = 0x80000001D8B44B70;
  *(v0 + 80) = 0x80;
  *(v0 + 88) = v51;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1D895B21C()
{
  *(*v1 + 504) = v0;

  if (v0)
  {

    v2 = sub_1D895BBB0;
  }

  else
  {

    v2 = sub_1D895B364;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D895B364()
{
  v54 = v0;
  if (*(v0 + 512) == 1)
  {
    v1 = sub_1D895C038(*(v0 + 472));

    if (qword_1ECA621C0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D8B151E0();
    __swift_project_value_buffer(v2, qword_1ECA66AB0);
    v3 = v1;
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16200();

    v51 = v3;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v6 = 136315138;
      v7 = [v3 count];
      v53 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v7 & ~(v7 >> 63), 0);
      v8 = v53;
      v9 = v3;
      sub_1D8B163D0();

      if (v7 < 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v48 = v5;
      log = v4;
      buf = v6;
      if (v7)
      {
        sub_1D895C2CC(&qword_1ECA65EA8, MEMORY[0x1E6968EB0]);
        do
        {
          sub_1D8B16490();
          v10 = *(v0 + 200);
          if (!v10)
          {
            goto LABEL_25;
          }

          *(v0 + 296) = 0;
          *(v0 + 304) = 0xE000000000000000;
          __swift_project_boxed_opaque_existential_1((v0 + 176), v10);
          v11 = [v9 countForObject_];
          swift_unknownObjectRelease();
          *(v0 + 336) = v11;
          v12 = sub_1D8B16B50();
          MEMORY[0x1DA71EFA0](v12);

          MEMORY[0x1DA71EFA0](0x6F2073656E696C20, 0xEA00000000002066);
          sub_1D8B168A0();
          v14 = *(v0 + 296);
          v13 = *(v0 + 304);
          __swift_destroy_boxed_opaque_existential_1(v0 + 176);
          v53 = v8;
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_1D87F3F54((v15 > 1), v16 + 1, 1);
            v8 = v53;
          }

          *(v8 + 16) = v16 + 1;
          v17 = v8 + 16 * v16;
          *(v17 + 32) = v14;
          *(v17 + 40) = v13;
        }

        while (--v7);
      }

      sub_1D895C2CC(&qword_1ECA65EA8, MEMORY[0x1E6968EB0]);
      sub_1D8B16490();
      while (*(v0 + 264))
      {
        sub_1D8943B68((v0 + 240), (v0 + 208));
        *(v0 + 312) = 0;
        *(v0 + 320) = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
        v28 = [v9 countForObject_];
        swift_unknownObjectRelease();
        *(v0 + 352) = v28;
        v29 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v29);

        MEMORY[0x1DA71EFA0](0x6F2073656E696C20, 0xEA00000000002066);
        sub_1D8B168A0();
        v30 = *(v0 + 312);
        v31 = *(v0 + 320);
        __swift_destroy_boxed_opaque_existential_1(v0 + 208);
        v53 = v8;
        v33 = *(v8 + 16);
        v32 = *(v8 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D87F3F54((v32 > 1), v33 + 1, 1);
          v8 = v53;
        }

        *(v8 + 16) = v33 + 1;
        v34 = v8 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        sub_1D8B16490();
      }

      (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
      sub_1D87A14E4(v0 + 240, &qword_1ECA650C0);
      *(v0 + 344) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v35 = sub_1D8B15810();
      v37 = v36;

      v38 = sub_1D89AC714(v35, v37, &v52);

      *(buf + 4) = v38;
      _os_log_impl(&dword_1D8783000, log, v48, "Enabling translate action for %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1DA721330](v50, -1, -1);
      MEMORY[0x1DA721330](buf, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 480);
    v40 = *(v0 + 448);
    v41 = *(v0 + 360);
    type metadata accessor for BundleClassification.ClassificationType(0);
    swift_storeEnumTagMultiPayload();
    CVBundle.latestEstimate.getter(&v52);
    v53 = v52;
    CVDetection.detection.getter((v0 + 136));
    v42 = *(v0 + 160);
    v43 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v42);
    v44 = (*(v43 + 88))(v42, v43);

    sub_1D895C61C(v40, type metadata accessor for TextDetectorResult);
    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
    v45 = type metadata accessor for BundleClassification(0);
    v46 = v41 + *(v45 + 20);
    *v46 = 2;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v46 = 2;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v41 + *(v45 + 24)) = v44;

    v27 = *(v0 + 8);
  }

  else
  {
    v18 = *(v0 + 464);

    sub_1D88E0E0C();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xD00000000000001BLL;
    *(v20 + 16) = 0x80000001D8B44BE0;
    *(v20 + 24) = 0x80;
    *(v20 + 32) = v18;
    swift_willThrow();
    v21 = *(v0 + 480);
    v22 = *(v0 + 464);
    v23 = *(v0 + 448);
    v24 = *(v0 + 376);
    swift_getErrorValue();
    v25 = sub_1D8B16C90();
    *v24 = 0;
    *(v24 + 8) = v25;
    *(v24 + 16) = v26;
    *(v24 + 24) = 0x80;
    *(v24 + 32) = v22;
    *(v0 + 96) = 0;
    *(v0 + 104) = v25;
    *(v0 + 112) = v26;
    *(v0 + 120) = 0x80;
    *(v0 + 128) = v22;
    swift_willThrowTypedImpl();

    sub_1D895C61C(v23, type metadata accessor for TextDetectorResult);

    v27 = *(v0 + 8);
  }

  v27();
}

uint64_t sub_1D895BBB0()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 376);
  swift_getErrorValue();
  v6 = sub_1D8B16C90();
  *v5 = 0;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = 0x80;
  *(v5 + 32) = v3;
  *(v0 + 96) = 0;
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  *(v0 + 120) = 0x80;
  *(v0 + 128) = v3;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();

  sub_1D895C61C(v4, type metadata accessor for TextDetectorResult);

  v8 = *(v0 + 8);

  return v8();
}

void sub_1D895BCE4(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  CVBundle.latestEstimate.getter(&v27);
  v26 = v27;
  CVDetection.detection.getter(v23);
  v7 = v24;
  v8 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v8 + 64))(aBlock, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v23);
  Corners.bounds.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  (*(v4 + 16))(v6, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  aBlock[4] = sub_1D895C314;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D895BFC0;
  aBlock[3] = &block_descriptor_5;
  v19 = _Block_copy(aBlock);

  viCore_canTranslate(v21, v19, v10, 1.0 - v12 - v16, v14, v16);
  _Block_release(v19);
}

uint64_t sub_1D895BF3C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
    return sub_1D8B15E10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
    return sub_1D8B15E20();
  }
}

void sub_1D895BFC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1D895C038(uint64_t a1)
{
  v2 = type metadata accessor for TextDetectorResult(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
  v16 = *(a1 + 16);
  if (v16)
  {
    v7 = 0;
    v15 = *(v2 + 44);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D895C54C(v8 + v9 * v7, v5, type metadata accessor for TextDetectorResult);
      v10 = *&v5[v15];
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 64;
        do
        {

          v13 = sub_1D8B15940();

          [v6 addObject_];

          v12 += 40;
          --v11;
        }

        while (v11);
      }

      ++v7;
      sub_1D895C61C(v5, type metadata accessor for TextDetectorResult);
    }

    while (v7 != v16);
  }

  return v6;
}

uint64_t sub_1D895C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D895A680(a1, a2, v9, a4, v5 + 16);
}

uint64_t sub_1D895C2CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D895C314(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);

  return sub_1D895BF3C(a1, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void viCore_canTranslate(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [objc_alloc(MEMORY[0x1E69844F0]) initWithCRDocumentOutputRegion:v11 requestRevision:1];
  v14 = [v13 blocksWithTypes:2 inRegion:{a3, a4, a5, a6}];
  if ([v14 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v15 = getLTUIVisualTranslationServiceClass_softClass;
    v21 = getLTUIVisualTranslationServiceClass_softClass;
    if (!getLTUIVisualTranslationServiceClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getLTUIVisualTranslationServiceClass_block_invoke;
      v17[3] = &unk_1E8561D70;
      v17[4] = &v18;
      __getLTUIVisualTranslationServiceClass_block_invoke(v17);
      v15 = v19[3];
    }

    v16 = v15;
    _Block_object_dispose(&v18, 8);
    [v16 isTranslatable:v14 completion:v12];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

void sub_1D895C534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D895C54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D895C5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D895C61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Class __getLTUIVisualTranslationServiceClass_block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!TranslationUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __TranslationUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8561D90;
    v9 = 0;
    TranslationUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (TranslationUILibraryCore_frameworkLibrary)
  {
    v2 = v7[0];
    if (!v7[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TranslationUILibrary(void)"];
    [a1 handleFailureInFunction:v4 file:@"VisualIntelligenceCore.h" lineNumber:17 description:{@"%s", v7[0]}];

    __break(1u);
  }

  free(v2);
LABEL_5:
  result = objc_getClass("LTUIVisualTranslationService");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLTUIVisualTranslationServiceClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"VisualIntelligenceCore.h" lineNumber:18 description:{@"Unable to find class %s", "LTUIVisualTranslationService"}];

    __break(1u);
  }

  getLTUIVisualTranslationServiceClass_softClass = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __TranslationUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TranslationUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t sub_1D895C994@<X0>(void *a1@<X8>)
{
  *(swift_allocObject() + 16) = v1;
  v3 = objc_opt_self();
  v4 = v1;
  if (![v3 isMainThread])
  {
    sub_1D881F764(0, &qword_1EE0E3730);
    v8 = sub_1D8B162C0();
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB8);
    sub_1D8B162D0();

    v5 = v9;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_6;
  }

  v5 = [v4 frontmostAudioOrVideoCall];

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_1D881F764(0, &qword_1ECA65EC0);
  v7 = &off_1F5430380;
LABEL_6:
  *a1 = v5;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

id sub_1D895CB5C@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) frontmostAudioOrVideoCall];
  *a1 = result;
  return result;
}

void *sub_1D895CB98@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

uint64_t ConfigStorage.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(a5 + 8))(v10, a1, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C0);
  v8 = swift_dynamicCast();
  return (*(*(a4 - 8) + 56))(a6, v8 ^ 1u, 1, a4);
}

uint64_t ConfigStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D895DF34(a1, a2, a3, a4, a5, a6, a7);
  v8 = sub_1D8B16470();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*ConfigStorage.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t **a1, char a2)
{
  v15 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(0x58uLL);
  }

  v17 = v16;
  *a1 = v16;
  v16[5] = a7;
  v16[6] = v7;
  v16[3] = a5;
  v16[4] = a6;
  v16[1] = a3;
  v16[2] = a4;
  *v16 = a2;
  v18 = sub_1D8B16470();
  v17[7] = v18;
  v19 = *(v18 - 8);
  v17[8] = v19;
  v20 = *(v19 + 64);
  if (v15)
  {
    v17[9] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v17[9] = malloc(*(v19 + 64));
    v21 = malloc(v20);
  }

  v17[10] = v21;
  ConfigStorage.subscript.getter(a2, a3, a5, a6, a7, v21);
  return sub_1D895D114;
}

void sub_1D895D114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v13 = (*a1)[5];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))(v3, v4, v5);

    sub_1D895DF34(v3, v11, v10, v9, v8, v7, v13);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {

    sub_1D895DF34(v4, v11, v10, v9, v8, v7, v13);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t ConfigStorageKey.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t (*ConfigStorage.isVisualLookUpEagerModeEnabled.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD00000000000001ELL, 0x80000001D8B40140, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D34C;
}

uint64_t sub_1D895D34C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34(a1 + 24, 0xD00000000000001ELL, 0x80000001D8B40140, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t (*ConfigStorage.hasOnboardedVisualLookUp.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD000000000000018, 0x80000001D8B40160, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D420;
}

uint64_t sub_1D895D420(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34(a1 + 24, 0xD000000000000018, 0x80000001D8B40160, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t (*ConfigStorage.hasOnboardedImageSearch.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD000000000000017, 0x80000001D8B3FFA0, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D4F4;
}

uint64_t sub_1D895D4F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34(a1 + 24, 0xD000000000000017, 0x80000001D8B3FFA0, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t (*ConfigStorage.hasOnboardedACME.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD000000000000010, 0x80000001D8B3FFC0, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D5C8;
}

uint64_t sub_1D895D5C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34(a1 + 24, 0xD000000000000010, 0x80000001D8B3FFC0, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t sub_1D895D61C()
{
  v1 = v0;
  v2 = 0;
  while (1)
  {
    v7 = byte_1F5428160[v2++ + 32];
    v8 = 0xD00000000000001ELL;
    v9 = 0xD000000000000017;
    if (v7 != 2)
    {
      v9 = 0xD000000000000010;
    }

    v10 = "searchSectionsAsData";
    if (v7 != 2)
    {
      v10 = "hasOnboardedImageSearch";
    }

    if (v7)
    {
      v8 = 0xD000000000000018;
    }

    v11 = "dn't Try";
    if (v7)
    {
      v11 = "isVisualLookUpEagerModeEnabled";
    }

    if (v7 <= 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v7 <= 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13 | 0x8000000000000000;
    memset(v38, 0, sizeof(v38));
    os_unfair_lock_lock((v1 + 16));
    sub_1D895E280(v38, &v36);
    if (!v37)
    {
      sub_1D895E2F0(&v36);
      v25 = sub_1D87EF838(v12, v14);
      v27 = v26;

      if (v27)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v1 + 24);
        *(v1 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D8968CE0();
        }

        sub_1D8943B68((*(v29 + 56) + 32 * v25), v35);
        sub_1D8AF1FEC(v25, v29);
        *(v1 + 24) = v29;
      }

      else
      {
        memset(v35, 0, sizeof(v35));
      }

      sub_1D895E2F0(v35);
      goto LABEL_4;
    }

    sub_1D8943B68(&v36, v35);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 24);
    v34 = v16;
    *(v1 + 24) = 0x8000000000000000;
    v17 = sub_1D87EF838(v12, v14);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_1D8970C98(v22, v15);
      v17 = sub_1D87EF838(v12, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if ((v23 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_2;
    }

    if (v15)
    {
      goto LABEL_29;
    }

    v33 = v17;
    sub_1D8968CE0();
    v17 = v33;
    if ((v23 & 1) == 0)
    {
LABEL_30:
      v4 = v16;
      v16[(v17 >> 6) + 8] |= 1 << v17;
      v30 = (v16[6] + 16 * v17);
      *v30 = v12;
      v30[1] = v14;
      sub_1D8943B68(v35, (v16[7] + 32 * v17));
      v31 = v16[2];
      v21 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v21)
      {
        goto LABEL_38;
      }

      v16[2] = v32;
      goto LABEL_3;
    }

LABEL_2:
    v3 = v17;

    v4 = v34;
    v5 = (v34[7] + 32 * v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_1D8943B68(v35, v5);
LABEL_3:
    *(v1 + 24) = v4;

LABEL_4:
    os_unfair_lock_unlock((v1 + 16));
    result = sub_1D895E2F0(v38);
    if (v2 == 4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D895D928()
{
  v0 = 0xD000000000000010;
  v1 = 0xD00000000000001ELL;
  v2 = "dn't Try";
  v3 = 0xD000000000000017;
  if (byte_1F54281A8 == 2)
  {
    v4 = "searchSectionsAsData";
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = "hasOnboardedImageSearch";
  }

  if (byte_1F54281A8)
  {
    v1 = 0xD000000000000018;
    v5 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v5 = "dn't Try";
  }

  if (byte_1F54281A8 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  if (byte_1F54281A8 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v13 = 0u;
  v14 = 0u;
  VisionKitConfigStorage.subscript.setter(&v13, v6, v7 | 0x8000000000000000);
  if (byte_1F54281A9 > 1u)
  {
    if (byte_1F54281A9 == 2)
    {
      v8 = 0xD000000000000017;
      v9 = "searchSectionsAsData";
    }

    else
    {
      v8 = 0xD000000000000010;
      v9 = "hasOnboardedImageSearch";
    }
  }

  else
  {
    if (byte_1F54281A9)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001ELL;
    }

    if (byte_1F54281A9)
    {
      v9 = "isVisualLookUpEagerModeEnabled";
    }

    else
    {
      v9 = "dn't Try";
    }
  }

  v13 = 0u;
  v14 = 0u;
  VisionKitConfigStorage.subscript.setter(&v13, v8, v9 | 0x8000000000000000);
  if (byte_1F54281AA > 1u)
  {
    if (byte_1F54281AA == 2)
    {
      v10 = 0xD000000000000017;
      v11 = "searchSectionsAsData";
    }

    else
    {
      v10 = 0xD000000000000010;
      v11 = "hasOnboardedImageSearch";
    }
  }

  else if (byte_1F54281AA)
  {
    v10 = 0xD000000000000018;
    v11 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v10 = 0xD00000000000001ELL;
    v11 = "dn't Try";
  }

  v13 = 0u;
  v14 = 0u;
  VisionKitConfigStorage.subscript.setter(&v13, v10, v11 | 0x8000000000000000);
  if (byte_1F54281AB > 1u)
  {
    if (byte_1F54281AB == 2)
    {
      v0 = 0xD000000000000017;
      v2 = "searchSectionsAsData";
    }

    else
    {
      v2 = "hasOnboardedImageSearch";
    }
  }

  else if (byte_1F54281AB)
  {
    v0 = 0xD000000000000018;
    v2 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v0 = 0xD00000000000001ELL;
  }

  v13 = 0u;
  v14 = 0u;
  return VisionKitConfigStorage.subscript.setter(&v13, v0, v2 | 0x8000000000000000);
}

Swift::Void __swiftcall ConfigStorage.reset()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 16);
  v5 = 0u;
  v6 = 0u;
  v4(&v5, 0xD00000000000001ELL, 0x80000001D8B40140);
  v5 = 0u;
  v6 = 0u;
  (v4)(&v5, 0xD000000000000018, 0x80000001D8B40160, v3, v2);
  v5 = 0u;
  v6 = 0u;
  (v4)(&v5, 0xD000000000000017, 0x80000001D8B3FFA0, v3, v2);
  v5 = 0u;
  v6 = 0u;
  (v4)(&v5, 0xD000000000000010, 0x80000001D8B3FFC0, v3, v2);
}

VisualIntelligenceCore::ConfigStorageKey_optional __swiftcall ConfigStorageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D895DC88()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D895DD40()
{
  sub_1D8B15A60();
}

uint64_t sub_1D895DDE4()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D895DEA4(unint64_t *a1@<X8>)
{
  v2 = "searchSectionsAsData";
  v3 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = "hasOnboardedImageSearch";
  }

  v4 = 0xD000000000000018;
  if (*v1)
  {
    v5 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v4 = 0xD00000000000001ELL;
    v5 = "dn't Try";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1D895DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1D8B16470();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15, a1, v13);
  v17 = *(a6 - 8);
  if ((*(v17 + 48))(v16, 1, a6) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, a6);
  }

  return (*(a7 + 16))(&v20, a2, a3, a5, a7);
}

unint64_t sub_1D895E0EC()
{
  result = qword_1ECA65EC8;
  if (!qword_1ECA65EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65EC8);
  }

  return result;
}

unint64_t sub_1D895E144()
{
  result = qword_1ECA65ED0;
  if (!qword_1ECA65ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65ED0);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D895E280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D895E2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D895E358(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D8B04B90(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1D87EFF4C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D8967BA4();
        v11 = v13;
      }

      result = sub_1D8AF08D4(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1D895E418(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A28);
    sub_1D8AFD46C(a2, v7);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A28);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B04DD8(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895E64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D8943B68(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D8B04FE8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D87A14E4(a1, &qword_1ECA650C0);
    sub_1D8AF0400(a2, a3, v9);

    return sub_1D87A14E4(v9, &qword_1ECA650C0);
  }

  return result;
}

uint64_t sub_1D895E71C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65F08);
    sub_1D8AFD470(a2);
    sub_1D8960044(a2, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    return sub_1D87A14E4(v7, &qword_1ECA65F08);
  }

  else
  {
    sub_1D881F6FC(a1, v10, &qword_1ECA65B78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D8B05138(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D8960044(a2, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1D895E908(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A58);
    sub_1D8AFD474(a2, v7);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A58);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05518(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895EB3C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A40);
    sub_1D8AFD478(a2, v7);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A40);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05728(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895ED70(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A10);
    sub_1D8AFD47C(a2, v7);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A10);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05938(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895EFA4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65F10);
    sub_1D8AFD480(a2, v7);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA65F10);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05B48(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895F1D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D8788F40(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1D8B05F64(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D8960044(a2, type metadata accessor for BundleClassification.ClassificationType);
    *v2 = v6;
  }

  else
  {
    sub_1D87A14E4(a1, &qword_1ECA65F00);
    sub_1D8AF0658(a2, v7);
    sub_1D8960044(a2, type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D87A14E4(v7, &qword_1ECA65F00);
  }

  return result;
}

uint64_t sub_1D895F2BC(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D87A14E4(a1, &unk_1ECA67970);
    v13 = sub_1D87F05B0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D896BB64();
        v17 = v21;
      }

      sub_1D89600A4(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for CVDebugArtifactManager.BoresightState);
      sub_1D8AF30D0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D87A14E4(v8, &unk_1ECA67970);
  }

  else
  {
    sub_1D89600A4(a1, v12, type metadata accessor for CVDebugArtifactManager.BoresightState);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D8B06348(v12, v18, a2);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D895F518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D8788F40(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D8B065BC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1D87A14E4(a1, &unk_1ECA67D50);
    v7 = sub_1D881F7DC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D896BF5C();
        v11 = v13;
      }

      sub_1D8788F40((*(v11 + 56) + 40 * v9), v14);
      sub_1D8AF3294(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1D87A14E4(v14, &unk_1ECA67D50);
  }

  return result;
}

uint64_t sub_1D895F624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65EF8);
    v13 = sub_1D881F7DC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D896CCA0();
        v17 = v21;
      }

      sub_1D881F6FC(*(v17 + 56) + *(v10 + 72) * v15, v8, &qword_1ECA65B98);
      sub_1D8AF3850(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D87A14E4(v8, &qword_1ECA65EF8);
  }

  else
  {
    sub_1D881F6FC(a1, v12, &qword_1ECA65B98);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D8B066EC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D895F878(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65EF0);
    sub_1D8AF0738(a2);
    sub_1D8960044(a2, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    return sub_1D87A14E4(v7, &qword_1ECA65EF0);
  }

  else
  {
    sub_1D89600A4(a1, v10, type metadata accessor for TrackManager.TrackedProcessorState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D8B06848(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D8960044(a2, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    *v2 = v15;
  }

  return result;
}

uint64_t DictionaryConfigStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t DictionaryConfigStorage.init()()
{
  v1 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void DictionaryConfigStorage.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  os_unfair_lock_lock((v3 + 16));
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = sub_1D87EF838(a1, a2), (v10 & 1) != 0))
  {
    sub_1D87D3E4C(*(v8 + 56) + 32 * v9, a3);
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_1D895FB64(uint64_t a1, os_unfair_lock_s **a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_1D895E280(a1, v9);
  v6 = *a2;

  os_unfair_lock_lock(v6 + 4);
  sub_1D895E280(v9, v8);
  sub_1D895E64C(v8, v4, v5);
  os_unfair_lock_unlock(v6 + 4);
  return sub_1D87A14E4(v9, &qword_1ECA650C0);
}

uint64_t DictionaryConfigStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 4);
  sub_1D895E280(a1, v8);
  sub_1D895E64C(v8, a2, a3);
  os_unfair_lock_unlock(v3 + 4);
  return sub_1D87A14E4(a1, &qword_1ECA650C0);
}

void (*DictionaryConfigStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  *a1 = v7;
  *(v7 + 104) = a3;
  *(v7 + 112) = v3;
  *(v7 + 96) = a2;
  DictionaryConfigStorage.subscript.getter(a2, a3, v7);
  return sub_1D895FD14;
}

void sub_1D895FD14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 96);
  if (a2)
  {
    sub_1D895E280(*a1, v2 + 32);
    os_unfair_lock_lock(v4 + 4);
    sub_1D895E280(v2 + 32, v2 + 64);

    sub_1D895E64C(v2 + 64, v5, v3);
    os_unfair_lock_unlock(v4 + 4);
    sub_1D87A14E4(v2 + 32, &qword_1ECA650C0);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_1D895E280(v2, v2 + 32);

    sub_1D895E64C(v2 + 32, v5, v3);
    os_unfair_lock_unlock(v4 + 4);
  }

  sub_1D87A14E4(v2, &qword_1ECA650C0);

  free(v2);
}

uint64_t DictionaryConfigStorage.__deallocating_deinit()
{
  sub_1D87A14E4(v0 + 24, &qword_1ECA65EE0);

  return swift_deallocClassInstance();
}

uint64_t sub_1D895FE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 4);
  sub_1D895E280(a1, v8);
  sub_1D895E64C(v8, a2, a3);
  os_unfair_lock_unlock(v3 + 4);
  return sub_1D87A14E4(a1, &qword_1ECA650C0);
}

void (*sub_1D895FF24(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DictionaryConfigStorage.subscript.modify(v6, a2, a3);
  return sub_1D895FFAC;
}

void sub_1D895FFAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D8960044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D89600A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double VisionKitConfigStorage.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ELL && 0x80000001D8B40140 == a2;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {
    *(a3 + 24) = MEMORY[0x1E69E6370];
    os_unfair_lock_lock((v3 + 16));
    *a3 = *(v3 + 24);

    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    if (a1 == 0xD000000000000010 && 0x80000001D8B3FFC0 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001D8B3FFA0 == a2 || (sub_1D8B16BA0() & 1) != 0)
    {
      v9 = *(v3 + 56);
      v10 = sub_1D8B15940();
      v11 = [v9 objectForKey_];
    }

    else
    {
      v13 = *(v3 + 48);
      v10 = sub_1D8B15940();
      v11 = [v13 objectForKey_];
    }

    v12 = v11;

    if (v12)
    {
      sub_1D8B16540();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    result = *&v14;
    *a3 = v14;
    *(a3 + 16) = v15;
  }

  return result;
}

uint64_t sub_1D89602DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  sub_1D895E280(a1, v6);

  return VisionKitConfigStorage.subscript.setter(v6, v4, v3);
}

uint64_t VisionKitConfigStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 == 0xD00000000000001ELL && 0x80000001D8B40140 == a3;
  if (!v7 && (sub_1D8B16BA0() & 1) == 0)
  {
    if (a2 == 0xD000000000000010 && 0x80000001D8B3FFC0 == a3 || (sub_1D8B16BA0() & 1) != 0 || a2 == 0xD000000000000017 && 0x80000001D8B3FFA0 == a3 || (sub_1D8B16BA0() & 1) != 0)
    {
      v11 = *(v3 + 56);
    }

    else
    {
      v11 = *(v3 + 48);
    }

    sub_1D895E280(a1, &v20);
    v12 = v21;
    if (v21)
    {
      v13 = __swift_project_boxed_opaque_existential_1(&v20, v21);
      v14 = *(v12 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v16);
      v17 = sub_1D8B16B80();
      (*(v14 + 8))(v16, v12);
      __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_1D8B15940();

    [v11 setObject:v17 forKey:v18];
    swift_unknownObjectRelease();

    return sub_1D895E2F0(a1);
  }

  os_unfair_lock_lock((v3 + 16));
  sub_1D8960608(v3 + 24, a1, &v20);
  os_unfair_lock_unlock((v3 + 16));
  v8 = v20;
  if (!v20)
  {
    return sub_1D895E2F0(a1);
  }

  (v8)(v9);
  sub_1D888A850(v8);
  sub_1D888A850(v8);

  return sub_1D895E2F0(a1);
}

uint64_t sub_1D8960608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  sub_1D895E280(a2, v15);
  if (!v16)
  {
    sub_1D895E2F0(v15);
    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v7 = sub_1D8B151E0();
    __swift_project_value_buffer(v7, qword_1EE0E4448);
    v8 = sub_1D8B151C0();
    v9 = sub_1D8B16230();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8783000, v8, v9, "isVisualLookUpEagerModeEnabled's new value is nil; defaulting to false", v10, 2u);
      MEMORY[0x1DA721330](v10, -1, -1);
    }

    v6 = 0;
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v6 = v14;
LABEL_9:
    *a1 = v6;
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = v6;
    *a3 = sub_1D8960B74;
    a3[1] = v13;
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void (*VisionKitConfigStorage.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  VisionKitConfigStorage.subscript.getter(a2, a3, v7);
  return sub_1D8960830;
}

void sub_1D8960830(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_1D895E280(*a1, v2 + 32);

    VisionKitConfigStorage.subscript.setter(v2 + 32, v4, v3);
    sub_1D895E2F0(v2);
  }

  else
  {

    VisionKitConfigStorage.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

void VisionKitConfigStorage.setDidChangeIsVisualLookUpEagerModeEnabled(_:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 16));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t VisionKitConfigStorage.deinit()
{
  sub_1D8960958(v0 + 24);

  return v0;
}

uint64_t VisionKitConfigStorage.__deallocating_deinit()
{
  sub_1D8960958(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1D89609D0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = nullsub_3;
  *(v0 + 40) = 0;
  *(v0 + 48) = [objc_opt_self() standardUserDefaults];
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1D8B15940();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    *(v0 + 56) = v3;
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1D8960A94(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  VisionKitConfigStorage.subscript.getter(a2, a3, v7);
  return sub_1D8960830;
}

uint64_t sub_1D8960BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64250);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v5;
      v12 = *(type metadata accessor for CVBundle(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      result = sub_1D89798EC(v13, v7 + v14, type metadata accessor for CVBundle);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1D881F6FC(v7, a1, &qword_1ECA64250);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8960D94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = xmmword_1D8B2D3E0;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 8) = v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CVResultPackage.package(for:pixelBuffer:fileBaseName:timestamp:exportGraphicalArtifacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 81) = a6;
  *(v7 + 752) = a7;
  *(v7 + 744) = a5;
  *(v7 + 736) = a4;
  *(v7 + 728) = a3;
  *(v7 + 720) = a2;
  *(v7 + 712) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F28);
  *(v7 + 760) = swift_task_alloc();
  *(v7 + 768) = swift_task_alloc();
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v7 + 776) = v8;
  *(v7 + 784) = *(v8 - 8);
  *(v7 + 792) = swift_task_alloc();
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8960F44, 0, 0);
}

uint64_t sub_1D8960F44()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 840) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8960FDC, v1, 0);
}

uint64_t sub_1D8960FDC()
{
  v1 = *(v0 + 840);
  swift_beginAccess();
  *(v0 + 848) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D8961064, 0, 0);
}

uint64_t sub_1D8961064()
{
  if (*(v0 + 81))
  {
    v1 = *(v0 + 840);
    v2 = sub_1D8961D30;
    goto LABEL_96;
  }

  v3 = *(v0 + 848);
  *(v0 + 880) = v3;
  *(v0 + 872) = 0;
  *(v0 + 864) = v3;
  v4 = sub_1D893E70C(MEMORY[0x1E69E7CC0]);
  v2 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v0 + 888) = v2;
  v6 = *(v2 + 16);
  *(v0 + 896) = v6;
  if (v6)
  {
    v7 = *(v0 + 784);
    *(v0 + 920) = 0;
    *(v0 + 912) = v4;
    *(v0 + 904) = 0;
    if (*(v2 + 16))
    {
      v8 = *(v0 + 840);
      v9 = *(v0 + 832);
      v10 = *(v0 + 824);
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      *(v0 + 928) = *(v7 + 72);
      sub_1D89798EC(v2 + v11, v9, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89798EC(v9, v10, type metadata accessor for BundleClassification.ClassificationType);
      v2 = sub_1D89633E4;
      v1 = v8;
      goto LABEL_96;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  *(v0 + 944) = v4;
  v99 = *(v0 + 784);

  v100 = v4;
  v101 = v4 + 64;
  v12 = -1;
  v13 = -1 << *(v4 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v4 + 64);
  v98 = (63 - v13) >> 6;
  v103 = *(v0 + 880);
  v15 = *(v0 + 864);
  v2 = swift_bridgeObjectRetain_n();
  v16 = 0;
  v17 = 0;
  v112 = v0;
  while (1)
  {
    *(v0 + 952) = v16;
    v108 = v16;
    v110 = v15;
    if (!v14)
    {
      if (v98 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      else
      {
        v19 = v98;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v98)
        {
          v47 = *(v0 + 760);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
          (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
          v14 = 0;
          v17 = v20;
          goto LABEL_20;
        }

        v14 = *(v101 + 8 * v18);
        ++v17;
        if (v14)
        {
          v17 = v18;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v18 = v17;
LABEL_19:
    v21 = *(v0 + 816);
    v22 = *(v0 + 760);
    v23 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v24 = v23 | (v18 << 6);
    sub_1D89798EC(*(v100 + 48) + *(v99 + 72) * v24, v21, type metadata accessor for BundleClassification.ClassificationType);
    v25 = *(v100 + 56) + 48 * v24;
    v26 = *v25;
    v107 = *(v25 + 8);
    v105 = *(v25 + 16);
    v28 = *(v25 + 24);
    v27 = *(v25 + 32);
    v29 = *(v25 + 40);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
    v31 = v22 + *(v30 + 48);
    sub_1D897999C(v21, v22, type metadata accessor for BundleClassification.ClassificationType);
    *v31 = v26;
    *(v31 + 8) = v107;
    *(v31 + 16) = v105;
    *(v31 + 24) = v28;
    *(v31 + 32) = v27;
    *(v31 + 40) = v29;
    v0 = v112;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);

LABEL_20:
    v32 = *(v0 + 768);
    sub_1D881F6FC(*(v0 + 760), v32, &qword_1ECA65F28);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      break;
    }

    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    v36 = *(v0 + 768);
    v37 = v36 + *(v33 + 48);
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v102 = *(v37 + 40);
    v104 = *(v37 + 32);
    sub_1D897999C(v36, v34, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D89798EC(v34, v35, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v106 = v41;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v44 = 0x6974634174786574;
          v43 = 0xEB00000000736E6FLL;
        }

        else
        {
          v43 = 0xE500000000000000;
          v44 = 0x746E657665;
        }
      }

      else
      {
        v45 = 0x7A6972616D6D7573;
        if (EnumCaseMultiPayload == 8)
        {
          v45 = 0x74616C736E617274;
        }

        v46 = EnumCaseMultiPayload == 7;
        if (EnumCaseMultiPayload == 7)
        {
          v44 = 0x756F6C4164616572;
        }

        else
        {
          v44 = v45;
        }

        if (v46)
        {
          v43 = 0xE900000000000064;
        }

        else
        {
          v43 = 0xE900000000000065;
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v43 = 0xE800000000000000;
        v44 = 0x796669746E656469;
      }

      else
      {
        sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v43 = 0xE400000000000000;
        v44 = 1936744813;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v43 = 0xE700000000000000;
      v44 = 0x65646F63726162;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v43 = 0xE600000000000000;
      v44 = 0x686372616573;
    }

    else
    {
      sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v43 = 0xE400000000000000;
      v44 = 1667459446;
    }

    v49 = *(v0 + 808);
    v50 = *(v0 + 792);
    v51 = *(v0 + 752);
    MEMORY[0x1DA71EFA0](v44, v43);

    MEMORY[0x1DA71EFA0](0x7972616D6D75732DLL, 0xE800000000000000);
    *(v112 + 64) = &type metadata for BundleClassificationResultSummary;
    *(v112 + 72) = sub_1D8978EF0();
    v52 = swift_allocObject();
    *(v112 + 40) = v52;
    *(v52 + 16) = v38;
    *(v52 + 24) = v39;
    *(v52 + 32) = v40;
    *(v52 + 40) = v106;
    *(v52 + 48) = v104;
    *(v52 + 56) = v102;
    *(v112 + 80) = 3;
    *(v112 + 16) = 0;
    *(v112 + 24) = 0xE000000000000000;
    v0 = v112;
    *(v112 + 32) = v51;
    sub_1D89798EC(v49, v50, type metadata accessor for BundleClassification.ClassificationType);
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 > 4)
    {
      v54 = v108;
      v15 = v110;
      if (v53 <= 6)
      {
        if (v53 == 5)
        {
          sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v56 = 0x6974634174786574;
          v55 = 0xEB00000000736E6FLL;
        }

        else
        {
          v55 = 0xE500000000000000;
          v56 = 0x746E657665;
        }
      }

      else if (v53 == 7)
      {
        v55 = 0xE900000000000064;
        v56 = 0x756F6C4164616572;
      }

      else
      {
        if (v53 == 8)
        {
          v56 = 0x74616C736E617274;
        }

        else
        {
          v56 = 0x7A6972616D6D7573;
        }

        v55 = 0xE900000000000065;
      }
    }

    else
    {
      v54 = v108;
      v15 = v110;
      if (v53 <= 1)
      {
        if (v53)
        {
          sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v55 = 0xE800000000000000;
          v56 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v55 = 0xE400000000000000;
          v56 = 1936744813;
        }
      }

      else if (v53 == 2)
      {
        sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v55 = 0xE700000000000000;
        v56 = 0x65646F63726162;
      }

      else if (v53 == 3)
      {
        v55 = 0xE600000000000000;
        v56 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v55 = 0xE400000000000000;
        v56 = 1667459446;
      }
    }

    sub_1D88C4BD0(v112 + 16, v112 + 88);
    sub_1D878BBCC(v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_1D87EF838(v56, v55);
    v59 = v15[2];
    v60 = (v1 & 1) == 0;
    v2 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_103;
    }

    v61 = v1;
    if (v15[3] >= v2)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v1)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v2 = sub_1D896B350(&qword_1ECA65C68);
        if (v61)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      sub_1D8974F38(v2, isUniquelyReferenced_nonNull_native, &qword_1ECA65C68);
      v2 = sub_1D87EF838(v56, v55);
      if ((v61 & 1) != (v1 & 1))
      {

        return sub_1D8B16C30();
      }

      v58 = v2;
      if (v61)
      {
LABEL_72:

        goto LABEL_73;
      }
    }

    v15[(v58 >> 6) + 8] |= 1 << v58;
    v62 = (v15[6] + 16 * v58);
    *v62 = v56;
    v62[1] = v55;
    *(v15[7] + 8 * v58) = MEMORY[0x1E69E7CC0];
    v63 = v15[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_105;
    }

    v15[2] = v65;
LABEL_73:
    v66 = v15[7];
    v67 = *(v66 + 8 * v58);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 8 * v58) = v67;
    if ((v68 & 1) == 0)
    {
      v67 = sub_1D87C7B24(0, *(v67 + 2) + 1, 1, v67);
      *(v66 + 8 * v58) = v67;
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    if (v70 >= v69 >> 1)
    {
      *(v66 + 8 * v58) = sub_1D87C7B24((v69 > 1), v70 + 1, 1, v67);
    }

    sub_1D897988C(*(v112 + 808), type metadata accessor for BundleClassification.ClassificationType);
    v2 = sub_1D87DC9A0(v112 + 16);
    v71 = *(v66 + 8 * v58);
    *(v71 + 16) = v70 + 1;
    v72 = v71 + 72 * v70;
    v73 = *(v112 + 104);
    v74 = *(v112 + 120);
    v75 = *(v112 + 136);
    *(v72 + 96) = *(v112 + 152);
    *(v72 + 64) = v74;
    *(v72 + 80) = v75;
    *(v72 + 48) = v73;
    *(v72 + 32) = *(v112 + 88);
    v16 = sub_1D8979B40;
    v103 = v15;
  }

  v76 = *(v0 + 81);

  if ((v76 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C68);
    v2 = sub_1D8B168F0();
    v78 = 0;
    v79 = v103[8];
    v80 = 1 << *(v103 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & v79;
    v83 = (v80 + 63) >> 6;
    v109 = v2 + 64;
    v111 = v2;
    if ((v81 & v79) != 0)
    {
      while (1)
      {
        v84 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
LABEL_91:
        v87 = v84 | (v78 << 6);
        v88 = (v103[6] + 16 * v87);
        v90 = *v88;
        v89 = v88[1];

        v92 = sub_1D8966B38(v91);

        *(v109 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
        v93 = (v111[6] + 16 * v87);
        *v93 = v90;
        v93[1] = v89;
        *(v111[7] + 8 * v87) = v92;
        v94 = v111[2];
        v64 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v64)
        {
          break;
        }

        v111[2] = v95;
        v0 = v112;
        if (!v82)
        {
          goto LABEL_86;
        }
      }

LABEL_107:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v1, v5);
    }

LABEL_86:
    v85 = v78;
    while (1)
    {
      v78 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v78 >= v83)
      {

        v77 = v111;
        goto LABEL_95;
      }

      v86 = v103[v78 + 8];
      ++v85;
      if (v86)
      {
        v84 = __clz(__rbit64(v86));
        v82 = (v86 - 1) & v86;
        goto LABEL_91;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v77 = v103;
LABEL_95:
  *(v0 + 960) = v77;
  v96 = *(v0 + 840);

  v2 = sub_1D896437C;
  v1 = v96;
LABEL_96:
  v5 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v1, v5);
}

uint64_t sub_1D8961D30()
{
  v1 = *(v0 + 840);
  swift_beginAccess();
  *(v0 + 856) = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D8961DB8, 0, 0);
}

uint64_t sub_1D8961DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v172 = 0;
  v6 = 0;
  v203 = (v3 + 232);
  v171 = (v3 + 376);
  v7 = *(v3 + 856);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v177 = *(v3 + 856);
  v11 = -1 << *(v177 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v8;
  v14 = (63 - v11) >> 6;
  v15 = *(v3 + 848);
  v175 = v14;
  v176 = v9;
LABEL_6:
  if (v13)
  {
    v200 = v15;
    v16 = v6;
LABEL_12:
    v178 = v16;
    v179 = (v13 - 1) & v13;
    v17 = (*(v177 + 48) + 16 * (__clz(__rbit64(v13)) | (v16 << 6)));
    v183 = *v17;
    v192 = v17[1];

    v19 = sub_1D8978F44(v18);

    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v194 = v19;
    v23 = -1 << *(v19 + 32);
    if (-v23 < 64)
    {
      v24 = ~(-1 << -v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (63 - v23) >> 6;
    v180 = v5;
    v187 = v26;
    v189 = v19 + 64;
    if ((v24 & v21) == 0)
    {
LABEL_16:
      v15 = v200;
      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v27 >= v26)
        {

          v6 = v178;
          v13 = v179;
          v14 = v175;
          v9 = v176;
          v5 = v180;
          goto LABEL_6;
        }

        v25 = *(v22 + 8 * v27);
        ++v20;
        if (v25)
        {
          v20 = v27;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);

LABEL_165:

      sub_1D878BBCC(v172);

      v170 = *(v3 + 8);

      return v170();
    }

LABEL_21:
    while (1)
    {
      v28 = *(v3 + 744);
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = v29 | (v20 << 6);
      v31 = *(v194 + 48) + 24 * v30;
      v32 = *(v31 + 16);
      v34 = *v31;
      v33 = *(v31 + 8);
      v35 = *(*(v194 + 56) + 8 * v30);
      *(v3 + 592) = *(v3 + 736);
      *(v3 + 600) = v28;
      *(v3 + 608) = 46;
      *(v3 + 616) = 0xE100000000000000;
      *(v3 + 624) = 95;
      *(v3 + 632) = 0xE100000000000000;
      v4 = sub_1D87C12C0();
      v196 = v35;

      *(v3 + 640) = sub_1D8B164D0();
      *(v3 + 648) = v36;
      *(v3 + 656) = 32;
      *(v3 + 664) = 0xE100000000000000;
      *(v3 + 672) = 95;
      *(v3 + 680) = 0xE100000000000000;
      v37 = sub_1D8B164D0();
      v39 = v38;

      if (!v33)
      {
        break;
      }

      if (v200[2])
      {
        v40 = sub_1D87EF838(v183, v192);
        if (v41)
        {
          v42 = *(v200[7] + 8 * v40);
          v4 = *(v42 + 16);
          if (v4)
          {
            v173 = v37;
            v43 = v42 + 32;

            v44 = 0;
            while (v44 < *(v42 + 16))
            {
              sub_1D88C4BD0(v43, v203);
              v45 = *(v3 + 232) == v34 && v33 == *(v3 + 240);
              if (v45 || (sub_1D8B16BA0()) && *(v3 + 248) == v32)
              {

                v49 = *(v3 + 280);
                *(v3 + 192) = *(v3 + 264);
                *(v3 + 208) = v49;
                *(v3 + 224) = *(v3 + 296);
                v50 = *(v3 + 248);
                *(v3 + 160) = *v203;
                *(v3 + 176) = v50;
                sub_1D89791F0(v3 + 184, v3 + 496);
                if (*(v3 + 536))
                {
                  sub_1D87DC9A0(v3 + 160);

                  sub_1D897924C(v3 + 496);
                  goto LABEL_38;
                }

                v77 = *(v3 + 496);

                v52 = v77;
                MEMORY[0x1DA71EFA0](95, 0xE100000000000000);
                MEMORY[0x1DA71EFA0](v173, v39);

                v51 = v34;
                v174 = v33;
                sub_1D87DC9A0(v3 + 160);
                goto LABEL_44;
              }

              ++v44;
              sub_1D87DC9A0(v203);
              v43 += 72;
              if (v4 == v44)
              {
                goto LABEL_36;
              }
            }

            goto LABEL_162;
          }

LABEL_36:
        }
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D8B1AB90;
      sub_1D8B16720();
      *(v3 + 688) = 0;
      *(v3 + 696) = 0xE000000000000000;
      MEMORY[0x1DA71EFA0](0xD000000000000031, 0x80000001D8B44D90);
      MEMORY[0x1DA71EFA0](v34, v33);
      MEMORY[0x1DA71EFA0](544497952, 0xE400000000000000);
      sub_1D8B16020();
      v47 = *(v3 + 688);
      v48 = *(v3 + 696);
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;
      sub_1D8B16CF0();

LABEL_39:
      v26 = v187;
      v22 = v189;
      if (!v25)
      {
        goto LABEL_16;
      }
    }

    v51 = v37;
    v174 = v39;
    v52 = *(v3 + 728);
LABEL_44:
    v53 = sub_1D89792A0(v52, v196);

    v54 = CGImageRef.toPNG()();
    if (v55 >> 60 == 15)
    {

      sub_1D89797D4();
      swift_allocError();
      *v169 = 3;
      swift_willThrow();

      goto LABEL_165;
    }

    v56 = v54;
    v57 = v55;
    v181 = v53;
    v197 = v52;
    v58 = *(v3 + 752);

    MEMORY[0x1DA71EFA0](0x7461746F6E6E612DLL, 0xEB000000002D6465);
    MEMORY[0x1DA71EFA0](v51, v174);

    *(v3 + 328) = v56;
    *(v3 + 336) = v57;
    *(v3 + 344) = 4673104;
    *(v3 + 352) = 0xE300000000000000;
    *(v3 + 368) = 1;
    *(v3 + 304) = v183;
    *(v3 + 312) = v192;
    *(v3 + 320) = v58;
    sub_1D88C4BD0(v3 + 304, v171);
    sub_1D87A1544(v56, v57);
    sub_1D878BBCC(v172);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = sub_1D87EF838(v183, v192);
    v60 = v200[2];
    v61 = (a2 & 1) == 0;
    a1 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_173;
    }

    v62 = a2;
    if (v200[3] < a1)
    {
      sub_1D8974F38(a1, isUniquelyReferenced_nonNull_native, &qword_1ECA65C68);
      a1 = sub_1D87EF838(v183, v192);
      if ((v62 & 1) != (a2 & 1))
      {
        goto LABEL_141;
      }

      v4 = a1;
      if (v62)
      {
        goto LABEL_54;
      }

LABEL_52:
      v200[(v4 >> 6) + 8] |= 1 << v4;
      v63 = (v200[6] + 16 * v4);
      *v63 = v183;
      v63[1] = v192;
      *(v200[7] + 8 * v4) = MEMORY[0x1E69E7CC0];
      v64 = v200[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_175;
      }

      v200[2] = v66;

      goto LABEL_54;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      a1 = sub_1D896B350(&qword_1ECA65C68);
      if ((v62 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

LABEL_54:
    v67 = v200[7];
    v68 = *(v67 + 8 * v4);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v67 + 8 * v4) = v68;
    if ((v69 & 1) == 0)
    {
      v68 = sub_1D87C7B24(0, *(v68 + 2) + 1, 1, v68);
      *(v67 + 8 * v4) = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      *(v67 + 8 * v4) = sub_1D87C7B24((v70 > 1), v71 + 1, 1, v68);
    }

    sub_1D87C12A4(v56, v57);
    sub_1D87DC9A0(v3 + 304);
    v180 = 0;
    v72 = *(v67 + 8 * v4);
    *(v72 + 16) = v71 + 1;
    v73 = v72 + 72 * v71;
    v74 = *(v3 + 392);
    v75 = *(v3 + 408);
    v76 = *(v3 + 424);
    *(v73 + 96) = *(v3 + 440);
    *(v73 + 64) = v75;
    *(v73 + 80) = v76;
    *(v73 + 48) = v74;
    *(v73 + 32) = *v171;
    v172 = sub_1D8979B40;
    goto LABEL_39;
  }

  while (1)
  {
    v16 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v9 + 8 * v16);
    ++v6;
    if (v13)
    {
      v200 = v15;
      goto LABEL_12;
    }
  }

  *(v3 + 880) = v15;
  *(v3 + 872) = v172;
  *(v3 + 864) = v15;
  v78 = sub_1D893E70C(MEMORY[0x1E69E7CC0]);
  a1 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v3 + 888) = a1;
  v79 = *(a1 + 16);
  *(v3 + 896) = v79;
  if (v79)
  {
    v80 = *(v3 + 784);
    *(v3 + 920) = 0;
    *(v3 + 912) = v78;
    *(v3 + 904) = v5;
    if (*(a1 + 16))
    {
      v81 = *(v3 + 840);
      v82 = *(v3 + 832);
      v83 = *(v3 + 824);
      v84 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      *(v3 + 928) = *(v80 + 72);
      sub_1D89798EC(a1 + v84, v82, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89798EC(v82, v83, type metadata accessor for BundleClassification.ClassificationType);
      a1 = sub_1D89633E4;
      a2 = v81;
LABEL_158:
      a3 = 0;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  *(v3 + 944) = v78;
  v184 = *(v3 + 784);

  v85 = v78 + 64;
  v86 = -1;
  v87 = -1 << *(v78 + 32);
  if (-v87 < 64)
  {
    v86 = ~(-1 << -v87);
  }

  v88 = v86 & *(v78 + 64);
  v182 = (63 - v87) >> 6;
  v190 = *(v3 + 880);
  v4 = *(v3 + 864);
  v185 = v78;
  swift_bridgeObjectRetain_n();
  v89 = 0;
  v90 = 0;
  v186 = v78 + 64;
  while (1)
  {
    *(v3 + 952) = v89;
    v201 = v89;
    v204 = v4;
    if (!v88)
    {
      if (v182 <= v90 + 1)
      {
        v92 = v90 + 1;
      }

      else
      {
        v92 = v182;
      }

      v93 = v92 - 1;
      while (1)
      {
        v91 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_163;
        }

        if (v91 >= v182)
        {
          v119 = *(v3 + 760);
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
          (*(*(v120 - 8) + 56))(v119, 1, 1, v120);
          v198 = 0;
          v90 = v93;
          goto LABEL_79;
        }

        v88 = *(v85 + 8 * v91);
        ++v90;
        if (v88)
        {
          v90 = v91;
          goto LABEL_78;
        }
      }
    }

    v91 = v90;
LABEL_78:
    v94 = *(v3 + 816);
    v95 = *(v3 + 760);
    v198 = (v88 - 1) & v88;
    v96 = __clz(__rbit64(v88)) | (v91 << 6);
    sub_1D89798EC(*(v185 + 48) + *(v184 + 72) * v96, v94, type metadata accessor for BundleClassification.ClassificationType);
    v97 = *(v185 + 56) + 48 * v96;
    LOBYTE(v96) = *v97;
    v195 = *(v97 + 8);
    v193 = *(v97 + 16);
    v99 = *(v97 + 24);
    v98 = *(v97 + 32);
    v100 = *(v97 + 40);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
    v102 = v95 + *(v101 + 48);
    sub_1D897999C(v94, v95, type metadata accessor for BundleClassification.ClassificationType);
    *v102 = v96;
    *(v102 + 8) = v195;
    *(v102 + 16) = v193;
    *(v102 + 24) = v99;
    *(v102 + 32) = v98;
    *(v102 + 40) = v100;
    (*(*(v101 - 8) + 56))(v95, 0, 1, v101);

LABEL_79:
    v103 = *(v3 + 768);
    sub_1D881F6FC(*(v3 + 760), v103, &qword_1ECA65F28);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
    if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
    {
      break;
    }

    v105 = *(v3 + 808);
    v106 = *(v3 + 800);
    v107 = *(v3 + 768);
    v108 = v107 + *(v104 + 48);
    v109 = *v108;
    v110 = *(v108 + 8);
    v111 = *(v108 + 16);
    v112 = *(v108 + 24);
    v113 = *(v108 + 32);
    v188 = *(v108 + 40);
    sub_1D897999C(v107, v105, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D89798EC(v105, v106, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v191 = v113;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v116 = 0x6974634174786574;
          v115 = 0xEB00000000736E6FLL;
        }

        else
        {
          v115 = 0xE500000000000000;
          v116 = 0x746E657665;
        }
      }

      else
      {
        v117 = 0x7A6972616D6D7573;
        if (EnumCaseMultiPayload == 8)
        {
          v117 = 0x74616C736E617274;
        }

        v118 = EnumCaseMultiPayload == 7;
        if (EnumCaseMultiPayload == 7)
        {
          v116 = 0x756F6C4164616572;
        }

        else
        {
          v116 = v117;
        }

        if (v118)
        {
          v115 = 0xE900000000000064;
        }

        else
        {
          v115 = 0xE900000000000065;
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v115 = 0xE800000000000000;
        v116 = 0x796669746E656469;
      }

      else
      {
        sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v115 = 0xE400000000000000;
        v116 = 1936744813;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v115 = 0xE700000000000000;
      v116 = 0x65646F63726162;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v115 = 0xE600000000000000;
      v116 = 0x686372616573;
    }

    else
    {
      sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v115 = 0xE400000000000000;
      v116 = 1667459446;
    }

    v121 = *(v3 + 808);
    v122 = *(v3 + 792);
    v123 = *(v3 + 752);
    MEMORY[0x1DA71EFA0](v116, v115);

    MEMORY[0x1DA71EFA0](0x7972616D6D75732DLL, 0xE800000000000000);
    *(v3 + 64) = &type metadata for BundleClassificationResultSummary;
    *(v3 + 72) = sub_1D8978EF0();
    v124 = swift_allocObject();
    *(v3 + 40) = v124;
    *(v124 + 16) = v109;
    *(v124 + 24) = v110;
    *(v124 + 32) = v111;
    *(v124 + 40) = v112;
    *(v124 + 48) = v191;
    *(v124 + 56) = v188;
    *(v3 + 80) = 3;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0xE000000000000000;
    *(v3 + 32) = v123;
    sub_1D89798EC(v121, v122, type metadata accessor for BundleClassification.ClassificationType);
    v125 = swift_getEnumCaseMultiPayload();
    if (v125 > 4)
    {
      v127 = v201;
      v126 = v204;
      if (v125 <= 6)
      {
        if (v125 == 5)
        {
          sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v129 = 0x6974634174786574;
          v128 = 0xEB00000000736E6FLL;
        }

        else
        {
          v128 = 0xE500000000000000;
          v129 = 0x746E657665;
        }
      }

      else if (v125 == 7)
      {
        v128 = 0xE900000000000064;
        v129 = 0x756F6C4164616572;
      }

      else
      {
        if (v125 == 8)
        {
          v129 = 0x74616C736E617274;
        }

        else
        {
          v129 = 0x7A6972616D6D7573;
        }

        v128 = 0xE900000000000065;
      }
    }

    else
    {
      v127 = v201;
      v126 = v204;
      if (v125 <= 1)
      {
        if (v125)
        {
          sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v128 = 0xE800000000000000;
          v129 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v128 = 0xE400000000000000;
          v129 = 1936744813;
        }
      }

      else if (v125 == 2)
      {
        sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v128 = 0xE700000000000000;
        v129 = 0x65646F63726162;
      }

      else if (v125 == 3)
      {
        v128 = 0xE600000000000000;
        v129 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v128 = 0xE400000000000000;
        v129 = 1667459446;
      }
    }

    sub_1D88C4BD0(v3 + 16, v3 + 88);
    sub_1D878BBCC(v127);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v131 = sub_1D87EF838(v129, v128);
    v132 = v126[2];
    v133 = (a2 & 1) == 0;
    a1 = v132 + v133;
    if (__OFADD__(v132, v133))
    {
      goto LABEL_169;
    }

    v134 = a2;
    if (v126[3] >= a1)
    {
      if (v130)
      {
        if (a2)
        {
          goto LABEL_131;
        }
      }

      else
      {
        a1 = sub_1D896B350(&qword_1ECA65C68);
        if (v134)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
      sub_1D8974F38(a1, v130, &qword_1ECA65C68);
      a1 = sub_1D87EF838(v129, v128);
      if ((v134 & 1) != (a2 & 1))
      {
LABEL_141:

        return sub_1D8B16C30();
      }

      v131 = a1;
      if (v134)
      {
LABEL_131:

        goto LABEL_132;
      }
    }

    v126[(v131 >> 6) + 8] |= 1 << v131;
    v135 = (v126[6] + 16 * v131);
    *v135 = v129;
    v135[1] = v128;
    *(v126[7] + 8 * v131) = MEMORY[0x1E69E7CC0];
    v136 = v126[2];
    v65 = __OFADD__(v136, 1);
    v137 = v136 + 1;
    if (v65)
    {
      goto LABEL_171;
    }

    v126[2] = v137;
LABEL_132:
    v138 = v126[7];
    v139 = *(v138 + 8 * v131);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *(v138 + 8 * v131) = v139;
    if ((v140 & 1) == 0)
    {
      v139 = sub_1D87C7B24(0, *(v139 + 2) + 1, 1, v139);
      *(v138 + 8 * v131) = v139;
    }

    v142 = *(v139 + 2);
    v141 = *(v139 + 3);
    if (v142 >= v141 >> 1)
    {
      *(v138 + 8 * v131) = sub_1D87C7B24((v141 > 1), v142 + 1, 1, v139);
    }

    sub_1D897988C(*(v3 + 808), type metadata accessor for BundleClassification.ClassificationType);
    sub_1D87DC9A0(v3 + 16);
    v143 = *(v138 + 8 * v131);
    *(v143 + 16) = v142 + 1;
    v144 = v143 + 72 * v142;
    v145 = *(v3 + 104);
    v146 = *(v3 + 120);
    v147 = *(v3 + 136);
    *(v144 + 96) = *(v3 + 152);
    *(v144 + 64) = v146;
    *(v144 + 80) = v147;
    *(v144 + 48) = v145;
    *(v144 + 32) = *(v3 + 88);
    v89 = sub_1D8979B40;
    v4 = v126;
    v190 = v126;
    v85 = v186;
    v88 = v198;
  }

  v148 = *(v3 + 81);

  if (v148)
  {
    v149 = v190;
LABEL_157:
    *(v3 + 960) = v149;
    v168 = *(v3 + 840);

    a1 = sub_1D896437C;
    a2 = v168;
    goto LABEL_158;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C68);
  a1 = sub_1D8B168F0();
  v151 = 0;
  v152 = v190[8];
  v153 = 1 << *(v190 + 32);
  v154 = -1;
  if (v153 < 64)
  {
    v154 = ~(-1 << v153);
  }

  v155 = v154 & v152;
  v156 = (v153 + 63) >> 6;
  v199 = a1 + 64;
  v202 = a1;
  if ((v154 & v152) == 0)
  {
LABEL_148:
    v158 = v151;
    while (1)
    {
      v151 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        goto LABEL_170;
      }

      if (v151 >= v156)
      {

        v149 = v202;
        goto LABEL_157;
      }

      v159 = v190[v151 + 8];
      ++v158;
      if (v159)
      {
        v157 = __clz(__rbit64(v159));
        v155 = (v159 - 1) & v159;
        goto LABEL_153;
      }
    }
  }

  while (1)
  {
    v157 = __clz(__rbit64(v155));
    v155 &= v155 - 1;
LABEL_153:
    v160 = v157 | (v151 << 6);
    v161 = (v190[6] + 16 * v160);
    v162 = v161[1];
    v205 = *v161;

    v164 = sub_1D8966B38(v163);

    *(v199 + ((v160 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v160;
    v165 = (v202[6] + 16 * v160);
    *v165 = v205;
    v165[1] = v162;
    *(v202[7] + 8 * v160) = v164;
    v166 = v202[2];
    v65 = __OFADD__(v166, 1);
    v167 = v166 + 1;
    if (v65)
    {
      break;
    }

    v202[2] = v167;
    if (!v155)
    {
      goto LABEL_148;
    }
  }

LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}