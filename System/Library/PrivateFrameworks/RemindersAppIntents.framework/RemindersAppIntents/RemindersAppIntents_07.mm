uint64_t sub_261B9D254(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_261B9CE00(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_261CBB058();
      goto LABEL_16;
    }

    sub_261B9D5E8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_261D006C4();
  sub_261CFFB14();
  result = sub_261D006F4();
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

      result = sub_261D00614();
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
  result = sub_261D00644();
  __break(1u);
  return result;
}

uint64_t sub_261B9D3D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  result = sub_261D002F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_261D000E4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_261B9D5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  result = sub_261D002F4();
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
      sub_261D006C4();
      sub_261CFD104();
      sub_261CFFB14();
      result = sub_261D006F4();
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

uint64_t sub_261B9D848(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_261D00274();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_261D00354();
}

uint64_t sub_261B9D8AC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for ReminderEntity();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v13 + 80);
    v18 = *(v13 + 72);
    v42 = v6;
    v43 = (v17 + 32) & ~v17;
    v19 = a1 + v43;
    v20 = MEMORY[0x277D84F90];
    v38 = v7;
    v41 = v18;
    while (1)
    {
      sub_261B9C2D4(v19, v15, type metadata accessor for ReminderEntity);
      v24 = v15;
      v25 = &v15[*(v7 + 40)];
      v26 = type metadata accessor for AppEntityID();
      v27 = v42;
      sub_261AFB668(&v25[*(v26 + 24)], v42, &qword_27FEDA108, &unk_261D020C0);
      v28 = type metadata accessor for RecurrentInstanceSpecifier(0);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {
        sub_261AE6A40(v27, &qword_27FEDA108, &unk_261D020C0);
      }

      else
      {
        v29 = *(v27 + *(v28 + 20));
        sub_261B98750(v27, type metadata accessor for RecurrentInstanceSpecifier);
        if (v29)
        {
          v15 = v24;
          sub_261B9C2D4(v24, v40, type metadata accessor for ReminderEntity);
          v30 = v39;
          v31 = *(v39 + 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v30 + 8) = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = sub_261B41560(0, v31[2] + 1, 1, v31);
            *(v39 + 8) = v31;
          }

          v23 = v41;
          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            v31 = sub_261B41560(v33 > 1, v34 + 1, 1, v31);
            *(v39 + 8) = v31;
          }

          v31[2] = v34 + 1;
          sub_261B9C24C(v40, v31 + v43 + v34 * v23, type metadata accessor for ReminderEntity);
          sub_261B98750(v24, type metadata accessor for ReminderEntity);
          v7 = v38;
          goto LABEL_6;
        }
      }

      v15 = v24;
      sub_261B9C24C(v24, v44, type metadata accessor for ReminderEntity);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v20;
      if ((v35 & 1) == 0)
      {
        sub_261B39DB8(0, *(v20 + 16) + 1, 1);
        v20 = v45;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v41;
      if (v22 >= v21 >> 1)
      {
        sub_261B39DB8(v21 > 1, v22 + 1, 1);
        v20 = v45;
      }

      *(v20 + 16) = v22 + 1;
      sub_261B9C24C(v44, v20 + v43 + v22 * v23, type metadata accessor for ReminderEntity);
LABEL_6:
      v19 += v23;
      if (!--v16)
      {
        return v20;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_261B9DCEC()
{
  v0 = _s27CategorizedReminderEntitiesV12EditableItemVMa(0);
  v1 = *(v0 - 8);
  v93 = v0;
  v94 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v82 = &v82 - v7;
  MEMORY[0x28223BE20](v6);
  v89 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v82 - v11;
  v96 = type metadata accessor for AppEntityID();
  v12 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for ReminderEntity();
  v14 = *(v91 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v91);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102[0] = MEMORY[0x277D84F90];
  v102[1] = MEMORY[0x277D84F90];
  v18 = sub_261CFD104();
  v19 = sub_261B9D8AC(v18, v102);

  v100 = MEMORY[0x277D84FA0];
  v101 = MEMORY[0x277D84FA0];
  v88 = *(v19 + 16);
  if (!v88)
  {
LABEL_49:

    return;
  }

  v87 = v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v98 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v83 = v5;
  v85 = v19;
  v86 = v14;
  v90 = v17;
  while (v20 < *(v19 + 16))
  {
    v95 = v21;
    sub_261B9C2D4(v87 + *(v14 + 72) * v20, v17, type metadata accessor for ReminderEntity);
    v22 = v97;
    sub_261B9C2D4(&v17[*(v91 + 40)], v97, type metadata accessor for AppEntityID);
    v23 = *(v96 + 20);
    v24 = *v22;
    v25 = v22[1];
    v26 = objc_allocWithZone(MEMORY[0x277D44700]);
    v27 = sub_261CFD814();
    v28 = sub_261CFFA54();
    v29 = [v26 initWithUUID:v27 entityName:v28];

    v30 = v101;
    if ((v101 & 0xC000000000000001) != 0)
    {
      v31 = v29;
      v32 = sub_261D002B4();

      if (v32)
      {
        goto LABEL_3;
      }
    }

    else if (*(v101 + 16))
    {
      v33 = *(v101 + 40);
      v34 = sub_261D000E4();
      v35 = -1 << *(v30 + 32);
      v36 = v34 & ~v35;
      if ((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (1)
        {
          v38 = *(*(v30 + 48) + 8 * v36);
          v39 = sub_261D000F4();

          if (v39)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

LABEL_3:
        v17 = v90;
        goto LABEL_4;
      }
    }

LABEL_15:
    v40 = v84;
    sub_261AFB668(v97 + *(v96 + 24), v84, &qword_27FEDA108, &unk_261D020C0);
    v41 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    sub_261AE6A40(v40, &qword_27FEDA108, &unk_261D020C0);
    v17 = v90;
    if (v42 == 1)
    {
      v43 = v29;
      sub_261B9C850(&v99, v43);

      v44 = v100;
      v45 = v89;
      v92 = v43;
      if ((v100 & 0xC000000000000001) != 0)
      {
        v46 = v43;
        v47 = sub_261D002B4();

        if (v47)
        {
          goto LABEL_18;
        }

LABEL_35:
        v62 = 1;
      }

      else
      {
        if (!*(v100 + 16) || (v66 = *(v100 + 40), v67 = sub_261D000E4(), v68 = -1 << *(v44 + 32), v69 = v67 & ~v68, ((*(v44 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0))
        {
          v62 = 1;
          goto LABEL_44;
        }

        v70 = ~v68;
        while (1)
        {
          v71 = *(*(v44 + 48) + 8 * v69);
          v72 = sub_261D000F4();

          if (v72)
          {
            break;
          }

          v69 = (v69 + 1) & v70;
          if (((*(v44 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_18:
        v48 = v95;
        v49 = v95[2];
        v50 = v92;
        if (v49)
        {
          v51 = v95 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
          while (v49 <= v48[2])
          {
            --v49;
            sub_261B9C2D4(&v51[*(v94 + 72) * v49], v45, _s27CategorizedReminderEntitiesV12EditableItemVMa);
            if (*(v45 + *(v93 + 20)) == 2)
            {
              sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
              v52 = (v45 + *(v91 + 40));
              v53 = *(v96 + 20);
              v55 = *v52;
              v54 = v52[1];
              v56 = objc_allocWithZone(MEMORY[0x277D44700]);
              v45 = v89;
              v57 = sub_261CFD814();
              v58 = sub_261CFFA54();
              v59 = v56;
              v50 = v92;
              v60 = [v59 initWithUUID:v57 entityName:v58];

              LOBYTE(v57) = sub_261D000F4();
              v48 = v95;
              sub_261B98750(v45, _s27CategorizedReminderEntitiesV12EditableItemVMa);
              if (v57)
              {
                v61 = v82;
                sub_261B9C71C(v49, v82);
                sub_261B98750(v61, _s27CategorizedReminderEntitiesV12EditableItemVMa);
                goto LABEL_26;
              }
            }

            else
            {
              sub_261B98750(v45, _s27CategorizedReminderEntitiesV12EditableItemVMa);
            }

            if (!v49)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          break;
        }

LABEL_26:

        v62 = 1;
        v5 = v83;
      }

      v17 = v90;
LABEL_44:
      sub_261B9C2D4(v17, v5, type metadata accessor for ReminderEntity);
      *&v5[*(v93 + 20)] = v62;
      v21 = v102[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_261B41538(0, v21[2] + 1, 1, v21);
      }

      v81 = v21[2];
      v80 = v21[3];
      v19 = v85;
      v14 = v86;
      if (v81 >= v80 >> 1)
      {
        v21 = sub_261B41538(v80 > 1, v81 + 1, 1, v21);
      }

      sub_261B98750(v17, type metadata accessor for ReminderEntity);
      v21[2] = v81 + 1;
      sub_261B9C24C(v5, v21 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v81, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      v102[0] = v21;
      goto LABEL_5;
    }

    v63 = v100;
    if ((v100 & 0xC000000000000001) != 0)
    {
      v64 = v29;
      v65 = sub_261D002B4();

      if ((v65 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*(v100 + 16) || (v73 = *(v100 + 40), v74 = sub_261D000E4(), v75 = -1 << *(v63 + 32), v76 = v74 & ~v75, ((*(v63 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0))
      {
LABEL_42:
        sub_261B9C850(&v99, v29);

        v62 = 2;
        goto LABEL_44;
      }

      v77 = ~v75;
      while (1)
      {
        v78 = *(*(v63 + 48) + 8 * v76);
        v79 = sub_261D000F4();

        if (v79)
        {
          break;
        }

        v76 = (v76 + 1) & v77;
        if (((*(v63 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_4:
    sub_261B98750(v17, type metadata accessor for ReminderEntity);

    v19 = v85;
    v14 = v86;
    v21 = v95;
LABEL_5:
    ++v20;
    sub_261B98750(v97, type metadata accessor for AppEntityID);
    if (v20 == v88)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
}

uint64_t *sub_261B9E6D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v24 = a2[2];
    a1[1] = a2[1];
    a1[2] = v24;
    v25 = a2[4];
    a1[3] = a2[3];
    a1[4] = v25;
    a1[5] = a2[5];
    v7 = type metadata accessor for ReminderEntity();
    v8 = v7[10];
    v9 = v6 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID();
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v23 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v23(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    *(v6 + v7[11]) = *(a2 + v7[11]);
    *(v6 + v7[12]) = *(a2 + v7[12]);
    *(v6 + v7[13]) = *(a2 + v7[13]);
    *(v6 + v7[14]) = *(a2 + v7[14]);
    *(v6 + v7[15]) = *(a2 + v7[15]);
    *(v6 + v7[16]) = *(a2 + v7[16]);
    *(v6 + v7[17]) = *(a2 + v7[17]);
    *(v6 + v7[18]) = *(a2 + v7[18]);
    *(v6 + v7[19]) = *(a2 + v7[19]);
    *(v6 + v7[20]) = *(a2 + v7[20]);
    *(v6 + v7[21]) = *(a2 + v7[21]);
    *(v6 + v7[22]) = *(a2 + v7[22]);
    *(v6 + v7[23]) = *(a2 + v7[23]);
    *(v6 + v7[24]) = *(a2 + v7[24]);
    *(v6 + v7[25]) = *(a2 + v7[25]);
    *(v6 + v7[26]) = *(a2 + v7[26]);
    *(v6 + v7[27]) = *(a2 + v7[27]);
    *(v6 + v7[28]) = *(a2 + v7[28]);
    *(v6 + v7[29]) = *(a2 + v7[29]);
    *(v6 + v7[30]) = *(a2 + v7[30]);
    *(v6 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
  }

  sub_261CFCDA4();
  return v6;
}

uint64_t sub_261B9EB10(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = type metadata accessor for ReminderEntity();
  v9 = a1 + v8[10];
  v10 = *(v9 + 1);

  v11 = type metadata accessor for AppEntityID();
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  v14 = *(v11 + 24);
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v15 - 8) + 48))(&v9[v14], 1, v15))
  {
    v16 = sub_261CFD4E4();
    (*(*(v16 - 8) + 8))(&v9[v14], v16);
  }

  v17 = *(a1 + v8[11]);

  v18 = *(a1 + v8[12]);

  v19 = *(a1 + v8[13]);

  v20 = *(a1 + v8[14]);

  v21 = *(a1 + v8[15]);

  v22 = *(a1 + v8[16]);

  v23 = *(a1 + v8[17]);

  v24 = *(a1 + v8[18]);

  v25 = *(a1 + v8[19]);

  v26 = *(a1 + v8[20]);

  v27 = *(a1 + v8[21]);

  v28 = *(a1 + v8[22]);

  v29 = *(a1 + v8[23]);

  v30 = *(a1 + v8[24]);

  v31 = *(a1 + v8[25]);

  v32 = *(a1 + v8[26]);

  v33 = *(a1 + v8[27]);

  v34 = *(a1 + v8[28]);

  v35 = *(a1 + v8[29]);

  v36 = *(a1 + v8[30]);
}

void *sub_261B9ED4C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity();
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID();
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v24 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v24(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v17, v18, v22);
    v17[*(v19 + 20)] = v18[*(v19 + 20)];
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  *(a1 + v8[11]) = *(a2 + v8[11]);
  *(a1 + v8[12]) = *(a2 + v8[12]);
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  *(a1 + v8[15]) = *(a2 + v8[15]);
  *(a1 + v8[16]) = *(a2 + v8[16]);
  *(a1 + v8[17]) = *(a2 + v8[17]);
  *(a1 + v8[18]) = *(a2 + v8[18]);
  *(a1 + v8[19]) = *(a2 + v8[19]);
  *(a1 + v8[20]) = *(a2 + v8[20]);
  *(a1 + v8[21]) = *(a2 + v8[21]);
  *(a1 + v8[22]) = *(a2 + v8[22]);
  *(a1 + v8[23]) = *(a2 + v8[23]);
  *(a1 + v8[24]) = *(a2 + v8[24]);
  *(a1 + v8[25]) = *(a2 + v8[25]);
  *(a1 + v8[26]) = *(a2 + v8[26]);
  *(a1 + v8[27]) = *(a2 + v8[27]);
  *(a1 + v8[28]) = *(a2 + v8[28]);
  *(a1 + v8[29]) = *(a2 + v8[29]);
  *(a1 + v8[30]) = *(a2 + v8[30]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *sub_261B9F140(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v6 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v7 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v8 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v9 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v10 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v11 = type metadata accessor for ReminderEntity();
  v12 = v11[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *v13 = *(a2 + v12);
  v15 = *(a1 + v12 + 8);
  *(v13 + 1) = *(a2 + v12 + 8);
  sub_261CFD104();

  v16 = type metadata accessor for AppEntityID();
  v17 = *(v16 + 20);
  v18 = sub_261CFD844();
  (*(*(v18 - 8) + 24))(&v13[v17], &v14[v17], v18);
  v19 = *(v16 + 24);
  v20 = &v13[v19];
  v21 = &v14[v19];
  v22 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  LODWORD(v17) = v24(v20, 1, v22);
  v25 = v24(v21, 1, v22);
  if (!v17)
  {
    if (!v25)
    {
      v69 = sub_261CFD4E4();
      (*(*(v69 - 8) + 24))(v20, v21, v69);
      v20[*(v22 + 20)] = v21[*(v22 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v20, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v25)
  {
LABEL_6:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v20, v21, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  v26 = sub_261CFD4E4();
  (*(*(v26 - 8) + 16))(v20, v21, v26);
  v20[*(v22 + 20)] = v21[*(v22 + 20)];
  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_7:
  v28 = v11[11];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);
  sub_261CFCDA4();

  v30 = v11[12];
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);
  sub_261CFCDA4();

  v32 = v11[13];
  v33 = *(a1 + v32);
  *(a1 + v32) = *(a2 + v32);
  sub_261CFCDA4();

  v34 = v11[14];
  v35 = *(a1 + v34);
  *(a1 + v34) = *(a2 + v34);
  sub_261CFCDA4();

  v36 = v11[15];
  v37 = *(a1 + v36);
  *(a1 + v36) = *(a2 + v36);
  sub_261CFCDA4();

  v38 = v11[16];
  v39 = *(a1 + v38);
  *(a1 + v38) = *(a2 + v38);
  sub_261CFCDA4();

  v40 = v11[17];
  v41 = *(a1 + v40);
  *(a1 + v40) = *(a2 + v40);
  sub_261CFCDA4();

  v42 = v11[18];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);
  sub_261CFCDA4();

  v44 = v11[19];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);
  sub_261CFCDA4();

  v46 = v11[20];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);
  sub_261CFCDA4();

  v48 = v11[21];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);
  sub_261CFCDA4();

  v50 = v11[22];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);
  sub_261CFCDA4();

  v52 = v11[23];
  v53 = *(a1 + v52);
  *(a1 + v52) = *(a2 + v52);
  sub_261CFCDA4();

  v54 = v11[24];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);
  sub_261CFCDA4();

  v56 = v11[25];
  v57 = *(a1 + v56);
  *(a1 + v56) = *(a2 + v56);
  sub_261CFCDA4();

  v58 = v11[26];
  v59 = *(a1 + v58);
  *(a1 + v58) = *(a2 + v58);
  sub_261CFCDA4();

  v60 = v11[27];
  v61 = *(a1 + v60);
  *(a1 + v60) = *(a2 + v60);
  sub_261CFCDA4();

  v62 = v11[28];
  v63 = *(a1 + v62);
  *(a1 + v62) = *(a2 + v62);
  sub_261CFCDA4();

  v64 = v11[29];
  v65 = *(a1 + v64);
  *(a1 + v64) = *(a2 + v64);
  sub_261CFCDA4();

  v66 = v11[30];
  v67 = *(a1 + v66);
  *(a1 + v66) = *(a2 + v66);
  sub_261CFCDA4();

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

_OWORD *sub_261B9F678(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = type metadata accessor for ReminderEntity();
  v8 = v7[10];
  v9 = a1 + v8;
  v10 = a2 + v8;
  *(a1 + v8) = *(a2 + v8);
  v11 = type metadata accessor for AppEntityID();
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v14 = *(v11 + 24);
  v15 = &v9[v14];
  v16 = &v10[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v15, v16, v20);
    v15[*(v17 + 20)] = v16[*(v17 + 20)];
    (*(v18 + 56))(v15, 0, 1, v17);
  }

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  *(a1 + v7[14]) = *(a2 + v7[14]);
  *(a1 + v7[15]) = *(a2 + v7[15]);
  *(a1 + v7[16]) = *(a2 + v7[16]);
  *(a1 + v7[17]) = *(a2 + v7[17]);
  *(a1 + v7[18]) = *(a2 + v7[18]);
  *(a1 + v7[19]) = *(a2 + v7[19]);
  *(a1 + v7[20]) = *(a2 + v7[20]);
  *(a1 + v7[21]) = *(a2 + v7[21]);
  *(a1 + v7[22]) = *(a2 + v7[22]);
  *(a1 + v7[23]) = *(a2 + v7[23]);
  *(a1 + v7[24]) = *(a2 + v7[24]);
  *(a1 + v7[25]) = *(a2 + v7[25]);
  *(a1 + v7[26]) = *(a2 + v7[26]);
  *(a1 + v7[27]) = *(a2 + v7[27]);
  *(a1 + v7[28]) = *(a2 + v7[28]);
  *(a1 + v7[29]) = *(a2 + v7[29]);
  *(a1 + v7[30]) = *(a2 + v7[30]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t *sub_261B9F938(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = a1[1];
  a1[1] = a2[1];

  v7 = a1[2];
  a1[2] = a2[2];

  v8 = a1[3];
  a1[3] = a2[3];

  v9 = a1[4];
  a1[4] = a2[4];

  v10 = a1[5];
  a1[5] = a2[5];

  v11 = type metadata accessor for ReminderEntity();
  v12 = v11[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 8);
  v16 = *(a1 + v12 + 8);
  *v13 = *(a2 + v12);
  *(v13 + 1) = v15;

  v17 = type metadata accessor for AppEntityID();
  v18 = *(v17 + 20);
  v19 = sub_261CFD844();
  (*(*(v19 - 8) + 40))(&v13[v18], &v14[v18], v19);
  v20 = *(v17 + 24);
  v21 = &v13[v20];
  v22 = &v14[v20];
  v23 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  LODWORD(v18) = v25(v21, 1, v23);
  v26 = v25(v22, 1, v23);
  if (!v18)
  {
    if (!v26)
    {
      v70 = sub_261CFD4E4();
      (*(*(v70 - 8) + 40))(v21, v22, v70);
      v21[*(v23 + 20)] = v22[*(v23 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v21, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v26)
  {
LABEL_6:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v21, v22, *(*(v28 - 8) + 64));
    goto LABEL_7;
  }

  v27 = sub_261CFD4E4();
  (*(*(v27 - 8) + 32))(v21, v22, v27);
  v21[*(v23 + 20)] = v22[*(v23 + 20)];
  (*(v24 + 56))(v21, 0, 1, v23);
LABEL_7:
  v29 = v11[11];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);

  v31 = v11[12];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);

  v33 = v11[13];
  v34 = *(a1 + v33);
  *(a1 + v33) = *(a2 + v33);

  v35 = v11[14];
  v36 = *(a1 + v35);
  *(a1 + v35) = *(a2 + v35);

  v37 = v11[15];
  v38 = *(a1 + v37);
  *(a1 + v37) = *(a2 + v37);

  v39 = v11[16];
  v40 = *(a1 + v39);
  *(a1 + v39) = *(a2 + v39);

  v41 = v11[17];
  v42 = *(a1 + v41);
  *(a1 + v41) = *(a2 + v41);

  v43 = v11[18];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v11[19];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);

  v47 = v11[20];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);

  v49 = v11[21];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = v11[22];
  v52 = *(a1 + v51);
  *(a1 + v51) = *(a2 + v51);

  v53 = v11[23];
  v54 = *(a1 + v53);
  *(a1 + v53) = *(a2 + v53);

  v55 = v11[24];
  v56 = *(a1 + v55);
  *(a1 + v55) = *(a2 + v55);

  v57 = v11[25];
  v58 = *(a1 + v57);
  *(a1 + v57) = *(a2 + v57);

  v59 = v11[26];
  v60 = *(a1 + v59);
  *(a1 + v59) = *(a2 + v59);

  v61 = v11[27];
  v62 = *(a1 + v61);
  *(a1 + v61) = *(a2 + v61);

  v63 = v11[28];
  v64 = *(a1 + v63);
  *(a1 + v63) = *(a2 + v63);

  v65 = v11[29];
  v66 = *(a1 + v65);
  *(a1 + v65) = *(a2 + v65);

  v67 = v11[30];
  v68 = *(a1 + v67);
  *(a1 + v67) = *(a2 + v67);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *sub_261B9FDDC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

uint64_t *sub_261B9FE14(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFD104();

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  sub_261CFD104();

  return a1;
}

uint64_t *sub_261B9FE74(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for GroupEntityQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for GroupEntityQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261B9FF5C()
{
  result = qword_27FEDB348;
  if (!qword_27FEDB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB348);
  }

  return result;
}

unint64_t sub_261B9FFB4()
{
  result = qword_27FEDB350;
  if (!qword_27FEDB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB350);
  }

  return result;
}

unint64_t sub_261BA000C()
{
  result = qword_27FEDB358;
  if (!qword_27FEDB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB358);
  }

  return result;
}

unint64_t sub_261BA0064()
{
  result = qword_27FEDB360;
  if (!qword_27FEDB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB360);
  }

  return result;
}

uint64_t sub_261BA00E8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB368);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB368);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BA02B0()
{
  v20 = v0;
  v1 = v0[12];

  if (qword_27FED9968 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB368);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_261CFCBB4();
    v10 = sub_261B879C8(v0[4], v0[5], &v19);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v5, v6, "[OpenSearchAppIntent] Open section with searchPhrase: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[10];
  sub_261CFCBB4();
  sub_261BBFE8C(v0[2], v0[3], v11);

  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    v15 = v0[9];
    sub_261D00034();
  }

  v16 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_261CFC9A4();

  v17 = v0[1];

  return v17();
}

uint64_t sub_261BA04E8(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BA0588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA680, &qword_261D03238);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_261B3A278(0, v9, 0);
    v10 = v21;
    v11 = *(sub_261CFEFD4() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = v5 + 32;
    v13 = *(v11 + 72);
    while (1)
    {
      sub_261BA2F0C(v12, v19, &v20, v8);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v21 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_261B3A278(v14 > 1, v15 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v15 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v18);
      v12 += v13;
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_261BA078C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(sub_261CFEF74() - 8);
  v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_261BA3488(v6, a2, &v24);
    if (v2)
    {

      return v8;
    }

    v10 = v24;
    v11 = *(v24 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_261B42224(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for GroupEntity();
        v17 = *(result - 8);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v20 = v8[2];
          v21 = __OFADD__(v20, v11);
          v22 = v20 + v11;
          if (v21)
          {
            goto LABEL_25;
          }

          v8[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += v7;
    if (!--v3)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_261BA0984(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26671CA10](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_261D00274();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_261BA0AAC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB380);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB380);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BA0D00()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  if (qword_27FED9970 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDB380);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v62[0] = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x26671C340](v6, v5);
    v11 = sub_261B879C8(v9, v10, v62);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_261AE2000, v3, v4, "[GroupEntityGroupQueryPerforming] Query groups with identifiers %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v12 = *(v0 + 24);
  v56 = *(*(v0 + 32) + 16);
  v13 = *(v12 + 16);
  v61 = v0;
  if (v13)
  {
    v14 = *(v0 + 88);
    v58 = *(v0 + 80);
    v59 = *(v0 + 96);
    v62[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    v17 = v13;
    do
    {
      v18 = *(v0 + 96);
      sub_261BA4248(v15, v18, type metadata accessor for AppEntityID);
      v19 = *(v58 + 20);
      v20 = *v18;
      v21 = *(v59 + 8);
      v22 = objc_allocWithZone(MEMORY[0x277D44700]);
      v23 = sub_261CFD814();
      v24 = sub_261CFFA54();
      v0 = v61;
      [v22 initWithUUID:v23 entityName:v24];

      sub_261BA42B0(v18, type metadata accessor for AppEntityID);
      sub_261D00374();
      v25 = *(v62[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v15 += v16;
      --v17;
    }

    while (v17);
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v26 = sub_261CFFC54();

  *(v0 + 16) = 0;
  v27 = [v56 fetchListsWithObjectIDs:v26 error:v0 + 16];

  v28 = *(v0 + 16);
  if (v27)
  {
    sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
    sub_261B3B918();
    v29 = sub_261CFF8F4();
    v30 = v28;

    if (v13)
    {
      v31 = *(v0 + 88);
      v60 = *(v0 + 56);
      v32 = (v60 + 48);
      v33 = (*(v0 + 24) + ((*(v31 + 80) + 32) & ~*(v31 + 80)));
      v34 = *(v31 + 72);
      v35 = MEMORY[0x277D84F90];
      v57 = v34;
      do
      {
        sub_261BA1334(v33, v29, *(v0 + 40));
        v36 = *(v0 + 40);
        if ((*v32)(v36, 1, *(v0 + 48)) == 1)
        {
          sub_261AE6A40(v36, &unk_27FEDD950, &unk_261D01440);
        }

        else
        {
          v38 = *(v0 + 64);
          v37 = *(v0 + 72);
          sub_261BA41C0(v36, v37, type metadata accessor for GroupEntity);
          sub_261BA41C0(v37, v38, type metadata accessor for GroupEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_261B42224(0, v35[2] + 1, 1, v35);
          }

          v40 = v35[2];
          v39 = v35[3];
          v0 = v61;
          if (v40 >= v39 >> 1)
          {
            v35 = sub_261B42224(v39 > 1, v40 + 1, 1, v35);
          }

          v41 = *(v61 + 64);
          v35[2] = v40 + 1;
          sub_261BA41C0(v41, v35 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v40, type metadata accessor for GroupEntity);
          v34 = v57;
          v32 = (v60 + 48);
        }

        v33 = &v34[v33];
        --v13;
      }

      while (v13);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    v43 = *(v0 + 96);
    v45 = *(v0 + 64);
    v44 = *(v0 + 72);
    v46 = *(v0 + 40);

    v47 = *(v0 + 8);
    v48 = *MEMORY[0x277D85DE8];

    return v47(v35);
  }

  else
  {
    v42 = v28;
    sub_261CFD654();

    swift_willThrow();
    v50 = *(v0 + 96);
    v52 = *(v0 + 64);
    v51 = *(v0 + 72);
    v53 = *(v0 + 40);

    v54 = *(v0 + 8);
    v55 = *MEMORY[0x277D85DE8];

    return v54();
  }
}

void sub_261BA1334(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a3;
  v80 = a2;
  v84 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ListEntity();
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v76 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v75 = &v73 - v8;
  v9 = *(type metadata accessor for AppEntityID() + 20);
  v10 = *a1;
  v11 = a1[1];
  v12 = objc_allocWithZone(MEMORY[0x277D44700]);
  v13 = sub_261CFD814();
  v14 = sub_261CFFA54();
  v79 = [v12 initWithUUID:v13 entityName:v14];

  v15 = objc_allocWithZone(MEMORY[0x277D44700]);
  v16 = sub_261CFD814();
  v17 = sub_261CFFA54();
  v18 = [v15 initWithUUID:v16 entityName:v17];

  v19 = sub_261CADF34(v18, v80);
  if (v19)
  {
    if ([v19 isGroup])
    {
      v20 = [v19 sublistContext];
      if (v20)
      {
        v21 = v20;
        v80 = v19;
        v82 = 0;
        v83 = MEMORY[0x277D84F90];
        v22 = [v20 fetchListsWithError_];
        v23 = v82;
        if (v22)
        {
          v24 = v22;
          sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
          v25 = sub_261CFFC64();
          v26 = v23;

          if (v25 >> 62)
          {
            v27 = sub_261D00274();
          }

          else
          {
            v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v29 = v75;
          v28 = v76;
          v74 = v21;
          if (v27)
          {
            v82 = MEMORY[0x277D84F90];
            sub_261B3A0E8(0, v27 & ~(v27 >> 63), 0);
            if (v27 < 0)
            {
              __break(1u);
              goto LABEL_45;
            }

            v30 = 0;
            v31 = v81;
            v32 = v82;
            do
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x26671CA10](v30, v25);
              }

              else
              {
                v33 = *(v25 + 8 * v30 + 32);
              }

              sub_261B73240(v33, v29);
              v82 = v32;
              v35 = v32[2];
              v34 = v32[3];
              if (v35 >= v34 >> 1)
              {
                sub_261B3A0E8(v34 > 1, v35 + 1, 1);
                v31 = v81;
                v32 = v82;
              }

              ++v30;
              v32[2] = v35 + 1;
              sub_261BA41C0(v29, v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v35, type metadata accessor for ListEntity);
            }

            while (v27 != v30);

            v28 = v76;
          }

          else
          {

            v32 = MEMORY[0x277D84F90];
          }

          sub_261BBBA5C(v32);
          v82 = 0;
          v21 = v74;
          v54 = [v74 fetchCustomSmartListsWithError_];
          v55 = v82;
          if (v54)
          {
            v56 = v54;
            sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
            v29 = sub_261CFFC64();
            v57 = v55;

            if (!(v29 >> 62))
            {
              v58 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v58)
              {
LABEL_32:
                v82 = MEMORY[0x277D84F90];
                sub_261B3A0E8(0, v58 & ~(v58 >> 63), 0);
                if (v58 < 0)
                {
                  __break(1u);
                }

                v59 = 0;
                v60 = v82;
                v61 = v80;
                do
                {
                  if ((v29 & 0xC000000000000001) != 0)
                  {
                    v62 = MEMORY[0x26671CA10](v59, v29);
                  }

                  else
                  {
                    v62 = *(v29 + 8 * v59 + 32);
                  }

                  v63 = v62;
                  v64 = v61;
                  sub_261B750A0(v63, v61, v28);
                  v82 = v60;
                  v65 = v28;
                  v67 = v60[2];
                  v66 = v60[3];
                  if (v67 >= v66 >> 1)
                  {
                    sub_261B3A0E8(v66 > 1, v67 + 1, 1);
                    v61 = v80;
                    v60 = v82;
                  }

                  ++v59;
                  v60[2] = v67 + 1;
                  sub_261BA41C0(v65, v60 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v67, type metadata accessor for ListEntity);
                  v28 = v65;
                }

                while (v58 != v59);

                goto LABEL_47;
              }

LABEL_46:

              v60 = MEMORY[0x277D84F90];
LABEL_47:
              sub_261BBBA5C(v60);
              v69 = v77;
              v70 = v78;
              sub_261B84F14(v80, v83, v77);

              if (!v70)
              {
                v72 = type metadata accessor for GroupEntity();
                (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
              }

              goto LABEL_49;
            }

LABEL_45:
            v58 = sub_261D00274();
            if (v58)
            {
              goto LABEL_32;
            }

            goto LABEL_46;
          }

          v68 = v82;

          sub_261CFD654();
        }

        else
        {
          v53 = v82;
          sub_261CFD654();
        }

        swift_willThrow();

        goto LABEL_49;
      }
    }

    v36 = v19;
    if (qword_27FED9970 != -1)
    {
      swift_once();
    }

    v37 = sub_261CFF7A4();
    __swift_project_value_buffer(v37, qword_27FEDB380);
    v38 = v79;
    v39 = sub_261CFF784();
    v40 = sub_261CFFE74();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_261AE2000, v39, v40, "[GroupEntityGroupQueryPerforming] Should not happen that the group fetched with a list ID not being a group: %{public}@", v41, 0xCu);
      sub_261AE6A40(v42, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v42, -1, -1);
      MEMORY[0x26671D560](v41, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v44 = 20;
    swift_willThrow();
  }

  else
  {
    if (qword_27FED9970 != -1)
    {
      swift_once();
    }

    v45 = sub_261CFF7A4();
    __swift_project_value_buffer(v45, qword_27FEDB380);
    v46 = v79;
    v47 = sub_261CFF784();
    v48 = sub_261CFFE64();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138543362;
      *(v49 + 4) = v46;
      *v50 = v46;
      v51 = v46;
      _os_log_impl(&dword_261AE2000, v47, v48, "[GroupEntityGroupQueryPerforming] Could not fetch list with %{public}@", v49, 0xCu);
      sub_261AE6A40(v50, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v50, -1, -1);
      MEMORY[0x26671D560](v49, -1, -1);
      v46 = v47;
      v47 = v51;
    }

    v52 = type metadata accessor for GroupEntity();
    (*(*(v52 - 8) + 56))(v77, 1, 1, v52);
  }

LABEL_49:
  v71 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261BA1D0C()
{
  v39 = v0;
  if (qword_27FED9970 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v1 = v0[4];
    v2 = sub_261CFF7A4();
    __swift_project_value_buffer(v2, qword_27FEDB380);
    sub_261CFD104();
    v3 = sub_261CFF784();
    v4 = sub_261CFFE84();

    v36 = v0;
    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[3];
      v5 = v0[4];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_261B879C8(v6, v5, v37);
      _os_log_impl(&dword_261AE2000, v3, v4, "[GroupEntityGroupQueryPerforming] Query groups matching string %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26671D560](v8, -1, -1);
      MEMORY[0x26671D560](v7, -1, -1);
    }

    v9 = v0[4];
    v10 = *(v0[5] + 16);
    v37[0] = v0[3];
    v37[1] = v9;
    sub_261CFEFE4();
    sub_261CFD104();
    v11 = sub_261CFEF54();
    v35 = *(v11 + 16);
    if (!v35)
    {
      break;
    }

    v12 = 0;
    v33 = v0[8];
    v13 = MEMORY[0x277D84F90];
    v34 = v11;
    while (v12 < *(v11 + 16))
    {
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[7];
      v17 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v18 = *(v33 + 72);
      (*(v33 + 16))(v14, v11 + v17 + v18 * v12, v16);
      v19 = *(v33 + 32);
      v19(v15, v14, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261B3A064(0, *(v13 + 16) + 1, 1);
        v13 = v38;
      }

      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      v0 = v36;
      if (v22 >= v21 >> 1)
      {
        sub_261B3A064(v21 > 1, v22 + 1, 1);
        v13 = v38;
      }

      ++v12;
      v23 = v36[9];
      v24 = v36[7];
      *(v13 + 16) = v22 + 1;
      v19(v13 + v17 + v22 * v18, v23, v24);
      v11 = v34;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_14:

  sub_261BA0588(v13, v37);
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[6];
  v29 = v0[4];
  v30 = v0[2];

  v31 = sub_261CFD6A4();
  (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
  type metadata accessor for GroupEntity();
  sub_261BA4168();
  sub_261CFCFC4();

  v32 = v0[1];

  return v32();
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_261CFEFD4();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v10 = type metadata accessor for ListEntity();
  v4[19] = v10;
  v11 = *(v10 - 8);
  v4[20] = v11;
  v12 = *(v11 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261BA230C, 0, 0);
}

uint64_t sub_261BA230C()
{
  v120 = v0;
  v119 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_261B425D4(v0[9], v3);
  v116 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_261AE6A40(v0[18], &unk_27FEDE0C0, &unk_261D02500);
    if (qword_27FED9970 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v4 = sub_261CFF7A4();
      __swift_project_value_buffer(v4, qword_27FEDB380);
      v5 = sub_261CFF784();
      v6 = sub_261CFFE84();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_261AE2000, v5, v6, "[GroupEntityGroupQueryPerforming] Query suggested groups in all accounts", v7, 2u);
        MEMORY[0x26671D560](v7, -1, -1);
      }

      v8 = v0[10];

      v9 = *(v8 + 16);
      sub_261CFEFE4();
      v117 = 0;
      v118 = 0;
      v10 = sub_261CFEF54();
      v114 = *(v10 + 16);
      if (!v114)
      {
        break;
      }

      v11 = 0;
      v110 = v0[13];
      v12 = MEMORY[0x277D84F90];
      v112 = v10;
      while (v11 < *(v10 + 16))
      {
        v14 = v0[14];
        v13 = v0[15];
        v15 = v0[12];
        v16 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v17 = *(v110 + 72);
        (*(v110 + 16))(v13, v10 + v16 + v17 * v11, v15);
        v18 = *(v110 + 32);
        v18(v14, v13, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261B3A064(0, *(v12 + 16) + 1, 1);
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        v0 = v116;
        if (v20 >= v19 >> 1)
        {
          sub_261B3A064(v19 > 1, v20 + 1, 1);
        }

        ++v11;
        v21 = v116[14];
        v22 = v116[12];
        *(v12 + 16) = v20 + 1;
        v18(v12 + v16 + v20 * v17, v21, v22);
        v10 = v112;
        if (v114 == v11)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
    }

    v12 = MEMORY[0x277D84F90];
LABEL_33:

    sub_261BA0588(v12, &v117);
    v80 = v0[11];
    v81 = v0[8];

    v82 = sub_261CFD6A4();
    (*(*(v82 - 8) + 56))(v80, 1, 1, v82);
    type metadata accessor for GroupEntity();
    sub_261BA4168();
    sub_261CFCFC4();
  }

  else
  {
    v23 = v0[22];
    v24 = v0[18];
    v25 = v0[19];
    v26 = v0[10];
    sub_261BA41C0(v24, v23, type metadata accessor for ListEntity);
    v27 = *(v26 + 16);
    v28 = (v23 + *(v25 + 20));
    v29 = type metadata accessor for AppEntityID();
    v30 = *(v29 + 20);
    v31 = *v28;
    v32 = v28[1];
    v33 = objc_allocWithZone(MEMORY[0x277D44700]);
    v34 = sub_261CFD814();
    v35 = sub_261CFFA54();
    v36 = [v33 initWithUUID:v34 entityName:v35];

    v116[7] = 0;
    v37 = [v27 fetchListWithObjectID:v36 error:v116 + 7];

    v38 = v116[7];
    if (!v37)
    {
      v62 = v116[22];
      v63 = v38;
      sub_261CFD654();

      swift_willThrow();
      sub_261BA42B0(v62, type metadata accessor for ListEntity);
      v84 = v116[21];
      v83 = v116[22];
      v86 = v116[17];
      v85 = v116[18];
      v87 = v116[16];
      v88 = v116[15];
      v89 = v116[14];
      v90 = v116[11];

      v91 = v116[1];
      v92 = *MEMORY[0x277D85DE8];
      goto LABEL_36;
    }

    v39 = qword_27FED9970;
    v40 = v38;
    if (v39 != -1)
    {
      swift_once();
    }

    v42 = v116[21];
    v41 = v116[22];
    v43 = sub_261CFF7A4();
    __swift_project_value_buffer(v43, qword_27FEDB380);
    sub_261BA4248(v41, v42, type metadata accessor for ListEntity);
    v44 = v37;
    v0 = v116;
    v45 = sub_261CFF784();
    v46 = sub_261CFFE84();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v116[21];
    v49 = &unk_279AFB000;
    if (v47)
    {
      v50 = swift_slowAlloc();
      v107 = v44;
      v51 = swift_slowAlloc();
      *v50 = 138543618;
      v52 = (v48 + *(v25 + 20));
      v53 = *(v29 + 20);
      v55 = *v52;
      v54 = v52[1];
      v56 = objc_allocWithZone(MEMORY[0x277D44700]);
      v57 = sub_261CFD814();
      v58 = sub_261CFFA54();
      v59 = [v56 initWithUUID:v57 entityName:v58];

      sub_261BA42B0(v48, type metadata accessor for ListEntity);
      *(v50 + 4) = v59;
      *v51 = v59;
      *(v50 + 12) = 2114;
      v60 = [v107 account];
      v61 = [v60 objectID];

      v49 = &unk_279AFB000;
      *(v50 + 14) = v61;
      v51[1] = v61;
      _os_log_impl(&dword_261AE2000, v45, v46, "[GroupEntityGroupQueryPerforming] Query suggested groups for list: %{public}@ within account: %{public}@}", v50, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
      swift_arrayDestroy();
      v44 = v107;
      MEMORY[0x26671D560](v51, -1, -1);
      v0 = v116;
      MEMORY[0x26671D560](v50, -1, -1);
    }

    else
    {

      sub_261BA42B0(v48, type metadata accessor for ListEntity);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D030F0;
    *(inited + 32) = [v44 v49[160]];
    sub_261CFEFE4();
    v117 = 0;
    v118 = 0;
    v65 = sub_261CFEF54();
    v108 = v44;
    v115 = *(v65 + 16);
    v66 = 0;
    if (v115)
    {
      v67 = 0;
      v68 = v0[13];
      v111 = (v68 + 32);
      v69 = MEMORY[0x277D84F90];
      v113 = v65;
      do
      {
        if (v67 >= *(v65 + 16))
        {
          goto LABEL_41;
        }

        v70 = v0[17];
        v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v72 = *(v68 + 72);
        (*(v68 + 16))(v70, v65 + v71 + v72 * v67, v0[12]);
        v73 = swift_task_alloc();
        *(v73 + 16) = v70;
        LOBYTE(v70) = sub_261BA0984(sub_261BA4228, v73, inited);
        v0 = v116;

        if (v70)
        {
          v109 = v66;
          v74 = inited;
          v75 = *v111;
          (*v111)(v116[16], v116[17], v116[12]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261B3A064(0, *(v69 + 16) + 1, 1);
          }

          v77 = *(v69 + 16);
          v76 = *(v69 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_261B3A064(v76 > 1, v77 + 1, 1);
          }

          v0 = v116;
          v78 = v116[16];
          v79 = v116[12];
          *(v69 + 16) = v77 + 1;
          v75(v69 + v71 + v77 * v72, v78, v79);
          inited = v74;
          v66 = v109;
        }

        else
        {
          (*(v68 + 8))(v116[17], v116[12]);
        }

        ++v67;
        v65 = v113;
      }

      while (v115 != v67);
    }

    else
    {
      v69 = MEMORY[0x277D84F90];
    }

    sub_261BA0588(v69, &v117);
    v94 = v0[22];
    v95 = v0[11];
    v96 = v0[8];

    v97 = sub_261CFD6A4();
    (*(*(v97 - 8) + 56))(v95, 1, 1, v97);
    type metadata accessor for GroupEntity();
    sub_261BA4168();
    v0 = v116;
    sub_261CFCFC4();

    sub_261BA42B0(v94, type metadata accessor for ListEntity);
  }

  v99 = v0[21];
  v98 = v0[22];
  v101 = v0[17];
  v100 = v0[18];
  v103 = v0[15];
  v102 = v0[16];
  v104 = v116[14];
  v105 = v116[11];

  v91 = v116[1];
  v106 = *MEMORY[0x277D85DE8];
LABEL_36:

  return v91();
}

uint64_t sub_261BA2E58(void **a1)
{
  v1 = *a1;
  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  v2 = [v1 objectID];
  v3 = sub_261CFEF84();
  v4 = [v3 objectID];

  LOBYTE(v3) = sub_261D000F4();
  return v3 & 1;
}

uint64_t sub_261BA2F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v48[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = v48 - v12;
  v13 = type metadata accessor for GroupEntity();
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v57 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA690, &qword_261D03248);
  v56 = *(v20 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v48 - v22;
  v24 = sub_261CFD6A4();
  v49 = *(v24 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_261CFEF94();
  v29 = sub_261BA078C(v28, a2);

  if (v4)
  {
    *v60 = v4;
  }

  else
  {
    v48[3] = a1;
    v31 = v58;
    v51 = v24;
    v52 = v20;
    v60 = v19;
    v53 = v27;
    v32 = *(v29 + 16);
    if (v32)
    {
      v48[2] = 0;
      v61 = MEMORY[0x277D84F90];
      sub_261B3A2B8(0, v32, 0);
      v33 = v61;
      v34 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v48[1] = v29;
      v35 = v29 + v34;
      v36 = *(v59 + 72);
      v49 += 56;
      v50 = v36;
      v37 = v57;
      v48[5] = v56 + 32;
      v38 = v60;
      do
      {
        v59 = v32;
        sub_261BA4248(v35, v38, type metadata accessor for GroupEntity);
        sub_261BA4248(v38, v37, type metadata accessor for GroupEntity);
        v39 = *(v60 + *(v58 + 24));
        sub_261CFCA04();
        sub_261CFD664();
        (*v49)(v54, 1, 1, v51);
        v40 = sub_261CFD074();
        (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
        sub_261BA4168();
        v38 = v60;
        sub_261CFC7F4();
        sub_261BA42B0(v38, type metadata accessor for GroupEntity);
        v61 = v33;
        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_261B3A2B8(v41 > 1, v42 + 1, 1);
          v33 = v61;
        }

        *(v33 + 16) = v42 + 1;
        (*(v56 + 32))(v33 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v23, v52);
        v35 += v50;
        v32 = v59 - 1;
        v43 = v53;
        v37 = v57;
      }

      while (v59 != 1);

      v44 = v58;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
      v43 = v53;
      v44 = v31;
    }

    v45 = sub_261CFEF84();
    v46 = [v45 displayName];

    sub_261CFFA74();
    sub_261CFD664();
    v47 = sub_261BA4168();
    return MEMORY[0x2667195E0](v43, v33, v44, v47);
  }

  return result;
}

uint64_t *sub_261BA3488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v60 - v7;
  v8 = type metadata accessor for ListEntity();
  v82 = *(v8 - 8);
  v9 = *(v82 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v81 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v79 = (&v60 - v12);
  v77 = type metadata accessor for GroupEntity();
  v80 = *(v77 - 8);
  v13 = *(v80 + 64);
  v14 = MEMORY[0x28223BE20](v77);
  v76 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v60 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v18);
  v62 = (&v60 - v21);
  v75 = sub_261CFEF64();
  v22 = *(v75 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v75);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_261CFEFA4();
  v63 = *(v64 - 8);
  v26 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_261CFEF74();
  v30 = *(v29 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v33, a1, v29);
  v34 = (*(v30 + 88))(v33, v29);
  if (v34 == *MEMORY[0x277D452F8] || v34 == *MEMORY[0x277D452F0])
  {
    (*(v30 + 8))(v33, v29);
    v33 = MEMORY[0x277D84F90];
    v35 = v66;
    result = *(a2 + 8);
    if (result)
    {
      while (1)
      {
        v75 = *a2;
        v37 = v33[2];
        v79 = result;
        sub_261CFD104();
        v74 = v37;
        if (!v37)
        {
          break;
        }

        v38 = 0;
        v39 = MEMORY[0x277D84F90];
        v73 = v33;
        while (1)
        {
          v40 = v33[2];
          if (v38 >= v40)
          {
            break;
          }

          v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
          v81 = *(v80 + 72);
          sub_261BA4248(v33 + v82 + v81 * v38, v35, type metadata accessor for GroupEntity);
          v41 = *(v35 + *(v77 + 24));
          sub_261CFCA04();
          v29 = v86;
          v42 = v78;
          sub_261CFD874();
          v43 = sub_261CFD884();
          (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
          sub_261B3BA3C();
          a2 = v35;
          v22 = MEMORY[0x277D837D0];
          v44 = sub_261D00194();
          v46 = v45;
          sub_261AE6A40(v42, &qword_27FEDA708, &qword_261D03298);

          v85 = v44;
          v86 = v46;
          v83 = v75;
          v84 = v79;
          v28 = sub_261D00184();

          if (v28)
          {
            sub_261BA41C0(v35, v76, type metadata accessor for GroupEntity);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87 = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = &v87;
              sub_261B3A2F8(0, v39[2] + 1, 1);
              v39 = v87;
            }

            v33 = v73;
            v49 = v39[2];
            v48 = v39[3];
            v29 = (v49 + 1);
            if (v49 >= v48 >> 1)
            {
              v28 = &v87;
              sub_261B3A2F8(v48 > 1, v49 + 1, 1);
              v39 = v87;
            }

            v39[2] = v29;
            sub_261BA41C0(v76, v39 + v82 + v49 * v81, type metadata accessor for GroupEntity);
          }

          else
          {
            sub_261BA42B0(v35, type metadata accessor for GroupEntity);
            v33 = v73;
          }

          if (v74 == ++v38)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v33 = sub_261B42224(v40 > 1, v39, 1, v33);
LABEL_39:
        v35 = v66;
        sub_261BA42B0(v29, type metadata accessor for GroupEntity);
        (*(v63 + 8))(v28, v64);
        v33[2] = v39;
        sub_261BA41C0(v22, v33 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v38, type metadata accessor for GroupEntity);
        result = *(a2 + 8);
        if (!result)
        {
          goto LABEL_34;
        }
      }

      v39 = MEMORY[0x277D84F90];
LABEL_33:

      v33 = v39;
    }

LABEL_34:
    *v65 = v33;
    return result;
  }

  if (v34 != *MEMORY[0x277D45300])
  {
    goto LABEL_45;
  }

  v60 = v20;
  v61 = a2;
  v50 = *(v30 + 96);
  v39 = (v30 + 96);
  v50(v33, v29);
  (*(v63 + 32))(v28, v33, v64);
  v51 = sub_261CFEF94();
  v74 = *(v51 + 16);
  if (!v74)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_36:

    v58 = sub_261CFEF84();
    v29 = v62;
    v59 = v67;
    sub_261B84F14(v58, v38, v62);
    v67 = v59;
    a2 = v61;
    if (!v59)
    {
      v22 = v60;
      sub_261BA4248(v29, v60, type metadata accessor for GroupEntity);
      v33 = sub_261B42224(0, 1, 1, MEMORY[0x277D84F90]);
      v38 = v33[2];
      v40 = v33[3];
      v39 = (v38 + 1);
      if (v38 >= v40 >> 1)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    return (*(v63 + 8))(v28, v64);
  }

  v52 = 0;
  v71 = v22 + 88;
  v72 = v22 + 16;
  v70 = *MEMORY[0x277D452E8];
  v68 = *MEMORY[0x277D452E0];
  v69 = (v22 + 96);
  v38 = MEMORY[0x277D84F90];
  v73 = v51;
  while (1)
  {
    v40 = *(v51 + 16);
    if (v52 >= v40)
    {
      goto LABEL_42;
    }

    v53 = v75;
    (*(v22 + 16))(v25, v51 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v52, v75);
    v54 = (*(v22 + 88))(v25, v53);
    if (v54 != v70)
    {
      break;
    }

    (*v69)(v25, v53);
    v29 = *v25;
    sub_261B73240(v29, v79);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_261B419E8(0, *(v38 + 16) + 1, 1, v38);
    }

    a2 = *(v38 + 16);
    v55 = *(v38 + 24);
    v33 = (a2 + 1);
    if (a2 >= v55 >> 1)
    {
      v38 = sub_261B419E8(v55 > 1, a2 + 1, 1, v38);
    }

    v39 = v79;
LABEL_19:
    ++v52;

    *(v38 + 16) = v33;
    sub_261BA41C0(v39, v38 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * a2, type metadata accessor for ListEntity);
    v51 = v73;
    if (v74 == v52)
    {
      goto LABEL_36;
    }
  }

  if (v54 == v68)
  {
    (*v69)(v25, v53);
    v29 = *v25;
    v56 = sub_261CFEF84();
    sub_261B750A0(v29, v56, v81);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_261B419E8(0, *(v38 + 16) + 1, 1, v38);
    }

    a2 = *(v38 + 16);
    v57 = *(v38 + 24);
    v33 = (a2 + 1);
    if (a2 >= v57 >> 1)
    {
      v38 = sub_261B419E8(v57 > 1, a2 + 1, 1, v38);
    }

    v39 = v81;
    goto LABEL_19;
  }

  sub_261D00604();
  __break(1u);
LABEL_45:
  result = sub_261D00604();
  __break(1u);
  return result;
}

uint64_t sub_261BA3F70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B0D584;

  return REMStoreIntentPerformer.entities(query:for:)(v6, a2);
}

uint64_t sub_261BA4008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.entities(query:matching:)(a1, v10, a3, a4);
}

uint64_t sub_261BA40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.suggestedEntities(query:for:)(a1, v8, a3);
}

unint64_t sub_261BA4168()
{
  result = qword_280D22668;
  if (!qword_280D22668)
  {
    type metadata accessor for GroupEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22668);
  }

  return result;
}

uint64_t sub_261BA41C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BA4248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BA42B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BA431C()
{
  sub_261D006C4();
  sub_261CFFB14();
  return sub_261D006F4();
}

uint64_t sub_261BA4364()
{
  sub_261D006C4();
  sub_261CFFB14();
  return sub_261D006F4();
}

uint64_t sub_261BA43B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  *a2 = v5 != 0;
  return result;
}

RemindersAppIntents::SmartListPrefetchStrategyRepresentation::Identifiers_optional __swiftcall SmartListPrefetchStrategyRepresentation.Identifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SmartListPrefetchStrategyRepresentation.Identifiers.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_261BA44B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "SmartListPrefetchStrategy.all";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000029;
  }

  if (v2 == 1)
  {
    v6 = "SmartListPrefetchStrategy.all";
  }

  else
  {
    v6 = "hStrategy.initial";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "internalAppIntent";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000029;
    v3 = "hStrategy.initial";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "internalAppIntent";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261BA4590()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BA462C()
{
  *v0;
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261BA46B4()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261BA4758(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "SmartListPrefetchStrategy.all";
  v4 = 0xD000000000000021;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000029;
    v3 = "hStrategy.initial";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "internalAppIntent";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t SmartListPrefetchStrategyRepresentation.entitySpecification.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    v5 = *(sub_261CFEBA4() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261BA4A70();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    v2 = *(sub_261CFEBA4() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261BA49C8();
LABEL_5:
    sub_261CFEB94();
    sub_261BA4A1C();
    sub_261CFEB34();
  }

  sub_261BA4A1C();
  return sub_261CFEB34();
}

unint64_t sub_261BA49C8()
{
  result = qword_27FEDB3A0;
  if (!qword_27FEDB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3A0);
  }

  return result;
}

unint64_t sub_261BA4A1C()
{
  result = qword_27FEDB3A8;
  if (!qword_27FEDB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3A8);
  }

  return result;
}

unint64_t sub_261BA4A70()
{
  result = qword_27FEDB3B0;
  if (!qword_27FEDB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3B0);
  }

  return result;
}

uint64_t static SmartListPrefetchStrategyRepresentation.from(_:context:)@<X0>(uint64_t a1@<X8>)
{
  sub_261CFEB44();
  __swift_project_boxed_opaque_existential_1(&v8, v10);
  sub_261CFEAA4();
  v2 = sub_261D00554();

  result = __swift_destroy_boxed_opaque_existential_0(&v8);
  if (v2 == 2)
  {
    result = sub_261CFEB54();
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }

    if (v9)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    *a1 = v6;
    *(a1 + 8) = v7;
  }

  else
  {
    if (v2 == 1)
    {
      result = sub_261CFEB54();
      v4 = v9 << 31 >> 31;
      v5 = v8;
      if (v9)
      {
        v5 = 0;
      }

      *a1 = v5;
    }

    else
    {
      *a1 = 0;
      if (v2)
      {
        LOBYTE(v4) = -1;
      }

      else
      {
        LOBYTE(v4) = 2;
      }
    }

    *(a1 + 8) = v4;
  }

  return result;
}

unint64_t sub_261BA4C10()
{
  result = qword_27FEDB3B8;
  if (!qword_27FEDB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3B8);
  }

  return result;
}

unint64_t sub_261BA4C68()
{
  result = qword_27FEDB3C0;
  if (!qword_27FEDB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3C0);
  }

  return result;
}

unint64_t sub_261BA4CC0()
{
  result = qword_27FEDB3C8;
  if (!qword_27FEDB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3C8);
  }

  return result;
}

unint64_t sub_261BA4D20()
{
  result = qword_27FEDB3D0;
  if (!qword_27FEDB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3D0);
  }

  return result;
}

uint64_t sub_261BA4D74(uint64_t a1)
{
  v2 = sub_261BA52DC();

  return MEMORY[0x28213DA70](a1, v2);
}

uint64_t sub_261BA4DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261BA52DC();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_261BA4DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261BA52DC();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

unint64_t sub_261BA4E64()
{
  result = qword_27FEDB3D8;
  if (!qword_27FEDB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3D8);
  }

  return result;
}

uint64_t sub_261BA4EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_261BA52DC();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_261BA4FA4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_261BA4FBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation.Identifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation.Identifiers(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemindersInCalendarUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RemindersInCalendarUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_261BA5230()
{
  result = qword_27FEDB3E0;
  if (!qword_27FEDB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3E0);
  }

  return result;
}

unint64_t sub_261BA5288()
{
  result = qword_27FEDB3E8;
  if (!qword_27FEDB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3E8);
  }

  return result;
}

unint64_t sub_261BA52DC()
{
  result = qword_27FEDB3F0;
  if (!qword_27FEDB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3F0);
  }

  return result;
}

uint64_t RemotePreferencesEntity.timeZoneOverride.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_261BA53A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB418, &unk_261D06050);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDB3F8 = result;
  return result;
}

uint64_t RemotePreferencesEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB418, &unk_261D06050);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t static RemotePreferencesEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB3F8;
  return sub_261CFCDA4();
}

uint64_t static RemotePreferencesEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB3F8 = v1;
}

uint64_t (*static RemotePreferencesEntity.defaultQuery.modify())()
{
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BA5638@<X0>(void *a1@<X8>)
{
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB3F8;
  return sub_261CFCDA4();
}

uint64_t sub_261BA56B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9978;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB3F8 = v1;
}

uint64_t sub_261BA5740()
{
  v0 = sub_261CFD234();
  __swift_allocate_value_buffer(v0, qword_27FEDB400);
  __swift_project_value_buffer(v0, qword_27FEDB400);
  return sub_261CFD214();
}

uint64_t static RemotePreferencesEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RemotePreferencesEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RemotePreferencesEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDB400);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261BA59EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BA5AAC(uint64_t a1)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t RemotePreferencesEntity.init(deferredPropertyPerformer:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  swift_getKeyPath();
  sub_261BA5C14();
  *a2 = sub_261CFCB04();

  return sub_261AE49F0(a1, (a2 + 1));
}

unint64_t sub_261BA5C14()
{
  result = qword_27FEDB420;
  if (!qword_27FEDB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB420);
  }

  return result;
}

uint64_t sub_261BA5C68@<X0>(uint64_t *a1@<X8>)
{
  sub_261BA6318();
  result = sub_261CFC634();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261BA5CA8(uint64_t a1)
{
  v2 = sub_261BA5C14();

  return MEMORY[0x28210B488](a1, v2);
}

void sub_261BA5CF4()
{
  sub_261BA6318();

  JUMPOUT(0x266718CF0);
}

uint64_t sub_261BA5D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_261AF43A8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_261BA5E04(uint64_t a1)
{
  v2 = sub_261BA619C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t RemotePreferencesEntityQuery.uniqueEntity()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_261CFC664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  swift_getKeyPath();
  sub_261BA5C14();
  result = sub_261CFCB04();
  *a1 = result;
  return result;
}

unint64_t sub_261BA5EDC()
{
  result = qword_27FEDB428;
  if (!qword_27FEDB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB428);
  }

  return result;
}

unint64_t sub_261BA5F34()
{
  result = qword_27FEDB430;
  if (!qword_27FEDB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB430);
  }

  return result;
}

