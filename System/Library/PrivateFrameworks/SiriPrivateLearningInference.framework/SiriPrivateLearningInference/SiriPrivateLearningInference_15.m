uint64_t sub_222C60B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a1;
  v5[12] = a3;
  v6 = *(a4 - 8);
  v5[15] = v6;
  v7 = *(v6 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_getAssociatedTypeWitness();
  v8 = sub_222C94B5C();
  v5[18] = v8;
  v9 = *(v8 - 8);
  v5[19] = v9;
  v10 = *(v9 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222C60CC0, 0, 0);
}

uint64_t sub_222C60CC0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  swift_beginAccess();
  (*(v4 + 16))(v1, v2, v3);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  LODWORD(v2) = v7(v1, 1, v5);
  (*(v4 + 8))(v1, v3);
  if (v2 == 1)
  {
    v8 = v0[22];
    v10 = v0[19];
    v9 = v0[20];
    v32 = v0[17];
    v33 = v0[18];
    v11 = v0[14];
    (*(v0[15] + 16))(v0[16], v0[12], v0[13]);
    sub_222C9487C();
    (*(v6 + 56))(v9, 0, 1, v32);
    swift_beginAccess();
    (*(v10 + 40))(v8, v9, v33);
  }

  v12 = v0[22];
  v13 = v0[17];
  swift_beginAccess();
  if (v7(v12, 1, v13))
  {
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[11];
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v16, 1, 1, AssociatedTypeWitness);
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[16];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[17];
    v25 = v0[13];
    v24 = v0[14];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = *(MEMORY[0x277D856D0] + 4);
    v28 = swift_task_alloc();
    v0[23] = v28;
    *v28 = v0;
    v28[1] = sub_222C60FE4;
    v29 = v0[22];
    v30 = v0[17];
    v31 = v0[11];

    return MEMORY[0x282200308](v31, v30, AssociatedConformanceWitness);
  }
}

uint64_t sub_222C60FE4()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222C61140, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[20];
    v4 = v3[21];
    v6 = v3[16];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_222C61140()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[16];
  swift_endAccess();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_222C611CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v7 = v1[4];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222B503AC;

  return sub_222C60B54(a1, v7, v1 + v6, v4, v5);
}

unint64_t sub_222C61314(uint64_t a1)
{
  v46 = type metadata accessor for MediaGroundTruth();
  v45 = *(v46 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v41 = v1;
  v66 = MEMORY[0x277D84F90];
  sub_222B4C7A0(0, v6, 0);
  v7 = v66;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  result = sub_222C94C2C();
  v11 = 0;
  v12 = *(a1 + 36);
  v42 = a1 + 72;
  v13 = MEMORY[0x277D84FA0];
  v48 = v12;
  v44 = a1;
  v47 = v6;
  v43 = a1 + 64;
  v57 = xmmword_222C97C40;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v52 = 1 << result;
    v53 = result >> 6;
    v51 = v11;
    v16 = *(a1 + 56);
    v55 = *(*(a1 + 48) + result);
    v56 = result;
    v17 = *(v16 + 8 * result);
    v65 = v13;
    v18 = *(v17 + 16);
    v54 = v18;
    if (v18)
    {
      v50 = v7;
      v19 = *(v46 + 32);
      v67 = *(v46 + 28);
      v20 = &v5[v19];
      v21 = v45;
      v22 = v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v49 = v17;

      v58 = *(v21 + 72);
      v23 = v18;
      do
      {
        sub_222C63048(v22, v5, type metadata accessor for MediaGroundTruth);
        v24 = *&v5[v67];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D30, &unk_222CA5430);
        inited = swift_initStackObject();
        *(inited + 16) = v57;
        v64 = *(v20 + 24);
        v26 = *(v20 + 2);
        v62 = *(v20 + 1);
        v27 = v62;
        v63 = v26;
        v61 = *v20;
        v28 = v61;
        *(inited + 80) = v64;
        *(inited + 48) = v27;
        *(inited + 64) = v26;
        *(inited + 32) = v28;
        v60 = v24;

        sub_222B554C0(&v61, v59);
        sub_222B49640(inited);
        v29 = sub_222B71CA4(v60);

        sub_222C61CDC(v29);
        sub_222C630F8(v5, type metadata accessor for MediaGroundTruth);
        v22 += v58;
        --v23;
      }

      while (v23);
      v13 = v65;
      a1 = v44;
      v7 = v50;
      v8 = v43;
      LODWORD(v12) = v48;
    }

    else
    {
    }

    v30 = *(v13 + 16);

    v66 = v7;
    v32 = *(v7 + 16);
    v31 = *(v7 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_222B4C7A0((v31 > 1), v32 + 1, 1);
      LODWORD(v12) = v48;
      v7 = v66;
    }

    *(v7 + 16) = v32 + 1;
    v33 = v7 + 24 * v32;
    *(v33 + 32) = v55;
    *(v33 + 40) = v54;
    *(v33 + 48) = v30;
    v14 = 1 << *(a1 + 32);
    result = v56;
    if (v56 >= v14)
    {
      goto LABEL_29;
    }

    v34 = *(v8 + 8 * v53);
    if ((v34 & v52) == 0)
    {
      goto LABEL_30;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_31;
    }

    v35 = v34 & (-2 << (v56 & 0x3F));
    if (v35)
    {
      v14 = __clz(__rbit64(v35)) | v56 & 0x7FFFFFFFFFFFFFC0;
      v15 = v51;
    }

    else
    {
      v12 = v53 << 6;
      v36 = v53 + 1;
      v37 = (v42 + 8 * v53);
      v15 = v51;
      while (v36 < (v14 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v12 += 64;
        ++v36;
        if (v39)
        {
          v40 = v48;
          sub_222B7D9C4(v56, v48, 0);
          v14 = __clz(__rbit64(v38)) + v12;
          LODWORD(v12) = v40;
          goto LABEL_4;
        }
      }

      LODWORD(v12) = v48;
      sub_222B7D9C4(v56, v48, 0);
    }

LABEL_4:
    v11 = v15 + 1;
    result = v14;
    v13 = MEMORY[0x277D84FA0];
    if (v11 == v47)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_222C61820(uint64_t a1)
{
  v3 = type metadata accessor for MediaFeedbackGroundTruth();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v45[1] = v1;
  v65 = MEMORY[0x277D84F90];
  sub_222B4C7A0(0, v7, 0);
  v57 = v65;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = sub_222C94C2C();
  v12 = result;
  v13 = 0;
  v58 = *(a1 + 36);
  v46 = a1 + 72;
  v50 = a1 + 64;
  v47 = a1;
  v49 = v7;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_31;
    }

    if (v58 != *(a1 + 36))
    {
      goto LABEL_32;
    }

    v53 = 1 << v12;
    v54 = v12 >> 6;
    v52 = v13;
    v16 = *(a1 + 56);
    v55 = *(*(a1 + 48) + v12);
    v17 = *(v16 + 8 * v12);
    v18 = *(v17 + 16);
    v56 = v18;
    if (v18)
    {
      v64 = v8;

      sub_222B4C7C0(0, v18, 0);
      v19 = v64;
      v20 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v51 = v17;
      v21 = v17 + v20;
      v22 = *(v48 + 72);
      do
      {
        sub_222C63048(v21, v6, type metadata accessor for MediaFeedbackGroundTruth);
        v23 = &v6[*(v3 + 28)];
        v24 = *(v23 + 2);
        v61 = *(v23 + 1);
        v62 = v24;
        v63 = *(v23 + 24);
        v60 = *v23;
        sub_222B554C0(&v60, v59);
        sub_222C630F8(v6, type metadata accessor for MediaFeedbackGroundTruth);
        v64 = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_222B4C7C0((v25 > 1), v26 + 1, 1);
          v19 = v64;
        }

        *(v19 + 16) = v26 + 1;
        v27 = v19 + 56 * v26;
        v28 = v60;
        v29 = v61;
        v30 = v62;
        *(v27 + 80) = v63;
        *(v27 + 48) = v29;
        *(v27 + 64) = v30;
        *(v27 + 32) = v28;
        v21 += v22;
        --v18;
      }

      while (v18);
      a1 = v47;
      v9 = v50;
    }

    else
    {

      v19 = v8;
    }

    v31 = sub_222B71CA4(v19);

    v32 = *(v31 + 16);

    v33 = v57;
    v65 = v57;
    v35 = *(v57 + 16);
    v34 = *(v57 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_222B4C7A0((v34 > 1), v35 + 1, 1);
      v33 = v65;
    }

    v36 = v55 | 0x80;
    *(v33 + 16) = v35 + 1;
    v57 = v33;
    v37 = v33 + 24 * v35;
    *(v37 + 32) = v36;
    *(v37 + 40) = v56;
    *(v37 + 48) = v32;
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_33;
    }

    v38 = *(v9 + 8 * v54);
    if ((v38 & v53) == 0)
    {
      goto LABEL_34;
    }

    if (v58 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v39 = v38 & (-2 << (v12 & 0x3F));
    if (v39)
    {
      v14 = __clz(__rbit64(v39)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v8 = MEMORY[0x277D84F90];
      v15 = v49;
    }

    else
    {
      v40 = v54 << 6;
      v41 = v54 + 1;
      v42 = (v46 + 8 * v54);
      v8 = MEMORY[0x277D84F90];
      v15 = v49;
      while (v41 < (v14 + 63) >> 6)
      {
        v44 = *v42++;
        v43 = v44;
        v40 += 64;
        ++v41;
        if (v44)
        {
          result = sub_222B7D9C4(v12, v58, 0);
          v14 = __clz(__rbit64(v43)) + v40;
          goto LABEL_27;
        }
      }

      result = sub_222B7D9C4(v12, v58, 0);
LABEL_27:
      v9 = v50;
    }

    v13 = v52 + 1;
    v12 = v14;
    if (v52 + 1 == v15)
    {
      return v57;
    }
  }

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

uint64_t sub_222C61CDC(uint64_t result)
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
  for (i = (v4 + 63) >> 6; v6; result = sub_222B55A80(v15))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 56 * (v9 | (v8 << 6));
    v12 = *(v10 + 16);
    v11 = *(v10 + 32);
    LOWORD(v9) = *(v10 + 48);
    v17[0] = *v10;
    v18 = v9;
    v17[1] = v12;
    v17[2] = v11;
    sub_222B554C0(v17, v15);
    sub_222B6A674(v13, v17);
    v15[0] = v13[0];
    v15[1] = v13[1];
    v15[2] = v13[2];
    v16 = v14;
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

uint64_t sub_222C61E08(uint64_t result)
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
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_222B6A358(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_222C61EE4()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = type metadata accessor for MediaGroundTruth();
    v5 = sub_222C630B0(&qword_27D027038, type metadata accessor for MediaGroundTruth);
    v6 = v3;
    v7 = v0;
    v1 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:)(v4, v2, v4, v6, v5);
    v8 = v0[7];
    v7[7] = v1;
  }

  return v1;
}

uint64_t sub_222C61FB8()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = sub_222C61EE4();
    v1 = sub_222C629B8(v2);

    v3 = *(v0 + 64);
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_222C62034()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = type metadata accessor for MediaFeedbackGroundTruth();
    v5 = sub_222C630B0(&qword_27D0262B8, type metadata accessor for MediaFeedbackGroundTruth);
    v6 = v3;
    v7 = v0;
    v1 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:)(v4, v2, v4, v6, v5);
    v8 = v0[9];
    v7[9] = v1;
  }

  return v1;
}

uint64_t sub_222C62108()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = sub_222C62034();
    v1 = sub_222C62D00(v2);

    v3 = *(v0 + 80);
    *(v0 + 80) = v1;
  }

  return v1;
}

unint64_t sub_222C62184(uint64_t a1)
{
  v2 = sub_222C61FB8();
  if (*(v2 + 16))
  {
    v3 = sub_222B8CC2C(a1);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
    }
  }

  v6 = sub_222C62108();
  if (*(v6 + 16))
  {
    v7 = sub_222B8CC2C(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }
  }

  v11 = sub_222C62340(v10);

  v12 = sub_222C61314(v11);

  v14 = sub_222C6267C(v13);

  v15 = sub_222C61820(v14);

  sub_222B49D90(v15);

  return v12;
}