unint64_t sub_261BA5F8C()
{
  result = qword_27FEDB438;
  if (!qword_27FEDB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB438);
  }

  return result;
}

unint64_t sub_261BA5FE4()
{
  result = qword_27FEDB440;
  if (!qword_27FEDB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB440);
  }

  return result;
}

unint64_t sub_261BA6038()
{
  result = qword_27FEDB448;
  if (!qword_27FEDB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB448);
  }

  return result;
}

unint64_t sub_261BA609C()
{
  result = qword_27FEDB450;
  if (!qword_27FEDB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB450);
  }

  return result;
}

unint64_t sub_261BA60F0()
{
  result = qword_27FEDB458;
  if (!qword_27FEDB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB458);
  }

  return result;
}

unint64_t sub_261BA6144()
{
  result = qword_27FEDB460;
  if (!qword_27FEDB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB460);
  }

  return result;
}

unint64_t sub_261BA619C()
{
  result = qword_27FEDB468;
  if (!qword_27FEDB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB468);
  }

  return result;
}

unint64_t sub_261BA6200()
{
  result = qword_27FEDB470;
  if (!qword_27FEDB470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB478, &qword_261D06200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB470);
  }

  return result;
}

unint64_t sub_261BA6268()
{
  result = qword_27FEDB480;
  if (!qword_27FEDB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB480);
  }

  return result;
}

unint64_t sub_261BA62C0()
{
  result = qword_27FEDB488;
  if (!qword_27FEDB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB488);
  }

  return result;
}

unint64_t sub_261BA6318()
{
  result = qword_27FEDB490;
  if (!qword_27FEDB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB490);
  }

  return result;
}

uint64_t sub_261BA636C(uint64_t *a1)
{
  v4 = *v1;
  sub_261CFC664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  swift_getKeyPath();
  sub_261BA5C14();
  *a1 = sub_261CFCB04();
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_261BA6434(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CB9B80] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_261BA5EDC();
  *v5 = v2;
  v5[1] = sub_261BA64E4;

  return MEMORY[0x28210B2B8](a2, v6);
}

uint64_t sub_261BA64E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_261BA65FC()
{
  result = qword_27FEDB498;
  if (!qword_27FEDB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB498);
  }

  return result;
}

unint64_t sub_261BA6654()
{
  result = qword_27FEDB4A0;
  if (!qword_27FEDB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB4A0);
  }

  return result;
}

uint64_t sub_261BA66A8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB418, &unk_261D06050);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261BA6734(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9B90] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261BA5EDC();
  *v6 = v2;
  v6[1] = sub_261B4276C;

  return MEMORY[0x28210B2C8](a1, a2, v7);
}