uint64_t sub_222C622C4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_222C62340(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroundTruth();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v38 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v38 + 32) & ~v38;
  v12 = a1 + v41;
  v37 = xmmword_222C97C40;
  v42 = v6;
  v39 = v2;
  v40 = v11;
  while (1)
  {
    sub_222C63048(v12, v8, type metadata accessor for MediaGroundTruth);
    v16 = v8[*(v2 + 20)];
    v18 = sub_222B95ADC(v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_222B8EB6C(v21, 1);
      v9 = v43;
      v23 = sub_222B95ADC(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v9[7];
      sub_222B7E93C(v8, v42, type metadata accessor for MediaGroundTruth);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_222B4A9D0(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_222B4A9D0(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v13 = v40;
      v26[2] = v29 + 1;
      v14 = v26 + v41 + v29 * v13;
      v15 = v13;
      sub_222B7E93C(v42, v14, type metadata accessor for MediaGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C48, &qword_222C96A20);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_222B7E93C(v8, v31 + v30, type metadata accessor for MediaGroundTruth);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      *(v9[6] + v18) = v16;
      *(v9[7] + 8 * v18) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
      v15 = v40;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C6267C(uint64_t a1)
{
  v2 = type metadata accessor for MediaFeedbackGroundTruth();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v38 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v38 + 32) & ~v38;
  v12 = a1 + v41;
  v37 = xmmword_222C97C40;
  v42 = v6;
  v39 = v2;
  v40 = v11;
  while (1)
  {
    sub_222C63048(v12, v8, type metadata accessor for MediaFeedbackGroundTruth);
    v16 = v8[*(v2 + 20)];
    v18 = sub_222B95ADC(v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_222B8EB80(v21, 1);
      v9 = v43;
      v23 = sub_222B95ADC(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v9[7];
      sub_222B7E93C(v8, v42, type metadata accessor for MediaFeedbackGroundTruth);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_222B4AB1C(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_222B4AB1C(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v13 = v40;
      v26[2] = v29 + 1;
      v14 = v26 + v41 + v29 * v13;
      v15 = v13;
      sub_222B7E93C(v42, v14, type metadata accessor for MediaFeedbackGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EB8, &unk_222CA5D60);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_222B7E93C(v8, v31 + v30, type metadata accessor for MediaFeedbackGroundTruth);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      *(v9[6] + v18) = v16;
      *(v9[7] + 8 * v18) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
      v15 = v40;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C629B8(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroundTruth();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v39 = *(v5 + 80);
  v11 = *(v5 + 72);
  v42 = (v39 + 32) & ~v39;
  v12 = a1 + v42;
  v38 = xmmword_222C97C40;
  v43 = v6;
  v40 = v2;
  v41 = v11;
  while (1)
  {
    sub_222C63048(v12, v8, type metadata accessor for MediaGroundTruth);
    v16 = *&v8[*(v2 + 24)];

    v19 = sub_222B8CC2C(v17);
    v20 = v9[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      sub_222B91B5C(v22, 1);
      v9 = v44;
      v24 = sub_222B8CC2C(v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {

      v26 = v9[7];
      sub_222B7E93C(v8, v43, type metadata accessor for MediaGroundTruth);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_222B4A9D0(0, v27[2] + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_222B4A9D0(v29 > 1, v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v2 = v40;
      v13 = v41;
      v27[2] = v30 + 1;
      v14 = v27 + v42 + v30 * v13;
      v15 = v13;
      sub_222B7E93C(v43, v14, type metadata accessor for MediaGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C48, &qword_222C96A20);
      v31 = v42;
      v32 = swift_allocObject();
      *(v32 + 16) = v38;
      sub_222B7E93C(v8, v32 + v31, type metadata accessor for MediaGroundTruth);
      v9[(v19 >> 6) + 8] |= 1 << v19;
      *(v9[6] + 8 * v19) = v16;
      *(v9[7] + 8 * v19) = v32;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v9[2] = v35;
      v15 = v41;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_222C9386C();
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C62D00(uint64_t a1)
{
  v2 = type metadata accessor for MediaFeedbackGroundTruth();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v39 = *(v5 + 80);
  v11 = *(v5 + 72);
  v42 = (v39 + 32) & ~v39;
  v12 = a1 + v42;
  v38 = xmmword_222C97C40;
  v43 = v6;
  v40 = v2;
  v41 = v11;
  while (1)
  {
    sub_222C63048(v12, v8, type metadata accessor for MediaFeedbackGroundTruth);
    v16 = *&v8[*(v2 + 24)];

    v19 = sub_222B8CC2C(v17);
    v20 = v9[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      sub_222B91F70(v22, 1);
      v9 = v44;
      v24 = sub_222B8CC2C(v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {

      v26 = v9[7];
      sub_222B7E93C(v8, v43, type metadata accessor for MediaFeedbackGroundTruth);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_222B4AB1C(0, v27[2] + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_222B4AB1C(v29 > 1, v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v2 = v40;
      v13 = v41;
      v27[2] = v30 + 1;
      v14 = v27 + v42 + v30 * v13;
      v15 = v13;
      sub_222B7E93C(v43, v14, type metadata accessor for MediaFeedbackGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EB8, &unk_222CA5D60);
      v31 = v42;
      v32 = swift_allocObject();
      *(v32 + 16) = v38;
      sub_222B7E93C(v8, v32 + v31, type metadata accessor for MediaFeedbackGroundTruth);
      v9[(v19 >> 6) + 8] |= 1 << v19;
      *(v9[6] + 8 * v19) = v16;
      *(v9[7] + 8 * v19) = v32;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v9[2] = v35;
      v15 = v41;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_222C9386C();
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C63048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C630B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C630F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_222C631D0(void (*a1)(id *), void *a2, unint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v8 = v6;
  v29 = a1;
  v30 = a2;
  v27 = a4;
  v28 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222C94C6C())
  {
    v15 = a3;
    v32 = MEMORY[0x277D84F90];
    a3 = &v32;
    (a6)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v22 = a6;
    a6 = 0;
    v16 = v32;
    v17 = v15;
    v24 = v15;
    v25 = v15 & 0xC000000000000001;
    v23 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v18 = (a6 + 1);
      if (__OFADD__(a6, 1))
      {
        break;
      }

      if (v25)
      {
        v19 = MEMORY[0x223DC9B30](a6, v17);
      }

      else
      {
        if (a6 >= *(v23 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * a6 + 32);
      }

      v15 = v19;
      v31 = v19;
      a3 = v30;
      v29(&v31);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v32 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        a3 = &v32;
        v22(v20 > 1, v21 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v21 + 1;
      sub_222B723A4(v13, v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v27, v28);
      ++a6;
      v17 = v24;
      if (v18 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_222C63414(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x277D84F90];
  sub_222B4CCD0(0, v4, 0);
  v5 = v17;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v3)
    {
      break;
    }

    v11 = v16;
    v17 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = v16;
      sub_222B4CCD0((v12 > 1), v13 + 1, 1);
      v11 = v15;
      v5 = v17;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 16 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C63588(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for ContactSuggestionProvidedClassification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_222B4CD50(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for PlusContactSuggestionRuntimeSummary(0) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_222B4CD50(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_222C66B04(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C63770(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C40, &unk_222CA5FA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_222B4CE58(0, v11, 0);
  v12 = v22;
  v13 = *(sub_222C9367C() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_222B4CE58(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_222B723A4(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27D024C40, &unk_222CA5FA0);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t PimsRuntimeLogging.notifyOnComplete()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_222C63994, 0, 0);
}

uint64_t sub_222C63994()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_222C63A90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_222C63A90()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_222C63BA8, 0, 0);
}

uint64_t sub_222C63BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A48, qword_222CA5E48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 24))(sub_222C66A98, v13, a3, a4);
}

uint64_t getPimsRuntimeLogger()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PimsRuntimeLogger();
  v3 = swift_allocObject();
  result = sub_222C63F14();
  a1[3] = v2;
  a1[4] = &off_28360EE90;
  *a1 = v3;
  return result;
}

uint64_t getTestablePimsRuntimeLogger(store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_222C9410C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10 - 8];
  sub_222C940FC();
  sub_222B43E3C(a1, v17);
  v12 = type metadata accessor for PimsRuntimeLogger();
  v13 = swift_allocObject();
  (*(v5 + 16))(v9, v11, v4);
  v14 = sub_222C661EC(v9, v17, v13);
  result = (*(v5 + 8))(v11, v4);
  a2[3] = v12;
  a2[4] = &off_28360EE90;
  *a2 = v14;
  return result;
}

uint64_t sub_222C63F14()
{
  v1 = v0;
  v14 = sub_222C94ADC();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222C94ACC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_222C9436C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_222C667D4();
  v13[0] = "storeInitialized";
  v13[1] = v10;
  sub_222C9434C();
  v15 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A38, &qword_222CA5E40);
  sub_222C66A44(&qword_27D027A40, &qword_27D027A38, &qword_222CA5E40);
  sub_222C94C1C();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v14);
  *(v0 + 24) = sub_222C94AFC();
  *(v0 + 32) = dispatch_group_create();
  type metadata accessor for PimsRuntimeLoggerSynchronous();
  v11 = swift_allocObject();
  sub_222C6515C();
  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_222C6418C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v36 = a1;
  v44 = sub_222C9432C();
  v46 = *(v44 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_222C9436C();
  v43 = *(v45 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222C9367C();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222C93FAC();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = *a2;
  v18 = &v32 - v17;
  v40 = &v32 - v17;
  sub_222C93F9C();
  v19 = *(v3 + 24);
  v37 = *(v3 + 32);
  v38 = v19;
  (*(v11 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v10);
  v20 = v47;
  v21 = v18;
  v22 = v13;
  (*(v47 + 16))(v16, v21, v13);
  v23 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v24 = v23 + v12;
  v25 = (*(v20 + 80) + (v24 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v20 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  (*(v11 + 32))(v26 + v23, v34, v33);
  *(v26 + v24) = v35;
  *(v26 + (v24 & 0xFFFFFFFFFFFFFFF8) + 8) = v41;
  (*(v20 + 32))(v26 + v25, v16, v22);
  aBlock[4] = sub_222C66918;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C66B70;
  aBlock[3] = &block_descriptor_30;
  v27 = _Block_copy(aBlock);

  v28 = v39;
  sub_222C9435C();
  v48 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A18, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A20, &unk_222CA5E30);
  sub_222C66A44(&qword_27D027A28, &qword_27D027A20, &unk_222CA5E30);
  v29 = v42;
  v30 = v44;
  sub_222C94C1C();
  MEMORY[0x223DC9890](v37, v28, v29, v27);
  _Block_release(v27);
  (*(v46 + 8))(v29, v30);
  (*(v43 + 8))(v28, v45);
  (*(v47 + 8))(v40, v22);
}

uint64_t sub_222C64684(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  v10 = a3;

  sub_222C65224(a2, &v10, a4, a5);
}

uint64_t sub_222C646F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v34 = a1;
  v43 = sub_222C9432C();
  v45 = *(v43 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_222C9436C();
  v42 = *(v44 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_222C9367C();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222C93FAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v39 = &v32 - v15;
  sub_222C93F9C();
  v17 = *(v2 + 24);
  v36 = *(v2 + 32);
  v37 = v17;
  v18 = v33;
  (*(v8 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v33);
  v19 = v11;
  v20 = *(v11 + 16);
  v21 = v10;
  v20(v14, v16, v10);
  v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v19 + 80);
  v35 = v19;
  v25 = (v24 + v23 + 8) & ~v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v3;
  (*(v8 + 32))(v26 + v22, v32, v18);
  *(v26 + v23) = v40;
  (*(v19 + 32))(v26 + v25, v14, v21);
  aBlock[4] = sub_222C66838;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C66B70;
  aBlock[3] = &block_descriptor_24_0;
  v27 = _Block_copy(aBlock);

  v28 = v38;
  sub_222C9435C();
  v46 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A18, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A20, &unk_222CA5E30);
  sub_222C66A44(&qword_27D027A28, &qword_27D027A20, &unk_222CA5E30);
  v29 = v41;
  v30 = v43;
  sub_222C94C1C();
  MEMORY[0x223DC9890](v36, v28, v29, v27);
  _Block_release(v27);
  (*(v45 + 8))(v29, v30);
  (*(v42 + 8))(v28, v44);
  (*(v35 + 8))(v39, v21);
}

uint64_t sub_222C64BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);

  sub_222C65A88(a2, a3, a4);
}

uint64_t sub_222C64C38(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_222C9432C();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_222C9436C();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222C9433C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 32);
  sub_222C667D4();
  (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
  v17 = sub_222C94B0C();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 24) = a2;
  aBlock[4] = sub_222BE43DC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C66B70;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  sub_222C9435C();
  v26 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A18, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A20, &unk_222CA5E30);
  sub_222C66A44(&qword_27D027A28, &qword_27D027A20, &unk_222CA5E30);
  sub_222C94C1C();
  sub_222C94ABC();
  _Block_release(v19);

  (*(v25 + 8))(v7, v4);
  (*(v8 + 8))(v11, v24);
}

uint64_t sub_222C64FD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_222C65018()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222C650CC()
{
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D18, &qword_222C9AC28);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027A00 = 91;
  *algn_27D027A08 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C6515C()
{
  *(v0 + 56) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  sub_222C9403C();
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  v1 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v2 = swift_allocObject();
  sub_222B405A0(v4, v2 + 16);
  *(v1 + 16) = v2;
  *(v0 + 16) = v1;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_222C66614(v4, v0 + 24);
  swift_endAccess();
  *(v0 + 64) = 0;
  return v0;
}

void sub_222C65224(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a3;
  v8 = sub_222C9419C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - v15;
  v17 = sub_222C9367C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a2;
  sub_222C9402C();
  (*(v9 + 104))(v12, *MEMORY[0x277D5FCD0], v8);
  v54 = a1;
  sub_222C9401C();
  (*(v9 + 8))(v12, v8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v22 = sub_222C9431C();
    __swift_project_value_buffer(v22, qword_280FE2340);
    v23 = sub_222C942FC();
    v24 = sub_222C94A4C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57[0] = v26;
      *v25 = 136315138;
      if (qword_27D024778 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, v57);
      _os_log_impl(&dword_222B39000, v23, v24, "%s Failed to generate plusId for PIMS candidate logging", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      MEMORY[0x223DCA8C0](v25, -1, -1);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v27 = *(v5 + 16);
    v28 = [objc_allocWithZone(MEMORY[0x277D59D98]) init];
    v29 = v21;
    if (v28)
    {
      v30 = v28;
      v31 = v21;
      v32 = [objc_allocWithZone(MEMORY[0x277D59CE0]) init];
      if (v32)
      {
        v33 = v32;
        v34 = [objc_allocWithZone(MEMORY[0x277D59D10]) init];
        if (v34)
        {
          v35 = v34;
          v51 = v5;
          v36 = sub_222B9D33C();
          if (v36)
          {
            v37 = v36;
            v38 = v52 == 1;
            v52 = v52 == 2;
            [v35 setShadowLogging_];
            [v33 setMediaState_];
            [v30 setSuggestionDomainMetadata_];
            v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v40 = sub_222C9361C();
            v41 = [v39 initWithNSUUID_];

            [v30 setOriginalRequestId_];
            [v30 setIsSuggesterEnabled_];
            [v30 setDomainConfiguredState_];
            v42 = *(v27 + 16);
            sub_222BA1EAC(v30, v31, v55);

            v30 = v33;
            v33 = v35;
            v35 = v37;
          }

          v30 = v33;
          v33 = v35;
        }

        v30 = v33;
      }

      v29 = v31;
    }

    v43 = sub_222C65EEC(v57);
    if (!v57[3])
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v44 = sub_222C9431C();
      __swift_project_value_buffer(v44, qword_280FE2340);
      v45 = sub_222C942FC();
      v46 = sub_222C94A4C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v56 = v48;
        *v47 = 136315138;
        if (qword_27D024778 != -1)
        {
          swift_once();
        }

        *(v47 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, &v56);
        _os_log_impl(&dword_222B39000, v45, v46, "%s Failed to read PIMS candidates as PIMS store not available", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x223DCA8C0](v48, -1, -1);
        MEMORY[0x223DCA8C0](v47, -1, -1);
      }

      else
      {
      }
    }

    MEMORY[0x28223BE20](v43);
    *(&v51 - 2) = v57;
    v49 = sub_222C63770(sub_222C667B4, (&v51 - 4), v53);
    v50 = sub_222C673B4(v49);

    sub_222B9C49C(v54, v50, v29, v55);

    (*(v18 + 8))(v29, v17);
    sub_222B4FCD4(v57, &qword_27D027060, &qword_222CA1E40);
  }
}

uint64_t sub_222C65938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C40, &unk_222CA5FA0) + 48);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_222C66684(a2, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v9 + 56))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    sub_222B4FCD4(v12, &qword_27D027060, &qword_222CA1E40);
    v11 = type metadata accessor for PlusMediaSuggestion();
    return (*(*(v11 - 8) + 56))(a3 + v6, 1, 1, v11);
  }
}

void sub_222C65A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v5 = type metadata accessor for PimsSuggestionMetadata();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222C9419C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_222C9367C();
  v37 = *(v18 - 8);
  v19 = *(v37 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C9402C();
  (*(v10 + 104))(v13, *MEMORY[0x277D5FCD0], v9);
  sub_222C9401C();
  v22 = v9;
  v23 = v37;
  (*(v10 + 8))(v13, v22);
  if ((*(v23 + 48))(v17, 1, v18) == 1)
  {
    sub_222B4FCD4(v17, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      if (qword_27D024778 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, &v38);
      _os_log_impl(&dword_222B39000, v25, v26, "%s Failed to generate plusId for PIMS candidate logging", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }
  }

  else
  {
    (*(v23 + 32))(v21, v17, v18);
    v29 = *(v36 + 16);
    if (v29)
    {
      v30 = *(v35 + 16);
      v31 = v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v32 = *(v34 + 72);
      do
      {
        sub_222C666F4(v31, v8);
        sub_222B9C6B0(a1, v8, v21, a3);
        sub_222C66758(v8);
        v31 += v32;
        --v29;
      }

      while (v29);
    }

    (*(v23 + 8))(v21, v18);
  }
}

uint64_t sub_222C65EEC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = v1 + 24;
    swift_beginAccess();
  }

  else
  {
    v4 = sub_222C9429C();
    v6 = v5;
    v7 = type metadata accessor for PIMSStoreCoreData();
    v8 = swift_allocObject();
    v9 = sub_222C769D4(v4, v6, 0);

    if (v9)
    {
      *(v8 + 16) = v9;
      *(v8 + 24) = [v9 newBackgroundContext];
      v10 = &protocol witness table for PIMSStoreCoreData;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v8 = 0;
      v7 = 0;
      v10 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v8;
    v19 = v7;
    v20 = v10;
    v3 = v1 + 24;
    swift_beginAccess();
    sub_222C66614(v18, v1 + 24);
    swift_endAccess();
    sub_222C66684(v1 + 24, v18);
    v11 = v19;
    sub_222B4FCD4(v18, &qword_27D027060, &qword_222CA1E40);
    if (!v11)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v12 = sub_222C9431C();
      __swift_project_value_buffer(v12, qword_280FE2340);
      v13 = sub_222C942FC();
      v14 = sub_222C94A4C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18[0] = v16;
        *v15 = 136315138;
        if (qword_27D024778 != -1)
        {
          swift_once();
        }

        *(v15 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, v18);
        _os_log_impl(&dword_222B39000, v13, v14, "%s Failed to initialise PIMS store", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x223DCA8C0](v16, -1, -1);
        MEMORY[0x223DCA8C0](v15, -1, -1);
      }

      else
      {
      }
    }

    *(v1 + 64) = 1;
  }

  return sub_222C66684(v3, a1);
}

uint64_t sub_222C6619C()
{
  v1 = *(v0 + 16);

  sub_222B4FCD4(v0 + 24, &qword_27D027060, &qword_222CA1E40);

  return swift_deallocClassInstance();
}

void *sub_222C661EC(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a2;
  v20 = a1;
  v18 = sub_222C94ADC();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222C94ACC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_222C9436C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_222C667D4();
  v17[0] = "storeInitialized";
  v17[1] = v12;
  sub_222C9434C();
  *&v21[0] = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A38, &qword_222CA5E40);
  sub_222C66A44(&qword_27D027A40, &qword_27D027A38, &qword_222CA5E40);
  sub_222C94C1C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v18);
  a3[3] = sub_222C94AFC();
  a3[4] = dispatch_group_create();
  v13 = v19;
  sub_222B43E3C(v19, v21);
  type metadata accessor for PimsRuntimeLoggerSynchronous();
  v14 = swift_allocObject();
  v15 = sub_222C664EC(v20, v21, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  a3[2] = v15;
  return a3;
}

uint64_t sub_222C664EC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_222C9410C();
  v13 = v6;
  v14 = MEMORY[0x277D5FC40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, a1, v6);
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 24) = 0u;
  v8 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v9 = swift_allocObject();
  sub_222B405A0(&v12, v9 + 16);
  *(v8 + 16) = v9;
  *(a3 + 16) = v8;
  sub_222B405A0(a2, v11);
  swift_beginAccess();
  sub_222C66614(v11, a3 + 24);
  swift_endAccess();
  *(a3 + 64) = 1;
  return a3;
}

uint64_t sub_222C66614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027060, &qword_222CA1E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C66684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027060, &qword_222CA1E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C666F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PimsSuggestionMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C66758(uint64_t a1)
{
  v2 = type metadata accessor for PimsSuggestionMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C667D4()
{
  result = qword_27D027A10;
  if (!qword_27D027A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D027A10);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222C66838()
{
  v1 = *(sub_222C9367C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_222C93FAC() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_222C64BD4(v5, v0 + v2, v6, v7);
}

uint64_t sub_222C66918()
{
  v1 = *(sub_222C9367C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_222C93FAC() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_222C64684(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_222C669FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C66A44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222C66A98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A48, qword_222CA5E48) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_222C9482C();
}

uint64_t sub_222C66B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactSuggestionProvidedClassification();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SendMessageUSOFeature.RecipientNames.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.RecipientNames.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C66C5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for SendMessageUSOFeature.RecipientNames(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C66CA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for SendMessageUSOFeature.RecipientNames(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.MessageHasPayload.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.MessageHasPayload.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.MessageHasPayload.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C66E78(char *a1)
{
  v1 = *a1;
  HasPayload = type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
  v3 = *(HasPayload + 48);
  v4 = *(HasPayload + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C66EC4(char *a1)
{
  v1 = *a1;
  HasPayload = type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
  v3 = *(HasPayload + 48);
  v4 = *(HasPayload + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222C66F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_222B4C458(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 32);
      v6 = *(v4 - 2);
      v13 = *(v4 - 3);
      v7 = *(v4 - 1);
      v8 = *v4;
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_222B4C458((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for SuccessfulMessageClassification;
      v16 = &protocol witness table for SuccessfulMessageClassification;
      v11 = swift_allocObject();
      *&v14 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v13;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v2 + 16) = v10 + 1;
      sub_222B405A0(&v14, v2 + 40 * v10 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_222C670A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v22 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v26 = MEMORY[0x277D84F90];
    sub_222B4C458(0, v13, 0);
    v14 = v26;
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_222C6AD74(v15, v12, a3);
      v26 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_222B4C458((v17 > 1), v18 + 1, 1);
        v14 = v26;
      }

      v24 = v8;
      v25 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      sub_222C6AD74(v12, boxed_opaque_existential_1, a3);
      *(v14 + 16) = v18 + 1;
      sub_222B405A0(&v23, v14 + 40 * v18 + 32);
      sub_222C6ADDC(v12, v22);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_222C6724C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_222B4C888(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_222B79B90(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F80, &qword_222C9A0D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_222B4C888((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_222B405A0(&v9, v2 + 40 * v6 + 32);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_222C673B4(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C40, &unk_222CA5FA0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_222B4CE18(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_222B4FC6C(v13, v5, &qword_27D024C40, &unk_222CA5FA0);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_222B4CE18(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_222C6A8C0(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_222C6760C(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_222C94C6C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_222B4CBF4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x223DC9B30](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_222B4CBF4((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_222BF54CC(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_222B4CBF4((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_222BF54CC(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t PartialRepetitionClassifier.__allocating_init(turnComparators:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222C67818()
{
  type metadata accessor for PartialRepetitionClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A60, &qword_222CA5FB0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDDBC8 = 91;
  *algn_280FDDBD0 = 0xE100000000000000;
  return result;
}

uint64_t PartialRepetitionClassifier.__allocating_init(turnComparator:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C97C40;
  sub_222B405A0(a1, v2 + 32);
  type metadata accessor for PartialRepetitionClassifier();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222C67944(uint64_t *a1)
{
  v2 = v1;
  v83 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025020, &unk_222C98410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62 - v6;
  v79 = type metadata accessor for TurnPairRestatementClassification();
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v79);
  v78 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v62 - v15;
  v16 = type metadata accessor for FeaturisedTurn(0);
  v82 = *(v16 - 8);
  v17 = *(v82 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v81 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v22 = type metadata accessor for FeaturisedSession(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v70 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x277D84F90];
  v90 = MEMORY[0x277D84F90];
  v80 = v2;
  v28 = v2[2];
  v69 = *(v28 + 16);
  if (v69)
  {
    v29 = 0;
    v68 = v28 + 32;
    v72 = v8;
    v76 = (v8 + 48);
    v65 = *(v24 + 20);
    v66 = v24;
    v64 = *(v24 + 24);
    v30 = *a1;
    *&v25 = 136315394;
    v62 = v25;
    v74 = v7;
    v84 = v30;
    v67 = a1;
    v63 = v28;
    while (v29 < *(v28 + 16))
    {
      v71 = v29;
      sub_222B43E3C(v68 + 40 * v29, &v89);
      sub_222B43E3C(&v89, v86);
      v32 = *(v30 + 16);

      if (v32)
      {
        v33 = 0;
        v34 = MEMORY[0x277D84F90];
        while (v33 < *(v30 + 16))
        {
          v35 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v36 = *(v82 + 72);
          sub_222C6AD74(v30 + v35 + v36 * v33, v21, type metadata accessor for FeaturisedTurn);
          v38 = v87;
          v37 = v88;
          __swift_project_boxed_opaque_existential_1(v86, v87);
          if ((*(v37 + 16))(v21, v38, v37))
          {
            sub_222C6AD0C(v21, v81, type metadata accessor for FeaturisedTurn);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_222B4C3D4(0, *(v34 + 16) + 1, 1);
              v34 = v85;
            }

            v41 = *(v34 + 16);
            v40 = *(v34 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_222B4C3D4(v40 > 1, v41 + 1, 1);
              v34 = v85;
            }

            *(v34 + 16) = v41 + 1;
            sub_222C6AD0C(v81, v34 + v35 + v41 * v36, type metadata accessor for FeaturisedTurn);
          }

          else
          {
            sub_222C6ADDC(v21, type metadata accessor for FeaturisedTurn);
          }

          ++v33;
          v30 = v84;
          if (v32 == v33)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v34 = MEMORY[0x277D84F90];
LABEL_18:
      __swift_destroy_boxed_opaque_existential_0Tm(v86);

      v42 = v66;
      v43 = *(v66 + 20);
      v44 = sub_222C9367C();
      v45 = v70;
      v46 = v67;
      (*(*(v44 - 8) + 16))(v70 + v43, v67 + v65, v44);
      sub_222B4FC6C(v46 + v64, v45 + *(v42 + 24), &unk_27D026290, &qword_222C96B40);
      *v45 = v34;

      sub_222C6ADDC(v45, type metadata accessor for FeaturisedSession);
      sub_222B64278(2, v34);

      MEMORY[0x28223BE20](v47);
      *(&v62 - 2) = &v89;
      *(&v62 - 1) = v83;
      v48 = sub_222BDBA3C(sub_222C6A930, (&v62 - 2));

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v49 = sub_222C9431C();
      __swift_project_value_buffer(v49, qword_280FE2340);

      v50 = sub_222C942FC();
      v51 = sub_222C94A3C();
      v52 = os_log_type_enabled(v50, v51);
      v53 = v74;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v86[0] = v55;
        *v54 = v62;
        if (qword_280FDDBC0 != -1)
        {
          swift_once();
        }

        *(v54 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v86);
        *(v54 + 12) = 2048;
        *(v54 + 14) = v48[2];

        _os_log_impl(&dword_222B39000, v50, v51, "%s Identifying restatements in %ld turn pairs", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x223DCA8C0](v55, -1, -1);
        MEMORY[0x223DCA8C0](v54, -1, -1);
      }

      else
      {
      }

      v56 = v48[2];
      v30 = v75;
      if (v56)
      {
        v57 = 0;
        v31 = MEMORY[0x277D84F90];
        while (v57 < v48[2])
        {
          sub_222B4FC6C(v48 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v57, v30, &qword_27D024D88, qword_222C9E460);
          sub_222C68A8C(v30, v53);
          sub_222B4FCD4(v30, &qword_27D024D88, qword_222C9E460);
          if ((*v76)(v53, 1, v79) == 1)
          {
            sub_222B4FCD4(v53, &qword_27D025020, &unk_222C98410);
          }

          else
          {
            v58 = v53;
            v59 = v73;
            sub_222C6AD0C(v58, v73, type metadata accessor for TurnPairRestatementClassification);
            sub_222C6AD0C(v59, v78, type metadata accessor for TurnPairRestatementClassification);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_222B4A2A0(0, v31[2] + 1, 1, v31);
            }

            v61 = v31[2];
            v60 = v31[3];
            if (v61 >= v60 >> 1)
            {
              v31 = sub_222B4A2A0(v60 > 1, v61 + 1, 1, v31);
            }

            v31[2] = v61 + 1;
            sub_222C6AD0C(v78, v31 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v61, type metadata accessor for TurnPairRestatementClassification);
            v53 = v74;
            v30 = v75;
          }

          if (v56 == ++v57)
          {
            goto LABEL_4;
          }
        }

LABEL_39:
        __break(1u);
        break;
      }

      v31 = MEMORY[0x277D84F90];
LABEL_4:
      v29 = v71 + 1;

      sub_222B49094(v31);
      __swift_destroy_boxed_opaque_existential_0Tm(&v89);
      v28 = v63;
      v30 = v84;
      if (v29 == v69)
      {
        return v90;
      }
    }

    __break(1u);

    sub_222B4FCD4(v30, &qword_27D024D88, qword_222C9E460);

    __break(1u);
  }

  return result;
}

uint64_t sub_222C68354@<X0>(void *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v7 = type metadata accessor for FeaturisedTurn(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v19 = &v48 - v17;
  v20 = a1[2];
  v21 = a1[3] >> 1;
  if (v20 == v21)
  {
LABEL_9:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);
    a2 = sub_222C942FC();
    LOBYTE(v15) = sub_222C94A3C();
    if (!os_log_type_enabled(a2, v15))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&v56[0] = v4;
    *v19 = 136315138;
    if (qword_280FDDBC0 == -1)
    {
LABEL_13:
      *(v19 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v56);
      _os_log_impl(&dword_222B39000, a2, v15, "%s Can't generate restatement score for single turn. Skipping.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
      MEMORY[0x223DCA8C0](v4, -1, -1);
      MEMORY[0x223DCA8C0](v19, -1, -1);
LABEL_14:

      goto LABEL_15;
    }

LABEL_24:
    swift_once();
    goto LABEL_13;
  }

  if (v20 >= v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = v18;
  v53 = v3;
  v22 = a1[1];
  v4 = *(v16 + 72);
  sub_222C6AD74(v22 + v4 * v20, &v48 - v17, type metadata accessor for FeaturisedTurn);
  sub_222C6AD74(v22 + v4 * (v21 - 1), v15, type metadata accessor for FeaturisedTurn);
  if (__OFSUB__(v21, v20))
  {
    goto LABEL_23;
  }

  if (v21 - v20 != 2)
  {
    sub_222C6ADDC(v15, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v19, type metadata accessor for FeaturisedTurn);
    goto LABEL_9;
  }

  isa = a2[3].isa;
  v24 = a2[4].isa;
  __swift_project_boxed_opaque_existential_1(a2, isa);
  (*(v24 + 1))(&v54, v19, v15, isa, v24);
  if (v55)
  {
    sub_222B405A0(&v54, v56);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
    v26 = *(v25 + 48);
    v27 = *(v25 + 64);
    v28 = v57;
    sub_222C6AD74(v19, v57, type metadata accessor for FeaturisedTurn);
    sub_222C6AD74(v15, v28 + v26, type metadata accessor for FeaturisedTurn);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A70, qword_222CA5FC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_222C97C40;
    sub_222B405A0(v56, v29 + 32);
    sub_222C6ADDC(v15, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v19, type metadata accessor for FeaturisedTurn);
    *(v28 + v27) = v29;
    return (*(*(v25 - 8) + 56))(v28, 0, 1, v25);
  }

  sub_222B4FCD4(&v54, &qword_27D027A68, &qword_222CA5FB8);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v33 = sub_222C9431C();
  __swift_project_value_buffer(v33, qword_280FE2340);
  sub_222C6AD74(v19, v12, type metadata accessor for FeaturisedTurn);
  v34 = v52;
  sub_222C6AD74(v15, v52, type metadata accessor for FeaturisedTurn);
  v35 = sub_222C942FC();
  v36 = sub_222C94A3C();
  if (os_log_type_enabled(v35, v36))
  {
    v50 = v36;
    v51 = v35;
    v37 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v56[0] = v49;
    *v37 = 136315650;
    if (qword_280FDDBC0 != -1)
    {
      swift_once();
    }

    *(v37 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v56);
    *(v37 + 12) = 2080;
    v38 = FeaturisedTurn.friendlyName.getter();
    v40 = v39;
    sub_222C6ADDC(v12, type metadata accessor for FeaturisedTurn);
    v41 = sub_222B437C0(v38, v40, v56);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2080;
    v42 = FeaturisedTurn.friendlyName.getter();
    v44 = v43;
    sub_222C6ADDC(v34, type metadata accessor for FeaturisedTurn);
    v45 = sub_222B437C0(v42, v44, v56);

    *(v37 + 24) = v45;
    v46 = v51;
    _os_log_impl(&dword_222B39000, v51, v50, "%s Failed to generate restatement score for Turn A=%s B=%s", v37, 0x20u);
    v47 = v49;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v47, -1, -1);
    MEMORY[0x223DCA8C0](v37, -1, -1);

    sub_222C6ADDC(v15, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v19, type metadata accessor for FeaturisedTurn);
  }

  else
  {

    sub_222C6ADDC(v34, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v12, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v15, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v19, type metadata accessor for FeaturisedTurn);
  }

LABEL_15:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  return (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
}

uint64_t sub_222C68A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = sub_222C9367C();
  v99 = *(v93 - 8);
  v4 = *(v99 + 64);
  v5 = MEMORY[0x28223BE20](v93);
  v101 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v86 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v86 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v86 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v86 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  sub_222B4FC6C(a1, &v86 - v24, &qword_27D024D88, qword_222C9E460);
  v26 = *(v8 + 48);
  v94 = v8;
  v27 = sub_222C6A94C(v25, &v25[v26], *&v25[*(v8 + 64)]);

  sub_222C6ADDC(&v25[v26], type metadata accessor for FeaturisedTurn);
  sub_222C6ADDC(v25, type metadata accessor for FeaturisedTurn);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v28 = sub_222C9431C();
  v29 = __swift_project_value_buffer(v28, qword_280FE2340);
  sub_222B4FC6C(a1, v23, &qword_27D024D88, qword_222C9E460);
  sub_222B4FC6C(a1, v20, &qword_27D024D88, qword_222C9E460);
  v92 = v29;
  v30 = sub_222C942FC();
  v31 = sub_222C94A3C();
  v32 = os_log_type_enabled(v30, v31);
  v102 = a2;
  if (v32)
  {
    v86 = v20;
    v87 = v30;
    LODWORD(v89) = v31;
    v90 = v27;
    v91 = a1;
    v33 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v103 = v88;
    *v33 = 136315650;
    if (qword_280FDDBC0 != -1)
    {
      swift_once();
    }

    *(v33 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, &v103);
    *(v33 + 12) = 2080;
    sub_222B4FC6C(v23, v25, &qword_27D024D88, qword_222C9E460);
    v34 = v94;
    v35 = v94[12];
    v36 = *&v25[v94[16]];

    v37 = FeaturisedTurn.friendlyName.getter();
    v39 = v38;
    sub_222B4FCD4(v23, &qword_27D024D88, qword_222C9E460);
    sub_222C6ADDC(v25, type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(&v25[v35], type metadata accessor for FeaturisedTurn);
    v40 = sub_222B437C0(v37, v39, &v103);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2080;
    v41 = v86;
    sub_222B4FC6C(v86, v25, &qword_27D024D88, qword_222C9E460);
    v42 = v34[12];
    v43 = *&v25[v34[16]];

    v44 = FeaturisedTurn.friendlyName.getter();
    v46 = v45;
    sub_222B4FCD4(v41, &qword_27D024D88, qword_222C9E460);
    sub_222C6ADDC(&v25[v42], type metadata accessor for FeaturisedTurn);
    sub_222C6ADDC(v25, type metadata accessor for FeaturisedTurn);
    v47 = sub_222B437C0(v44, v46, &v103);

    *(v33 + 24) = v47;
    v48 = v87;
    _os_log_impl(&dword_222B39000, v87, v89, "%s Rule matrix generated for Turn A=%s B=%s:", v33, 0x20u);
    v49 = v88;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v49, -1, -1);
    MEMORY[0x223DCA8C0](v33, -1, -1);

    a2 = v102;
    v27 = v90;
    a1 = v91;
  }

  else
  {

    sub_222B4FCD4(v20, &qword_27D024D88, qword_222C9E460);
    sub_222B4FCD4(v23, &qword_27D024D88, qword_222C9E460);
  }

  sub_222C8A24C(8224, 0xE200000000000000, v27);
  v50 = sub_222C1EC00(v27);

  if (v50)
  {
    sub_222B4FC6C(a1, v25, &qword_27D024D88, qword_222C9E460);
    v51 = v94;
    v52 = v95;
    v53 = v94[12];
    v92 = v53;
    v54 = *&v25[v94[16]];
    sub_222C6AD74(v25, v95, type metadata accessor for FeaturisedTurn);
    sub_222C6AD74(&v25[v53], v52 + v51[12], type metadata accessor for FeaturisedTurn);
    *(v52 + v51[16]) = v54;
    v55 = v96;
    sub_222B4FC6C(v52, v96, &qword_27D024D88, qword_222C9E460);
    v91 = v51[12];
    v56 = *(v55 + v51[16]);

    v57 = *(v99 + 16);
    v58 = v93;
    (v57)(v100, v55, v93);
    v90 = type metadata accessor for FeaturisedTurn;
    sub_222C6ADDC(v55, type metadata accessor for FeaturisedTurn);
    v59 = v97;
    sub_222B4FC6C(v52, v97, &qword_27D024D88, qword_222C9E460);
    v60 = v51[12];
    v61 = *(v59 + v51[16]);

    (v57)(v101, v59 + v60, v58);
    sub_222C6ADDC(v59 + v60, type metadata accessor for FeaturisedTurn);
    v62 = v98;
    sub_222B4FC6C(v52, v98, &qword_27D024D88, qword_222C9E460);
    v63 = v51[12];
    v88 = v57;
    v89 = v63;
    v64 = *(v62 + v51[16]);
    v65 = v102;
    v66 = v100;
    (v57)(v102, v100, v58);
    v67 = type metadata accessor for TurnPairRestatementClassification();
    v94 = v67;
    (v57)(v65 + *(v67 + 20), v101, v58);
    *(v65 + *(v67 + 24)) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v68 = *(v99 + 72);
    v69 = v99;
    v70 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_222C96900;
    v72 = v71 + v70;
    v73 = v88;
    (v88)(v72, v66, v58);
    v74 = v101;
    (v73)(v72 + v68, v101, v58);
    v75 = v94;
    v76 = v102;
    *(v102 + v94[7]) = v71;
    v77 = *(v69 + 8);
    v77(v74, v58);
    v77(v100, v58);
    sub_222B4FCD4(v95, &qword_27D024D88, qword_222C9E460);
    *(v76 + v75[8]) = MEMORY[0x277D84F90];
    v78 = v98;
    v79 = v90;
    sub_222C6ADDC(v98 + v89, v90);
    sub_222C6ADDC(v78, v79);
    sub_222C6ADDC(v97, v79);
    sub_222C6ADDC(v96 + v91, v79);
    sub_222C6ADDC(&v25[v92], v79);
    sub_222C6ADDC(v25, v79);
    return (*(*(v75 - 1) + 56))(v76, 0, 1, v75);
  }

  else
  {
    v81 = sub_222C942FC();
    v82 = sub_222C94A3C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v103 = v84;
      *v83 = 136315138;
      if (qword_280FDDBC0 != -1)
      {
        swift_once();
      }

      *(v83 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, &v103);
      _os_log_impl(&dword_222B39000, v81, v82, "%s Failed to match all restatement rules - skipping.", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      MEMORY[0x223DCA8C0](v84, -1, -1);
      MEMORY[0x223DCA8C0](v83, -1, -1);
    }

    v85 = type metadata accessor for TurnPairRestatementClassification();
    return (*(*(v85 - 8) + 56))(a2, 1, 1, v85);
  }
}

uint64_t sub_222C694C4(uint64_t *a1, uint64_t a2)
{
  v96 = type metadata accessor for TurnPairRestatementClassification();
  v100 = *(v96 - 8);
  v4 = *(v100 + 64);
  v5 = MEMORY[0x28223BE20](v96);
  v101 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v94 - v10;
  v12 = sub_222C9367C();
  v99 = *(v12 - 8);
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v94 - v19;
  v106 = type metadata accessor for EntityPromptClassification();
  v108 = *(v106 - 8);
  v21 = *(v108 + 64);
  v22 = MEMORY[0x28223BE20](v106);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v104 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v95 = a1;
  if (sub_222C6A578(a1))
  {
    if (qword_280FDFE78 == -1)
    {
LABEL_3:
      v32 = sub_222C9431C();
      __swift_project_value_buffer(v32, qword_280FE2340);
      v33 = sub_222C942FC();
      v34 = sub_222C94A3C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v112[0] = v36;
        *v35 = 136315138;
        if (qword_280FDDBC0 != -1)
        {
          swift_once();
        }

        *(v35 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v112);
        _os_log_impl(&dword_222B39000, v33, v34, "%s Session has one or more turn with multiple recipients - skipping classification.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x223DCA8C0](v36, -1, -1);
        MEMORY[0x223DCA8C0](v35, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_62:
    swift_once();
    goto LABEL_3;
  }

  v102 = v11;
  v103 = v24;
  v38 = *(a2 + 16);
  if (v38)
  {
    v39 = a2 + 32;
    v40 = (v108 + 56);
    v41 = (v108 + 48);
    v42 = MEMORY[0x277D84F90];
    v98 = v31;
    do
    {
      sub_222B43E3C(v39, v112);
      sub_222B405A0(v112, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v43 = v106;
      v44 = swift_dynamicCast();
      (*v40)(v20, v44 ^ 1u, 1, v43);
      if ((*v41)(v20, 1, v43) == 1)
      {
        sub_222B4FCD4(v20, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C6AD0C(v20, v31, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_222B49F90(0, v42[2] + 1, 1, v42);
        }

        v46 = v42[2];
        v45 = v42[3];
        if (v46 >= v45 >> 1)
        {
          v42 = sub_222B49F90(v45 > 1, v46 + 1, 1, v42);
        }

        v42[2] = v46 + 1;
        v47 = v42 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v46;
        v31 = v98;
        sub_222C6AD0C(v98, v47, type metadata accessor for EntityPromptClassification);
      }

      v39 += 40;
      --v38;
    }

    while (v38);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v48 = v42[2];
  if (v48)
  {
    v49 = 0;
    v50 = MEMORY[0x277D84F90];
    v51 = v103;
    while (v49 < v42[2])
    {
      v52 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v53 = *(v108 + 72);
      sub_222C6AD74(v42 + v52 + v53 * v49, v29, type metadata accessor for EntityPromptClassification);
      if (*(v29 + 6))
      {
        sub_222C6AD0C(v29, v51, type metadata accessor for EntityPromptClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v112[0] = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C330(0, *(v50 + 16) + 1, 1);
          v50 = *&v112[0];
        }

        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_222B4C330(v55 > 1, v56 + 1, 1);
          v50 = *&v112[0];
        }

        *(v50 + 16) = v56 + 1;
        v51 = v103;
        sub_222C6AD0C(v103, v50 + v52 + v56 * v53, type metadata accessor for EntityPromptClassification);
      }

      else
      {
        sub_222C6ADDC(v29, type metadata accessor for EntityPromptClassification);
      }

      if (v48 == ++v49)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_31:

  v57 = *(v50 + 16);
  v109 = v12;
  if (v57)
  {
    v58 = *(v106 + 48);
    v59 = v50 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v108 = *(v108 + 72);
    v60 = (v99 + 48);
    v106 = v99 + 32;
    v61 = MEMORY[0x277D84F90];
    v62 = &qword_222C96B40;
    v63 = v102;
    v103 = v58;
    do
    {
      v64 = v104;
      sub_222C6AD74(v59, v104, type metadata accessor for EntityPromptClassification);
      sub_222B4FC6C(v64 + v58, v63, &unk_27D026290, v62);
      sub_222C6ADDC(v64, type metadata accessor for EntityPromptClassification);
      v65 = v62;
      v66 = v109;
      if ((*v60)(v63, 1, v109) == 1)
      {
        sub_222B4FCD4(v63, &unk_27D026290, v65);
        v62 = v65;
      }

      else
      {
        v67 = v65;
        v68 = *v106;
        (*v106)(v105, v63, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_222B4A2C8(0, *(v61 + 2) + 1, 1, v61);
        }

        v62 = v67;
        v70 = *(v61 + 2);
        v69 = *(v61 + 3);
        if (v70 >= v69 >> 1)
        {
          v62 = v67;
          v61 = sub_222B4A2C8(v69 > 1, v70 + 1, 1, v61);
        }

        *(v61 + 2) = v70 + 1;
        v68(&v61[((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v70], v105);
        v63 = v102;
        v58 = v103;
      }

      v59 += v108;
      --v57;
    }

    while (v57);
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v71 = sub_222B720D8(v61);

  v72 = sub_222C67944(v95);
  v98 = *(v72 + 16);
  if (v98)
  {
    v73 = 0;
    v108 = v71 + 56;
    v106 = v99 + 16;
    v74 = MEMORY[0x277D84F90];
    v75 = (v99 + 8);
    v97 = v72;
    while (v73 < *(v72 + 16))
    {
      v76 = *(v100 + 72);
      v103 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v104 = v74;
      v105 = v73;
      v102 = v76;
      sub_222C6AD74(v72 + v103 + v76 * v73, v110, type metadata accessor for TurnPairRestatementClassification);
      if (*(v71 + 16) && (v77 = *(v96 + 20), v78 = *(v71 + 40), sub_222B7BB84(&qword_280FE02A8), v79 = sub_222C9440C(), v80 = -1 << *(v71 + 32), v81 = v79 & ~v80, ((*(v108 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) != 0))
      {
        v82 = ~v80;
        v83 = *(v99 + 72);
        v84 = *(v99 + 16);
        while (1)
        {
          v85 = v71;
          v86 = *(v71 + 48) + v83 * v81;
          v87 = v107;
          v88 = v109;
          v84(v107, v86, v109);
          sub_222B7BB84(&qword_280FE02A0);
          v89 = sub_222C9447C();
          (*v75)(v87, v88);
          if (v89)
          {
            break;
          }

          v81 = (v81 + 1) & v82;
          v71 = v85;
          if (((*(v108 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        sub_222C6ADDC(v110, type metadata accessor for TurnPairRestatementClassification);
        v71 = v85;
        v74 = v104;
      }

      else
      {
LABEL_53:
        sub_222C6AD0C(v110, v101, type metadata accessor for TurnPairRestatementClassification);
        v74 = v104;
        v90 = swift_isUniquelyReferenced_nonNull_native();
        *&v112[0] = v74;
        if ((v90 & 1) == 0)
        {
          sub_222B4C498(0, *(v74 + 16) + 1, 1);
          v74 = *&v112[0];
        }

        v92 = *(v74 + 16);
        v91 = *(v74 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_222B4C498(v91 > 1, v92 + 1, 1);
          v74 = *&v112[0];
        }

        *(v74 + 16) = v92 + 1;
        sub_222C6AD0C(v101, v74 + v103 + v92 * v102, type metadata accessor for TurnPairRestatementClassification);
      }

      v73 = v105 + 1;
      v72 = v97;
      if (v105 + 1 == v98)
      {
        goto LABEL_59;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v74 = MEMORY[0x277D84F90];
LABEL_59:

  v93 = sub_222C670A8(v74, type metadata accessor for TurnPairRestatementClassification, type metadata accessor for TurnPairRestatementClassification, &protocol witness table for TurnPairRestatementClassification, type metadata accessor for TurnPairRestatementClassification);

  return v93;
}

uint64_t type metadata accessor for TurnPairRestatementClassification()
{
  result = qword_280FDC898;
  if (!qword_280FDC898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TurnPairRestatementClassification.init(firstTurnId:restatementTurnId:scoredComparisons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 16);
  v11(a4, a1, v8);
  v12 = type metadata accessor for TurnPairRestatementClassification();
  v11(a4 + v12[5], a2, v8);
  *(a4 + v12[6]) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v13 = *(v9 + 72);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_222C96900;
  v16 = v15 + v14;
  v11(v16, a1, v8);
  v11(v16 + v13, a2, v8);
  *(a4 + v12[7]) = v15;
  v17 = *(v10 + 8);
  v17(a2, v8);
  result = (v17)(a1, v8);
  *(a4 + v12[8]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t PartialRepetitionClassifier.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PartialRepetitionClassifier.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TurnPairRestatementClassification.firstTurnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TurnPairRestatementClassification.restatementTurnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TurnPairRestatementClassification() + 20);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TurnPairRestatementClassification.scoredComparisons.getter()
{
  v1 = *(v0 + *(type metadata accessor for TurnPairRestatementClassification() + 24));
}

uint64_t TurnPairRestatementClassification.referencedTurns.getter()
{
  v1 = *(v0 + *(type metadata accessor for TurnPairRestatementClassification() + 28));
}

uint64_t TurnPairRestatementClassification.referencedEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for TurnPairRestatementClassification() + 32));
}

uint64_t sub_222C6A578(uint64_t *a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(result + 24);
    v12 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v10 < *(v8 + 16))
    {
      sub_222C6AD74(v12 + *(v3 + 72) * v10, v7, type metadata accessor for FeaturisedTurn);
      v13 = sub_222B41B30(*&v7[v11]);
      if (v13)
      {
        if (v13 >> 62)
        {
          v14 = sub_222C94C6C();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        result = sub_222C6ADDC(v7, type metadata accessor for FeaturisedTurn);
        if (v14 > 1)
        {
          v15 = 1;
          return v15 & 1;
        }
      }

      else
      {
        result = sub_222C6ADDC(v7, type metadata accessor for FeaturisedTurn);
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v15 = sub_222B781BC(v8);
    return v15 & 1;
  }

  return result;
}

void sub_222C6A7A8()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C6A85C();
    if (v1 <= 0x3F)
    {
      sub_222BCBD34();
      if (v2 <= 0x3F)
      {
        sub_222B85C4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222C6A85C()
{
  if (!qword_280FDB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D027960, &qword_222CA5428);
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7D0);
    }
  }
}

uint64_t sub_222C6A8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C6A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = type metadata accessor for RuleResult();
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  sub_222C6AD74(a1, &v39 - v17, type metadata accessor for FeaturisedTurn);
  sub_222C6AD74(a2, &v18[*(v9 + 56)], type metadata accessor for FeaturisedTurn);
  *&v18[*(v9 + 72)] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v19 = *(*(v41 - 8) + 72);
  v20 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_222C97C40;
  v42 = v21;
  v22 = (v21 + v20);
  *v22 = 0xD00000000000001ELL;
  v22[1] = 0x8000000222CADBB0;
  sub_222B4FC6C(v18, v16, &qword_27D024D88, qword_222C9E460);
  v23 = *(v9 + 56);
  v24 = *&v16[*(v9 + 72)];
  sub_222C6AD74(v16, v13, type metadata accessor for FeaturisedTurn);
  v25 = *(v9 + 56);
  v40 = v23;
  sub_222C6AD74(&v16[v23], &v13[v25], type metadata accessor for FeaturisedTurn);
  v26 = *(v9 + 72);
  v45 = v13;
  *&v13[v26] = v24;
  v27 = *(v24 + 16);

  result = v24 + 32;
  v29 = -v27;
  v30 = -1;
  while (1)
  {
    if (v29 + v30 == -1)
    {
LABEL_5:
      v35 = v43;
      v36 = v41;
      v37 = v42;
      v38 = v40;
      swift_storeEnumTagMultiPayload();
      sub_222C6AD0C(v35, v22 + *(v36 + 48), type metadata accessor for RuleResult);
      sub_222B4FCD4(v45, &qword_27D024D88, qword_222C9E460);
      sub_222C6ADDC(&v16[v38], type metadata accessor for FeaturisedTurn);
      sub_222C6ADDC(v16, type metadata accessor for FeaturisedTurn);
      sub_222B4FCD4(v18, &qword_27D024D88, qword_222C9E460);
      return v37;
    }

    if (++v30 >= *(v24 + 16))
    {
      break;
    }

    v31 = result + 40;
    sub_222B43E3C(result, v46);
    v32 = v47;
    v33 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v34 = (*(v33 + 16))(v32, v33);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    result = v31;
    if (v34)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C6AD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6AD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6ADDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PlusMediaSuggestionStore.readAllNominated()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  result = (*(a2 + 40))(a1, a2);
  v11 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v12 = 0;
    v34 = 0x8000000222CA93E0;
    v35 = 0x8000000222CA9400;
    v27 = MEMORY[0x277D84F90];
    v28 = result;
    while (v12 < *(v11 + 16))
    {
      v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = *(v30 + 72);
      sub_222B79B14(v11 + v33 + v32 * v12, v9);
      v13 = v9;
      v14 = *&v9[*(v31 + 44)];
      if (*(v14 + 16) && (v15 = *(v14 + 40), sub_222C952FC(), sub_222C9452C(), v16 = sub_222C9534C(), v17 = -1 << *(v14 + 32), v18 = v16 & ~v17, ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (*(*(v14 + 48) + v18) > 3u || *(*(v14 + 48) + v18) <= 1u || *(*(v14 + 48) + v18) == 3)
        {
          v20 = sub_222C951FC();

          if (v20)
          {
            goto LABEL_16;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_16:
        v9 = v13;
        sub_222B7D960(v13, v26);
        v21 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C630(0, *(v21 + 16) + 1, 1);
          v21 = v36;
        }

        v11 = v28;
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_222B4C630(v23 > 1, v24 + 1, 1);
          v21 = v36;
        }

        *(v21 + 16) = v24 + 1;
        v27 = v21;
        result = sub_222B7D960(v26, v21 + v33 + v24 * v32);
      }

      else
      {
LABEL_3:
        v9 = v13;
        result = sub_222B7D9D0(v13);
        v11 = v28;
      }

      if (++v12 == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
LABEL_22:

    return v27;
  }

  return result;
}

BOOL isOutgoingCoreDuetPhoneCall(_:)(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_222B41F28(a1[2]);
  if (v4 & 1) == 0 && (v1 == 0xD000000000000011 ? (v6 = 0x8000000222CA8780 == v2) : (v6 = 0), v6 || (v7 = v3, v8 = sub_222C951FC(), v3 = v7, (v8)))
  {
    return v3 == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t isSiriPhoneCall(_:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v2 = sub_222B41D48(v1);
  if (v3)
  {
    if (v2 == 0xD000000000000016 && v3 == 0x8000000222CADBD0)
    {
LABEL_12:
      v5 = 1;
    }

    else
    {
      v5 = sub_222C951FC();
    }

    goto LABEL_13;
  }

  result = sub_222B41EE0(v1);
  if (!result)
  {
LABEL_16:
    result = sub_222B41EF8(v1);
    if (!result)
    {
      v5 = 0;
      return v5 & 1;
    }

    v14 = result;
    v15 = (result + 40);
    v16 = -*(result + 16);
    v17 = -1;
    do
    {
      v5 = v16 + v17 != -1;
      if (v16 + v17 == -1)
      {
        break;
      }

      if (++v17 >= *(v14 + 16))
      {
        goto LABEL_24;
      }

      v18 = v15 + 2;
      v20 = *(v15 - 1);
      v19 = *v15;

      LOBYTE(v20) = sub_222B42DF0();

      v15 = v18;
    }

    while ((v20 & 1) == 0);
LABEL_13:

    return v5 & 1;
  }

  v7 = result;
  v8 = (result + 40);
  v9 = -*(result + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      goto LABEL_16;
    }

    if (++v10 >= *(v7 + 16))
    {
      break;
    }

    v11 = v8 + 2;
    v13 = *(v8 - 1);
    v12 = *v8;

    LOBYTE(v13) = sub_222B42DF0();

    v8 = v11;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_222C6B588(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FeaturisedTurn(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_222C6B674()
{
  type metadata accessor for MessagesContactSuggestionGroundTruthGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A88, qword_222CA60E0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDBB20 = 91;
  unk_280FDBB28 = 0xE100000000000000;
  return result;
}

uint64_t MessagesContactSuggestionGroundTruthGenerator.__allocating_init(suggestionStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222B405A0(a1, v2 + 16);
  return v2;
}

size_t sub_222C6B764(uint64_t a1, uint64_t a2)
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A78, &qword_222CA6010);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v117 = &v108 - v5;
  v122 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v113 = *(v122 - 8);
  v6 = *(v113 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A80, &unk_222CA6018);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v108 - v10;
  v126 = type metadata accessor for ContactSuggestionProvidedClassification();
  v128 = *(v126 - 8);
  v12 = *(v128 + 64);
  v13 = MEMORY[0x28223BE20](v126);
  v112 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v133 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v125 = &v108 - v19;
  v20 = sub_222C9367C();
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v131 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v110 = &v108 - v24;
  v129 = type metadata accessor for FeaturisedTurn(0);
  v25 = *(*(v129 - 1) + 64);
  v26 = MEMORY[0x28223BE20](v129);
  v132 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v115 = &v108 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v108 - v31;
  v33 = *(a1 + 16);
  v130 = v11;
  v119 = v33;
  v123 = a1;
  v109 = v30;
  if (v33)
  {
    v34 = 0;
    v111 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v118 = a1 + v111;
    v35 = *(v30 + 72);
    v116 = MEMORY[0x277D84F90];
    v114 = v35;
    do
    {
      sub_222C6DF04(v118 + v35 * v34, v32, type metadata accessor for FeaturisedTurn);
      v36 = sub_222B41648(*&v32[*(v129 + 6)]);
      if (v36)
      {
        v37 = v36;
        v38 = (v36 + 40);
        v39 = -*(v36 + 16);
        v40 = -1;
        do
        {
          if (v39 + v40 == -1)
          {

            v11 = v130;
            v35 = v114;
            goto LABEL_4;
          }

          if (++v40 >= *(v37 + 16))
          {
            __break(1u);
            goto LABEL_72;
          }

          v41 = v38 + 2;
          v43 = *(v38 - 1);
          v42 = *v38;

          LOBYTE(v43) = sub_222B42DF0();

          v38 = v41;
        }

        while ((v43 & 1) == 0);

        sub_222C6E2F4(v32, v115, type metadata accessor for FeaturisedTurn);
        v44 = v116;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v135 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v44 + 16) + 1, 1);
          v44 = v135;
        }

        v35 = v114;
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_222B4C3D4(v46 > 1, v47 + 1, 1);
          v44 = v135;
        }

        *(v44 + 16) = v47 + 1;
        v116 = v44;
        sub_222C6E2F4(v115, v44 + v111 + v47 * v35, type metadata accessor for FeaturisedTurn);
        v11 = v130;
      }

      else
      {
LABEL_4:
        sub_222C6E35C(v32, type metadata accessor for FeaturisedTurn);
      }

      ++v34;
    }

    while (v34 != v119);
  }

  else
  {
    v116 = MEMORY[0x277D84F90];
  }

  v48 = *(v116 + 16);
  if (v48)
  {
    *&v135 = MEMORY[0x277D84F90];
    v49 = v116;
    sub_222B4C9A8(0, v48, 0);
    v50 = v135;
    v51 = v49 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v52 = *(v109 + 72);
    v53 = (v127 + 16);
    v54 = v110;
    do
    {
      v55 = v132;
      sub_222C6DF04(v51, v132, type metadata accessor for FeaturisedTurn);
      (*v53)(v54, v55, v20);
      sub_222C6E35C(v55, type metadata accessor for FeaturisedTurn);
      *&v135 = v50;
      v57 = *(v50 + 16);
      v56 = *(v50 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_222B4C9A8(v56 > 1, v57 + 1, 1);
        v50 = v135;
      }

      *(v50 + 16) = v57 + 1;
      (*(v127 + 32))(v50 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v57, v54, v20);
      v51 += v52;
      --v48;
    }

    while (v48);

    v11 = v130;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v132 = sub_222B720D8(v50);

  v58 = *(v124 + 16);
  if (v58)
  {
    v59 = v124 + 32;
    v60 = (v128 + 56);
    v61 = (v128 + 48);
    v129 = MEMORY[0x277D84F90];
    v62 = v133;
    do
    {
      sub_222B43E3C(v59, &v135);
      sub_222B405A0(&v135, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v63 = v126;
      v64 = swift_dynamicCast();
      (*v60)(v11, v64 ^ 1u, 1, v63);
      if ((*v61)(v11, 1, v63) == 1)
      {
        sub_222B4FCD4(v11, &qword_27D027A80, &unk_222CA6018);
      }

      else
      {
        sub_222C6E2F4(v11, v125, type metadata accessor for ContactSuggestionProvidedClassification);
        v65 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_222B4A6E4(0, v65[2] + 1, 1, v65);
        }

        v66 = v65;
        v67 = v65[2];
        v129 = v66;
        v68 = v66[3];
        if (v67 >= v68 >> 1)
        {
          v129 = sub_222B4A6E4(v68 > 1, v67 + 1, 1, v129);
        }

        v69 = v128;
        v70 = v129;
        v129[2] = v67 + 1;
        sub_222C6E2F4(v125, v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67, type metadata accessor for ContactSuggestionProvidedClassification);
        v11 = v130;
      }

      v59 += 40;
      --v58;
    }

    while (v58);
  }

  else
  {
    v129 = MEMORY[0x277D84F90];
    v62 = v133;
  }

  v71 = v129;
  v119 = v129[2];
  if (v119)
  {
    v72 = 0;
    v73 = v132;
    v74 = v132 + 56;
    v130 = (v127 + 16);
    v75 = MEMORY[0x277D84F90];
    v34 = v127 + 8;
    v76 = v117;
    while (v72 < v71[2])
    {
      v77 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v125 = *(v128 + 72);
      sub_222C6DF04(v71 + v77 + v125 * v72, v62, type metadata accessor for ContactSuggestionProvidedClassification);
      if (*(v73 + 16))
      {
        v118 = v77;
        v126 = v75;
        v78 = *(v73 + 40);
        sub_222C6DFB4(&qword_280FE02A8, MEMORY[0x277CC95F0]);
        v79 = sub_222C9440C();
        v80 = -1 << *(v73 + 32);
        v81 = v79 & ~v80;
        if ((*(v74 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
        {
          v82 = ~v80;
          v83 = *(v127 + 72);
          v84 = *(v127 + 16);
          while (1)
          {
            v85 = *(v73 + 48) + v83 * v81;
            v86 = v131;
            v84(v131, v85, v20);
            sub_222C6DFB4(&qword_280FE02A0, MEMORY[0x277CC95F0]);
            v87 = sub_222C9447C();
            (*v34)(v86, v20);
            if (v87)
            {
              break;
            }

            v81 = (v81 + 1) & v82;
            v73 = v132;
            if (((*(v74 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          v62 = v133;
          sub_222C6E2F4(v133, v112, type metadata accessor for ContactSuggestionProvidedClassification);
          v75 = v126;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          *&v135 = v75;
          if ((v88 & 1) == 0)
          {
            sub_222B4CD50(0, *(v75 + 16) + 1, 1);
            v75 = v135;
          }

          v76 = v117;
          v73 = v132;
          v89 = v118;
          v91 = *(v75 + 16);
          v90 = *(v75 + 24);
          v92 = v91 + 1;
          if (v91 >= v90 >> 1)
          {
            v126 = v91 + 1;
            sub_222B4CD50(v90 > 1, v91 + 1, 1);
            v92 = v126;
            v75 = v135;
          }

          *(v75 + 16) = v92;
          sub_222C6E2F4(v112, v75 + v89 + v91 * v125, type metadata accessor for ContactSuggestionProvidedClassification);
        }

        else
        {
LABEL_45:
          v62 = v133;
          sub_222C6E35C(v133, type metadata accessor for ContactSuggestionProvidedClassification);
          v76 = v117;
          v75 = v126;
        }

        v71 = v129;
      }

      else
      {
        sub_222C6E35C(v62, type metadata accessor for ContactSuggestionProvidedClassification);
      }

      if (++v72 == v119)
      {
        goto LABEL_53;
      }
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v75 = MEMORY[0x277D84F90];
  v76 = v117;
LABEL_53:

  v93 = *(v75 + 16);
  v126 = v75;
  if (v93)
  {
    v94 = v75 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
    v95 = *(v128 + 72);
    v96 = (v113 + 48);
    v34 = MEMORY[0x277D84F90];
    do
    {
      v97 = v120;
      sub_222C6DF04(v94, v120, type metadata accessor for ContactSuggestionProvidedClassification);
      sub_222C6C744(v97, v123, v124, v76);
      sub_222C6E35C(v97, type metadata accessor for ContactSuggestionProvidedClassification);
      if ((*v96)(v76, 1, v122) == 1)
      {
        sub_222B4FCD4(v76, &qword_27D027A78, &qword_222CA6010);
      }

      else
      {
        sub_222C6E2F4(v76, v121, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_222B4BDF8(0, *(v34 + 16) + 1, 1, v34);
        }

        v99 = *(v34 + 16);
        v98 = *(v34 + 24);
        if (v99 >= v98 >> 1)
        {
          v34 = sub_222B4BDF8(v98 > 1, v99 + 1, 1, v34);
        }

        *(v34 + 16) = v99 + 1;
        sub_222C6E2F4(v121, v34 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v99, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
      }

      v94 += v95;
      --v93;
    }

    while (v93);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_73:
    swift_once();
  }

  v100 = sub_222C9431C();
  __swift_project_value_buffer(v100, qword_280FE2340);

  v101 = v126;

  v102 = sub_222C942FC();
  v103 = sub_222C94A3C();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *&v135 = v105;
    *v104 = 136315650;
    if (qword_280FDBB18 != -1)
    {
      swift_once();
    }

    *(v104 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, &v135);
    *(v104 + 12) = 2048;
    *(v104 + 14) = *(v34 + 16);

    *(v104 + 22) = 2048;
    v106 = *(v101 + 16);

    *(v104 + 24) = v106;

    _os_log_impl(&dword_222B39000, v102, v103, "%s Generated ground truth for %ld/%ld contact suggestions in messages.", v104, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v105);
    MEMORY[0x223DCA8C0](v105, -1, -1);
    MEMORY[0x223DCA8C0](v104, -1, -1);
  }

  else
  {
  }

  return v34;
}

uint64_t sub_222C6C744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a2;
  v69 = a3;
  v76 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v66 - v8;
  v9 = type metadata accessor for EntityPromptClassification();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v67 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v66 - v14;
  v16 = sub_222C9367C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v66 - v23;
  v25 = type metadata accessor for PlusContactSuggestion();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v74 = (&v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for ContactSuggestionProvidedClassification();
  v29 = *(v70 + 20);
  v75 = a1;
  v30 = a1 + v29;
  v31 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  sub_222B4FC6C(v30 + *(v31 + 20), v15, &unk_27D026290, &qword_222C96B40);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    v32 = v4[5];
    v33 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v32);
    (*(v33 + 64))(v20, v32, v33);
    (*(v17 + 8))(v20, v16);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      goto LABEL_4;
    }

    v45 = v74;
    sub_222C6E2F4(v24, v74, type metadata accessor for PlusContactSuggestion);
    v46 = v75;
    v47 = v73;
    sub_222B4FC6C(v75 + *(v70 + 24), v73, &qword_27D025028, &unk_222C96EC0);
    if ((*(v71 + 48))(v47, 1, v72) == 1)
    {
      sub_222B4FCD4(v47, &qword_27D025028, &unk_222C96EC0);
    }

    else
    {
      v48 = v67;
      v49 = sub_222C6E2F4(v47, v67, type metadata accessor for EntityPromptClassification);
      v50 = v48[4];
      v51 = (v45 + *(v25 + 24));
      v53 = *v51;
      v52 = v51[1];
      v77[0] = v53;
      v77[1] = v52;
      MEMORY[0x28223BE20](v49);
      *(&v66 - 2) = v77;
      if (sub_222B42F4C(sub_222B5EEB0, (&v66 - 4), v54))
      {
        sub_222C6CF78(v45, v48, v77);
        sub_222C6E35C(v48, type metadata accessor for EntityPromptClassification);
        v55 = v77[0];
        v56 = v17;
LABEL_18:
        v57 = v76;
        sub_222C9366C();
        v58 = *(v45 + *(v25 + 20));
        v59 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
        (*(v56 + 16))(v57 + v59[6], v45, v16);
        v60 = (v45 + *(v25 + 24));
        v62 = *v60;
        v61 = v60[1];
        v64 = v60[2];
        v63 = v60[3];

        sub_222C6E35C(v45, type metadata accessor for PlusContactSuggestion);
        *(v57 + v59[5]) = v58;
        v65 = (v57 + v59[7]);
        *v65 = v62;
        v65[1] = v61;
        v65[2] = v64;
        v65[3] = v63;
        *(v57 + v59[8]) = v55;
        *(v57 + v59[9]) = 1;
        return (*(*(v59 - 1) + 56))(v57, 0, 1, v59);
      }

      sub_222C6E35C(v48, type metadata accessor for EntityPromptClassification);
    }

    v56 = v17;
    sub_222C6D09C(v46, v45, v68, v69, v77);
    v55 = v77[0];
    goto LABEL_18;
  }

  sub_222B4FCD4(v15, &unk_27D026290, &qword_222C96B40);
  (*(v26 + 56))(v24, 1, 1, v25);
LABEL_4:
  sub_222B4FCD4(v24, &qword_27D025A88, &unk_222C9A0C0);
  v34 = sub_222C9360C();
  v36 = v35;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v37 = sub_222C9431C();
  __swift_project_value_buffer(v37, qword_280FE2340);

  v38 = sub_222C942FC();
  v39 = sub_222C94A4C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v77[0] = v41;
    *v40 = 136315394;
    if (qword_280FDBB18 != -1)
    {
      swift_once();
    }

    *(v40 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, v77);
    *(v40 + 12) = 2080;
    v42 = sub_222B437C0(v34, v36, v77);

    *(v40 + 14) = v42;
    _os_log_impl(&dword_222B39000, v38, v39, "%s Contact suggestion with runtimeId=%s is missing from the suggestion store. Skipping ground truth generation", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v41, -1, -1);
    MEMORY[0x223DCA8C0](v40, -1, -1);
  }

  else
  {
  }

  v43 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  return (*(*(v43 - 8) + 56))(v76, 1, 1, v43);
}

uint64_t sub_222C6CF78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  v6 = *(a2[4] + 16);
  v7 = type metadata accessor for PlusContactSuggestion();
  v8 = a2[6];
  if (v8)
  {
    v9 = (a1 + *(v7 + 24));
    result = a2[5];
    if (result == *v9 && v8 == v9[1])
    {
      v12 = 0;
    }

    else
    {
      result = sub_222C951FC();
      v12 = (result & 1) == 0;
    }
  }

  else
  {
    sub_222C3258C(a2, &v14);
    if (v14)
    {

      v12 = 2;
    }

    else
    {
      v13 = sub_222C951FC();

      if (v13)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }
    }
  }

  *a3 = (v6 < 2) | (v12 << 8);
  return result;
}

uint64_t sub_222C6D09C@<X0>(uint64_t a1@<X0>, unsigned int (**a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X8>)
{
  v99 = a4;
  v107 = a3;
  v96 = a2;
  v101 = a5;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v6);
  v102 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v104 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v89 - v16;
  v18 = sub_222C9367C();
  v19 = *(v18 - 8);
  v20 = v19;
  v21 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v89 - v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v27 = *(v19 + 72);
  v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v29 = swift_allocObject();
  v30 = *(v20 + 16);
  v30(v29 + v28, a1, v18);
  v30(v24, v29 + v28, v18);
  swift_setDeallocating();
  v31 = *(v20 + 8);
  v31(v29 + v28, v18);
  swift_deallocClassInstance();
  v32 = *(v20 + 32);
  v32(v17, v24, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  if ((*(v20 + 48))(v17, 1, v18) == 1)
  {
    result = sub_222B4FCD4(v17, &unk_27D026290, &qword_222C96B40);
LABEL_5:
    *v101 = 3;
    return result;
  }

  v34 = (v32)(v26, v17, v18);
  MEMORY[0x28223BE20](v34);
  *(&v89 - 2) = v26;
  v35 = v107;
  v36 = sub_222C6B588(sub_222B617A8, (&v89 - 4), v107);
  if (v37)
  {
    result = (v31)(v26, v18);
    goto LABEL_5;
  }

  v100 = *(v35 + 16);
  if (v100 < v36)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_48;
  }

  if (v36 < 0)
  {
    goto LABEL_67;
  }

  v98 = 0;
  v97 = v36;
  v91 = v26;
  v92 = v18;
  v38 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v39 = *(v99 + 16);
  v93 = v20 + 8;
  v90 = v31;
  v95 = v38;
  if (v39)
  {
    v40 = v99 + 32;

    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B43E3C(v40, &v112);
      sub_222B405A0(&v112, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      if (swift_dynamicCast())
      {
        v42 = v110;
        if (v110)
        {
          v43 = v109;
          v45 = *(&v110 + 1);
          v44 = v111;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_222B4A47C(0, *(v41 + 2) + 1, 1, v41);
          }

          v47 = *(v41 + 2);
          v46 = *(v41 + 3);
          if (v47 >= v46 >> 1)
          {
            v41 = sub_222B4A47C((v46 > 1), v47 + 1, 1, v41);
          }

          *(v41 + 2) = v47 + 1;
          v48 = &v41[40 * v47];
          v48[32] = v43 & 1;
          *(v48 + 5) = *(&v43 + 1);
          *(v48 + 6) = v42;
          *(v48 + 7) = v45;
          *(v48 + 8) = v44;
          goto LABEL_12;
        }
      }

      else
      {
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
      }

      sub_222BDE820(v109, *(&v109 + 1), 0);
LABEL_12:
      v40 += 40;
      if (!--v39)
      {
        goto LABEL_21;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_21:
  v95 += v107;
  v49 = v98;
  v50 = sub_222C6E070(v41);
  v89 = v49;

  KeyPath = swift_getKeyPath();
  v99 = v105 + 56;
  v98 = (v105 + 48);
  swift_bridgeObjectRetain_n();
  v94 = KeyPath;
  swift_retain_n();
  v52 = v97;
  while (1)
  {
LABEL_29:
    v62 = v100;
    if (v52 == v100)
    {
      v63 = 1;
      v52 = v100;
      v64 = v106;
      v66 = v103;
      v65 = v104;
    }

    else
    {
      v64 = v106;
      v66 = v103;
      v65 = v104;
      if (v52 < v97 || v52 >= v100)
      {
        goto LABEL_65;
      }

      sub_222C6DF04(v95 + *(v105 + 72) * v52, v103, type metadata accessor for FeaturisedTurn);
      v63 = 0;
      ++v52;
    }

    (*v99)(v66, v63, 1, v64);
    sub_222B5EC84(v66, v65);
    if ((*v98)(v65, 1, v64) == 1)
    {
      break;
    }

    v67 = v102;
    sub_222C6E2F4(v65, v102, type metadata accessor for FeaturisedTurn);
    v68 = *(v67 + *(v64 + 28));

    sub_222C6E35C(v67, type metadata accessor for FeaturisedTurn);

    v69 = v68;
    if (v68)
    {
      v53 = *(v68 + 16);
      if (v53)
      {
        v54 = 0;
        v55 = (v68 + 64);
        while (v54 < v53)
        {
          if (*(v50 + 16))
          {
            v56 = *(v55 - 1);
            v57 = *v55;
            v58 = *(v55 - 3);
            v59 = *(v55 - 2);
            v60 = *(v55 - 4);

            sub_222B8C9DC(v60, v58);
            if (v61)
            {

              v50 = v107;
              swift_unknownObjectRelease();

              v64 = v106;
              v62 = v100;
              goto LABEL_38;
            }
          }

          ++v54;
          v53 = *(v69 + 16);
          v55 += 5;
          if (v54 == v53)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }
  }

  swift_unknownObjectRelease();

  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
LABEL_38:

  if (v97 != v62)
  {
    if (v97 >= v62)
    {
      __break(1u);
      goto LABEL_69;
    }

    v70 = *(v95 + *(v105 + 72) * v97 + *(v64 + 24));

    v72 = sub_222B41648(v71);

    if (v72)
    {
      *&v112 = 0xD000000000000029;
      *(&v112 + 1) = 0x8000000222CA8620;
      MEMORY[0x28223BE20](v73);
      *(&v89 - 2) = &v112;
      v74 = sub_222B42F4C(sub_222B5EBA4, (&v89 - 4), v72);

      if (v74)
      {
        if (!v58)
        {

          *v101 = 5;
          v82 = v91;
          v83 = v92;
          return v90(v82, v83);
        }

        v76 = sub_222B41660(v75);
        sub_222B5EE44(v60, v58);

        v59 = v92;
        if (v76)
        {
          MEMORY[0x28223BE20](v77);
          *(&v89 - 2) = v96;
          v78 = sub_222B430A8(sub_222C6E2D4, (&v89 - 4), v76);

          if (v78)
          {
            v79 = 4;
          }

          else
          {
            v79 = 7;
          }
        }

        else
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v84 = sub_222C9431C();
          __swift_project_value_buffer(v84, qword_280FE2340);
          v85 = sub_222C942FC();
          v86 = sub_222C94A4C();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v112 = v88;
            *v87 = 136315138;
            if (qword_280FDBB18 != -1)
            {
              swift_once();
            }

            *(v87 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, &v112);
            _os_log_impl(&dword_222B39000, v85, v86, "%s Failed to find contact references for send message event. Send message event features may be incomplete.", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v88);
            MEMORY[0x223DCA8C0](v88, -1, -1);
            MEMORY[0x223DCA8C0](v87, -1, -1);
          }

          v79 = 3;
        }

        goto LABEL_52;
      }
    }
  }

  sub_222B5EE44(v60, v58);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_68;
  }

LABEL_48:
  v80 = sub_222C9431C();
  __swift_project_value_buffer(v80, qword_280FE2340);
  v56 = sub_222C942FC();
  LOBYTE(v64) = sub_222C94A3C();
  v81 = os_log_type_enabled(v56, v64);
  v59 = v92;
  if (v81)
  {
    v50 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v112 = v58;
    *v50 = 136315138;
    if (qword_280FDBB18 != -1)
    {
LABEL_69:
      swift_once();
    }

    *(v50 + 4) = sub_222B437C0(qword_280FDBB20, unk_280FDBB28, &v112);
    _os_log_impl(&dword_222B39000, v56, v64, "%s Suggestion was used in messages domain without a prompt but not for a send message task. Marking as unknown.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x223DCA8C0](v58, -1, -1);
    MEMORY[0x223DCA8C0](v50, -1, -1);
  }

  v79 = 2;
LABEL_52:
  *v101 = v79;
  v82 = v91;
  v83 = v59;
  return v90(v82, v83);
}

uint64_t sub_222C6DE0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PlusContactSuggestion();
  if (!v4)
  {
    return 0;
  }

  v6 = (a2 + *(v5 + 24));
  if (v3 == *v6 && v4 == v6[1])
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t MessagesContactSuggestionGroundTruthGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C6DF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6DFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C6E070(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 64); ; i += 5)
  {
    v32 = *(i - 32);
    v6 = *(i - 3);
    v5 = *(i - 2);
    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();

    v10 = sub_222B8C9DC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_222B91F84(v13, 1);
      v1 = v33;
      v15 = sub_222B8C9DC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v30 = v7;

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v31 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_222B4A47C(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_222B4A47C((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v17 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[40 * v21];
      v4[32] = v32;
      *(v4 + 5) = v6;
      *(v4 + 6) = v5;
      *(v4 + 7) = v8;
      *(v4 + 8) = v30;
      v2 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C20, &qword_222C969F8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_222C97C40;
      *(v24 + 32) = v32;
      *(v24 + 40) = v6;
      *(v24 + 48) = v5;
      *(v24 + 56) = v8;
      *(v24 + 64) = v7;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C6E2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C6E35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C6E3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_222B4C8C8(0, v1, 0);
  v2 = v30;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_222C94C2C();
  v7 = result;
  v8 = 0;
  v29 = *(v3 + 36);
  v24 = v3 + 72;
  v25 = v1;
  v26 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(v3 + 48) + 32 * v7);
    v12 = v11[1];
    v28 = *v11;
    v27 = *(*(v3 + 56) + 4 * v7);
    v13 = v3;
    v15 = *(v30 + 16);
    v14 = *(v30 + 24);

    if (v15 >= v14 >> 1)
    {
      result = sub_222B4C8C8((v14 > 1), v15 + 1, 1);
    }

    *(v30 + 16) = v15 + 1;
    v16 = v30 + 24 * v15;
    *(v16 + 32) = v28;
    *(v16 + 40) = v12;
    *(v16 + 48) = v27;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v26;
    v17 = *(v26 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v13;
    if (v29 != *(v13 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (v24 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_222B7D9C4(v7, v29, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_222B7D9C4(v7, v29, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_222C6E634(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_222B4C8E8(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_222C94C2C();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v9;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(v3 + 48) + 32 * v7);
    v13 = v12[1];
    v32 = *v12;
    v14 = v12[3];
    v15 = v3;
    v16 = *(*(v3 + 56) + 8 * v7);

    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_222B4C8E8((v17 > 1), v18 + 1, 1);
    }

    *(v33 + 16) = v18 + 1;
    v19 = (v33 + 24 * v18);
    v19[4] = v32;
    v19[5] = v13;
    v19[6] = v16;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v15;
    v4 = v30;
    v20 = *(v30 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v27 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_222B7D9C4(v7, v29, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_222B7D9C4(v7, v29, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_222C6E8D8(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + (v12 | (v11 << 6)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C6E9C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_222B6AD70(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C6EAA0()
{
  v0 = sub_222C1C1BC();
  v1 = sub_222C6E3D0(v0);

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FABC(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EB5C()
{
  v0 = sub_222C1C394();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EC18()
{
  v0 = sub_222C1C7A0();
  v1 = sub_222C6E3D0(v0);

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FABC(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6ECD4()
{
  v0 = sub_222C1C5D4();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6ED90()
{
  v0 = sub_222C1CC20();
  v1 = sub_222C6E3D0(v0);

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FABC(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EE4C()
{
  v0 = sub_222C1CB28();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EF14()
{
  v0 = sub_222C1CF5C();
  v1 = sub_222C6E3D0(v0);

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FABC(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6EFD0()
{
  v0 = sub_222C1D068();
  v1 = sub_222C6E634(v0);

  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B10, &qword_222C9A440);
    v2 = sub_222C94F8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_222C6FE38(v1, 1, &v4);
  return v4;
}

uint64_t sub_222C6F08C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2;
  v10 = type metadata accessor for ThinContactGroundTruth();
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v10);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_222C9367C();
  v88 = *(v86 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v85 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v76 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v30 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  if (v9 == 8)
  {

    return sub_222BB8CF4(a1, a5);
  }

  else
  {
    v82 = v33;
    (*(v32 + 16))(&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E20, &unk_222C96BE0);
    if (swift_dynamicCast())
    {
      sub_222B79B78(&v91, &v94);
      v35 = v95;
      v36 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, v95);
      v37 = (*(v36 + 24))(v35, v36);
      v38 = type metadata accessor for PlusContactSuggestion();
      v39 = (a1 + v38[6]);
      v40 = *(v37 + 16);
      v81 = a5;
      if (v40 && (v41 = sub_222B8CB9C(*v39, v39[1], v39[2], v39[3]), (v42 & 1) != 0))
      {
        v78 = *(*(v37 + 56) + 8 * v41);
      }

      else
      {
        v78 = MEMORY[0x277D84FA0];
      }

      v43 = v95;
      v44 = v97;
      v45 = __swift_project_boxed_opaque_existential_1(&v94, v95);
      *(&v92 + 1) = v43;
      *&v93 = v44;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v91);
      (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, v45, v43);
      v47 = v39[1];
      v49 = v39[2];
      v48 = v39[3];
      v79 = *v39;
      v90[0] = v79;
      v90[1] = v47;
      v90[2] = v49;
      v90[3] = v48;

      v80 = v47;

      v50 = v82;
      ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)(&v91, v90, v82);
      v77 = *(a1 + v38[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AA0, &qword_222CA6168);
      v51 = *(v21 + 72);
      v52 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v53 = swift_allocObject();
      sub_222B4FC6C(v50, v53 + v52, &qword_27D025AA8, &qword_222C9A1E0);
      sub_222B4FC6C(v53 + v52, v28, &qword_27D025AA8, &qword_222C9A1E0);
      sub_222C6FA4C(v28, v25);
      v54 = v84;
      if ((*(v84 + 48))(v25, 1, v10) == 1)
      {
        sub_222B4FCD4(v25, &qword_27D025AA8, &qword_222C9A1E0);
        v55 = MEMORY[0x277D84F90];
        v56 = v81;
        v57 = v88;
      }

      else
      {
        sub_222BFC5DC(v25, v83);
        v55 = MEMORY[0x277D84F90];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = sub_222B4A984(0, v55[2] + 1, 1, v55);
        }

        v60 = v55[2];
        v59 = v55[3];
        v56 = v81;
        if (v60 >= v59 >> 1)
        {
          v55 = sub_222B4A984(v59 > 1, v60 + 1, 1, v55);
        }

        v55[2] = v60 + 1;
        sub_222BFC5DC(v83, v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v60);
      }

      swift_setDeallocating();
      sub_222B4FCD4(v53 + v52, &qword_27D025AA8, &qword_222C9A1E0);
      swift_deallocClassInstance();
      *&v91 = v77;

      sub_222B49604(v55);
      v84 = v91;
      v61 = v89;
      v62 = v86;
      (*(v57 + 56))(v89, 1, 1, v86);
      v63 = *(a1 + v38[9]);

      v83 = sub_222C6E8D8(v78, v63, sub_222B6A358);
      v64 = v85;
      sub_222B4FC6C(v61, v85, &unk_27D026290, &qword_222C96B40);
      v65 = *(v57 + 48);
      if (v65(v64, 1, v62) == 1)
      {
        v66 = *(v57 + 16);
        v66(v87, a1, v62);
        if (v65(v64, 1, v62) != 1)
        {
          sub_222B4FCD4(v64, &unk_27D026290, &qword_222C96B40);
        }

        v57 = v88;
        v67 = v87;
      }

      else
      {
        v68 = v64;
        v67 = v87;
        (*(v57 + 32))(v87, v68, v62);
        v66 = *(v57 + 16);
      }

      v69 = *(a1 + v38[5]);
      v70 = *(a1 + v38[8]);
      v71 = *(a1 + v38[10]);
      v72 = *(a1 + v38[11]);
      v66(v56, v67, v62);
      *(v56 + v38[5]) = v69;
      v73 = (v56 + v38[6]);
      v74 = v80;
      *v73 = v79;
      v73[1] = v74;
      v73[2] = 0;
      v73[3] = 0;
      swift_retain_n();

      *(v56 + v38[7]) = sub_222C17488(50, v84);
      *(v56 + v38[8]) = v70;
      *(v56 + v38[9]) = v83;
      *(v56 + v38[10]) = v71;
      v75 = sub_222C17748(0x32uLL, v72);

      (*(v57 + 8))(v67, v62);
      sub_222B4FCD4(v89, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v82, &qword_27D025AA8, &qword_222C9A1E0);
      *(v56 + v38[11]) = v75;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v94);
    }

    else
    {
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      sub_222B4FCD4(&v91, &qword_27D027728, &qword_222CA6160);
      return sub_222BB8CF4(a1, a5);
    }
  }
}

uint64_t type metadata accessor for ContactSuggestionCandidateProcessor()
{
  result = qword_27D027A90;
  if (!qword_27D027A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C6FA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222C6FABC(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_222B8C9DC(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_222B8F580(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_222B8C9DC(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_222C9526C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_222B93754();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD00000000000001BLL, 0x8000000222CADD20);
    sub_222C94ECC();
    MEMORY[0x223DC9330](39, 0xE100000000000000);
    sub_222C94F2C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_222B8C9DC(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_222B8F580(v32, 1);
        v33 = *a3;
        v28 = sub_222B8C9DC(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_222C6FE38(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_222B8C9DC(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_222B8F820(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_222B8C9DC(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_222C9526C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_222B938BC();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD00000000000001BLL, 0x8000000222CADD20);
    sub_222C94ECC();
    MEMORY[0x223DC9330](39, 0xE100000000000000);
    sub_222C94F2C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = sub_222B8C9DC(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_222B8F820(v32, 1);
        v33 = *a3;
        v28 = sub_222B8C9DC(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v8;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_222C701FC(uint64_t a1, uint64_t a2, void (*a3)(char *, void))
{
  v9 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      a3(&v8, v6);
      --v3;
    }

    while (v3);
    return v9;
  }

  return a2;
}

uint64_t sub_222C70264()
{
  type metadata accessor for PLUSOfflineLogHelpers();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AB8, &qword_222CA61D8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027AA8 = 91;
  unk_27D027AB0 = 0xE100000000000000;
  return result;
}

uint64_t PLUSOfflineLogHelpers.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t PLUSOfflineLogHelpers.init(logTarget:)(__int128 *a1)
{
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v1 + 16) = v3;
  return v1;
}

void sub_222C703C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_222C3DB84(a1, 60.0, 30.0);
  if (v11)
  {
    v12 = v11;
    sub_222B5551C(a2, v10);
    v13 = sub_222C9367C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
      v15 = 0;
    }

    else
    {
      v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v21 = sub_222C9361C();
      v15 = [v20 initWithNSUUID_];

      (*(v14 + 8))(v10, v13);
    }

    [v12 setOriginalPlusId_];

    v22 = *(v3 + 16);
    sub_222BA0FE0(v12, a3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v16 = sub_222C9431C();
    __swift_project_value_buffer(v16, qword_280FE2340);
    v24 = sub_222C942FC();
    v17 = sub_222C94A3C();
    if (os_log_type_enabled(v24, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222B39000, v24, v17, "Skipping phone call metadata logging - No applicable metadata found.", v18, 2u);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    v19 = v24;
  }
}

void sub_222C7065C(uint64_t a1, uint64_t a2, int a3)
{
  v59 = a3;
  v57 = type metadata accessor for PlusContactSuggestion();
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = sub_222C9367C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  MEMORY[0x28223BE20](v26);
  v56 = &v51 - v27;
  v28 = sub_222C2E5DC(a1, a2);
  if (v28)
  {
    v52 = v28;
    v55 = v7;
    v29 = *(v16 + 16);
    v53 = a2;
    v29(v25);
    v54 = a1;
    (v29)(v22, a1, v15);
    (v29)(v19, v25, v15);
    sub_222C9360C();
    sub_222C42B54(v19, v11);
    v30 = *(v16 + 8);
    v30(v22, v15);
    v30(v25, v15);
    v31 = *(v16 + 48);
    if (v31(v11, 1, v15))
    {
      sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
      v32 = 1;
    }

    else
    {
      (*(v16 + 32))(v14, v11, v15);
      v32 = 0;
    }

    (*(v16 + 56))(v14, v32, 1, v15);
    v33 = v31(v14, 1, v15);
    v7 = v55;
    v34 = v53;
    if (v33 != 1)
    {
      v44 = v56;
      (*(v16 + 32))(v56, v14, v15);
      v45 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v46 = sub_222C9361C();
      v47 = [v45 initWithNSUUID_];

      v48 = v52;
      [v52 setSuggestionId:v47];

      sub_222C2168C(*(v54 + *(v57 + 28)));
      sub_222C72AD8();
      v49 = sub_222C9470C();

      [v48 setContributingGroundTruths:v49];

      v50 = *(v58 + 16);
      sub_222BA0FF4(v48, v34, v59 & 1);

      v30(v44, v15);
      return;
    }

    sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
    a1 = v54;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v35 = sub_222C9431C();
  __swift_project_value_buffer(v35, qword_280FE2340);
  sub_222C72B24(a1, v7, type metadata accessor for PlusContactSuggestion);
  v36 = sub_222C942FC();
  v37 = sub_222C94A4C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v60 = v39;
    *v38 = 136315138;
    sub_222B9E5D0();
    v40 = sub_222C9517C();
    v42 = v41;
    sub_222C72BF4(v7, type metadata accessor for PlusContactSuggestion);
    v43 = sub_222B437C0(v40, v42, &v60);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_222B39000, v36, v37, "Failed to convert suggestion %s to a SELF message", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x223DCA8C0](v39, -1, -1);
    MEMORY[0x223DCA8C0](v38, -1, -1);
  }

  else
  {

    sub_222C72BF4(v7, type metadata accessor for PlusContactSuggestion);
  }
}

void sub_222C70C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D59CE8]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D59CF8]) init];
    if (v13)
    {
      v18 = v13;
      [v12 setNumberOfConversationsReviewed_];
      [v12 setNumberOfGroundTruthsGenerated_];
      [v12 setNumberOfContactSuggestionsGenerated_];
      [v12 setNumberOfContactSuggestionsUpdated_];
      [v18 setEnded:v12];
      v14 = *(v5 + 16);
      sub_222BA1AE0(v18, a5);

      goto LABEL_9;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v15 = sub_222C9431C();
  __swift_project_value_buffer(v15, qword_280FE2340);
  v18 = sub_222C942FC();
  v16 = sub_222C94A4C();
  if (os_log_type_enabled(v18, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_222B39000, v18, v16, "Failed to create SELF message templates", v17, 2u);
    MEMORY[0x223DCA8C0](v17, -1, -1);
  }

LABEL_9:
}

void sub_222C70E68(uint64_t a1, uint64_t a2, Class *a3, SEL *a4, SEL *a5)
{
  v10 = [objc_allocWithZone(*a3) init];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277D59CF8]) init];
    if (v12)
    {
      v17 = v12;
      [v11 *a4];
      [v17 *a5];
      v13 = *(v5 + 16);
      sub_222BA1AE0(v17, a2);

      goto LABEL_9;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v14 = sub_222C9431C();
  __swift_project_value_buffer(v14, qword_280FE2340);
  v17 = sub_222C942FC();
  v15 = sub_222C94A4C();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_222B39000, v17, v15, "Failed to create SELF message templates", v16, 2u);
    MEMORY[0x223DCA8C0](v16, -1, -1);
  }

LABEL_9:
}

void sub_222C70FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v174 = a4;
  v188 = a2;
  v171 = type metadata accessor for MediaFeedbackGroundTruth();
  v8 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v168 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v170 = &v166 - v11;
  MEMORY[0x28223BE20](v12);
  v183 = &v166 - v13;
  v175 = type metadata accessor for MediaGroundTruth();
  v14 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v169 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v172 = &v166 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v166 - v19);
  v182 = type metadata accessor for ContactPromptGroundTruth();
  v21 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v176 = &v166 - v25;
  MEMORY[0x28223BE20](v26);
  v187 = &v166 - v27;
  v186 = type metadata accessor for MessagesGroundTruth();
  v28 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v173 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v189 = &v166 - v31;
  MEMORY[0x28223BE20](v32);
  v185 = &v166 - v33;
  v192 = type metadata accessor for PhoneCallGroundTruth();
  v34 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v179 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v166 - v37;
  MEMORY[0x28223BE20](v39);
  v191 = &v166 - v40;
  v181 = sub_222C9367C();
  v41 = *(v181 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v181);
  v45 = &v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a3 + 16);
  if (v46)
  {
    v180 = a5;
    v47 = v181;
    v48 = (*(v41 + 48))(v188, 1, v181, v43);
    v50 = &loc_222C95000;
    v184 = v23;
    if (v48 == 1)
    {
      *&v178 = a3;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v51 = sub_222C9431C();
      __swift_project_value_buffer(v51, qword_280FE2340);
      (*(v41 + 16))(v45, a1, v47);
      v52 = sub_222C942FC();
      v53 = sub_222C94A4C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v198 = v177;
        *v54 = 136315138;
        sub_222B9E5D0();
        v167 = sub_222C9517C();
        v56 = v55;
        (*(v41 + 8))(v45, v47);
        v57 = sub_222B437C0(v167, v56, &v198);

        *(v54 + 4) = v57;
        _os_log_impl(&dword_222B39000, v52, v53, "Failed to extract original PLUS id from conversation id=%s. Emitting ground truth SELF logs with null originalPlusId..", v54, 0xCu);
        v58 = v177;
        __swift_destroy_boxed_opaque_existential_0Tm(v177);
        MEMORY[0x223DCA8C0](v58, -1, -1);
        v59 = v54;
        v23 = v184;
        MEMORY[0x223DCA8C0](v59, -1, -1);

        v50 = &loc_222C95000;
        a3 = v178;
      }

      else
      {

        (*(v41 + 8))(v45, v47);
        a3 = v178;
        v50 = &loc_222C95000;
      }
    }

    v60 = a3 + 32;
    *&v49 = v50[508];
    v178 = v49;
    v61 = v180;
    v177 = v20;
    do
    {
      sub_222B43E3C(v60, &v198);
      sub_222B43E3C(&v198, &v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      v67 = v191;
      if (swift_dynamicCast())
      {
        sub_222C72B8C(v67, v38, type metadata accessor for PhoneCallGroundTruth);
        v62 = sub_222C2EB9C(v38);
        if (v62)
        {
          v63 = *(v190 + 16);
          v64 = v62;
          sub_222BA1210(v62, v188);
        }

        else
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v82 = sub_222C9431C();
          __swift_project_value_buffer(v82, qword_280FE2340);
          v83 = v179;
          sub_222C72B24(v38, v179, type metadata accessor for PhoneCallGroundTruth);
          v84 = sub_222C942FC();
          v85 = sub_222C94A4C();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = v83;
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v194[0] = v88;
            *v87 = v178;
            sub_222B9E5D0();
            v89 = sub_222C9517C();
            v91 = v90;
            sub_222C72BF4(v86, type metadata accessor for PhoneCallGroundTruth);
            v92 = sub_222B437C0(v89, v91, v194);
            v61 = v180;

            *(v87 + 4) = v92;
            _os_log_impl(&dword_222B39000, v84, v85, "Failed to convert ground truth record %s to a SELF message", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v88);
            v93 = v88;
            v20 = v177;
            MEMORY[0x223DCA8C0](v93, -1, -1);
            MEMORY[0x223DCA8C0](v87, -1, -1);
          }

          else
          {

            sub_222C72BF4(v83, type metadata accessor for PhoneCallGroundTruth);
          }

          v23 = v184;
        }

        v65 = type metadata accessor for PhoneCallGroundTruth;
        v66 = v38;
      }

      else
      {
        v68 = v185;
        v69 = swift_dynamicCast();
        v70 = v187;
        if (v69)
        {
          v71 = v189;
          sub_222C72B8C(v68, v189, type metadata accessor for MessagesGroundTruth);
          v72 = sub_222C2EDDC(v71);
          if (v72)
          {
            v73 = *(v190 + 16);
            v74 = v72;
            sub_222BA1210(v72, v188);
          }

          else
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v98 = sub_222C9431C();
            __swift_project_value_buffer(v98, qword_280FE2340);
            v99 = v173;
            sub_222C72B24(v189, v173, type metadata accessor for MessagesGroundTruth);
            v100 = sub_222C942FC();
            v101 = sub_222C94A4C();
            if (os_log_type_enabled(v100, v101))
            {
              v102 = v99;
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v194[0] = v104;
              *v103 = v178;
              sub_222B9E5D0();
              v105 = sub_222C9517C();
              v107 = v106;
              sub_222C72BF4(v102, type metadata accessor for MessagesGroundTruth);
              v108 = sub_222B437C0(v105, v107, v194);
              v20 = v177;

              *(v103 + 4) = v108;
              _os_log_impl(&dword_222B39000, v100, v101, "Failed to convert ground truth record %s to a SELF message", v103, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v104);
              v109 = v104;
              v61 = v180;
              MEMORY[0x223DCA8C0](v109, -1, -1);
              MEMORY[0x223DCA8C0](v103, -1, -1);
            }

            else
            {

              sub_222C72BF4(v99, type metadata accessor for MessagesGroundTruth);
            }

            v23 = v184;
          }

          v65 = type metadata accessor for MessagesGroundTruth;
          v66 = v189;
        }

        else
        {
          v75 = swift_dynamicCast();
          v76 = v183;
          if (!v75)
          {
            if (swift_dynamicCast())
            {
              v94 = v172;
              sub_222C72B8C(v20, v172, type metadata accessor for MediaGroundTruth);
              v95 = sub_222C2F018(v94);
              if (v95)
              {
                v96 = *(v190 + 16);
                v97 = v95;
                sub_222BA1588(v95, v61, v94 + *(v175 + 36));
              }

              else
              {
                if (qword_280FDFE78 != -1)
                {
                  swift_once();
                }

                v141 = sub_222C9431C();
                __swift_project_value_buffer(v141, qword_280FE2340);
                v142 = v169;
                sub_222C72B24(v94, v169, type metadata accessor for MediaGroundTruth);
                v143 = sub_222C942FC();
                v144 = sub_222C94A4C();
                if (os_log_type_enabled(v143, v144))
                {
                  v145 = v142;
                  v146 = swift_slowAlloc();
                  v147 = swift_slowAlloc();
                  v194[0] = v147;
                  *v146 = v178;
                  sub_222B9E5D0();
                  v148 = sub_222C9517C();
                  v150 = v149;
                  sub_222C72BF4(v145, type metadata accessor for MediaGroundTruth);
                  v151 = v148;
                  v20 = v177;
                  v152 = sub_222B437C0(v151, v150, v194);

                  *(v146 + 4) = v152;
                  _os_log_impl(&dword_222B39000, v143, v144, "Failed to convert ground truth record %s to a SELF message", v146, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v147);
                  v153 = v147;
                  v61 = v180;
                  MEMORY[0x223DCA8C0](v153, -1, -1);
                  MEMORY[0x223DCA8C0](v146, -1, -1);
                }

                else
                {

                  sub_222C72BF4(v142, type metadata accessor for MediaGroundTruth);
                }

                v94 = v172;
              }

              v113 = type metadata accessor for MediaGroundTruth;
              goto LABEL_62;
            }

            if (swift_dynamicCast())
            {
              v94 = v170;
              sub_222C72B8C(v76, v170, type metadata accessor for MediaFeedbackGroundTruth);
              v110 = sub_222C2F26C(v94);
              if (v110)
              {
                v111 = *(v190 + 16);
                v112 = v110;
                sub_222BA1588(v110, v61, v94 + *(v171 + 32));

                v113 = type metadata accessor for MediaFeedbackGroundTruth;
              }

              else
              {
                if (qword_280FDFE78 != -1)
                {
                  swift_once();
                }

                v155 = sub_222C9431C();
                __swift_project_value_buffer(v155, qword_280FE2340);
                v156 = v168;
                sub_222C72B24(v94, v168, type metadata accessor for MediaFeedbackGroundTruth);
                v157 = sub_222C942FC();
                v158 = sub_222C94A4C();
                if (os_log_type_enabled(v157, v158))
                {
                  v159 = v156;
                  v160 = swift_slowAlloc();
                  v167 = swift_slowAlloc();
                  v194[0] = v167;
                  *v160 = v178;
                  sub_222B9E5D0();
                  v161 = sub_222C9517C();
                  v163 = v162;
                  sub_222C72BF4(v159, type metadata accessor for MediaFeedbackGroundTruth);
                  v164 = sub_222B437C0(v161, v163, v194);

                  *(v160 + 4) = v164;
                  _os_log_impl(&dword_222B39000, v157, v158, "Failed to convert ground truth record %s to a SELF message", v160, 0xCu);
                  v165 = v167;
                  __swift_destroy_boxed_opaque_existential_0Tm(v167);
                  v61 = v180;
                  MEMORY[0x223DCA8C0](v165, -1, -1);
                  MEMORY[0x223DCA8C0](v160, -1, -1);
                }

                else
                {

                  sub_222C72BF4(v156, type metadata accessor for MediaFeedbackGroundTruth);
                }

                v94 = v170;
                v113 = type metadata accessor for MediaFeedbackGroundTruth;
              }

LABEL_62:
              sub_222C72BF4(v94, v113);
LABEL_63:
              v154 = &v198;
            }

            else
            {
              if (qword_280FDFE78 != -1)
              {
                swift_once();
              }

              v127 = sub_222C9431C();
              __swift_project_value_buffer(v127, qword_280FE2340);
              sub_222B43E3C(&v198, v194);
              v128 = sub_222C942FC();
              v129 = sub_222C94A4C();
              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                v193 = v131;
                *v130 = v178;
                v132 = v195;
                v133 = v196;
                __swift_project_boxed_opaque_existential_1(v194, v195);
                v134 = *(v133 + 40);
                v135 = v133;
                v20 = v177;
                v136 = v134(v132, v135);
                v138 = v137;
                __swift_destroy_boxed_opaque_existential_0Tm(v194);
                v139 = sub_222B437C0(v136, v138, &v193);

                *(v130 + 4) = v139;
                _os_log_impl(&dword_222B39000, v128, v129, "Skipping logging unknown ground truth type to SELF. Type=%s", v130, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v131);
                v140 = v131;
                v61 = v180;
                MEMORY[0x223DCA8C0](v140, -1, -1);
                MEMORY[0x223DCA8C0](v130, -1, -1);

                goto LABEL_63;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v198);
              v154 = v194;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v154);
            v23 = v184;
            goto LABEL_13;
          }

          v77 = v176;
          sub_222C72B8C(v70, v176, type metadata accessor for ContactPromptGroundTruth);
          sub_222B43E3C(v174, v194);
          v78 = sub_222C2F454(v77, v194);
          if (!v78)
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v114 = sub_222C9431C();
            __swift_project_value_buffer(v114, qword_280FE2340);
            sub_222C72B24(v77, v23, type metadata accessor for ContactPromptGroundTruth);
            v115 = v23;
            v116 = sub_222C942FC();
            v117 = sub_222C94A4C();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v193 = v119;
              *v118 = v178;
              sub_222B9E5D0();
              v120 = sub_222C9517C();
              v122 = v121;
              v167 = type metadata accessor for ContactPromptGroundTruth;
              sub_222C72BF4(v115, type metadata accessor for ContactPromptGroundTruth);
              v123 = sub_222B437C0(v120, v122, &v193);

              *(v118 + 4) = v123;
              v20 = v177;
              _os_log_impl(&dword_222B39000, v116, v117, "Failed to convert ground truth record %s to a SELF message", v118, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v119);
              v124 = v119;
              v61 = v180;
              MEMORY[0x223DCA8C0](v124, -1, -1);
              MEMORY[0x223DCA8C0](v118, -1, -1);

              sub_222B4FCD4(v194, &qword_27D025F60, &unk_222C9B880);
              v125 = v176;
              v126 = v167;
            }

            else
            {

              sub_222C72BF4(v115, type metadata accessor for ContactPromptGroundTruth);
              sub_222B4FCD4(v194, &qword_27D025F60, &unk_222C9B880);
              v125 = v176;
              v126 = type metadata accessor for ContactPromptGroundTruth;
            }

            sub_222C72BF4(v125, v126);
            __swift_destroy_boxed_opaque_existential_0Tm(&v198);
            v23 = v115;
            goto LABEL_13;
          }

          v79 = *(v190 + 16);
          v80 = v77;
          v81 = v78;
          sub_222BA1210(v78, v188);

          sub_222B4FCD4(v194, &qword_27D025F60, &unk_222C9B880);
          v65 = type metadata accessor for ContactPromptGroundTruth;
          v66 = v80;
        }
      }

      sub_222C72BF4(v66, v65);
      __swift_destroy_boxed_opaque_existential_0Tm(&v198);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0Tm(&v197);
      v60 += 40;
      --v46;
    }

    while (v46);
  }
}

void sub_222C723FC(uint64_t a1)
{
  v46 = sub_222C9367C();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaEvaluationSummary();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v43 - v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + 32;
    v44 = (v2 + 8);
    v12.n128_u64[0] = 136315138;
    v49 = v12;
    v48 = v5;
    v45 = &v43 - v11;
    while (1)
    {
      sub_222B43E3C(v15, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D40, &qword_222C96B18);
      if (!swift_dynamicCast())
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v29 = sub_222C9431C();
        __swift_project_value_buffer(v29, qword_280FE2340);
        v30 = sub_222C942FC();
        v31 = sub_222C94A4C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v50 = v33;
          *v32 = v49.n128_u32[0];
          if (qword_27D024780 != -1)
          {
            swift_once();
          }

          *(v32 + 4) = sub_222B437C0(qword_27D027AA8, unk_27D027AB0, &v50);
          _os_log_impl(&dword_222B39000, v30, v31, "%s Skipping logging unknown evaluation summary type to SELF.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          MEMORY[0x223DCA8C0](v33, -1, -1);
          MEMORY[0x223DCA8C0](v32, -1, -1);
        }

        goto LABEL_5;
      }

      sub_222C72B8C(v13, v9, type metadata accessor for MediaEvaluationSummary);
      v16 = sub_222C2F984(v9);
      if (!v16)
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v34 = sub_222C9431C();
        __swift_project_value_buffer(v34, qword_280FE2340);
        v35 = sub_222C942FC();
        v36 = sub_222C94A4C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_222B39000, v35, v36, "Failed to convert evaluation summary record to a SELF message", v37, 2u);
          MEMORY[0x223DCA8C0](v37, -1, -1);
        }

        goto LABEL_30;
      }

      v17 = v16;
      v18 = v9;
      v19 = v6;
      v20 = *(v47 + 16);
      sub_222C9366C();
      v21 = [objc_allocWithZone(MEMORY[0x277D59C50]) init];
      if (!v21)
      {
        goto LABEL_22;
      }

      v22 = v21;
      v23 = [objc_allocWithZone(MEMORY[0x277D59C58]) init];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      v25 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v26 = sub_222C9361C();
      v27 = [v25 initWithNSUUID_];

      [v24 setPlusId_];
      v5 = v48;
      [v22 setEventMetadata_];

      [v22 setMediaEvaluationSummaryReported_];
      v28 = v20[6];
      __swift_project_boxed_opaque_existential_1(v20 + 2, v20[5]);
      sub_222C93F1C();

      (*v44)(v5, v46);
      v6 = v19;
      v9 = v18;
      v13 = v45;
LABEL_30:
      sub_222C72BF4(v9, type metadata accessor for MediaEvaluationSummary);
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v15 += 40;
      if (!--v14)
      {
        return;
      }
    }

LABEL_22:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);
    v39 = sub_222C942FC();
    v40 = sub_222C94A4C();
    v6 = v19;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50 = v42;
      *v41 = v49.n128_u32[0];
      v9 = v18;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v50);
      _os_log_impl(&dword_222B39000, v39, v40, "%s Failed to create SELF message templates", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);

      v5 = v48;
    }

    else
    {

      v9 = v18;
    }

    v13 = v45;
    (*v44)(v5, v46);
    goto LABEL_30;
  }
}

uint64_t PLUSOfflineLogHelpers.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PLUSOfflineLogHelpers.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_222C72AD8()
{
  result = qword_27D0270B0;
  if (!qword_27D0270B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0270B0);
  }

  return result;
}

uint64_t sub_222C72B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C72B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C72BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PIMSStoreCoreData.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222C769D4(a1, a2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

void sub_222C72E38(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_222C72EEC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_222C9323C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_222C9322C();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  a4();
  v10 = sub_222C9321C();

  return v10;
}

id sub_222C73110()
{
  result = sub_222C73130();
  qword_280FDF850 = result;
  return result;
}

id sub_222C73130()
{
  v0 = sub_222C934DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PIMSStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_222C9448C();
  v8 = sub_222C9448C();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (!v9)
  {
    goto LABEL_3;
  }

  sub_222C9348C();

  v10 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v11 = sub_222C9346C();
  v12 = [v10 initWithContentsOfURL_];

  (*(v1 + 8))(v4, v0);
  result = v12;
  if (!v12)
  {
LABEL_3:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222B39000, v15, v16, "PIMSStoreCoreData: Error loading data base model from bundle", v17, 2u);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_222C733A0(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = a2;
    v8 = a1;
    v9 = sub_222C942FC();
    v10 = sub_222C94A4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0268D0, &qword_222CA62F0);
      v14 = sub_222C94B4C();
      v16 = sub_222B437C0(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222B39000, v9, v10, "PIMSStoreCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222B4FCD4(v12, &qword_27D025F70, &unk_222C9E7C0);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }
  }
}

id sub_222C73590()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v18[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v18[0];
  }

  else
  {
    v4 = v18[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = v5;
    v8 = sub_222C942FC();
    v9 = sub_222C94A4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v13 = sub_222C944EC();
      v15 = sub_222B437C0(v13, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222B39000, v8, v9, "PIMSStoreCoreData: Unresolved error in saveChanges error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_222C737B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  LOBYTE(a2) = sub_222C7384C(a2, v6);

  if (a2)
  {
    result = sub_222C73590();
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_222C7384C(uint64_t a1, void *a2)
{
  v5 = sub_222C935EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThinMediaGroundTruth();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222C778A4(a1);
  if (v15 >> 60 == 15)
  {
    return 0;
  }

  v17 = v14;
  v18 = v15;
  v73 = v10;
  v19 = type metadata accessor for PlusMediaSuggestion();
  sub_222C0A220(*(a1 + v19[5]), &v88);
  if (v89 == 1)
  {
    sub_222B803AC(v17, v18);
    return 0;
  }

  else
  {
    v71 = v6;
    v72 = v5;
    v94 = v88;
    v95 = v89;
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v77 = v2;
    v20 = sub_222C9361C();
    [a2 setId_];

    v21 = *(a1 + v19[10]);
    sub_222C93F8C();
    [a2 setTimestamp_];
    v22 = a1 + v19[6];
    v23 = *(v22 + 16);
    v84[0] = *v22;
    v24 = *v22;
    v25 = *(v22 + 16);
    v26 = *(v22 + 32);
    v84[1] = v23;
    v84[2] = v26;
    v85 = *(v22 + 48);
    v80 = v24;
    v81 = v25;
    v82 = *(v22 + 32);
    v83 = *(v22 + 48);
    v27 = a1;
    v28 = *(v77 + 24);
    sub_222B554C0(v84, v79);
    v29 = sub_222BF2684(v28);
    v86[0] = v80;
    v86[1] = v81;
    v86[2] = v82;
    v87 = v83;
    sub_222B55A80(v86);
    v76 = a2;
    [a2 setInferredMediaReference_];

    v70 = v19;
    v30 = v19[7];
    v77 = v27;
    v31 = *(v27 + v30);
    v32 = MEMORY[0x277D84F90];
    *&v80 = MEMORY[0x277D84F90];
    v33 = *(v31 + 16);
    v74 = v17;
    v75 = v18;
    if (v33)
    {
      v34 = v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v35 = *(v73 + 72);
      do
      {
        sub_222C77D70(v34, v13, type metadata accessor for ThinMediaGroundTruth);
        v36 = sub_222BF1924(v28);
        v37 = sub_222C77DD8(v13, type metadata accessor for ThinMediaGroundTruth);
        if (v36)
        {
          MEMORY[0x223DC94A0](v37);
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          sub_222C947AC();
          v32 = v80;
        }

        v34 += v35;
        --v33;
      }

      while (v33);
    }

    sub_222C675DC(v32);

    v39 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v40 = sub_222C9470C();

    v41 = [v39 initWithArray_];

    v42 = v76;
    [v76 setContributingGroundTruth_];

    v43 = sub_222C934FC();
    [v42 setLeftHandKey_];

    v44 = v70;
    v45 = v77;
    [v42 setScore_];
    sub_222BED214();
    sub_222B4FCD4(&v88, &qword_27D0256C8, &unk_222C98AB0);
    v46 = sub_222C9448C();

    [v42 setName_];

    v47 = sub_222C72EEC(*(v45 + v44[9]), &qword_27D0261C0, &unk_222C9C7D0, sub_222C77C8C);
    if (v48 >> 60 == 15)
    {
      v49 = 0;
    }

    else
    {
      v50 = v47;
      v51 = v48;
      v49 = sub_222C934FC();
      sub_222B803AC(v50, v51);
    }

    v52 = v72;
    [v42 setScoreHistory_];

    v53 = v78;
    sub_222C935DC();
    sub_222C935BC();
    v55 = v54;
    (*(v71 + 8))(v53, v52);
    [v42 setLastUpdated_];
    v56 = *(v77 + v44[11]);
    v57 = MEMORY[0x277D84F90];
    *&v80 = MEMORY[0x277D84F90];
    v58 = 1 << *(v56 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v56 + 56);
    v61 = (v58 + 63) >> 6;

    v62 = 0;
    if (v60)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        return result;
      }

      if (v63 >= v61)
      {
        break;
      }

      v60 = *(v56 + 56 + 8 * v63);
      ++v62;
      if (v60)
      {
        v62 = v63;
        do
        {
LABEL_22:
          v79[0] = *(*(v56 + 48) + (__clz(__rbit64(v60)) | (v62 << 6)));
          sub_222BF310C(v28);
          MEMORY[0x223DC94A0]();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v78 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          v60 &= v60 - 1;
          result = sub_222C947AC();
          v57 = v80;
        }

        while (v60);
      }
    }

    sub_222C675F4(v57);

    v64 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v65 = sub_222C9470C();

    v66 = [v64 initWithArray_];

    v67 = v76;
    [v76 setTags_];

    v68 = [v67 inferredMediaReference];
    if (v68)
    {
      v69 = v68;
      [v68 setMediaSuggestion_];
      sub_222B803AC(v74, v75);
    }

    else
    {
      sub_222B803AC(v74, v75);
    }

    return 1;
  }
}

uint64_t sub_222C73F88()
{
  v1 = *(v0 + 24);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222C73FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_222C9448C();
  v8 = [v6 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C97C40;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_222B9A614();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_222C949EC();
  [v8 setPredicate_];

  v11 = *(v3 + 24);
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v12 = sub_222C94B2C();
  v13 = v12;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    v15 = sub_222C94C6C();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x223DC9B30](i, v13);
    }

    else
    {
      v17 = *(v13 + 8 * i + 32);
    }

    v18 = v17;
    [v11 deleteObject_];
  }

LABEL_10:
  if (sub_222C73590())
  {
    if (v14)
    {
      v19 = sub_222C94C6C();
    }

    else
    {
      v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v19;
  }

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Failed to save changes after deleting records.", v23, 2u);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  return 0;
}

char *sub_222C74474()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_222C9448C();
  v3 = [v1 initWithEntityName_];

  v4 = *(v0 + 24);
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v5 = sub_222C94B2C();
  v17 = v5;
  v18 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v19 = sub_222C94C6C();
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_26:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_26;
  }

LABEL_7:
  v20 = 0;
  v16 = MEMORY[0x277D84F90];
  while (2)
  {
    v21 = v20;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DC9B30](v21, v17);
      }

      else
      {
        if (v21 >= *(v18 + 16))
        {
          goto LABEL_24;
        }

        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      v20 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        swift_once();
        v6 = sub_222C9431C();
        __swift_project_value_buffer(v6, qword_280FE2340);
        v7 = v19;
        v8 = sub_222C942FC();
        v9 = sub_222C94A4C();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v42 = v11;
          *v10 = 136315138;
          v49 = v19;
          v12 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
          v13 = sub_222C944EC();
          v15 = sub_222B437C0(v13, v14, &v42);

          *(v10 + 4) = v15;
          _os_log_impl(&dword_222B39000, v8, v9, "PIMSStoreCoreData: Unresolved error in ReadAllAllMediatReferences error=%s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          MEMORY[0x223DCA8C0](v11, -1, -1);
          MEMORY[0x223DCA8C0](v10, -1, -1);
        }

        return MEMORY[0x277D84F90];
      }

      sub_222BF3720(&v42);

      v24 = v43;
      if (v43)
      {
        break;
      }

      sub_222B4FE14(v42, 0, v44, v45);
      ++v21;
      if (v20 == v19)
      {
        goto LABEL_27;
      }
    }

    v40 = v44;
    v41 = v42;
    v38 = v46;
    v39 = v45;
    v37 = v47;
    v36 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_222B4A9F8(0, *(v16 + 2) + 1, 1, v16);
    }

    v26 = *(v16 + 2);
    v25 = *(v16 + 3);
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    if (v26 >= v25 >> 1)
    {
      v34 = sub_222B4A9F8((v25 > 1), v26 + 1, 1, v16);
      v30 = v39;
      v31 = v40;
      v28 = v37;
      v29 = v38;
      v27 = v36;
      v16 = v34;
      v32 = v41;
    }

    *(v16 + 2) = v26 + 1;
    v33 = &v16[56 * v26];
    *(v33 + 4) = v32;
    *(v33 + 5) = v24;
    *(v33 + 6) = v31;
    *(v33 + 7) = v30;
    *(v33 + 8) = v29;
    *(v33 + 9) = v28;
    *(v33 + 40) = v27;
    if (v20 != v19)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v16;
}

void sub_222C74830(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_222C75C24();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for PlusMediaSuggestionCoreDataRecord();
    v8 = *(a1 + 24);
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v10 = sub_222C7384C(a2, v9);

    if (v10)
    {
      [v8 deleteObject_];
      v11 = sub_222C73590();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11 & 1;
}

uint64_t sub_222C74900()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222C77580;
  *(v2 + 24) = v0;
  v5[4] = sub_222C77584;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222BE12C8;
  v5[3] = &block_descriptor_3;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222C74A3C()
{
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_222C9448C();
  v3 = [v1 initWithEntityName_];

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9 = *(v0 + 24);
  v35[0] = 0;
  v10 = [v9 executeRequest:v7 error:v35];
  v11 = v35[0];
  if (v10 && (v12 = v10, v13 = v35[0], v12, v35[0] = 0, v14 = [v9 executeRequest:v8 error:v35], v11 = v35[0], v14))
  {
    v15 = v14;
    v16 = v35[0];

    if (sub_222C73590())
    {
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v29 = sub_222C9431C();
      __swift_project_value_buffer(v29, qword_280FE2340);
      v30 = sub_222C942FC();
      v31 = sub_222C94A4C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_222B39000, v30, v31, "PIMSStoreCoreData: Cannot reset store, failed to save", v32, 2u);
        MEMORY[0x223DCA8C0](v32, -1, -1);
      }
    }
  }

  else
  {
    v17 = v11;
    v18 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = v18;
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = v3;
      v24 = swift_slowAlloc();
      v35[0] = v24;
      *v23 = 136315138;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v26 = sub_222C944EC();
      v28 = sub_222B437C0(v26, v27, v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_222B39000, v21, v22, "PIMSStoreCoreData: Cannot reset store, error=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    else
    {
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void *sub_222C74E88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for PlusMediaSuggestion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_222C9448C();
  v13 = [v11 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C9BAE0;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  swift_getKeyPath();
  *(v14 + 32) = sub_222C94A6C();
  v15 = sub_222C9470C();

  [v13 setSortDescriptors_];

  v16 = *(v1 + 24);
  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v17 = sub_222C94B2C();
  v29 = v17;
  v43 = v6;
  if (v17 >> 62)
  {
    v30 = sub_222C94C6C();
  }

  else
  {
    v30 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v43;
  v41 = v13;
  if (v30)
  {
    v32 = 0;
    v44 = v10;
    v45 = v29 & 0xC000000000000001;
    v42 = v7;
    v33 = (v7 + 48);
    v28 = MEMORY[0x277D84F90];
    v34 = v30;
    while (1)
    {
      if (v45)
      {
        v35 = MEMORY[0x223DC9B30](v32, v29);
      }

      else
      {
        if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v35 = *(v29 + 8 * v32 + 32);
      }

      v36 = v35;
      v37 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      sub_222BF39F8(v5);

      if ((*v33)(v5, 1, v31) == 1)
      {
        sub_222B4FCD4(v5, &qword_27D025D28, &unk_222C9AC30);
      }

      else
      {
        sub_222B7D960(v5, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_222B4B04C(0, v28[2] + 1, 1, v28);
        }

        v39 = v28[2];
        v38 = v28[3];
        if (v39 >= v38 >> 1)
        {
          v28 = sub_222B4B04C(v38 > 1, v39 + 1, 1, v28);
        }

        v28[2] = v39 + 1;
        sub_222B7D960(v44, v28 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39);
        v31 = v43;
      }

      ++v32;
      if (v37 == v34)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v18 = sub_222C9431C();
    __swift_project_value_buffer(v18, qword_280FE2340);
    v19 = v31;
    v20 = sub_222C942FC();
    v21 = sub_222C94A4C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v31;
      v47 = v23;
      *v22 = 136315138;
      v24 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v25 = sub_222C944EC();
      v27 = sub_222B437C0(v25, v26, &v47);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_222B39000, v20, v21, "PIMSStoreCoreData: Unresolved error in readAll error=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223DCA8C0](v23, -1, -1);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v28;
}

uint64_t sub_222C75394()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AC0, &unk_222CA61E8);
  sub_222C94B1C();
  return v3;
}

void *sub_222C7540C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v49 = type metadata accessor for PlusMediaSuggestion();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v11 = sub_222C9448C();
  v12 = [v10 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_222C9BAE0;
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_222C9448C();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v13 + 32) = v16;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  v17 = sub_222C9470C();

  [v12 setSortDescriptors_];

  sub_222C0A220(a1, &v51);
  if (v52 == 1)
  {
    if (qword_280FDFE78 == -1)
    {
LABEL_3:
      v18 = sub_222C9431C();
      __swift_project_value_buffer(v18, qword_280FE2340);
      v19 = sub_222C942FC();
      v20 = sub_222C94A3C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_222B39000, v19, v20, "PIMSStoreCoreData: Unable to extract name from USO query. Skipping search.", v21, 2u);
        MEMORY[0x223DCA8C0](v21, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v57 = v51;
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v61 = v55;
  v62 = v56;
  v22 = sub_222BED214();
  v24 = v23;
  sub_222B4FCD4(&v51, &qword_27D0256C8, &unk_222C98AB0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v25 = sub_222C9431C();
  __swift_project_value_buffer(v25, qword_280FE2340);

  v26 = sub_222C942FC();
  v27 = sub_222C94A3C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_222B437C0(v22, v24, &v50);
    _os_log_impl(&dword_222B39000, v26, v27, "PIMSStoreCoreData: Searching for pims with name==%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x223DCA8C0](v29, -1, -1);
    MEMORY[0x223DCA8C0](v28, -1, -1);
  }

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_222C97C40;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_222B9A614();
  *(v30 + 32) = v22;
  *(v30 + 40) = v24;
  v31 = sub_222C949EC();
  [v12 setPredicate_];

  v32 = *(v2 + 24);
  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v33 = sub_222C94B2C();
  v36 = v33;
  if (v33 >> 62)
  {
    v37 = sub_222C94C6C();
  }

  else
  {
    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v12;
  if (v37)
  {
    v38 = 0;
    v12 = (v47 + 48);
    v34 = MEMORY[0x277D84F90];
    v46 = v37;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x223DC9B30](v38, v36);
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      sub_222BF39F8(v7);

      if ((*v12)(v7, 1, v49) == 1)
      {
        sub_222B4FCD4(v7, &qword_27D025D28, &unk_222C9AC30);
      }

      else
      {
        sub_222B7D960(v7, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_222B4B04C(0, v34[2] + 1, 1, v34);
        }

        v43 = v34[2];
        v42 = v34[3];
        if (v43 >= v42 >> 1)
        {
          v34 = sub_222B4B04C(v42 > 1, v43 + 1, 1, v34);
        }

        v34[2] = v43 + 1;
        sub_222B7D960(v48, v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v43);
        v37 = v46;
      }

      ++v38;
      if (v41 == v37)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_30:

  return v34;
}

unint64_t sub_222C75C24()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_222C9448C();
  v4 = [v2 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = sub_222C9361C();
  *(v5 + 56) = sub_222B505A8(0, &qword_27D0268B0, 0x277CCAD78);
  *(v5 + 64) = sub_222BE47A0();
  *(v5 + 32) = v6;
  v7 = sub_222C949EC();
  [v4 setPredicate_];

  v8 = *(v1 + 24);
  type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  result = sub_222C94B2C();
  if (result >> 62)
  {
    v12 = result;
    v13 = sub_222C94C6C();
    result = v12;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223DC9B30](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_6:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C75F80()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  return sub_222C94B1C();
}

void sub_222C75FF8(char *a1@<X8>)
{
  v2 = sub_222C75C24();
  if (v2)
  {
    v3 = v2;
    sub_222BF39F8(a1);
  }

  else
  {
    v4 = type metadata accessor for PlusMediaSuggestion();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

void sub_222C760A0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_222C75C24();
  if (v4)
  {
    v5 = v4;
    [*(a1 + 24) deleteObject_];
    v6 = sub_222C73590();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6 & 1;
}

uint64_t sub_222C76114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_222C77630;
  *(v8 + 24) = v7;
  v11[4] = sub_222C782E8;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_222BE12C8;
  v11[3] = &block_descriptor_10_0;
  v9 = _Block_copy(v11);

  [v6 performBlockAndWait_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_222C7628C(uint64_t a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222C77F28();
  if (!v7)
  {
    type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  }

  v8 = v7;
  v9 = sub_222C9448C();
  [v8 setSource_];

  sub_222C935DC();
  v10 = sub_222C9355C();
  (*(v3 + 8))(v6, v2);
  [v8 setTimestamp_];

  if ((sub_222C73590() & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    v12 = sub_222C942FC();
    v13 = sub_222C94A4C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222B39000, v12, v13, "Failed to persist store update record to CoreData", v14, 2u);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }
  }
}

uint64_t sub_222C764A0()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AC8, &qword_222CA61F8);
  return sub_222C94B1C();
}

void sub_222C76514(uint64_t *a1@<X8>)
{
  v2 = sub_222C77F28();
  if (v2)
  {
    v3 = v2;
    sub_222BF5188(a1);
  }

  else
  {
    v4 = type metadata accessor for SuggestionStoreUpdate();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t PIMSStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C7669C()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AC0, &unk_222CA61E8);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222C76714()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  return sub_222C94B1C();
}

uint64_t sub_222C7678C()
{
  v1 = *(*v0 + 24);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222C76844()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AC8, &qword_222CA61F8);
  return sub_222C94B1C();
}

uint64_t PIMSStoreCoreDataWithMigrations.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222C769D4(a1, a2, 1);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PIMSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_222C7695C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_222C769D4(a1, a2, a3);

  if (v4)
  {
    *(v3 + 16) = v4;
    *(v3 + 24) = [v4 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PIMSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

id sub_222C769D4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v81) = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_222C94AAC();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_222C934DC();
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v72[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v72[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v72[-v18];
  v20 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v20 setShouldInferMappingModelAutomatically_];
  [v20 setShouldMigrateStoreAutomatically_];
  if (qword_280FDF848 != -1)
  {
    swift_once();
  }

  v21 = qword_280FDF850;
  if (!qword_280FDF850)
  {

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v83 = v20;
  v76 = v11;
  v77 = v4;
  v22 = v7;
  v23 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v24 = v21;
  v25 = sub_222C9448C();
  v80 = v24;
  v26 = [v23 initWithName:v25 managedObjectModel:v24];

  if (a2)
  {
    sub_222C9345C();
    v27 = [objc_opt_self() defaultManager];
    sub_222C9347C();
    v28 = sub_222C9346C();
    v29 = *(v84 + 8);
    v30 = v22;
    v78 = v84 + 8;
    v29(v17, v22);
    aBlock[0] = 0;
    v31 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:aBlock];

    if (v31)
    {
      v32 = aBlock[0];
      v33 = v77;
      v34 = v83;
    }

    else
    {
      v35 = aBlock[0];
      v36 = sub_222C9342C();

      swift_willThrow();
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v37 = sub_222C9431C();
      __swift_project_value_buffer(v37, qword_280FE2340);
      (*(v84 + 16))(v14, v19, v22);
      v38 = v36;
      v39 = sub_222C942FC();
      v40 = sub_222C94A4C();

      v41 = os_log_type_enabled(v39, v40);
      v34 = v83;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        aBlock[0] = v75;
        *v42 = 136315394;
        sub_222C77D28(&qword_27D0268C0, MEMORY[0x277CC9260]);
        v74 = v39;
        v73 = v40;
        v43 = sub_222C9517C();
        v44 = v34;
        v45 = v30;
        v46 = v29;
        v48 = v47;
        v46(v14, v45);
        v49 = sub_222B437C0(v43, v48, aBlock);
        v29 = v46;
        v30 = v45;
        v34 = v44;

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        v85 = v36;
        v50 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
        v51 = sub_222C944EC();
        v53 = sub_222B437C0(v51, v52, aBlock);

        *(v42 + 14) = v53;
        v54 = v74;
        _os_log_impl(&dword_222B39000, v74, v73, "PIMSStoreCoreData: Unable to create data directory, path=%s, error=%s", v42, 0x16u);
        v55 = v75;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v55, -1, -1);
        MEMORY[0x223DCA8C0](v42, -1, -1);
      }

      else
      {

        v29(v14, v30);
      }

      v33 = v77;
    }

    v56 = v82;
    if (v81)
    {
      type metadata accessor for PIMSStoreCoreData();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v58 = [objc_opt_self() bundleForClass_];
      v59 = sub_222C9414C();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_222C9413C();
      sub_222C94A9C();
      sub_222C9412C();
      (*(v79 + 8))(v56, v33);
    }

    v62 = sub_222C9346C();
    [v34 setURL_];

    v29(v19, v30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_222C9BAE0;
  v64 = v83;
  *(v63 + 32) = v83;
  sub_222B505A8(0, &qword_280FDB760, 0x277CBE4E0);
  v65 = v64;
  v66 = sub_222C9470C();

  [v26 setPersistentStoreDescriptions_];

  v67 = swift_allocObject();
  v67[16] = 1;
  v68 = v67 + 16;
  aBlock[4] = sub_222C7822C;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C72E38;
  aBlock[3] = &block_descriptor_67;
  v69 = _Block_copy(aBlock);

  [v26 loadPersistentStoresWithCompletionHandler_];

  _Block_release(v69);
  swift_beginAccess();
  LOBYTE(v65) = *v68;

  if ((v65 & 1) == 0)
  {

    goto LABEL_19;
  }

LABEL_20:
  v70 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t sub_222C774D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = sub_222C73FF4(v3, v4);
  *a1 = result;
  return result;
}

char *sub_222C77518@<X0>(char **a1@<X8>)
{
  result = sub_222C74474();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_222C775A4@<X0>(void *a1@<X8>)
{
  result = sub_222C74E88();
  *a1 = result;
  return result;
}

void *sub_222C775D4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_222C7540C(v3);
  *a1 = result;
  return result;
}

void sub_222C77614(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_222C75FF8(a1);
}

void sub_222C77630()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_222C7628C(v0[2]);
}

uint64_t sub_222C778A4(uint64_t a1)
{
  v2 = type metadata accessor for PlusMediaSuggestion();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_222C931FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_222C9323C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  v12 = *(a1 + *(v3 + 28));
  sub_222C9386C();
  sub_222C77D28(&qword_27D025150, MEMORY[0x277D5E9D8]);

  v10 = sub_222C9321C();

  return v10;
}

unint64_t sub_222C77C8C()
{
  result = qword_27D0261C8;
  if (!qword_27D0261C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222C77ED4(&qword_27D0261D0, &qword_27D0261D8, &qword_222CA1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0261C8);
  }

  return result;
}

uint64_t sub_222C77D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C77D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C77DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222C77E38()
{
  result = qword_27D026E88;
  if (!qword_27D026E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222C77ED4(&qword_27D026E90, &qword_27D026BB0, &unk_222CA62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E88);
  }

  return result;
}

uint64_t sub_222C77ED4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_222C77F28()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  v23[0] = 0;
  v3 = [v2 execute_];
  v4 = v23[0];
  if (!v3)
  {
    v11 = v23[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v5 = v3;
  type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  v6 = sub_222C9471C();
  v7 = v4;

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223DC9B30](0, v6);
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_9:
    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = v5;
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v19 = sub_222C944EC();
      v21 = sub_222B437C0(v19, v20, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_222B39000, v14, v15, "Failed to load store update record. error=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v8 = *(v6 + 32);
LABEL_7:
  v9 = v8;

  result = v9;
LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222C78328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AE0, qword_222CA62F8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027AD0 = 91;
  *algn_27D027AD8 = 0xE100000000000000;
  return result;
}

NSObject *sub_222C783B8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59DD0]) init];
  if (!v2)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v3 = sub_222C942FC();
    v7 = sub_222C94A4C();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      if (qword_27D024790 != -1)
      {
        swift_once();
      }

      *(v8 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v16);
      _os_log_impl(&dword_222B39000, v3, v7, "%s Failed to create SELF template for PLUSSchemaPLUSSuggestionDomainOutcome", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x223DCA8C0](v9, -1, -1);
      MEMORY[0x223DCA8C0](v8, -1, -1);
    }

    goto LABEL_17;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D59D50]) init];
  if (!v4)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      if (qword_27D024790 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v16);
      _os_log_impl(&dword_222B39000, v11, v12, "%s Failed to create SELF template for PLUSSchemaPLUSSuggestionDomainOutcome", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

LABEL_17:
    return 0;
  }

  v5 = v4;
  [v4 setMediaSuggestionFeedback_];
  [v3 setMediaOutcome:v5];

  return v3;
}

void *sub_222C786C4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v34 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D59DF0]) init];
  if (v12)
  {
    v13 = v12;
    v36 = a3;
    v37 = a4;
    v14 = sub_222C9367C();
    v35 = *(v14 - 8);
    v15 = *(v35 + 48);
    if (v15(a2, 1, v14) == 1)
    {
      v34[1] = a1;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v16 = sub_222C9431C();
      __swift_project_value_buffer(v16, qword_280FE2340);
      v17 = sub_222C942FC();
      v18 = sub_222C94A4C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v38 = v20;
        *v19 = 136315138;
        if (qword_27D024790 != -1)
        {
          swift_once();
        }

        *(v19 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v38);
        _os_log_impl(&dword_222B39000, v17, v18, "%s RequestId for PLUSSchemaPLUSSuggestionOutcomeReported was nil. Still creating event, but this is not expected.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x223DCA8C0](v20, -1, -1);
        MEMORY[0x223DCA8C0](v19, -1, -1);
      }
    }

    v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v22 = sub_222C9361C();
    v23 = [v21 initWithNSUUID_];

    [v13 setSuggestionLinkId_];
    sub_222B5551C(a2, v11);
    if (v15(v11, 1, v14) == 1)
    {
      sub_222B86DA0(v11);
      v24 = 0;
    }

    else
    {
      v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v31 = sub_222C9361C();
      v24 = [v30 initWithNSUUID_];

      (*(v35 + 8))(v11, v14);
    }

    v32 = v37;
    [v13 setOriginalRequestId_];

    [v13 setSuggestionOutcome_];
    [v13 setDomainOutcome_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v25 = sub_222C9431C();
    __swift_project_value_buffer(v25, qword_280FE2340);
    v26 = sub_222C942FC();
    v27 = sub_222C94A4C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315138;
      if (qword_27D024790 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_222B437C0(qword_27D027AD0, *algn_27D027AD8, &v38);
      _os_log_impl(&dword_222B39000, v26, v27, "%s Failed to create SELF template for PLUSSchemaPLUSContactSuggestionOutcomeReported", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x223DCA8C0](v29, -1, -1);
      MEMORY[0x223DCA8C0](v28, -1, -1);
    }

    return 0;
  }

  return v13;
}

uint64_t sub_222C78BA0()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C78C8C()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}