uint64_t sub_261BA67E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CB9B88] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_261BA5EDC();
  *v5 = v2;
  v5[1] = sub_261BA6EA0;

  return MEMORY[0x28210B2C0](a2, v6);
}

unint64_t sub_261BA689C()
{
  result = qword_27FEDB4A8;
  if (!qword_27FEDB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB4A8);
  }

  return result;
}

unint64_t sub_261BA68F4()
{
  result = qword_27FEDB4B0;
  if (!qword_27FEDB4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB4B8, qword_261D063C8);
    sub_261BA6144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB4B0);
  }

  return result;
}

uint64_t sub_261BA6978(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261BA6038();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_261BA6A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_261AF4BDC;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t destroy for RemotePreferencesEntity(uint64_t *a1)
{
  v2 = a1 + 1;
  v1 = *a1;

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t initializeWithCopy for RemotePreferencesEntity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);
  sub_261CFCDA4();
  v6(a1 + 8, a2 + 8, v5);
  return a1;
}

uint64_t *assignWithCopy for RemotePreferencesEntity(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 1;
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  __swift_assign_boxed_opaque_existential_1(a1 + 1, v3);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;
        sub_261CFCDA4();

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
          sub_261CFCDA4();
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
          sub_261CFCDA4();
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t *assignWithTake for RemotePreferencesEntity(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_0(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  return a1;
}

uint64_t sub_261BA6ED8(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t SmartListEntity.type.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCA14();
}

uint64_t (*SmartListEntity.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t SmartListEntity.isHidden.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261BA7050(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*SmartListEntity.isHidden.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t SmartListEntity.init(type:isHidden:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v38 = a2;
  v37 = sub_261CFEC94();
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_261CFD6A4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v35 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB4F8, &qword_261D06510);
  sub_261CFF9B4();
  sub_261CFD874();
  v18 = *MEMORY[0x277CC9110];
  v19 = *(v8 + 104);
  v19(v11, v18, v7);
  sub_261CFD6C4();
  sub_261B94D00();
  v34 = sub_261CFCA34();
  *a3 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB500, &unk_261D06518);
  sub_261CFF9B4();
  sub_261CFD874();
  v19(v11, v18, v7);
  sub_261CFD6B4();
  a3[1] = sub_261CFCB34();
  v20 = type metadata accessor for AnyListEntityLazyImage();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  *&v40 = MEMORY[0x277D84F90];
  sub_261BA9C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
  sub_261D001D4();
  v24 = sub_261CFECB4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v23 + 128) = sub_261CFECA4();
  v27 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v28 = sub_261CFD074();
  (*(*(v28 - 8) + 56))(v23 + v27, 1, 1, v28);
  v29 = v42;
  *(v23 + 65) = v43;
  v30 = v45;
  *(v23 + 81) = v44;
  *(v23 + 97) = v30;
  v31 = v41;
  *(v23 + 17) = v40;
  *(v23 + 33) = v31;
  v32 = v35;
  *(v23 + 16) = v35;
  *(v23 + 113) = v46;
  *(v23 + 49) = v29;
  *(v23 + 121) = 0;
  a3[2] = v23;
  v39 = v32;
  sub_261CFCA14();
  v39 = v38;
  return sub_261CFCA14();
}

unint64_t SmartListEntity.id.getter()
{
  v1 = *v0;
  sub_261CFCA04();
  v2 = 0xD000000000000023;
  v3 = 0xD000000000000025;
  v4 = 0xD000000000000026;
  if (v7 != 4)
  {
    v4 = 0xD000000000000027;
  }

  if (v7 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v7 == 1)
  {
    v5 = 0xD000000000000027;
  }

  if (v7)
  {
    v2 = v5;
  }

  if (v7 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t SmartListType.id.getter()
{
  v1 = 0xD000000000000027;
  v2 = *v0;
  v3 = 0xD000000000000025;
  v4 = 0xD000000000000026;
  if (v2 != 4)
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t SmartListEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v23[-v10];
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v23[-v18];
  v20 = v0[2];
  v21 = *v0;
  sub_261CFCA04();
  v23[14] = v23[15];
  sub_261BA7A10(v19);
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v13 + 16))(v17, v19, v12);
  (*(v13 + 56))(v4, 1, 1, v12);
  sub_261BA9C98(v11, v9);
  sub_261CFD0A4();
  sub_261AE6A40(v11, &qword_27FEDA6F0, &qword_261D01450);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_261BA7A10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD0B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = *v1;
  if (qword_280D223E0 != -1)
  {
    v21 = *v1;
    swift_once();
    v12 = v21;
  }

  v13 = off_280D223E8;
  if (*(off_280D223E8 + 2) && (v14 = sub_261B37E0C(v12), (v15 & 1) != 0))
  {
    (*(v4 + 16))(v7, v13[7] + *(v4 + 72) * v14, v3);
    sub_261CFD084();
    (*(v4 + 8))(v7, v3);
    v16 = sub_261CFD6A4();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 0, 1, v16);
    return (*(v17 + 32))(a1, v11, v16);
  }

  else
  {
    v19 = sub_261CFD6A4();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    sub_261CFD664();
    result = (*(v20 + 48))(v11, 1, v19);
    if (result != 1)
    {
      return sub_261AE6A40(v11, &unk_27FEDA6D0, &unk_261D02CD0);
    }
  }

  return result;
}

uint64_t static SmartListEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SmartListEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SmartListEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDB4C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261BA7F48@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BA8008(uint64_t a1)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_261BA80D0@<X0>(void *a1@<X8>)
{
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB4D8;
  return sub_261CFCDA4();
}

uint64_t static SmartListEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB4D8;
  return sub_261CFCDA4();
}

unint64_t sub_261BA81D0@<X0>(unint64_t *a1@<X8>)
{
  result = SmartListEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261BA81F8(uint64_t a1)
{
  v2 = sub_261B8485C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261BA8248(uint64_t a1)
{
  v2 = sub_261BA9EC4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261BA8294()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB188, &qword_261D05330);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDB4D8 = result;
  return result;
}

uint64_t static SmartListEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB4D8 = v1;
}

uint64_t (*static SmartListEntity.defaultQuery.modify())()
{
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SmartListType.title.getter()
{
  v1 = sub_261CFD0B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD6A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = *v0;
  if (qword_280D223E0 != -1)
  {
    v23 = *v0;
    swift_once();
    v17 = v23;
  }

  v18 = off_280D223E8;
  if (!*(off_280D223E8 + 2))
  {
    return 0;
  }

  v19 = sub_261B37E0C(v17);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  (*(v2 + 16))(v5, v18[7] + *(v2 + 72) * v19, v1);
  sub_261CFD084();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 32))(v16, v14, v6);
  (*(v7 + 16))(v11, v16, v6);
  v21 = sub_261CFFA94();
  (*(v7 + 8))(v16, v6);
  return v21;
}

uint64_t SmartListType.longTitle.getter()
{
  v1 = sub_261CFD884();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_261CFFA44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFD6A4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if (*v0 == 4)
  {
    sub_261CFF9B4();
    if (qword_280D22DA8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_280D27028);
    (*(v4 + 16))(v7, v12, v3);
    sub_261CFD874();
    sub_261CFD6C4();
    return sub_261CFFA94();
  }

  else
  {
    v14[15] = *v0;
    return SmartListType.title.getter();
  }
}

uint64_t sub_261BA8934(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v24 = sub_261CFD674();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_261CFFA44();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_261CFD6A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = sub_261CFD234();
  __swift_allocate_value_buffer(v21, a2);
  __swift_project_value_buffer(v21, a2);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v10 + 104))(v13, *MEMORY[0x277CC9110], v24);
  sub_261CFD6C4();
  (*(v19 + 56))(v9, 1, 1, v18);
  return sub_261CFD224();
}

uint64_t static SmartListType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9998 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BA8CB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v79 = &v59 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v59 - v5;
  v6 = sub_261CFD884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_261CFD674();
  v9 = *(v78 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v78);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_261CFD6A4();
  v17 = *(v80 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v80);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB528, &qword_261D06A50);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB530, &qword_261D06A58);
  v22 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  v77 = *(*(v21 - 8) + 72);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_261D05320;
  v65 = v23;
  v81 = v21;
  v82 = v23 + v22;
  v24 = *(v21 + 48);
  *(v23 + v22) = 0;
  v25 = v16;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v26 = v78;
  v68 = __swift_project_value_buffer(v78, qword_280D27028);
  v27 = v9 + 16;
  v75 = *(v9 + 16);
  v75(v12, v68, v26);
  sub_261CFD874();
  v28 = v20;
  v29 = v12;
  sub_261CFD6C4();
  v30 = *(v17 + 56);
  v67 = v17 + 56;
  v74 = v30;
  v31 = v76;
  v30(v76, 1, 1, v80);
  v71 = sub_261CFD074();
  v32 = *(v71 - 8);
  v73 = *(v32 + 56);
  v70 = v32 + 56;
  v33 = v79;
  v73(v79, 1, 1, v71);
  v34 = v82;
  sub_261CFD0A4();
  v69 = v27;
  v35 = *(v81 + 48);
  v63 = v34 + v77;
  v64 = v35;
  *v63 = 1;
  v66 = v25;
  sub_261CFF9B4();
  v36 = v68;
  v37 = v78;
  v75(v29, v68, v78);
  sub_261CFD874();
  v61 = v28;
  sub_261CFD6C4();
  v38 = v31;
  v39 = v80;
  v74(v38, 1, 1, v80);
  v73(v33, 1, 1, v71);
  sub_261CFD0A4();
  v40 = v77;
  v64 = 2 * v77;
  v62 = (v82 + 2 * v77);
  v41 = v81;
  v63 = *(v81 + 48);
  *v62 = 2;
  sub_261CFF9B4();
  v42 = v36;
  v43 = v75;
  v75(v29, v42, v37);
  sub_261CFD874();
  sub_261CFD6C4();
  v74(v76, 1, 1, v39);
  v44 = v71;
  v73(v79, 1, 1, v71);
  sub_261CFD0A4();
  v45 = v82;
  v46 = *(v41 + 48);
  v63 = v82 + v64 + v40;
  v64 = v46;
  *v63 = 3;
  sub_261CFF9B4();
  v60 = v29;
  v47 = v68;
  v48 = v78;
  v43(v29, v68, v78);
  sub_261CFD874();
  sub_261CFD6C4();
  v49 = v74;
  v74(v76, 1, 1, v80);
  v73(v79, 1, 1, v44);
  sub_261CFD0A4();
  v64 = 4 * v77;
  v63 = *(v81 + 48);
  *(v45 + v64) = 4;
  sub_261CFF9B4();
  v50 = v60;
  v75(v60, v47, v48);
  sub_261CFD874();
  sub_261CFD6C4();
  v51 = v76;
  v52 = v80;
  v49(v76, 1, 1, v80);
  v53 = v79;
  v54 = v73;
  v73(v79, 1, 1, v71);
  v55 = v51;
  sub_261CFD0A4();
  v56 = (v82 + v64 + v77);
  v77 = *(v81 + 48);
  *v56 = 5;
  sub_261CFF9B4();
  v75(v50, v68, v78);
  sub_261CFD874();
  sub_261CFD6C4();
  v74(v55, 1, 1, v52);
  v54(v53, 1, 1, v71);
  sub_261CFD0A4();
  v57 = sub_261C3A1F0(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_280D223E8 = v57;
  return result;
}

uint64_t static SmartListType.caseDisplayRepresentations.getter()
{
  if (qword_280D223E0 != -1)
  {
    swift_once();
  }

  return sub_261CFD104();
}

RemindersAppIntents::SmartListType_optional __swiftcall SmartListType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SmartListType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x64656767616C66;
  v4 = 0x64656E6769737361;
  if (v1 != 4)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C756465686373;
  if (v1 != 1)
  {
    v5 = 7105633;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261BA982C()
{
  *v0;
  *v0;
  *v0;
  sub_261CFFB14();
}

void sub_261BA992C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xE700000000000000;
  v6 = 0x64656767616C66;
  v7 = 0xE800000000000000;
  v8 = 0x64656E6769737361;
  if (v2 != 4)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE900000000000064;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (v2 != 1)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_261BA99F8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000027;
  v3 = *v1;
  v4 = "ers.smartlist.assigned";
  v5 = 0xD000000000000025;
  v6 = "ers.smartlist.completed";
  v7 = 0xD000000000000026;
  if (v3 != 4)
  {
    v7 = 0xD000000000000027;
    v6 = " Hidden Property Title";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "ers.smartlist.all";
  if (v3 != 1)
  {
    v2 = 0xD000000000000021;
    v8 = "ers.smartlist.flagged";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000023;
    v9 = "ers.smartlist.scheduled";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_261BA9AA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9998 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BA9B4C(uint64_t a1)
{
  v2 = sub_261B94D00();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BA9B98()
{
  if (qword_280D223E0 != -1)
  {
    swift_once();
  }

  return sub_261CFD104();
}

uint64_t sub_261BA9BF4(uint64_t a1)
{
  v2 = sub_261BAA25C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_261BA9C40()
{
  result = qword_280D22D90;
  if (!qword_280D22D90)
  {
    sub_261CFEC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D90);
  }

  return result;
}

uint64_t sub_261BA9C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261BA9D0C()
{
  result = qword_280D22160;
  if (!qword_280D22160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22160);
  }

  return result;
}

unint64_t sub_261BA9D64()
{
  result = qword_280D22150;
  if (!qword_280D22150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22150);
  }

  return result;
}

unint64_t sub_261BA9DBC()
{
  result = qword_280D22128;
  if (!qword_280D22128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22128);
  }

  return result;
}

unint64_t sub_261BA9E18()
{
  result = qword_280D22148;
  if (!qword_280D22148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22148);
  }

  return result;
}

unint64_t sub_261BA9E6C()
{
  result = qword_280D22140;
  if (!qword_280D22140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22140);
  }

  return result;
}

unint64_t sub_261BA9EC4()
{
  result = qword_280D22138;
  if (!qword_280D22138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22138);
  }

  return result;
}

unint64_t sub_261BA9F60()
{
  result = qword_280D22130;
  if (!qword_280D22130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22130);
  }

  return result;
}

unint64_t sub_261BA9FB8()
{
  result = qword_280D22390;
  if (!qword_280D22390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22390);
  }

  return result;
}

unint64_t sub_261BAA054()
{
  result = qword_280D223D0;
  if (!qword_280D223D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223D0);
  }

  return result;
}

unint64_t sub_261BAA0AC()
{
  result = qword_280D223A8;
  if (!qword_280D223A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223A8);
  }

  return result;
}

unint64_t sub_261BAA104()
{
  result = qword_280D22388;
  if (!qword_280D22388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22388);
  }

  return result;
}

unint64_t sub_261BAA15C()
{
  result = qword_280D223B0;
  if (!qword_280D223B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223B0);
  }

  return result;
}

unint64_t sub_261BAA1B0()
{
  result = qword_280D223C8;
  if (!qword_280D223C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223C8);
  }

  return result;
}

unint64_t sub_261BAA204()
{
  result = qword_280D223C0;
  if (!qword_280D223C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223C0);
  }

  return result;
}

unint64_t sub_261BAA25C()
{
  result = qword_280D223B8;
  if (!qword_280D223B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223B8);
  }

  return result;
}

unint64_t sub_261BAA304()
{
  result = qword_280D223A0;
  if (!qword_280D223A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223A0);
  }

  return result;
}

unint64_t sub_261BAA35C()
{
  result = qword_280D22380;
  if (!qword_280D22380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22380);
  }

  return result;
}

unint64_t sub_261BAA3B4()
{
  result = qword_280D22398;
  if (!qword_280D22398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22398);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmartListType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartListType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261BAA578()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB538);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB538);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double EarlyAlertEntity.init(representation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + qword_27FEDD4B0);
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v13 == 5 || (v16 = v13, EarlyAlertEntity.Unit.init(representation:)(&v16), v5 = v17, v17 == 5) || (v6 = *(a1 + qword_27FEDD4B8), sub_261CFCDA4(), sub_261CFEBD4(), , (v14 & 1) != 0))
  {
    if (qword_27FED99A8 != -1)
    {
      swift_once();
    }

    v7 = sub_261CFF7A4();
    __swift_project_value_buffer(v7, qword_27FEDB538);
    v8 = sub_261CFF784();
    v9 = sub_261CFFE64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261AE2000, v8, v9, "Unable to convert representation to EarlyAlertEntity", v10, 2u);
      MEMORY[0x26671D560](v10, -1, -1);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v17 = v5;
    EarlyAlertEntity.init(unit:interval:)(&v17, v13, &v13);

    v12 = v15;
    *a2 = v13;
    result = *&v14;
    *(a2 + 8) = v14;
    *(a2 + 24) = v12;
  }

  return result;
}

unint64_t sub_261BAA9A0()
{
  result = qword_27FEDB550;
  if (!qword_27FEDB550)
  {
    type metadata accessor for EarlyAlertEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB550);
  }

  return result;
}

unint64_t sub_261BAA9FC()
{
  result = qword_27FEDB558;
  if (!qword_27FEDB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB558);
  }

  return result;
}

uint64_t sub_261BAAA50()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDB560);
  __swift_project_value_buffer(v9, qword_27FEDB560);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateGroupNameAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateGroupNameAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BAAFF8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GroupEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261BAB184(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261BAB184(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v10);
}

uint64_t UpdateGroupNameAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261BAB184(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t sub_261BAB184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BAB1E8(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*UpdateGroupNameAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateGroupNameAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*UpdateGroupNameAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BAB3DC()
{
  result = swift_getKeyPath();
  qword_27FEDB578 = result;
  return result;
}

uint64_t static UpdateGroupNameAppIntent.binding.getter()
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateGroupNameAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB578 = a1;
}

uint64_t (*static UpdateGroupNameAppIntent.binding.modify())()
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BAB584@<X0>(void *a1@<X8>)
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB578;
  return sub_261CFCDA4();
}

uint64_t sub_261BAB604(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED99B8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB578 = v1;
}

uint64_t UpdateGroupNameAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = v47 - v3;
  v67 = sub_261CFD184();
  v69 = *(v67 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = v47 - v16;
  v17 = sub_261CFD674();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFFA44();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_261CFD6A4();
  v59 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v47[1] = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = *(v18 + 104);
  v48 = *MEMORY[0x277CC9110];
  v30 = v48;
  v49 = v17;
  v31(v21, v48, v17);
  v51 = v31;
  v50 = v18 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v21, v30, v17);
  v32 = v64;
  sub_261CFD6C4();
  v33 = *(v27 + 56);
  v58 = v27 + 56;
  v60 = v33;
  v33(v32, 0, 1, v26);
  v34 = type metadata accessor for GroupEntity();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v35 = sub_261CFC834();
  v54 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v55 = v37;
  v56 = v36 + 56;
  v37(v65, 1, 1, v35);
  v37(v62, 1, 1, v35);
  v52 = *MEMORY[0x277CBA308];
  v38 = *(v69 + 104);
  v69 += 104;
  v53 = v38;
  v38(v66);
  sub_261BAD258(&qword_280D22670, type metadata accessor for GroupEntity);
  *v68 = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v48;
  v40 = v49;
  v41 = v51;
  v51(v21, v48, v49);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v21, v39, v40);
  v42 = v64;
  sub_261CFD6C4();
  v60(v42, 0, 1, v59);
  v43 = sub_261CFF994();
  v71 = 0;
  v72 = 0;
  (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
  v55(v65, 1, 1, v54);
  v53(v66, v52, v67);
  v44 = sub_261CFCD24();
  v45 = v68;
  v68[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB580, &qword_261D06AB0);
  v70 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v45[2] = result;
  return result;
}

uint64_t UpdateGroupNameAppIntent.perform()(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_261CFD754();
  *(v2 + 96) = v3;
  v4 = *(v3 - 8);
  *(v2 + 104) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 120) = v6;
  v7 = *(v6 - 8);
  *(v2 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB588, &qword_261D06AC0);
  *(v2 + 160) = v10;
  v11 = *(v10 - 8);
  *(v2 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v13 = type metadata accessor for GroupEntity();
  *(v2 + 184) = v13;
  v14 = *(v13 - 8);
  *(v2 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = *v1;
  *(v2 + 232) = *(v1 + 16);
  *(v2 + 240) = sub_261CFFD24();
  *(v2 + 248) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 256) = v17;
  *(v2 + 264) = v16;

  return MEMORY[0x2822009F8](sub_261BAC1FC, v17, v16);
}

uint64_t sub_261BAC1FC()
{
  v13 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261C8D338(v5, (v0 + 2), v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_261BAB1E8(v5);
  v6 = v12[1];
  v0[34] = v12[0];
  v0[35] = v6;
  v7 = v12[3];
  v0[36] = v12[2];
  v0[37] = v7;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBB4();
  v8 = v0[8];
  v0[9] = v0[7];
  v0[10] = v8;
  sub_261CFCBC4();

  sub_261B1B468(0, v4, v3, v2);
  v0[38] = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  v0[39] = v10;
  v0[40] = v9;

  return MEMORY[0x2822009F8](sub_261BAC370, v10, v9);
}

uint64_t sub_261BAC370()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_261BAC464;
  v6 = v0[36];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[35];
  v10 = v0[22];

  return (sub_261C59FE4)(v10, "UpdateGroupAppIntent", 20, 2, v8, v9, v6, v7);
}

uint64_t sub_261BAC464()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_261BACB40;
  }

  else
  {
    v7 = sub_261BAC5A0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BAC5A0()
{
  v1 = v0[38];

  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x2822009F8](sub_261BAC604, v2, v3);
}

uint64_t sub_261BAC604()
{
  v56 = v0;
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  sub_261B01D28(&qword_27FEDB590, &qword_27FEDB588, &qword_261D06AC0);
  sub_261CFC964();
  sub_261B7CD38(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    sub_261B7CDA8(v0[18]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v55);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 104;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD00000000000004ALL, 0x8000000261D1B1E0, v55);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v31 = v0[36];
    v30 = v0[37];
    v33 = v0[34];
    v32 = v0[35];
    v34 = v0[21];
    v54 = v0[22];
    v36 = v0[19];
    v35 = v0[20];
    sub_261B01D70();
    swift_allocError();
    *v37 = 20;
    swift_willThrow();

    sub_261B7CDA8(v36);
    (*(v34 + 8))(v54, v35);
    v39 = v0[25];
    v38 = v0[26];
    v40 = v0[22];
    v42 = v0[18];
    v41 = v0[19];
    v43 = v0[17];
    v44 = v0[14];

    v29 = v0[1];
  }

  else
  {
    v52 = v0[36];
    v53 = v0[37];
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[25];
    v23 = v0[22];
    v48 = v0[23];
    v49 = v0[34];
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    v27 = v0[17];
    v50 = v0[16];
    v51 = v0[35];
    v28 = v0[14];
    v46 = v0[11];
    v47 = v0[15];
    sub_261BAD1F4(v0[18], v22);
    sub_261B7CDA8(v26);
    (*(v24 + 8))(v23, v25);
    sub_261CFCBB4();
    sub_261BBF2B0(v28);
    sub_261BAB1E8(v21);
    sub_261CFC9E4();
    sub_261BAD258(&qword_280D22668, type metadata accessor for GroupEntity);
    sub_261BAD258(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();

    (*(v50 + 8))(v27, v47);
    sub_261BAB1E8(v22);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261BACB40()
{
  v1 = v0[38];

  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x2822009F8](sub_261BACBA4, v2, v3);
}

uint64_t sub_261BACBA4()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];

  v6 = v0[42];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t static UpdateGroupNameAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB598, &qword_261D06AC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5A0, &qword_261D06AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31948();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5A8, &qword_261D06B00);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5B0, &unk_261D06B30);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BACE7C(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261BAB184(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t (*sub_261BACF0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261BACF80(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BACFF4()
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261BAD06C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BAD11C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateGroupNameAppIntent.perform()(a1);
}

uint64_t sub_261BAD1B8(uint64_t a1)
{
  v2 = sub_261B31948();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261BAD1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BAD258(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261BAD2EC()
{
  result = qword_27FEDB5C0;
  if (!qword_27FEDB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB5C0);
  }

  return result;
}

unint64_t sub_261BAD344()
{
  result = qword_27FEDB5C8;
  if (!qword_27FEDB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB5C8);
  }

  return result;
}

uint64_t GroupEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F0, &qword_261D06CF0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F8, &qword_261D06D20);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t GroupEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BAD4D8, 0, 0);
}

uint64_t sub_261BAD4D8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261BAEC14;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C5F7E8("GroupEntityQuery.entitiesForIdentifiers", 39, 2, v5, v6, v7);
}

uint64_t GroupEntityQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BAD5E4, 0, 0);
}

uint64_t sub_261BAD5E4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_261BAEC0C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C5B2BC)(v6, "GroupEntityQuery.suggestedEntities", 34, 2, v4, v5);
}

uint64_t sub_261BAD6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BAD758, 0, 0);
}

uint64_t sub_261BAD758()
{
  v1 = v0[10];
  if (sub_261CFD1F4())
  {
    v2 = v0[12];
    swift_getKeyPath();
    sub_261BAEBC4(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261CFCD54();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = type metadata accessor for ListEntity();
  (*(*(v7 - 8) + 56))(v4, v3, 1, v7);
  sub_261B6BFE8(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v0[7] = v6;
  v0[8] = v5;
  v10 = *(v9 + 24);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_261BAD99C;
  v13 = v0[12];
  v14 = v0[9];

  return (v16)(v14, v0 + 7, v13, v8, v9);
}

uint64_t sub_261BAD99C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_261BADB28;
  }

  else
  {
    v3 = sub_261BADAB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261BADAB0()
{
  sub_261B59E9C(v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_261BADB28()
{
  sub_261B59E9C(v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_261BADBA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F0, &qword_261D06CF0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F8, &qword_261D06D20);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t sub_261BADC58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BADC80, 0, 0);
}

uint64_t sub_261BADC80()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261BADD64;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C5F7E8("GroupEntityQuery.entitiesForIdentifiers", 39, 2, v5, v6, v7);
}

uint64_t sub_261BADD64(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v11 = *v2;

  v9 = *(v11 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_261BADEC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BADEF0, 0, 0);
}

uint64_t sub_261BADEF0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_261BADFC4;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C5B2BC)(v6, "GroupEntityQuery.suggestedEntities", 34, 2, v4, v5);
}

uint64_t sub_261BADFC4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261BAE0B8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261BAE68C();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t GroupEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return MEMORY[0x2822009F8](sub_261BAE198, 0, 0);
}

uint64_t sub_261BAE198()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_261BAEC10;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_261C5BAD8(v9, "GroupEntityQuery.entitiesMatchingString", 39, 2, v5, v6, v7, v8);
}

uint64_t sub_261BAE280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return MEMORY[0x2822009F8](sub_261BAE2AC, 0, 0);
}

uint64_t sub_261BAE2AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_261BAE394;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_261C5BAD8(v9, "GroupEntityQuery.entitiesMatchingString", 39, 2, v5, v6, v7, v8);
}

uint64_t sub_261BAE394()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_261BAE48C()
{
  result = qword_27FEDB600;
  if (!qword_27FEDB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB600);
  }

  return result;
}

unint64_t sub_261BAE4E4()
{
  result = qword_27FEDB608;
  if (!qword_27FEDB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB608);
  }

  return result;
}

unint64_t sub_261BAE584()
{
  result = qword_27FEDB610;
  if (!qword_27FEDB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB610);
  }

  return result;
}

unint64_t sub_261BAE624()
{
  result = qword_27FEDB618;
  if (!qword_27FEDB618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB620, qword_261D06DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB618);
  }

  return result;
}

unint64_t sub_261BAE68C()
{
  result = qword_27FEDB628;
  if (!qword_27FEDB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB628);
  }

  return result;
}

uint64_t destroy for GroupEntityQuery(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *sub_261BAE71C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for GroupEntityQuery(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  sub_261CFCDA4();

  return a1;
}

uint64_t *assignWithTake for GroupEntityQuery(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t dispatch thunk of GroupEntityGroupQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B01F5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupEntityGroupQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_261AF4BDC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of GroupEntityGroupQueryPerforming.suggestedEntities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_261AF43A8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_261BAEBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261BAEC1C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB630);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB630);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BAEE4C()
{
  v41 = v0;
  v1 = *(v0 + 120);

  if (qword_27FED99C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = sub_261CFF7A4();
  __swift_project_value_buffer(v8, qword_27FEDB630);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v9 = sub_261CFF784();
  v10 = sub_261CFFE84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136446466;
    sub_261CFCBB4();
    sub_261B7C0F0(v13 + *(v14 + 40), v15);
    sub_261BAF290(v13, type metadata accessor for ReminderEntity);
    v18 = AppEntityID.entityIdentifierString.getter();
    v20 = v19;
    sub_261BAF290(v15, type metadata accessor for AppEntityID);
    v21 = sub_261B879C8(v18, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    sub_261CFCBB4();
    v22 = *(v0 + 129);
    if (v22 == 2)
    {
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      *(v0 + 130) = v22 & 1;
      v24 = sub_261CFFAB4();
      v23 = v25;
    }

    v26 = sub_261B879C8(v24, v23, &v40);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_261AE2000, v9, v10, "[OpenReminderAppIntent] Open reminder with target reminderID: %{public}s, showDetail: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v17, -1, -1);
    MEMORY[0x26671D560](v16, -1, -1);
  }

  v27 = *(v0 + 72);
  v28 = *(v0 + 80);
  v29 = *(v0 + 64);
  v30 = *(v0 + 40);
  sub_261CFCBB4();
  v31 = *(v0 + 128);
  sub_261CFCBB4();
  sub_261BBF818(v31 & 1, v30);
  sub_261BAF290(v29, type metadata accessor for ReminderEntity);
  v32 = [objc_opt_self() defaultWorkspace];
  if (v32)
  {
    v33 = v32;
    v34 = *(v0 + 40);
    sub_261D00034();
  }

  v35 = *(v0 + 64);
  v36 = *(v0 + 48);
  v37 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  sub_261CFC9A4();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_261BAF1F0(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BAF290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BAF2F0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB648);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB648);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BAF514()
{
  v29 = v0;
  v1 = v0[11];

  if (qword_27FED99C8 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB648);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446210;
    sub_261CFCBB4();
    sub_261B7C0F0(v8 + *(v10 + 20), v9);
    sub_261BAF87C(v8, type metadata accessor for ListEntity);
    v13 = AppEntityID.entityIdentifierString.getter();
    v15 = v14;
    sub_261BAF87C(v9, type metadata accessor for AppEntityID);
    v16 = sub_261B879C8(v13, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_261AE2000, v5, v6, "[OpenListAppIntent] Open list with target listID: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26671D560](v12, -1, -1);
    MEMORY[0x26671D560](v11, -1, -1);
  }

  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[5];
  sub_261CFCBB4();
  sub_261BBF268(v19);
  sub_261BAF87C(v17, type metadata accessor for ListEntity);
  v20 = [objc_opt_self() defaultWorkspace];
  if (v20)
  {
    v21 = v20;
    v22 = v0[5];
    sub_261D00034();
  }

  v23 = v0[8];
  v24 = v0[6];
  v25 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  sub_261CFC9A4();

  v26 = v0[1];

  return v26();
}

uint64_t sub_261BAF7DC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BAF87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BAF8DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB660);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB660);
  if (qword_27FED9C88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF3F00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id QuickReminderViewController.Configuration.reminderChangeItem.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id QuickReminderViewController.PlatterStyle.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t QuickReminderViewController.PlatterStyle.cornerRadius.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t QuickReminderViewController.PlatterStyle.cornerRadius.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void QuickReminderViewController.PlatterStyle.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

id static QuickReminderViewController.preferredPlatterStyle.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() systemBackgroundColor];
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_261BAFBF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_261BB4410;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_261AF30D4(v4);
}

uint64_t sub_261BAFC90(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_261BB43D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_261AF30D4(v3);
  return sub_261AF31F8(v8);
}

uint64_t sub_261BAFDF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_261BB44D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_261AF30D4(v4);
}

uint64_t sub_261BAFE98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_261BB44E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_261AF30D4(v3);
  return sub_261AF31F8(v8);
}

uint64_t sub_261BB0000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_261BB436C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_261AF30D4(v4);
}

uint64_t sub_261BB00A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_261BB4368;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_261AF30D4(v3);
  return sub_261AF31F8(v8);
}

uint64_t sub_261BB0188(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_261BB0210(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id QuickReminderViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QuickReminderViewController.init()()
{
  v3 = 0;
  v4 = 16843009;
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = QuickReminderViewController.init(configuration:)(&v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

id QuickReminderViewController.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v93 = sub_261CFE364();
  v98 = *(v93 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB690, &qword_261D06FB0);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v99 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB698, &qword_261D06FB8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v96 = &v88 - v15;
  MEMORY[0x28223BE20](v14);
  v97 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6A0, &unk_261D06FC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v88 - v19;
  v21 = type metadata accessor for QuickReminderViewController.InitialListAndReminder();
  v102 = *(v21 - 8);
  v103 = v21;
  v22 = *(v102 + 64);
  MEMORY[0x28223BE20](v21);
  v105 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = *(a1 + 8);
  v100 = *(a1 + 9);
  v101 = v25;
  LODWORD(v26) = *(a1 + 10);
  v27 = *(a1 + 11);
  v28 = &v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable] = 0;
  v95 = OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear;
  v108 = v2;
  v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear] = 0;
  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v31 = sub_261CFF7A4();
  __swift_project_value_buffer(v31, qword_27FEDB660);
  v32 = v24;
  v33 = v24;
  v34 = sub_261CFF784();
  v35 = sub_261CFFE84();

  v36 = os_log_type_enabled(v34, v35);
  v106 = ObjectType;
  v107 = v26;
  v92 = v13;
  v104 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v109 = v89;
    *v37 = 136315138;
    v111 = v32;
    v90 = v32;
    v38 = v100;
    v39 = v101;
    v112 = v101;
    v113 = v100;
    v114 = v26;
    v115 = v27;
    v40 = v20;
    v41 = v33;
    v42 = QuickReminderViewController.Configuration.description.getter();
    v26 = v43;

    v20 = v40;
    v44 = sub_261B879C8(v42, v26, &v109);
    LOBYTE(v26) = v107;

    *(v37 + 4) = v44;
    _os_log_impl(&dword_261AE2000, v34, v35, "ReminderCreationUI: init {configuration: %s}", v37, 0xCu);
    v45 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x26671D560](v45, -1, -1);
    v46 = v37;
    ObjectType = v106;
    MEMORY[0x26671D560](v46, -1, -1);

    v47 = v90;
  }

  else
  {

    v47 = v32;
    v38 = v100;
    v39 = v101;
  }

  v111 = v47;
  v112 = v39;
  v113 = v38;
  v114 = v26;
  v115 = v27;
  sub_261BB0E00(&v111, v20);
  v48 = v103;
  if ((*(v102 + 48))(v20, 1, v103) == 1)
  {

    sub_261AE6A40(v20, &qword_27FEDB6A0, &unk_261D06FC0);
    v49 = _s19RemindersAppIntents27QuickReminderViewControllerC011createBlankfG0So06UIViewG0CyFZ_0();
    v50 = 0;
    v51 = 0;
    goto LABEL_28;
  }

  v52 = v27;
  v53 = v38;
  v54 = v105;
  sub_261BB2B74(v20, v105);
  v55 = *(v54 + v48[5]);
  v56 = sub_261CFE3A4();
  v57 = v56;
  v50 = v58;
  v60 = v59;
  if (v53)
  {
    swift_getObjectType();
    v61 = v57;
    sub_261CFE584();
  }

  else
  {
    v62 = v56;
  }

  v63 = v96;
  v64 = v97;
  v103 = v57;
  if (v52)
  {
    swift_getObjectType();
    sub_261CFE574();
  }

  sub_261CFDE54();
  v65 = sub_261CFDDA4();
  sub_261CFDE24();
  v67 = v66;

  v102 = v60;
  if (v67)
  {
    sub_261CFE354();
    v68 = v98;
    v69 = v93;
  }

  else
  {
    v68 = v98;
    v69 = v93;
    (*(v98 + 56))(v64, 1, 1, v93);
  }

  v70 = v99;
  (*(v68 + 104))(v63, *MEMORY[0x277D45D88], v69);
  (*(v68 + 56))(v63, 0, 1, v69);
  v71 = *(v94 + 48);
  sub_261AFB668(v64, v70, &qword_27FEDB698, &qword_261D06FB8);
  sub_261AFB668(v63, v70 + v71, &qword_27FEDB698, &qword_261D06FB8);
  v72 = v69;
  v73 = *(v68 + 48);
  if (v73(v70, 1, v72) == 1)
  {
    sub_261AE6A40(v63, &qword_27FEDB698, &qword_261D06FB8);
    v70 = v99;
    sub_261AE6A40(v64, &qword_27FEDB698, &qword_261D06FB8);
    v74 = v73(v70 + v71, 1, v72);
    v49 = v103;
    if (v74 == 1)
    {
      sub_261AE6A40(v70, &qword_27FEDB698, &qword_261D06FB8);
      v75 = v107;
LABEL_22:
      ObjectType = v106;
      v77 = v104;
      goto LABEL_24;
    }

LABEL_21:
    sub_261AE6A40(v70, &qword_27FEDB690, &qword_261D06FB0);
    v75 = 0;
    goto LABEL_22;
  }

  v76 = v92;
  sub_261AFB668(v70, v92, &qword_27FEDB698, &qword_261D06FB8);
  if (v73(v70 + v71, 1, v72) == 1)
  {
    sub_261AE6A40(v96, &qword_27FEDB698, &qword_261D06FB8);
    sub_261AE6A40(v97, &qword_27FEDB698, &qword_261D06FB8);
    (*(v98 + 8))(v76, v72);
    v49 = v103;
    goto LABEL_21;
  }

  v78 = v98;
  v79 = v91;
  (*(v98 + 32))(v91, v70 + v71, v72);
  sub_261BB2C34(&qword_27FEDB6D0, 255, MEMORY[0x277D45D90]);
  v80 = sub_261CFF974();
  v81 = *(v78 + 8);
  v81(v79, v72);
  sub_261AE6A40(v96, &qword_27FEDB698, &qword_261D06FB8);
  sub_261AE6A40(v97, &qword_27FEDB698, &qword_261D06FB8);
  v81(v76, v72);
  sub_261AE6A40(v70, &qword_27FEDB698, &qword_261D06FB8);
  v75 = v80 & v107;
  ObjectType = v106;
  v49 = v103;
  v77 = v104;
LABEL_24:
  v51 = v102;
  v108[v95] = v75 & 1;

  if ((v75 & 1) == 0 && ((v107 ^ 1) & 1) == 0)
  {
    swift_getObjectType();
    sub_261CFE594();
  }

  sub_261BB2BD8(v105);
LABEL_28:
  v82 = v108;
  v83 = &v108[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_quickReminderModuleInterface];
  *v83 = v50;
  *(v83 + 1) = v51;
  *&v82[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_contentViewController] = v49;
  v110.receiver = v82;
  v110.super_class = ObjectType;
  swift_unknownObjectRetain();
  v84 = objc_msgSendSuper2(&v110, sel_initWithNibName_bundle_, 0, 0);
  if (v50)
  {
    swift_getObjectType();
    sub_261BB2C34(&qword_27FEDB6C8, v85, type metadata accessor for QuickReminderViewController);
    v86 = v84;
    sub_261CFE564();
    swift_unknownObjectRelease();
  }

  return v84;
}

uint64_t type metadata accessor for QuickReminderViewController.InitialListAndReminder()
{
  result = qword_27FEDB700;
  if (!qword_27FEDB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261BB0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_261CFE344();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v90 - v7;
  v96 = sub_261CFE884();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFE874();
  isa = v11[-1].isa;
  v98 = v11;
  v12 = *(isa + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v90 - v16;
  v18 = sub_261CFE794();
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v92 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v101 = &v90 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v106 = &v90 - v31;
  v32 = *a1;
  v33 = *(a1 + 8);
  if (*a1)
  {
    v34 = v32;
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    if (v36)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = 1;
      v38 = (v37 + 16);
      goto LABEL_6;
    }
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v39 = swift_allocObject();
  v105 = v39;
  *(v39 + 16) = 1;
  v38 = (v39 + 16);
  if (v32)
  {
    v34 = v32;
    v37 = v105;
LABEL_6:
    v40 = v106;
    (*(v103 + 56))(v106, 1, 1, v104);
    if (!v33)
    {
LABEL_25:
      v54 = v101;
      (*(v99 + 56))(v101, 1, 1, v100);
      v51 = v36;
      goto LABEL_29;
    }

    v41 = v34;
    v42 = [v41 listID];
    v105 = v37;
    v43 = sub_261BB22E4(v37);
    v44 = v43;
    v90 = v41;
    if (v42)
    {
      v45 = v94;
      if (v43)
      {
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        v46 = sub_261D000F4();

        if (v46)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v45 = v94;
      if (!v43)
      {
LABEL_24:

        goto LABEL_25;
      }

      v42 = v43;
    }

LABEL_19:
    if (qword_27FED99D0 != -1)
    {
      swift_once();
    }

    v55 = sub_261CFF7A4();
    __swift_project_value_buffer(v55, qword_27FEDB660);
    v56 = sub_261CFF784();
    v57 = sub_261CFFE84();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v99;
    if (v58)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_261AE2000, v56, v57, "ReminderCreationUI: fetching initial list for usesLastSelectedList", v60, 2u);
      MEMORY[0x26671D560](v60, -1, -1);
    }

    sub_261CFE894();
    v61 = *v38;
    (*(v95 + 104))(v10, *MEMORY[0x277D45E70], v96);
    v62 = v61;
    sub_261CFE864();
    v63 = v93;
    v51 = v36;
    sub_261CFE844();
    (*(isa + 8))(v17, v98);
    v54 = v101;
    sub_261CFE784();
    v64 = v100;
    (*(v59 + 56))(v54, 0, 1, v100);
    v65 = v92;
    sub_261AFB668(v54, v92, &qword_27FEDB6F8, &qword_261D070B8);
    v66 = (*(v59 + 48))(v65, 1, v64);
    v67 = v66 == 1;
    v68 = v63;
    v40 = v106;
    if (v67)
    {
      (*(v103 + 8))(v68, v104);
      v34 = v90;

      sub_261AE6A40(v65, &qword_27FEDB6F8, &qword_261D070B8);
    }

    else
    {
      (*(v59 + 32))(v45, v65, v64);
      v74 = v91;
      (*(v59 + 16))(v91, v45, v64);
      v75 = v45;
      v76 = sub_261CFF784();
      v77 = sub_261CFFE84();
      if (os_log_type_enabled(v76, v77))
      {
        v79 = swift_slowAlloc();
        isa = swift_slowAlloc();
        *v79 = 138412290;
        v98 = v76;
        v80 = sub_261CFE334();
        v81 = *(v59 + 8);
        v81(v74, v64);
        v82 = v81;
        *(v79 + 4) = v80;
        v83 = isa;
        *isa = v80;
        v84 = v77;
        v85 = v98;
        _os_log_impl(&dword_261AE2000, v98, v84, "ReminderCreationUI: initial pending move target list: %@", v79, 0xCu);
        sub_261AE6A40(v83, &unk_27FEDA730, &unk_261D035C0);
        v86 = v83;
        v40 = v106;
        MEMORY[0x26671D560](v86, -1, -1);
        MEMORY[0x26671D560](v79, -1, -1);

        v87 = v90;
        v82(v94, v64);
        (*(v103 + 8))(v93, v104);
        v34 = v87;
      }

      else
      {

        v88 = v90;
        v89 = *(v59 + 8);
        v89(v74, v64);
        v89(v75, v64);
        (*(v103 + 8))(v93, v104);
        v34 = v88;
      }
    }

    goto LABEL_29;
  }

  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v47 = sub_261CFF7A4();
  __swift_project_value_buffer(v47, qword_27FEDB660);
  v48 = sub_261CFF784();
  v49 = sub_261CFFE84();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v36;
  v52 = v99;
  if (v50)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_261AE2000, v48, v49, "ReminderCreationUI: fetching initial list for reminder creation", v53, 2u);
    MEMORY[0x26671D560](v53, -1, -1);
  }

  v54 = v101;
  (*(v52 + 56))(v101, 1, 1, v100);
  sub_261CFE894();
  sub_261BB22E4(v105);
  (*(v95 + 104))(v10, *MEMORY[0x277D45E70], v96);
  sub_261CFE864();
  sub_261CFE844();
  (*(isa + 8))(v15, v98);
  v70 = v103;
  v69 = v104;
  v40 = v106;
  (*(v103 + 16))(v106, v22, v104);
  (*(v70 + 56))(v40, 0, 1, v69);
  v34 = sub_261CFE854();
  (*(v70 + 8))(v22, v69);
LABEL_29:

  v71 = v102;
  sub_261BB4448(v40, v102, &qword_27FEDB6F0, &qword_261D070B0);
  v72 = type metadata accessor for QuickReminderViewController.InitialListAndReminder();
  sub_261BB4448(v54, v71 + *(v72 + 24), &qword_27FEDB6F8, &qword_261D070B8);
  *(v71 + *(v72 + 20)) = v34;
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
}

Swift::Void __swiftcall QuickReminderViewController.viewDidLoad()()
{
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 setPreservesSuperviewLayoutMargins_];

  v3 = *&v0[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_contentViewController];
  [v0 addChildViewController_];
  v4 = [v3 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D06F80;
  v9 = [v5 leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  v14 = [v5 topAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  v19 = [v5 trailingAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v8 + 48) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v0 view];
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v26 bottomAnchor];

    v29 = [v24 constraintEqualToAnchor_];
    *(v8 + 56) = v29;
    sub_261B05020(0, &qword_27FEDB6D8, 0x277CCAAD0);
    v30 = sub_261CFFC54();

    [v27 activateConstraints_];

    [v3 didMoveToParentViewController_];
    return;
  }

LABEL_15:
  __break(1u);
}

Swift::Void __swiftcall QuickReminderViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1);
  if (v1[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear] == 1)
  {
    if (*&v1[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_quickReminderModuleInterface])
    {
      v3 = *&v1[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_quickReminderModuleInterface + 8];
      swift_getObjectType();
      sub_261CFE594();
    }
  }
}

void *sub_261BB22E4(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    sub_261CFDE54();
    v4 = sub_261CFDDA4();
    v3 = sub_261CFDE34();

    swift_beginAccess();
    v5 = *v2;
    *v2 = v3;
    v6 = v3;
    sub_261BB44B0(v5);
  }

  sub_261BB44C0(v1);
  return v3;
}

id QuickReminderViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_261CFFA54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id QuickReminderViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261BB2530(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v8 = sub_261CFF7A4();
  __swift_project_value_buffer(v8, qword_27FEDB660);
  v9 = sub_261CFF784();
  v10 = sub_261CFFE84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261AE2000, v9, v10, "QuickReminderViewController: invoke saveDidFinishHandler", v11, 2u);
    MEMORY[0x26671D560](v11, -1, -1);
  }

  return a3(a1, a5);
}

uint64_t QuickReminderViewController.Configuration.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v18 = *(v0 + 10);
  v19 = *(v0 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D06F90;
  sub_261D00334();

  if (v2 && [v2 objectID])
  {
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v1 = sub_261CFFAB4();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x26671C210](v1, v7);

  *(v5 + 32) = 0xD000000000000014;
  *(v5 + 40) = 0x8000000261D1B410;
  sub_261D00334();

  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v8, v9);

  *(v5 + 48) = 0xD000000000000016;
  *(v5 + 56) = 0x8000000261D1B430;
  sub_261D00334();

  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v10, v11);

  *(v5 + 64) = 0xD000000000000019;
  *(v5 + 72) = 0x8000000261D1B450;
  sub_261D00334();

  if (v18)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v18)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v12, v13);

  *(v5 + 80) = 0xD00000000000001ALL;
  *(v5 + 88) = 0x8000000261D1B470;
  sub_261D00334();

  if (v19)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v19)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v14, v15);

  *(v5 + 96) = 0xD000000000000016;
  *(v5 + 104) = 0x8000000261D1B490;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6E0, &qword_261D06FD8);
  sub_261B01D28(&qword_27FEDB6E8, &qword_27FEDB6E0, &qword_261D06FD8);
  v16 = sub_261CFF954();

  return v16;
}

id _s19RemindersAppIntents27QuickReminderViewControllerC011createBlankfG0So06UIViewG0CyFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_261D06FA0;
    v5 = [v2 widthAnchor];
    v6 = [v5 constraintEqualToConstant_];

    v7 = sub_261CFFFA4();
    *(v4 + 32) = v7;
    v8 = [v2 heightAnchor];
    v9 = [v8 constraintEqualToConstant_];

    v10 = sub_261CFFFA4();
    *(v4 + 40) = v10;
    sub_261B05020(0, &qword_27FEDB6D8, 0x277CCAAD0);
    v11 = sub_261CFFC54();

    [v3 activateConstraints_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261BB2B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickReminderViewController.InitialListAndReminder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BB2BD8(uint64_t a1)
{
  v2 = type metadata accessor for QuickReminderViewController.InitialListAndReminder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261BB2C34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s19RemindersAppIntents27QuickReminderViewControllerC05quickE9DidCancelyy0A6UICore09TTRIQuickE15ModuleInterface_pF_0()
{
  v1 = v0;
  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDB660);
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_261AE2000, v3, v4, "QuickReminderViewController: invoke cancelHandler", v5, 2u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler;
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);
    sub_261CFCDA4();
    v8(v1);
    return sub_261AF31F8(v8);
  }

  return result;
}

void sub_261BB2DAC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_261CFE6F4();
  if (v2)
  {
    v3 = v2;
    if (qword_27FED99D0 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDB660);
    v5 = sub_261CFF784();
    v6 = sub_261CFFE84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261AE2000, v5, v6, "QuickReminderViewController: invoke commitHandler", v7, 2u);
      MEMORY[0x26671D560](v7, -1, -1);
    }

    v8 = v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler;
    swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);
      sub_261CFCDA4();
      v9(v1, v3);
      sub_261AF31F8(v9);
    }

    v11 = (v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = v11[1];
      sub_261CFCDA4();
      sub_261CFE6E4();
      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v3;
      sub_261AF30D4(v12);
      v15 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
      sub_261B01D28(&qword_27FEDB728, &qword_27FEDB720, &qword_261D09240);
      v16 = sub_261CFF7E4();

      sub_261AF31F8(v12);

      v17 = *(v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable);
      *(v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable) = v16;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FED99D0 != -1)
    {
      swift_once();
    }

    v18 = sub_261CFF7A4();
    __swift_project_value_buffer(v18, qword_27FEDB660);
    v19 = sub_261CFF784();
    v20 = sub_261CFFE64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261AE2000, v19, v20, "QuickReminderViewController: unexpectedly got optimisticReminder=nil from quickReminderDidCommit", v21, 2u);
      MEMORY[0x26671D560](v21, -1, -1);
    }

    v22 = v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler;
    swift_beginAccess();
    v23 = *v22;
    if (*v22)
    {
      v24 = *(v22 + 8);
      sub_261CFCDA4();
      v23(v1);
      sub_261AF31F8(v23);
    }
  }
}

uint64_t assignWithCopy for QuickReminderViewController.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t assignWithTake for QuickReminderViewController.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t getEnumTagSinglePayload for QuickReminderViewController.Configuration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for QuickReminderViewController.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for QuickReminderViewController.PlatterStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v7;
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for QuickReminderViewController.PlatterStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for QuickReminderViewController.PlatterStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for QuickReminderViewController.PlatterStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *sub_261BB3480(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFE794();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = *(a2 + v11);
    *(a1 + v11) = v13;
    v14 = sub_261CFE344();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v13;
    if (v16(a2 + v12, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
      memcpy(a1 + v12, a2 + v12, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(a1 + v12, a2 + v12, v14);
      (*(v15 + 56))(a1 + v12, 0, 1, v14);
    }
  }

  return a1;
}

uint64_t sub_261BB36D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFE794();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = sub_261CFE344();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *sub_261BB3838(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  v12 = sub_261CFE344();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v11;
  if (v14(&a2[v10], 1, v12))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v10], &a2[v10], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(&a1[v10], &a2[v10], v12);
    (*(v13 + 56))(&a1[v10], 0, 1, v12);
  }

  return a1;
}

char *sub_261BB3A44(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a2[v12];
  v14 = *&a1[v12];
  *&a1[v12] = v13;
  v15 = v13;

  v16 = *(a3 + 24);
  v17 = sub_261CFE344();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  LODWORD(v14) = v19(&a1[v16], 1, v17);
  v20 = v19(&a2[v16], 1, v17);
  if (!v14)
  {
    if (!v20)
    {
      (*(v18 + 24))(&a1[v16], &a2[v16], v17);
      return a1;
    }

    (*(v18 + 8))(&a1[v16], v17);
    goto LABEL_12;
  }

  if (v20)
  {
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v16], &a2[v16], *(*(v21 - 8) + 64));
    return a1;
  }

  (*(v18 + 16))(&a1[v16], &a2[v16], v17);
  (*(v18 + 56))(&a1[v16], 0, 1, v17);
  return a1;
}

char *sub_261BB3D14(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v10 = sub_261CFE344();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *sub_261BB3F14(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = *(a3 + 24);
  v15 = sub_261CFE344();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(&a1[v14], 1, v15);
  v19 = v17(&a2[v14], 1, v15);
  if (!v18)
  {
    if (!v19)
    {
      (*(v16 + 40))(&a1[v14], &a2[v14], v15);
      return a1;
    }

    (*(v16 + 8))(&a1[v14], v15);
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_12:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    return a1;
  }

  (*(v16 + 32))(&a1[v14], &a2[v14], v15);
  (*(v16 + 56))(&a1[v14], 0, 1, v15);
  return a1;
}

void sub_261BB4208()
{
  sub_261BB4314(319, &qword_27FEDB710, MEMORY[0x277D45E60]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_261BB4314(319, &qword_27FEDB718, MEMORY[0x277D45D80]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_261BB4314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_261D00154();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_261BB436C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_261BB439C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_261BB43D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_261BB4410(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_261BB4448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_261BB44B0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_261BB44C0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t OpenSmartListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = sub_261CFD184();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v35 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = v32 - v11;
  v12 = sub_261CFD674();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_261CFFA44();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFD6A4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB748, &qword_261D070E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v25(v16, v24, v12);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v25(v16, v24, v12);
  v26 = v33;
  sub_261CFD6C4();
  (*(v22 + 56))(v26, 0, 1, v21);
  v41 = 6;
  v27 = sub_261CFC834();
  v28 = *(*(v27 - 8) + 56);
  v28(v34, 1, 1, v27);
  v28(v35, 1, 1, v27);
  (*(v37 + 104))(v36, *MEMORY[0x277CBA308], v38);
  sub_261B94D00();
  v29 = sub_261CFCC04();
  v30 = v39;
  *v39 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB750, &qword_261D070E8);
  v40 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v30[1] = result;
  return result;
}

uint64_t sub_261BB4A50()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDB730);
  __swift_project_value_buffer(v9, qword_27FEDB730);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenSmartListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99D8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenSmartListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BB5000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261BB503C(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t OpenSmartListAppIntent.target.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*OpenSmartListAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenSmartListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BB5204, v4, v3);
}

uint64_t sub_261BB5204()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_261BB52D8;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C58674)(v6, "OpenSmartListAppIntent", 22, 2, v4, v5);
}

uint64_t sub_261BB52D8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_261BB5FD4;
  }

  else
  {
    v7 = sub_261BB5FD8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

unint64_t sub_261BB5418()
{
  result = qword_27FEDB758;
  if (!qword_27FEDB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB758);
  }

  return result;
}

uint64_t sub_261BB546C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261BB5508, v5, v4);
}

uint64_t sub_261BB5508()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B1C224(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_261BB5674;
  v8 = v0[9];

  return (v10)(v8, v0 + 7, v3, v4);
}

uint64_t sub_261BB5674()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  v4 = *(v2 + 104);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_261BB57F4;
  }

  else
  {
    v6 = sub_261BB5788;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261BB5788()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261BB57F4()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_261BB5860(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCBC4();
}