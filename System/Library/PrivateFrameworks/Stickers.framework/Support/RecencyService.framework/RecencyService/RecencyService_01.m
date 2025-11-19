unint64_t sub_231C7E158(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_231C8C23C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_231C7E210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A00, &qword_231C8EA88);
      v7 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_231C7E3B0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_231C7DC08(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C81274();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    sub_231C7DC8C(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v14 = *(v11 + 56);
    v15 = sub_231C8BCCC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_231C7FC28(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_231C8BCCC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_231C7E54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_231C7DB70(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C815A4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_231C8BCCC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    v22 = *(v15 - 8);
    sub_231C85990(v14 + *(v22 + 72) * v8, a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C8010C(v8, v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_231C7E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_231C7DB70(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C81B44();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_231C8BCCC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_231C8BC9C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_231C8010C(v8, v11, MEMORY[0x277CC9578]);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_231C8BC9C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_231C7E8B0(uint64_t a1, int a2)
{
  v3 = v2;
  v66 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v73 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_231C8BCCC();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v74);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v59 - v12;
  v13 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v18 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C0, &qword_231C8EA48);
  v68 = a2;
  result = sub_231C8C0DC();
  v20 = result;
  if (*(v17 + 16))
  {
    v59 = v2;
    v21 = 0;
    v67 = v17;
    v24 = *(v17 + 64);
    v23 = (v17 + 64);
    v22 = v24;
    v25 = 1 << *(v23 - 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v22;
    v28 = (v25 + 63) >> 6;
    v61 = v8 + 16;
    v71 = (v8 + 32);
    v60 = (v8 + 8);
    v29 = result + 64;
    v63 = v8;
    while (1)
    {
      if (!v27)
      {
        v32 = v21;
        while (1)
        {
          v21 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v21 >= v28)
          {
            break;
          }

          v33 = v23[v21];
          ++v32;
          if (v33)
          {
            v31 = __clz(__rbit64(v33));
            v27 = (v33 - 1) & v33;
            goto LABEL_17;
          }
        }

        if ((v68 & 1) == 0)
        {

          v3 = v59;
          goto LABEL_46;
        }

        v57 = v67;
        v58 = 1 << *(v67 + 32);
        v3 = v59;
        if (v58 >= 64)
        {
          bzero(v23, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v23 = -1 << v58;
        }

        *(v57 + 16) = 0;
        break;
      }

      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v21 << 6);
      v35 = v67;
      v36 = *(v67 + 48);
      v70 = *(v64 + 72);
      v37 = v36 + v70 * v34;
      if (v68)
      {
        sub_231C85990(v37, v16, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v38 = *(v35 + 56);
        v69 = *(v8 + 72);
        (*(v8 + 32))(v72, v38 + v69 * v34, v74);
      }

      else
      {
        sub_231C859F8(v37, v16, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v39 = *(v35 + 56);
        v69 = *(v8 + 72);
        (*(v8 + 16))(v72, v39 + v69 * v34, v74);
      }

      v40 = *(v20 + 40);
      sub_231C8C2BC();
      MEMORY[0x238379510](*v16);
      sub_231C859F8(&v16[*(v65 + 20)], v73, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v42 = v62;
          v43 = v74;
          (*v71)(v62, v73, v74);
          v44 = 2;
          goto LABEL_25;
        }

        v48 = *v73;
        v49 = v73[1];
        v47 = 3;
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v42 = v62;
          v43 = v74;
          (*v71)(v62, v73, v74);
          v44 = 0;
LABEL_25:
          MEMORY[0x238379510](v44);
          sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
          sub_231C8BE6C();
          (*v60)(v42, v43);
          goto LABEL_29;
        }

        v45 = *v73;
        v46 = v73[1];
        v47 = 1;
      }

      MEMORY[0x238379510](v47);
      sub_231C8BEFC();

LABEL_29:
      result = sub_231C8C2DC();
      v50 = -1 << *(v20 + 32);
      v51 = result & ~v50;
      v52 = v51 >> 6;
      v8 = v63;
      if (((-1 << v51) & ~*(v29 + 8 * (v51 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v50) >> 6;
        while (++v52 != v54 || (v53 & 1) == 0)
        {
          v55 = v52 == v54;
          if (v52 == v54)
          {
            v52 = 0;
          }

          v53 |= v55;
          v56 = *(v29 + 8 * v52);
          if (v56 != -1)
          {
            v30 = __clz(__rbit64(~v56)) + (v52 << 6);
            goto LABEL_9;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v51) & ~*(v29 + 8 * (v51 >> 6)))) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      sub_231C85990(v16, *(v20 + 48) + v70 * v30, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      result = (*v71)(*(v20 + 56) + v69 * v30, v72, v74);
      ++*(v20 + 16);
    }
  }

LABEL_46:
  *v3 = v20;
  return result;
}

uint64_t sub_231C7EF1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231C8BCCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B8, &qword_231C8EA40);
  v48 = a2;
  result = sub_231C8C0DC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_231C85990(v31 + v32 * v28, v52, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_231C859F8(v33 + v32 * v28, v52, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      }

      v34 = *(v16 + 40);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
      result = sub_231C8BE5C();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_231C85990(v52, *(v16 + 56) + v32 * v24, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_231C7F3BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_231C8BCCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A8, &qword_231C8EA30);
  v43 = a2;
  result = sub_231C8C0DC();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
      result = sub_231C8BE5C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_231C7F780(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_231C8BC9C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231C8BCCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B0, &qword_231C8EA38);
  v52 = a2;
  result = sub_231C8C0DC();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
      result = sub_231C8BE5C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_231C7FC28(int64_t a1, uint64_t a2)
{
  v4 = sub_231C8BCCC();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v48);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 + 64;
  v16 = -1 << *(a2 + 32);
  v17 = (a1 + 1) & ~v16;
  if ((*(a2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v44 = ~v16;
    v45 = (sub_231C8C06C() + 1) & ~v16;
    v46 = a2 + 64;
    v18 = *(v10 + 72);
    v39 = (v42 + 8);
    v40 = (v42 + 32);
    do
    {
      v19 = v18;
      v20 = v18 * v17;
      sub_231C859F8(*(a2 + 48) + v18 * v17, v14, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v21 = *(a2 + 40);
      sub_231C8C2BC();
      MEMORY[0x238379510](*v14);
      sub_231C859F8(&v14[*(v48 + 20)], v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v23 = v41;
          v24 = v43;
          (*v40)(v41, v9, v43);
          v25 = 2;
          goto LABEL_11;
        }

        v28 = *v9;
        v29 = v9[1];
        MEMORY[0x238379510](3);
        sub_231C8BEFC();
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v23 = v41;
          v24 = v43;
          (*v40)(v41, v9, v43);
          v25 = 0;
LABEL_11:
          MEMORY[0x238379510](v25);
          sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
          sub_231C8BE6C();
          (*v39)(v23, v24);
          goto LABEL_15;
        }

        v27 = *v9;
        v26 = v9[1];
        MEMORY[0x238379510](1);
        sub_231C8BEFC();
      }

LABEL_15:
      v30 = sub_231C8C2DC();
      result = sub_231C7DC8C(v14, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v31 = v44;
      v32 = v30 & v44;
      v15 = v46;
      if (a1 >= v45)
      {
        v18 = v19;
        if (v32 < v45)
        {
          goto LABEL_5;
        }

LABEL_19:
        if (a1 < v32)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }

      v18 = v19;
      if (v32 < v45)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v18 * a1 < v20 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v20 + v18))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v18 * a1 != v20)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v33 = *(a2 + 56);
      v34 = *(v42 + 72);
      v35 = v34 * a1;
      result = v33 + v34 * a1;
      if (v34 * a1 < (v34 * v17) || result >= v33 + v34 * v17 + v34)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v17;
        if (v35 == v34 * v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v17;
LABEL_5:
      v17 = (v17 + 1) & v31;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_231C8010C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_231C8BCCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_231C8C06C();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
      v25 = sub_231C8BE5C();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_231C8045C(int64_t a1, uint64_t a2)
{
  v43 = sub_231C8BCCC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_231C8C06C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
      v26 = sub_231C8BE5C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_231C8077C(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_231C7DC08(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_231C81274();
      goto LABEL_7;
    }

    sub_231C7E8B0(v17, a3 & 1);
    v28 = *v4;
    v29 = sub_231C7DC08(a2);
    if ((v18 & 1) == (v30 & 1))
    {
      v14 = v29;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_231C859F8(a2, v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      return sub_231C80EE8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_231C8C25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_231C8BCCC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_231C80958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_231C7DB70(a2);
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
      sub_231C815A4();
      goto LABEL_7;
    }

    sub_231C7EF1C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_231C7DB70(a2);
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
      return sub_231C80FD8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_231C8C25C();
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
  v23 = v22 + *(*(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) - 8) + 72) * v15;

  return sub_231C87EB4(a1, v23);
}

uint64_t sub_231C80B40(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_231C7DB70(a2);
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
      sub_231C81B44();
      goto LABEL_7;
    }

    sub_231C7F780(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_231C7DB70(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_231C81180(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_231C8C25C();
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
  v23 = sub_231C8BC9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_231C80D44(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_231C7DB70(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = sub_231C818D0();
      goto LABEL_7;
    }

    sub_231C7F3BC(result, a2 & 1);
    v22 = *v4;
    result = sub_231C7DB70(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return sub_231C810C8(v15, v12, v21, a3);
    }
  }

  result = sub_231C8C25C();
  __break(1u);
  return result;
}

uint64_t sub_231C80EE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  sub_231C85990(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  v10 = a4[7];
  v11 = sub_231C8BCCC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_231C80FD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_231C8BCCC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  result = sub_231C85990(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_231C810C8(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_231C8BCCC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_231C81180(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_231C8BCCC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_231C8BC9C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_231C81274()
{
  v1 = v0;
  v2 = sub_231C8BCCC();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C0, &qword_231C8EA48);
  v9 = *v0;
  v10 = sub_231C8C0CC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v35 = v1;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v13 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v44 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = v9;
    v21 = v39;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = *(v40 + 72) * v25;
        sub_231C859F8(*(v9 + 48) + v26, v21, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v28 = v42;
        v27 = v43;
        v29 = *(v43 + 72) * v25;
        v30 = *(v9 + 56) + v29;
        v31 = v41;
        (*(v43 + 16))(v41, v30, v42);
        v32 = v44;
        sub_231C85990(v21, *(v44 + 48) + v26, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v33 = v31;
        v9 = v38;
        result = (*(v27 + 32))(*(v32 + 56) + v29, v33, v28);
        v19 = v45;
      }

      while (v45);
    }

    v23 = v15;
    v11 = v44;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v24 = *(v13 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v45 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

char *sub_231C815A4()
{
  v1 = v0;
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_231C8BCCC();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B8, &qword_231C8EA40);
  v7 = *v0;
  v8 = sub_231C8C0CC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_231C859F8(*(v7 + 56) + v28, v37, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_231C85990(v27, *(v29 + 56) + v28, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_231C818D0()
{
  v1 = v0;
  v30 = sub_231C8BCCC();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A8, &qword_231C8EA30);
  v4 = *v0;
  v5 = sub_231C8C0CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

char *sub_231C81B44()
{
  v1 = v0;
  v43 = sub_231C8BC9C();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_231C8BCCC();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B0, &qword_231C8EA38);
  v6 = *v0;
  v7 = sub_231C8C0CC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_231C81E98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v78 = a5;
  v76 = a3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v74 = &v65 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v22 = &v65 - v18;
  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_69;
  }

  v23 = v76 - a2;
  if (v76 - a2 != 0x8000000000000000 || v21 != -1)
  {
    v24 = (a2 - a1) / v21;
    v83 = a1;
    v82 = a4;
    v77 = v8;
    v75 = a1;
    if (v24 >= v23 / v21)
    {
      v26 = v23 / v21 * v21;
      v72 = v19;
      if (a4 < a2 || a2 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        result = v75;
        v27 = v80;
      }

      else
      {
        v27 = v80;
        if (a4 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          result = v75;
        }
      }

      v45 = a4 + v26;
      if (v26 >= 1)
      {
        v46 = -v21;
        v69 = (v9 + 16);
        v70 = (v9 + 8);
        v47 = v45;
        v48 = v74;
        v49 = v76;
        v66 = v46;
        v67 = a4;
        do
        {
          v73 = v45;
          v65 = v45;
          v50 = a2;
          v51 = a2 + v46;
          v68 = a2 + v46;
          v71 = a2;
          while (1)
          {
            if (v50 <= result)
            {
              v80 = v27;
              v83 = v50;
              v45 = v65;
              goto LABEL_66;
            }

            v53 = v49;
            v76 = v47;
            v54 = *v69;
            v79 = v47 + v46;
            v54(v48);
            v55 = v46;
            v56 = v72;
            (v54)(v72, v51, v8);
            v57 = sub_231C77F20(v48, v56, v78);
            v80 = v27;
            if (v27)
            {
              v64 = *v70;
              (*v70)(v56, v8);
              v64(v48, v8);
              v83 = v71;
              v81 = v73;
              goto LABEL_67;
            }

            v58 = v57;
            v59 = v53 + v55;
            v60 = *v70;
            (*v70)(v56, v8);
            v60(v48, v8);
            if (v58)
            {
              break;
            }

            v47 = v79;
            v49 = v59;
            if (v53 < v76 || v59 >= v76)
            {
              v8 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v67;
              v51 = v68;
              v48 = v74;
            }

            else
            {
              v52 = v67;
              v51 = v68;
              v8 = v77;
              v48 = v74;
              if (v53 != v76)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v73 = v47;
            v27 = v80;
            result = v75;
            v46 = v66;
            v50 = v71;
            if (v79 <= v52)
            {
              a2 = v71;
              v45 = v73;
              goto LABEL_65;
            }
          }

          v49 = v59;
          if (v53 < v71 || v59 >= v71)
          {
            a2 = v68;
            v8 = v77;
            swift_arrayInitWithTakeFrontToBack();
            v46 = v66;
            v62 = v67;
            v48 = v74;
          }

          else
          {
            v61 = v53 == v71;
            v62 = v67;
            a2 = v68;
            v8 = v77;
            v48 = v74;
            v46 = v66;
            if (!v61)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          result = v75;
          v47 = v76;
          v27 = v80;
          v45 = v73;
        }

        while (v76 > v62);
      }

LABEL_65:
      v80 = v27;
      v83 = a2;
LABEL_66:
      v81 = v45;
LABEL_67:
      sub_231C82640(&v83, &v82, &v81);

      return 1;
    }

    v25 = v24 * v21;
    if (a4 < result || result + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == result)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v75;
LABEL_17:
    v75 = a4 + v25;
    v81 = a4 + v25;
    if (v25 >= 1 && a2 < v76)
    {
      v29 = *(v9 + 16);
      v73 = v16;
      v74 = (v9 + 16);
      v71 = v29;
      v72 = (v9 + 8);
      v30 = v22;
      v79 = v21;
      while (1)
      {
        v31 = result;
        v32 = a2;
        v33 = v71;
        v71(v30, a2, v8);
        v34 = v30;
        v35 = v73;
        v36 = a4;
        v33(v73, a4, v8);
        v37 = v80;
        v38 = sub_231C77F20(v34, v35, v78);
        v80 = v37;
        if (v37)
        {
          v63 = *v72;
          (*v72)(v35, v8);
          v63(v34, v8);
          goto LABEL_67;
        }

        v39 = v38;
        v40 = *v72;
        (*v72)(v35, v8);
        v40(v34, v8);
        v30 = v34;
        if ((v39 & 1) == 0)
        {
          break;
        }

        a2 = v32 + v79;
        v41 = v31;
        if (v31 >= v32 && v31 < a2)
        {
          v42 = v76;
          v8 = v77;
          if (v31 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
            v41 = v31;
          }

          a4 = v36;
          v43 = v79;
          v44 = v42;
          goto LABEL_38;
        }

        v8 = v77;
        swift_arrayInitWithTakeFrontToBack();
        v41 = v31;
        a4 = v36;
LABEL_37:
        v44 = v76;
        v43 = v79;
LABEL_38:
        result = v41 + v43;
        v83 = result;
        if (a4 >= v75 || a2 >= v44)
        {
          goto LABEL_67;
        }
      }

      a4 = v36 + v79;
      v41 = v31;
      if (v31 < v36 || v31 >= a4)
      {
        v8 = v77;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v8 = v77;
        if (v31 == v36)
        {
LABEL_36:
          v82 = a4;
          a2 = v32;
          goto LABEL_37;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v41 = v31;
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_231C825A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231C8262C(v3);
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

uint64_t sub_231C82640(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231C8BCCC();
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

size_t sub_231C82738(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A18, &qword_231C8EA98);
  v10 = *(sub_231C8BCCC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_231C8BCCC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_231C82910(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_231C8BCCC();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_231C8BCCC();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v45 - v8;
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v45 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A0, &qword_231C8EA28);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v45 - v25;
  v27 = (&v45 + *(v24 + 56) - v25);
  sub_231C859F8(a1, &v45 - v25, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a2, v27, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_231C859F8(v26, v21, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v47 + 8))(v21, v48);
LABEL_23:
        sub_231C67FE0(v26, &qword_27DD709A0, &qword_231C8EA28);
        goto LABEL_24;
      }

      v42 = v47;
      v31 = v48;
      v43 = v45;
      (*(v47 + 32))(v45, v27, v48);
      v32 = sub_231C8BCAC();
      v33 = *(v42 + 8);
      v33(v43, v31);
      v34 = v21;
LABEL_28:
      v33(v34, v31);
      sub_231C7DC8C(v26, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      return v32 & 1;
    }

    sub_231C859F8(v26, v19, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    v36 = *v19;
    v35 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v36 != *v27 || v35 != v27[1])
      {
        goto LABEL_19;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_21:

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_231C859F8(v26, v16, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v47 + 8))(v16, v48);
      goto LABEL_23;
    }

    v30 = v46;
    v29 = v47;
    v31 = v48;
    (*(v47 + 32))(v46, v27, v48);
    v32 = sub_231C8BCAC();
    v33 = *(v29 + 8);
    v33(v30, v31);
    v34 = v16;
    goto LABEL_28;
  }

  sub_231C859F8(v26, v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  v39 = *v13;
  v38 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_21;
  }

  if (v39 == *v27 && v38 == v27[1])
  {
    goto LABEL_25;
  }

LABEL_19:
  v41 = sub_231C8C23C();

  if (v41)
  {
LABEL_26:
    sub_231C7DC8C(v26, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    v32 = 1;
    return v32 & 1;
  }

  sub_231C7DC8C(v26, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
LABEL_24:
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_231C830A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709E0, &qword_231C8EA68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A8, &qword_231C8EA30);
    v8 = sub_231C8C0EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v10, v6, &qword_27DD709E0, &qword_231C8EA68);
      result = sub_231C7DB70(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_231C8BCCC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_231C83290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709D8, &qword_231C8EA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B0, &qword_231C8EA38);
    v8 = sub_231C8C0EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v10, v6, &qword_27DD709D8, &qword_231C8EA60);
      result = sub_231C7DB70(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_231C8BCCC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_231C8BC9C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_231C834B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709D0, &qword_231C8EA58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B8, &qword_231C8EA40);
    v8 = sub_231C8C0EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v10, v6, &qword_27DD709D0, &qword_231C8EA58);
      result = sub_231C7DB70(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_231C8BCCC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
      result = sub_231C85990(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_231C836CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C8, &qword_231C8EA50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C0, &qword_231C8EA48);
    v8 = sub_231C8C0EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v10, v6, &qword_27DD709C8, &qword_231C8EA50);
      result = sub_231C7DC08(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
      sub_231C85990(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v17 = v8[7];
      v18 = sub_231C8BCCC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_231C838E8(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  v235 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v254 = &v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v272 = &v232 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v238 = &v232 - v15;
  MEMORY[0x28223BE20](v14);
  v247 = &v232 - v16;
  v17 = sub_231C8BC9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v249 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v261 = &v232 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v236 = &v232 - v25;
  MEMORY[0x28223BE20](v24);
  v243 = &v232 - v26;
  v277 = sub_231C8BCCC();
  v27 = *(v277 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v277);
  v242 = &v232 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v265 = &v232 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v259 = &v232 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v232 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v251 = &v232 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v253 = &v232 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v233 = &v232 - v43;
  MEMORY[0x28223BE20](v42);
  v232 = &v232 - v44;
  v250 = a3;
  v45 = a3[1];
  v274 = a5;
  v248 = v27;
  if (v45 < 1)
  {
    swift_retain_n();
    v48 = MEMORY[0x277D84F90];
LABEL_149:
    v47 = *v235;
    if (!*v235)
    {
      goto LABEL_188;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_151:
      v278 = v48;
      v218 = *(v48 + 2);
      if (v218 >= 2)
      {
        do
        {
          v219 = *v250;
          if (!*v250)
          {
            goto LABEL_186;
          }

          v220 = *&v48[16 * v218];
          v221 = v48;
          v222 = *&v48[16 * v218 + 24];
          v223 = v248[9];
          v224 = &v219[v223 * v220];
          v225 = &v219[v223 * *&v48[16 * v218 + 16]];
          v226 = &v219[v223 * v222];
          v48 = v274;

          v227 = v224;
          v228 = v258;
          sub_231C81E98(v227, v225, v226, v47, v48);
          v258 = v228;
          if (v228)
          {
            break;
          }

          if (v222 < v220)
          {
            goto LABEL_175;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v221 = sub_231C8262C(v221);
          }

          if (v218 - 2 >= *(v221 + 2))
          {
            goto LABEL_176;
          }

          v229 = &v221[16 * v218];
          *v229 = v220;
          *(v229 + 1) = v222;
          v278 = v221;
          sub_231C825A0(v218 - 1);
          v48 = v278;
          v218 = *(v278 + 2);
        }

        while (v218 > 1);
      }
    }

LABEL_182:
    v48 = sub_231C8262C(v48);
    goto LABEL_151;
  }

  v46 = v45;
  v270 = v27 + 2;
  v271 = (v27 + 1);
  v269 = (v18 + 56);
  v255 = v18 + 16;
  v268 = (v18 + 48);
  v260 = (v18 + 32);
  v257 = (v18 + 8);
  v267 = (v27 + 4);
  swift_retain_n();
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v234 = a4;
  v273 = v17;
  v256 = v18;
  v262 = v37;
  v49 = v46;
LABEL_4:
  v50 = v47 + 1;
  v239 = v48;
  v237 = v47;
  if (v47 + 1 >= v49)
  {
    v72 = v47 + 1;
    v103 = v258;
    v65 = v259;
    goto LABEL_50;
  }

  v51 = v47;
  v52 = *v250;
  v53 = v27[9];
  v54 = v27[2];
  v55 = v232;
  v276 = *v250 + v53 * v50;
  (v54)(v232);
  v266 = v53;
  v275 = v52;
  v56 = &v52[v53 * v51];
  v57 = v55;
  v58 = v233;
  v263 = v54;
  (v54)(v233, v56, v277);
  v59 = v258;
  LODWORD(v264) = sub_231C77F20(v55, v58, v274);
  v258 = v59;
  if (v59)
  {
    v230 = *v271;
    v231 = v277;
    (*v271)(v58, v277);
    (v230)(v57, v231);
  }

  v252 = v49;
  v60 = *v271;
  v61 = v277;
  (*v271)(v58, v277);
  v246 = v60;
  (v60)(v57, v61);
  v62 = v51 + 2;
  v47 = v266;
  v63 = v274;
  v64 = &v275[v266 * (v51 + 2)];
  v65 = v259;
  while (1)
  {
    v72 = v252;
    if (v252 == v62)
    {
      break;
    }

    v275 = v62;
    v73 = v253;
    v74 = v277;
    v75 = v263;
    (v263)(v253, v64, v277);
    v67 = v251;
    v75(v251, v276, v74);
    swift_beginAccess();
    v76 = *(v63 + 120);
    v77 = 0.0;
    if (*(v76 + 16))
    {
      v78 = sub_231C7DB70(v73);
      if (v79)
      {
        v77 = *(*(v76 + 56) + 8 * v78);
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v80 = *(v63 + 120);
    if (*(v80 + 16) && (v81 = sub_231C7DB70(v67), (v82 & 1) != 0))
    {
      v83 = *(*(v80 + 56) + 8 * v81);
      swift_endAccess();
      if (v77 != v83)
      {
        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      if (v77 != 0.0)
      {
        v83 = 0.0;
LABEL_23:
        v68 = v83 < v77;
LABEL_33:
        v69 = v253;
        goto LABEL_9;
      }
    }

    swift_beginAccess();
    v84 = *(v63 + 128);
    if (*(v84 + 16))
    {
      v66 = v253;
      v85 = sub_231C7DB70(v253);
      if (v86)
      {
        (*(v256 + 16))(v247, *(v84 + 56) + *(v256 + 72) * v85, v273);
        v87 = 0;
      }

      else
      {
        v87 = 1;
      }
    }

    else
    {
      v87 = 1;
      v66 = v253;
    }

    v88 = *v269;
    v89 = v247;
    v90 = v273;
    (*v269)(v247, v87, 1, v273);
    swift_endAccess();
    v91 = *v268;
    if ((*v268)(v89, 1, v90) != 1)
    {
      v92 = *v260;
      (*v260)(v243, v247, v90);
      v93 = v274;
      swift_beginAccess();
      v94 = *(v93 + 128);
      if (*(v94 + 16) && (v95 = sub_231C7DB70(v251), (v96 & 1) != 0))
      {
        v97 = *(v94 + 56) + *(v256 + 72) * v95;
        v89 = v238;
        (*(v256 + 16))(v238, v97, v273);
        v98 = 0;
      }

      else
      {
        v98 = 1;
        v89 = v238;
      }

      v99 = v273;
      v88(v89, v98, 1, v273);
      swift_endAccess();
      if (v91(v89, 1, v99) != 1)
      {
        v100 = v236;
        v92(v236, v89, v99);
        v101 = v243;
        v68 = sub_231C8BC6C();
        v102 = *v257;
        (*v257)(v100, v99);
        v102(v101, v99);
        v63 = v274;
        v65 = v259;
        v37 = v262;
        v67 = v251;
        goto LABEL_33;
      }

      (*v257)(v243, v99);
      v66 = v253;
    }

    sub_231C67FE0(v89, &qword_27DD70528, &qword_231C8D980);
    sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0]);
    v67 = v251;
    v68 = sub_231C8BE7C();
    v69 = v66;
    v63 = v274;
    v65 = v259;
    v37 = v262;
LABEL_9:
    v70 = v277;
    v71 = v246;
    (v246)(v67, v277);
    (v71)(v69, v70);
    v62 = (v275 + 1);
    v47 = v266;
    v64 += v266;
    v276 += v266;
    if ((v264 ^ v68))
    {
      v72 = v275;
      break;
    }
  }

  v103 = v258;
  v27 = v248;
  a4 = v234;
  v48 = v239;
  if ((v264 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v72 < v237)
  {
    goto LABEL_181;
  }

  if (v237 < v72)
  {
    v104 = v47 * (v72 - 1);
    v105 = v72 * v47;
    v252 = v72;
    v106 = v72;
    v107 = v237;
    v108 = v237 * v47;
    do
    {
      if (v107 != --v106)
      {
        v109 = *v250;
        if (!*v250)
        {
          goto LABEL_185;
        }

        v110 = *v267;
        (*v267)(v242, &v109[v108], v277);
        if (v108 < v104 || &v109[v108] >= &v109[v105])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v108 != v104)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v110(&v109[v104], v242, v277);
        v103 = v258;
        v48 = v239;
        v37 = v262;
      }

      ++v107;
      v104 -= v47;
      v105 -= v47;
      v108 += v47;
    }

    while (v107 < v106);
    v27 = v248;
    a4 = v234;
    v65 = v259;
    v72 = v252;
  }

LABEL_50:
  v111 = v250[1];
  if (v72 >= v111)
  {
    goto LABEL_60;
  }

  if (__OFSUB__(v72, v237))
  {
    goto LABEL_178;
  }

  if (v72 - v237 >= a4)
  {
LABEL_60:
    v47 = v72;
    goto LABEL_61;
  }

  v112 = v237 + a4;
  if (__OFADD__(v237, a4))
  {
    goto LABEL_179;
  }

  v113 = v237;
  if (v112 >= v111)
  {
    v47 = v250[1];
  }

  else
  {
    v47 = v112;
  }

  if (v47 < v237)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v72 == v47)
  {
    v47 = v72;
    goto LABEL_62;
  }

  v258 = v103;
  v168 = *v250;
  v169 = v27[9];
  v266 = v27[2];
  v170 = (v168 + v169 * (v72 - 1));
  v263 = -v169;
  v171 = v237 - v72;
  v252 = v72;
  v264 = v168;
  v240 = v169;
  v172 = (v168 + v72 * v169);
  v173 = v274;
  v241 = v47;
  while (2)
  {
    v244 = v172;
    v245 = v171;
    v246 = v170;
LABEL_116:
    v276 = v171;
    v174 = v277;
    v175 = v266;
    (v266)(v37, v172, v277);
    v175(v65, v170, v174);
    swift_beginAccess();
    v176 = *(v173 + 120);
    v177 = 0.0;
    if (*(v176 + 16))
    {
      v178 = sub_231C7DB70(v37);
      if (v179)
      {
        v177 = *(*(v176 + 56) + 8 * v178);
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v180 = *(v173 + 120);
    v181 = *(v180 + 16);
    v275 = v172;
    if (v181 && (v182 = sub_231C7DB70(v65), (v183 & 1) != 0))
    {
      v184 = *(*(v180 + 56) + 8 * v182);
      swift_endAccess();
      if (v177 != v184)
      {
LABEL_128:
        v190 = v184 < v177;
        v191 = v65;
        goto LABEL_140;
      }
    }

    else
    {
      swift_endAccess();
      if (v177 != 0.0)
      {
        v184 = 0.0;
        goto LABEL_128;
      }
    }

    swift_beginAccess();
    v185 = *(v173 + 128);
    if (*(v185 + 16))
    {
      v186 = sub_231C7DB70(v37);
      v187 = v273;
      if (v188)
      {
        (*(v256 + 16))(v272, *(v185 + 56) + *(v256 + 72) * v186, v273);
        v189 = 0;
      }

      else
      {
        v189 = 1;
      }
    }

    else
    {
      v189 = 1;
      v187 = v273;
    }

    v192 = *v269;
    v193 = v272;
    (*v269)(v272, v189, 1, v187);
    swift_endAccess();
    v194 = *v268;
    if ((*v268)(v193, 1, v187) == 1)
    {
LABEL_138:
      sub_231C67FE0(v193, &qword_27DD70528, &qword_231C8D980);
      sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0]);
      v37 = v262;
      v190 = sub_231C8BE7C();
      v191 = v65;
    }

    else
    {
      v195 = v187;
      v196 = *v260;
      (*v260)(v261, v272, v195);
      v197 = v274;
      swift_beginAccess();
      v198 = *(v197 + 128);
      if (*(v198 + 16) && (v199 = sub_231C7DB70(v65), (v200 & 1) != 0))
      {
        v201 = *(v198 + 56) + *(v256 + 72) * v199;
        v193 = v254;
        (*(v256 + 16))(v254, v201, v273);
        v202 = 0;
      }

      else
      {
        v202 = 1;
        v193 = v254;
      }

      v203 = v273;
      v192(v193, v202, 1, v273);
      swift_endAccess();
      if (v194(v193, 1, v203) == 1)
      {
        (*v257)(v261, v203);
        v65 = v259;
        goto LABEL_138;
      }

      v204 = v249;
      v196(v249, v193, v203);
      v205 = v261;
      v190 = sub_231C8BC6C();
      v206 = *v257;
      (*v257)(v204, v203);
      v206(v205, v203);
      v191 = v259;
      v37 = v262;
    }

LABEL_140:
    v207 = *v271;
    v208 = v191;
    v209 = v277;
    (*v271)();
    v210 = v37;
    (v207)(v37, v209);
    if ((v190 & 1) == 0)
    {
      v65 = v208;
      v173 = v274;
LABEL_114:
      v170 = v246 + v240;
      v171 = v245 - 1;
      v172 = &v244[v240];
      ++v252;
      v47 = v241;
      if (v252 != v241)
      {
        continue;
      }

      v103 = v258;
      v27 = v248;
      v48 = v239;
LABEL_61:
      v113 = v237;
LABEL_62:
      if (v47 < v113)
      {
        goto LABEL_177;
      }

      v258 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_231C7D000(0, *(v48 + 2) + 1, 1, v48);
      }

      v115 = *(v48 + 2);
      v114 = *(v48 + 3);
      v116 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        v48 = sub_231C7D000((v114 > 1), v115 + 1, 1, v48);
      }

      *(v48 + 2) = v116;
      v117 = &v48[16 * v115];
      *(v117 + 4) = v113;
      *(v117 + 5) = v47;
      v276 = *v235;
      if (!v276)
      {
        goto LABEL_187;
      }

      if (v115)
      {
        while (2)
        {
          v118 = v116 - 1;
          if (v116 >= 4)
          {
            v123 = &v48[16 * v116 + 32];
            v124 = *(v123 - 64);
            v125 = *(v123 - 56);
            v129 = __OFSUB__(v125, v124);
            v126 = v125 - v124;
            if (v129)
            {
              goto LABEL_164;
            }

            v128 = *(v123 - 48);
            v127 = *(v123 - 40);
            v129 = __OFSUB__(v127, v128);
            v121 = v127 - v128;
            v122 = v129;
            if (v129)
            {
              goto LABEL_165;
            }

            v130 = &v48[16 * v116];
            v132 = *v130;
            v131 = *(v130 + 1);
            v129 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v129)
            {
              goto LABEL_167;
            }

            v129 = __OFADD__(v121, v133);
            v134 = v121 + v133;
            if (v129)
            {
              goto LABEL_170;
            }

            if (v134 >= v126)
            {
              v152 = &v48[16 * v118 + 32];
              v154 = *v152;
              v153 = *(v152 + 1);
              v129 = __OFSUB__(v153, v154);
              v155 = v153 - v154;
              if (v129)
              {
                goto LABEL_174;
              }

              if (v121 < v155)
              {
                v118 = v116 - 2;
              }
            }

            else
            {
LABEL_82:
              if (v122)
              {
                goto LABEL_166;
              }

              v135 = &v48[16 * v116];
              v137 = *v135;
              v136 = *(v135 + 1);
              v138 = __OFSUB__(v136, v137);
              v139 = v136 - v137;
              v140 = v138;
              if (v138)
              {
                goto LABEL_169;
              }

              v141 = &v48[16 * v118 + 32];
              v143 = *v141;
              v142 = *(v141 + 1);
              v129 = __OFSUB__(v142, v143);
              v144 = v142 - v143;
              if (v129)
              {
                goto LABEL_172;
              }

              if (__OFADD__(v139, v144))
              {
                goto LABEL_173;
              }

              if (v139 + v144 < v121)
              {
                goto LABEL_96;
              }

              if (v121 < v144)
              {
                v118 = v116 - 2;
              }
            }
          }

          else
          {
            if (v116 == 3)
            {
              v119 = *(v48 + 4);
              v120 = *(v48 + 5);
              v129 = __OFSUB__(v120, v119);
              v121 = v120 - v119;
              v122 = v129;
              goto LABEL_82;
            }

            v145 = &v48[16 * v116];
            v147 = *v145;
            v146 = *(v145 + 1);
            v129 = __OFSUB__(v146, v147);
            v139 = v146 - v147;
            v140 = v129;
LABEL_96:
            if (v140)
            {
              goto LABEL_168;
            }

            v148 = &v48[16 * v118];
            v150 = *(v148 + 4);
            v149 = *(v148 + 5);
            v129 = __OFSUB__(v149, v150);
            v151 = v149 - v150;
            if (v129)
            {
              goto LABEL_171;
            }

            if (v151 < v139)
            {
              break;
            }
          }

          v156 = v118 - 1;
          if (v118 - 1 >= v116)
          {
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          v157 = *v250;
          if (!*v250)
          {
            goto LABEL_184;
          }

          v158 = v48;
          v159 = *&v48[16 * v156 + 32];
          v160 = *&v48[16 * v118 + 40];
          v161 = v27[9];
          v162 = &v157[v161 * v159];
          v163 = &v157[v161 * *&v48[16 * v118 + 32]];
          v164 = &v157[v161 * v160];
          v48 = v274;

          v165 = v162;
          v166 = v258;
          sub_231C81E98(v165, v163, v164, v276, v48);
          v258 = v166;
          if (v166)
          {
          }

          if (v160 < v159)
          {
            goto LABEL_162;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v158 = sub_231C8262C(v158);
          }

          v27 = v248;
          if (v156 >= *(v158 + 2))
          {
            goto LABEL_163;
          }

          v167 = &v158[16 * v156];
          *(v167 + 4) = v159;
          *(v167 + 5) = v160;
          v278 = v158;
          sub_231C825A0(v118);
          v48 = v278;
          v116 = *(v278 + 2);
          v37 = v262;
          if (v116 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v49 = v250[1];
      a4 = v234;
      if (v47 >= v49)
      {
        goto LABEL_149;
      }

      goto LABEL_4;
    }

    break;
  }

  v211 = v276;
  if (v264)
  {
    v212 = *v267;
    v213 = v265;
    v214 = v275;
    v215 = v277;
    (*v267)(v265, v275, v277);
    swift_arrayInitWithTakeFrontToBack();
    v212(v170, v213, v215);
    v170 += v263;
    v172 = &v214[v263];
    v216 = __CFADD__(v211, 1);
    v171 = v211 + 1;
    v65 = v208;
    v37 = v210;
    v173 = v274;
    if (v216)
    {
      goto LABEL_114;
    }

    goto LABEL_116;
  }

  __break(1u);
LABEL_184:

  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:

  __break(1u);
LABEL_187:

  __break(1u);
LABEL_188:

  __break(1u);
  return result;
}

uint64_t sub_231C84F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v104 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v88 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v102 = &v76[-v13];
  v91 = sub_231C8BC9C();
  v86 = *(v91 - 8);
  v14 = *(v86 + 64);
  v15 = MEMORY[0x28223BE20](v91);
  v84 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v90 = &v76[-v17];
  v79 = sub_231C8BCCC();
  v18 = *(*(v79 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v79);
  v98 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v76[-v22];
  result = MEMORY[0x28223BE20](v21);
  v103 = &v76[-v26];
  v78 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v100 = v29;
    v30 = *(v28 + 56);
    v94 = (v86 + 56);
    v85 = v86 + 16;
    v93 = (v86 + 48);
    v89 = (v86 + 32);
    v87 = (v86 + 8);
    v99 = (v28 - 8);
    v101 = v28;
    v96 = (v28 + 16);
    v97 = v27;
    v31 = v27 + v30 * (a3 - 1);
    v95 = -v30;
    v32 = a1 - a3;
    v77 = v30;
    v33 = v27 + v30 * a3;
    v92 = v23;
LABEL_5:
    v83 = a3;
    v80 = v33;
    v81 = v32;
    v34 = v32;
    v82 = v31;
    v35 = v31;
    v36 = v79;
    while (1)
    {
      v105 = v34;
      v37 = v103;
      v38 = v100;
      v100(v103, v33, v36);
      v38(v23, v35, v36);
      v39 = v104;
      swift_beginAccess();
      v40 = *(v39 + 120);
      v41 = 0.0;
      if (*(v40 + 16))
      {
        v42 = sub_231C7DB70(v37);
        if (v43)
        {
          v41 = *(*(v40 + 56) + 8 * v42);
        }
      }

      swift_endAccess();
      swift_beginAccess();
      v44 = *(v39 + 120);
      if (*(v44 + 16) && (v45 = sub_231C7DB70(v23), (v46 & 1) != 0))
      {
        v47 = *(*(v44 + 56) + 8 * v45);
        swift_endAccess();
        if (v41 != v47)
        {
          goto LABEL_18;
        }
      }

      else
      {
        swift_endAccess();
        if (v41 != 0.0)
        {
          v47 = 0.0;
LABEL_18:
          v53 = v47 < v41;
          v54 = v37;
          v55 = v36;
          v56 = v23;
          goto LABEL_30;
        }
      }

      swift_beginAccess();
      v48 = *(v39 + 128);
      if (*(v48 + 16))
      {
        v49 = sub_231C7DB70(v37);
        v50 = v91;
        if (v51)
        {
          (*(v86 + 16))(v102, *(v48 + 56) + *(v86 + 72) * v49, v91);
          v52 = 0;
        }

        else
        {
          v52 = 1;
        }
      }

      else
      {
        v52 = 1;
        v50 = v91;
      }

      v57 = *v94;
      v58 = v102;
      (*v94)(v102, v52, 1, v50);
      swift_endAccess();
      v59 = *v93;
      if ((*v93)(v58, 1, v50) == 1)
      {
        goto LABEL_28;
      }

      v60 = *v89;
      (*v89)(v90, v102, v50);
      v61 = v104;
      swift_beginAccess();
      v62 = *(v61 + 128);
      if (*(v62 + 16) && (v63 = sub_231C7DB70(v92), (v64 & 1) != 0))
      {
        v65 = *(v62 + 56) + *(v86 + 72) * v63;
        v58 = v88;
        (*(v86 + 16))(v88, v65, v50);
        v66 = 0;
      }

      else
      {
        v66 = 1;
        v58 = v88;
      }

      v57(v58, v66, 1, v50);
      swift_endAccess();
      if (v59(v58, 1, v50) == 1)
      {
        break;
      }

      v67 = v60;
      v68 = v84;
      v67(v84, v58, v50);
      v69 = v90;
      v53 = sub_231C8BC6C();
      v70 = *v87;
      (*v87)(v68, v50);
      v70(v69, v50);
      v55 = v36;
      v56 = v92;
      v54 = v103;
LABEL_30:
      v71 = *v99;
      v23 = v56;
      (*v99)(v56, v55);
      result = (v71)(v54, v55);
      v72 = v105;
      if ((v53 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v97)
      {
        __break(1u);
        return result;
      }

      v36 = v55;
      v73 = *v96;
      v74 = v98;
      (*v96)(v98, v33, v36);
      swift_arrayInitWithTakeFrontToBack();
      result = v73(v35, v74, v36);
      v35 += v95;
      v33 += v95;
      v75 = __CFADD__(v72, 1);
      v34 = v72 + 1;
      if (v75)
      {
LABEL_4:
        a3 = v83 + 1;
        v31 = v82 + v77;
        v32 = v81 - 1;
        v33 = v80 + v77;
        if (v83 + 1 == v78)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    (*v87)(v90, v50);
    v37 = v103;
LABEL_28:
    sub_231C67FE0(v58, &qword_27DD70528, &qword_231C8D980);
    sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0]);
    v55 = v36;
    v56 = v92;
    v53 = sub_231C8BE7C();
    v54 = v37;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_231C85724(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_231C8C22C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231C8BCCC();
        v8 = sub_231C8BF5C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_231C8BCCC() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_231C838E8(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_231C84F44(0, v4, 1, a1, a2);
  }
}

uint64_t sub_231C858A8(void **a1, uint64_t a2)
{
  v4 = *(sub_231C8BCCC() - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_231C82724(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_231C85724(v8, a2);

  *a1 = v5;
}

uint64_t sub_231C85990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C859F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_231C85A60()
{
  result = qword_280CFA4F0;
  if (!qword_280CFA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4F0);
  }

  return result;
}

unint64_t sub_231C85AB4()
{
  result = qword_27DD707F0;
  if (!qword_27DD707F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD707F0);
  }

  return result;
}

unint64_t sub_231C85B08()
{
  result = qword_27DD707F8;
  if (!qword_27DD707F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD707F8);
  }

  return result;
}

unint64_t sub_231C85B5C()
{
  result = qword_280CFA4D8;
  if (!qword_280CFA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4D8);
  }

  return result;
}

unint64_t sub_231C85BB0()
{
  result = qword_27DD70800;
  if (!qword_27DD70800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70800);
  }

  return result;
}

unint64_t sub_231C85C04()
{
  result = qword_280CFA9F0;
  if (!qword_280CFA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9F0);
  }

  return result;
}

unint64_t sub_231C85C58()
{
  result = qword_27DD70858;
  if (!qword_27DD70858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70858);
  }

  return result;
}

unint64_t sub_231C85CAC()
{
  result = qword_27DD70860;
  if (!qword_27DD70860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70860);
  }

  return result;
}

uint64_t sub_231C85D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_231C85D48()
{
  result = qword_280CFA9D8;
  if (!qword_280CFA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9D8);
  }

  return result;
}

unint64_t sub_231C85D9C()
{
  result = qword_27DD70870;
  if (!qword_27DD70870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70870);
  }

  return result;
}

unint64_t sub_231C85DF0()
{
  result = qword_280CFA490;
  if (!qword_280CFA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA490);
  }

  return result;
}

unint64_t sub_231C85E48()
{
  result = qword_27DD708B0;
  if (!qword_27DD708B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708B0);
  }

  return result;
}

unint64_t sub_231C85F30()
{
  result = qword_27DD708C0;
  if (!qword_27DD708C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708C0);
  }

  return result;
}

unint64_t sub_231C85F88()
{
  result = qword_27DD708C8;
  if (!qword_27DD708C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708C8);
  }

  return result;
}

void sub_231C86004()
{
  sub_231C86160(319, &qword_280CFA6A0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_231C86160(319, qword_280CFA388, _s14AutoSerializerVMa);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_231C86160(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_231C8C04C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_231C86214()
{
  result = sub_231C8BCCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231C862A8()
{
  result = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ImageGlyphRecencyModelMigrator.run(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_231C67D74;

  return v11(a1, a2, a3);
}

uint64_t sub_231C864E4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_231C86574(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_231C8669C()
{
  sub_231C867E4();
  if (v0 <= 0x3F)
  {
    sub_231C86880(319, &qword_280CFA008, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_231C86880(319, &qword_280CFA018, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      if (v2 <= 0x3F)
      {
        sub_231C8692C();
        if (v3 <= 0x3F)
        {
          sub_231C86160(319, &qword_280CFA6A0, MEMORY[0x277CC9578]);
          if (v4 <= 0x3F)
          {
            sub_231C869D8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_231C867E4()
{
  if (!qword_280CF9FF8)
  {
    sub_231C8BCCC();
    sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
    v0 = sub_231C8BE4C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF9FF8);
    }
  }
}

void sub_231C86880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_231C8BCCC();
    a3(255);
    sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
    v5 = sub_231C8BE4C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_231C8692C()
{
  if (!qword_280CF9FE8)
  {
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(255);
    sub_231C8BCCC();
    sub_231C85D00(&qword_280CFA478, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v0 = sub_231C8BE4C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF9FE8);
    }
  }
}

void sub_231C869D8()
{
  if (!qword_280CF9FC0)
  {
    v0 = sub_231C8C04C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF9FC0);
    }
  }
}

unint64_t sub_231C86A2C()
{
  result = qword_27DD708D0;
  if (!qword_27DD708D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708D0);
  }

  return result;
}

unint64_t sub_231C86A84()
{
  result = qword_27DD708D8;
  if (!qword_27DD708D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708D8);
  }

  return result;
}

unint64_t sub_231C86ADC()
{
  result = qword_27DD708E0;
  if (!qword_27DD708E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708E0);
  }

  return result;
}

unint64_t sub_231C86B34()
{
  result = qword_27DD708E8;
  if (!qword_27DD708E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708E8);
  }

  return result;
}

unint64_t sub_231C86B8C()
{
  result = qword_27DD708F0;
  if (!qword_27DD708F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708F0);
  }

  return result;
}

unint64_t sub_231C86BE4()
{
  result = qword_27DD708F8;
  if (!qword_27DD708F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708F8);
  }

  return result;
}

unint64_t sub_231C86C3C()
{
  result = qword_27DD70900;
  if (!qword_27DD70900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70900);
  }

  return result;
}

unint64_t sub_231C86C94()
{
  result = qword_280CFA480;
  if (!qword_280CFA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA480);
  }

  return result;
}

unint64_t sub_231C86CEC()
{
  result = qword_280CFA488;
  if (!qword_280CFA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA488);
  }

  return result;
}

unint64_t sub_231C86D44()
{
  result = qword_280CFA9A8;
  if (!qword_280CFA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9A8);
  }

  return result;
}

unint64_t sub_231C86D9C()
{
  result = qword_280CFA9B0;
  if (!qword_280CFA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9B0);
  }

  return result;
}

unint64_t sub_231C86DF4()
{
  result = qword_280CFA9C8;
  if (!qword_280CFA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9C8);
  }

  return result;
}

unint64_t sub_231C86E4C()
{
  result = qword_280CFA9D0;
  if (!qword_280CFA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9D0);
  }

  return result;
}

unint64_t sub_231C86EA4()
{
  result = qword_280CFA9B8;
  if (!qword_280CFA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9B8);
  }

  return result;
}

unint64_t sub_231C86EFC()
{
  result = qword_280CFA9C0;
  if (!qword_280CFA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9C0);
  }

  return result;
}

unint64_t sub_231C86F54()
{
  result = qword_27DD70908;
  if (!qword_27DD70908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70908);
  }

  return result;
}

unint64_t sub_231C86FAC()
{
  result = qword_27DD70910;
  if (!qword_27DD70910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70910);
  }

  return result;
}

unint64_t sub_231C87004()
{
  result = qword_280CFA9E0;
  if (!qword_280CFA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9E0);
  }

  return result;
}

unint64_t sub_231C8705C()
{
  result = qword_280CFA9E8;
  if (!qword_280CFA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9E8);
  }

  return result;
}

unint64_t sub_231C870B4()
{
  result = qword_280CFA4A8;
  if (!qword_280CFA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4A8);
  }

  return result;
}

unint64_t sub_231C8710C()
{
  result = qword_280CFA4B0;
  if (!qword_280CFA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4B0);
  }

  return result;
}

unint64_t sub_231C87164()
{
  result = qword_280CFA4C8;
  if (!qword_280CFA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4C8);
  }

  return result;
}

unint64_t sub_231C871BC()
{
  result = qword_280CFA4D0;
  if (!qword_280CFA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4D0);
  }

  return result;
}

unint64_t sub_231C87214()
{
  result = qword_280CFA4B8;
  if (!qword_280CFA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4B8);
  }

  return result;
}

unint64_t sub_231C8726C()
{
  result = qword_280CFA4C0;
  if (!qword_280CFA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4C0);
  }

  return result;
}

unint64_t sub_231C872C4()
{
  result = qword_27DD70918;
  if (!qword_27DD70918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70918);
  }

  return result;
}

unint64_t sub_231C8731C()
{
  result = qword_27DD70920;
  if (!qword_27DD70920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70920);
  }

  return result;
}

unint64_t sub_231C87374()
{
  result = qword_280CFA4E0;
  if (!qword_280CFA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4E0);
  }

  return result;
}

unint64_t sub_231C873CC()
{
  result = qword_280CFA4E8;
  if (!qword_280CFA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4E8);
  }

  return result;
}

unint64_t sub_231C87420()
{
  result = qword_280CFA680;
  if (!qword_280CFA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA680);
  }

  return result;
}

unint64_t sub_231C87474()
{
  result = qword_280CF9FF0;
  if (!qword_280CF9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70930, &qword_231C8E9E0);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF9FF0);
  }

  return result;
}

unint64_t sub_231C87530()
{
  result = qword_280CFA000;
  if (!qword_280CFA000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70938, &qword_231C8E9E8);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0]);
    sub_231C85D00(&qword_280CFA6A8, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA000);
  }

  return result;
}

unint64_t sub_231C8761C()
{
  result = qword_280CFA010;
  if (!qword_280CFA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70940, &qword_231C8E9F0);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0]);
    sub_231C85D00(&qword_280CFA468, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA010);
  }

  return result;
}

unint64_t sub_231C87708()
{
  result = qword_280CF9FE0;
  if (!qword_280CF9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70948, &qword_231C8E9F8);
    sub_231C85D00(&qword_280CFA468, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF9FE0);
  }

  return result;
}

unint64_t sub_231C877F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70950, &qword_231C8EA00);
    v3 = sub_231C8C0EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_231C7DD7C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_231C87908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_231C8C23C();

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

uint64_t sub_231C87A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231C87AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_231C87B34()
{
  result = qword_27DD70970;
  if (!qword_27DD70970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70930, &qword_231C8E9E0);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70970);
  }

  return result;
}

unint64_t sub_231C87BF0()
{
  result = qword_27DD70978;
  if (!qword_27DD70978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70938, &qword_231C8E9E8);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0]);
    sub_231C85D00(&qword_27DD70980, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70978);
  }

  return result;
}

unint64_t sub_231C87CDC()
{
  result = qword_27DD70988;
  if (!qword_27DD70988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70940, &qword_231C8E9F0);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0]);
    sub_231C85D00(&qword_27DD70990, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70988);
  }

  return result;
}

unint64_t sub_231C87DC8()
{
  result = qword_27DD70998;
  if (!qword_27DD70998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70948, &qword_231C8E9F8);
    sub_231C85D00(&qword_27DD70990, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70998);
  }

  return result;
}

uint64_t sub_231C87EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C87F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709F0, &unk_231C8EA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C87F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_231C88004()
{
  result = qword_27DD70A20;
  if (!qword_27DD70A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70A20);
  }

  return result;
}

unint64_t sub_231C8805C()
{
  result = qword_280CFA670;
  if (!qword_280CFA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA670);
  }

  return result;
}

unint64_t sub_231C880B4()
{
  result = qword_280CFA678;
  if (!qword_280CFA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA678);
  }

  return result;
}

uint64_t sub_231C88108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEC00000070614D79 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEB0000000070614DLL || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365526F5479656BLL && a2 == 0xEE0070614D64726FLL || (sub_231C8C23C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F5464726F636572 && a2 == 0xEE0070614D79654BLL || (sub_231C8C23C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000231C8F4C0 == a2 || (sub_231C8C23C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000231C8F4E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_231C8C23C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_231C883A8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v2[19] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v5 = sub_231C8BBFC();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v7 = *(v6 + 64) + 15;
  v2[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v9 = sub_231C8BC2C();
  v2[25] = v9;
  v10 = *(v9 - 8);
  v2[26] = v10;
  v11 = *(v10 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C8852C, v1, 0);
}

uint64_t sub_231C8852C()
{
  v1 = v0[18];
  v2 = v1 + OBJC_IVAR____TtC14RecencyService11LoadHandler_request;
  v3 = (v2 + *(type metadata accessor for RecencyRequest(0) + 36));
  v4 = v0[27];
  if (v3[1])
  {
    v5 = v0[25];
    v6 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[21];
    v10 = v0[22];
    v11 = *v3;
    v12 = *(v1 + OBJC_IVAR____TtC14RecencyService11LoadHandler_recencyModel);
    v0[28] = v12;
    (*(v6 + 56))(v7, 1, 1, v5);
    (*(v10 + 104))(v8, *MEMORY[0x277CC91D8], v9);

    sub_231C8BC1C();

    return MEMORY[0x2822009F8](sub_231C886D4, v12, 0);
  }

  else
  {
    v14 = v0[23];
    v13 = v0[24];
    v15 = v0[20];
    v16 = v0[17];
    *v16 = xmmword_231C8C920;
    v16[1] = 0u;
    v16[2] = 0u;
    v16[3] = 0u;
    *(v16 + 57) = 0u;

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_231C886D4()
{
  v1 = v0[27];
  v2 = sub_231C8BC3C();
  v4 = v3;
  v6 = v0[19];
  v5 = v0[20];
  v7 = sub_231C8BB8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_231C8BB7C();
  sub_231C88D48();
  sub_231C8BB6C();
  v10 = v0[28];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  (*(v0[26] + 8))(v0[27], v0[25]);
  sub_231C723D0(v2, v4);

  v14 = v11[1];
  swift_beginAccess();
  v15 = v10[15];
  v10[15] = v14;

  v16 = v11[2];
  swift_beginAccess();
  v17 = v10[16];
  v10[16] = v16;

  v18 = v11[3];
  swift_beginAccess();
  v19 = v10[17];
  v10[17] = v18;

  v20 = v11[4];
  swift_beginAccess();
  v21 = v10[18];
  v10[18] = v20;

  v22 = *(v12 + 36);
  v23 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C7DD0C(v11 + v22, v10 + v23);
  swift_endAccess();
  v24 = v11 + *(v12 + 40);
  v25 = *v24;
  LOBYTE(v23) = v24[8];
  sub_231C88DA0(v11, type metadata accessor for ImageGlyphRecencyCodableData);
  v26 = v10 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v26 = v25;
  v26[8] = v23;

  return MEMORY[0x2822009F8](sub_231C88968, v13, 0);
}

uint64_t sub_231C88968()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[17];
  *v5 = xmmword_231C8C920;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *(v5 + 57) = 0u;

  v6 = v0[1];

  return v6();
}

uint64_t sub_231C88A10()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t sub_231C88A9C()
{
  sub_231C88DA0(v0 + OBJC_IVAR____TtC14RecencyService11LoadHandler_request, type metadata accessor for RecencyRequest);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService11LoadHandler_recencyModel);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService11LoadHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for LoadHandler()
{
  result = qword_27DD70A28;
  if (!qword_27DD70A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C88B64()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C88C18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v11 + OBJC_IVAR____TtC14RecencyService11LoadHandler_request);
  *(v11 + OBJC_IVAR____TtC14RecencyService11LoadHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService11LoadHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C88CAC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C883A8(a1);
}

unint64_t sub_231C88D48()
{
  result = qword_280CFA668;
  if (!qword_280CFA668)
  {
    type metadata accessor for ImageGlyphRecencyCodableData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA668);
  }

  return result;
}

uint64_t sub_231C88DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231C88E00(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = sub_231C8BC9C();
  v2[45] = v3;
  v4 = *(v3 - 8);
  v2[46] = v4;
  v5 = *(v4 + 64) + 15;
  v2[47] = swift_task_alloc();
  v6 = *(*(type metadata accessor for ImageGlyphValidator() - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v2[50] = v8;
  v9 = *(v8 - 8);
  v2[51] = v9;
  v10 = *(v9 + 64) + 15;
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C88F80, v1, 0);
}

uint64_t sub_231C88F80()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = (*(v0 + 352) + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_request);
  v5 = type metadata accessor for RecencyRequest(0);
  sub_231C89B20(&v4[*(v5 + 32)], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 344);
    sub_231C67FE0(*(v0 + 392), &qword_27DD70530, &unk_231C8C9F0);
    *v6 = xmmword_231C8C920;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *(v6 + 57) = 0u;
    v7 = *(v0 + 416);
    v8 = *(v0 + 384);
    v9 = *(v0 + 392);
    v10 = *(v0 + 376);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 416);
    v14 = *(v0 + 384);
    sub_231C67F18(*(v0 + 392), v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    *(v0 + 330) = *v4;
    *(v0 + 456) = 1;
    *(v0 + 464) = 1;
    sub_231C71734(v13, v14);
    v15 = swift_task_alloc();
    *(v0 + 424) = v15;
    *v15 = v0;
    v15[1] = sub_231C89154;
    v16 = *(v0 + 384);

    return ImageGlyphValidator.validate()();
  }
}

uint64_t sub_231C89154()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 432) = v0;

  sub_231C89B90(v4, type metadata accessor for ImageGlyphValidator);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_231C89568;
  }

  else
  {
    v7 = sub_231C892B0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_231C892B0()
{
  v1 = v0[47];
  v2 = *(v0[44] + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_recencyModel);
  v0[55] = v2;
  sub_231C8BC8C();

  return MEMORY[0x2822009F8](sub_231C8932C, v2, 0);
}

uint64_t sub_231C8932C()
{
  v1 = v0[55];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  ImageGlyphRecencyModel.recordEngagement(for:_:)(v0[52], v2);
  v0[56] = v6;
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_231C893D0, v5, 0);
}

uint64_t sub_231C893D0()
{
  v1 = *(v0 + 448);
  sub_231C89B90(*(v0 + 416), type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *(v0 + 456) = 0;
  v2 = *(v0 + 330);
  v3 = *(v0 + 344);
  *(v0 + 176) = v2;
  *(v0 + 177) = *(v0 + 89);
  *(v0 + 180) = *(v0 + 92);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = v1;
  *(v0 + 208) = 0;
  *(v0 + 209) = *(v0 + 169);
  *(v0 + 212) = *(v0 + 172);
  *(v0 + 216) = 0;
  v4 = *(v0 + 464);
  *(v0 + 224) = v4;
  *(v0 + 228) = *(v0 + 252);
  *(v0 + 225) = *(v0 + 249);
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = -1;
  *v3 = *(v0 + 176);
  v5 = *(v0 + 233);
  v7 = *(v0 + 208);
  v6 = *(v0 + 224);
  v3[1] = *(v0 + 192);
  v3[2] = v7;
  v3[3] = v6;
  *(v3 + 57) = v5;
  *(v0 + 96) = v2;
  *(v0 + 100) = *(v0 + 92);
  *(v0 + 97) = *(v0 + 89);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  *(v0 + 132) = *(v0 + 172);
  *(v0 + 129) = *(v0 + 169);
  *(v0 + 136) = 0;
  *(v0 + 144) = v4;
  v8 = *(v0 + 249);
  *(v0 + 148) = *(v0 + 252);
  *(v0 + 145) = v8;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = -1;
  sub_231C6B1BC(v0 + 176, v0 + 256);
  sub_231C6B1F4(v0 + 96);
  v9 = *(v0 + 416);
  v10 = *(v0 + 384);
  v11 = *(v0 + 392);
  v12 = *(v0 + 376);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_231C89568()
{
  *(v0 + 336) = *(v0 + 432);
  MEMORY[0x238379810]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A48, &qword_231C8ECF0);
  if (swift_dynamicCast())
  {
    v1 = 0xD000000000000022;
    v2 = *(v0 + 416);
    MEMORY[0x238379800](*(v0 + 432));
    v3 = *(v0 + 329);
    sub_231C89B90(v2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C6A674(0, 0, 255);
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = " with a colon is not supported";
      }

      else
      {
        v4 = "ported at this time";
        v1 = 0xD00000000000002ELL;
        LOBYTE(v3) = 1;
      }
    }

    else
    {
      v4 = "RecordEngagementRequestHandler";
      v1 = 0xD000000000000033;
    }

    v11 = v4 | 0x8000000000000000;
    MEMORY[0x238379800](*(v0 + 336));
    v12 = *(v0 + 330);
    v13 = *(v0 + 344);
    *(v0 + 176) = v12;
    *(v0 + 180) = *(v0 + 92);
    *(v0 + 177) = *(v0 + 89);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    *(v0 + 184) = 0;
    v14 = *(v0 + 456);
    *(v0 + 208) = v14;
    *(v0 + 209) = *(v0 + 169);
    *(v0 + 212) = *(v0 + 172);
    *(v0 + 216) = 0;
    v15 = *(v0 + 464);
    *(v0 + 224) = v15;
    *(v0 + 225) = *(v0 + 249);
    *(v0 + 228) = *(v0 + 252);
    *(v0 + 232) = v1;
    *(v0 + 240) = v11;
    *(v0 + 248) = v3;
    *v13 = *(v0 + 176);
    v16 = *(v0 + 233);
    v17 = *(v0 + 224);
    v18 = *(v0 + 192);
    v13[2] = *(v0 + 208);
    v13[3] = v17;
    *(v13 + 57) = v16;
    v13[1] = v18;
    *(v0 + 96) = v12;
    *(v0 + 100) = *(v0 + 92);
    *(v0 + 97) = *(v0 + 89);
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = v14;
    *(v0 + 129) = *(v0 + 169);
    *(v0 + 132) = *(v0 + 172);
    *(v0 + 136) = 0;
    *(v0 + 144) = v15;
    v19 = *(v0 + 249);
    *(v0 + 148) = *(v0 + 252);
    *(v0 + 145) = v19;
    *(v0 + 152) = v1;
    *(v0 + 160) = v11;
    *(v0 + 168) = v3;
    sub_231C6B1BC(v0 + 176, v0 + 256);
    sub_231C6B1F4(v0 + 96);
    v20 = *(v0 + 416);
    v21 = *(v0 + 384);
    v22 = *(v0 + 392);
    v23 = *(v0 + 376);

    v9 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 330);
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    v8 = *(v0 + 376);
    sub_231C89B90(*(v0 + 416), type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    MEMORY[0x238379800](*(v0 + 336));
    *(v0 + 16) = v5;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = 0;
    *(v0 + 48) = *(v0 + 456);
    *(v0 + 56) = 0;
    *(v0 + 64) = *(v0 + 464);
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    sub_231C6B1F4(v0 + 16);

    v9 = *(v0 + 8);
    v10 = *(v0 + 432);
  }

  return v9();
}

uint64_t sub_231C89850()
{
  sub_231C89B90(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_request, type metadata accessor for RecencyRequest);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_recencyModel);

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_modelMigrator, &qword_27DD70650, &unk_231C8EE00);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ImageGlyphRecordEngagementRequestHandler()
{
  result = qword_27DD70A38;
  if (!qword_27DD70A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C89928()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C899DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C67F18(a1, v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_request, type metadata accessor for RecencyRequest);
  *(v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C89A84(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C88E00(a1);
}

uint64_t sub_231C89B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C89B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14AutoSerializerVMa()
{
  result = qword_280CFA3C8;
  if (!qword_280CFA3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231C89C64()
{
  sub_231C6B6E4();
  if (v0 <= 0x3F)
  {
    sub_231C89D24();
    if (v1 <= 0x3F)
    {
      sub_231C89D88();
      if (v2 <= 0x3F)
      {
        sub_231C8C01C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_231C89D24()
{
  if (!qword_280CFA020)
  {
    v0 = sub_231C8BDDC();
    if (!v1)
    {
      atomic_store(v0, &qword_280CFA020);
    }
  }
}

void sub_231C89D88()
{
  if (!qword_280CFA028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70A68, &qword_231C8ED08);
    v0 = sub_231C8C04C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CFA028);
    }
  }
}

uint64_t sub_231C89DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A80, &qword_231C8ED30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A88, &qword_231C8ED38);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = v34 - v9;
  v37 = sub_231C8C02C();
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231C8BFEC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_231C8BE3C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v36 = sub_231C6B6E4();
  v34[1] = "recency-model-autoserializer";
  sub_231C8BE1C();
  v44[0] = MEMORY[0x277D84F90];
  sub_231C8B0A8(&qword_280CF9FB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD705D0, &qword_231C8CA90);
  sub_231C8B120(&qword_280CF9FC8, &unk_27DD705D0, &qword_231C8CA90);
  sub_231C8C05C();
  (*(v35 + 104))(v12, *MEMORY[0x277D85260], v37);
  v17 = sub_231C8C03C();
  *a2 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A70, &qword_231C8ED28);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = v17;
  v22 = sub_231C8BDCC();
  *(a2 + 8) = v22;
  v23 = _s14AutoSerializerVMa();
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  v37 = a2 + 16;
  v24 = *(v23 + 28);

  sub_231C8C00C();
  v25 = *(v23 + 32);
  swift_weakInit();
  v26 = v39;
  swift_weakAssign();
  v43 = v21;
  v44[0] = v22;
  v27 = sub_231C8BFFC();
  v28 = v38;
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  sub_231C8B120(&qword_27DD70A90, &qword_27DD70A70, &qword_231C8ED28);
  sub_231C8B0A8(&qword_27DD70A98, sub_231C6B6E4);
  v29 = v40;
  sub_231C8BDFC();
  sub_231C67FE0(v28, &qword_27DD70A80, &qword_231C8ED30);

  v30 = swift_allocObject();
  *(v30 + 16) = sub_231C8B0F0;
  *(v30 + 24) = v26;
  sub_231C8B120(&qword_27DD70AA0, &qword_27DD70A88, &qword_231C8ED38);

  v31 = v41;
  v32 = sub_231C8BE0C();

  (*(v42 + 8))(v29, v31);
  v44[3] = sub_231C8BDBC();
  v44[4] = MEMORY[0x277CBCDA0];

  v44[0] = v32;
  return sub_231C8B168(v44, v37);
}

uint64_t sub_231C8A3BC()
{
  v1 = v0;
  if (qword_27DD70510 != -1)
  {
    swift_once();
  }

  v2 = sub_231C8BCFC();
  __swift_project_value_buffer(v2, qword_27DD70A50);
  v3 = sub_231C8BCDC();
  v4 = sub_231C8BFAC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_231C65000, v3, v4, "Sending recency database mutation event. This event is being coalesced before saving occurs.", v5, 2u);
    MEMORY[0x238379930](v5, -1, -1);
  }

  v6 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A70, &qword_231C8ED28);
  sub_231C8B120(&qword_27DD70A78, &qword_27DD70A70, &qword_231C8ED28);
  return sub_231C8BDEC();
}

uint64_t sub_231C8A4F0()
{
  v0 = sub_231C8BCFC();
  __swift_allocate_value_buffer(v0, qword_27DD70A50);
  __swift_project_value_buffer(v0, qword_27DD70A50);
  return sub_231C8BCEC();
}

uint64_t sub_231C8A570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27DD70510 != -1)
  {
    swift_once();
  }

  v6 = sub_231C8BCFC();
  __swift_project_value_buffer(v6, qword_27DD70A50);
  v7 = sub_231C8BCDC();
  v8 = sub_231C8BFAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_231C65000, v7, v8, "Save timer fired; saving recency model to disk", v9, 2u);
    MEMORY[0x238379930](v9, -1, -1);
  }

  v10 = sub_231C8BF8C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_231C8ADF8(0, 0, v5, &unk_231C8ED50, v11);

  return sub_231C67FE0(v5, &qword_27DD70658, &qword_231C8D5C8);
}

uint64_t sub_231C8A750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = *a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = sub_231C8BBFC();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_231C8BC2C();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C8A8D8, 0, 0);
}

uint64_t sub_231C8A8D8()
{
  v1 = os_transaction_create();
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v1 = sub_231C8A950;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_231C8A950()
{
  v1 = v0[3];
  sub_231C7BCCC(v0[10]);
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[4];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277CC91D0], v0[5]);
  (*(v5 + 16))(v6, v2, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_231C8BC1C();
  v7 = *(v5 + 8);
  v0[13] = v7;
  v0[14] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_231C8AB18;
  v9 = v0[2];

  return sub_231C7C5F0();
}

uint64_t sub_231C8AB18(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v6 = *v3;
  *(v4 + 128) = a1;
  *(v4 + 136) = a2;
  *(v4 + 144) = v2;

  if (v2)
  {
    MEMORY[0x238379800](v2);
    v7 = *(v4 + 112);
    v8 = *(v4 + 16);
    (*(v4 + 104))(*(v4 + 88), *(v4 + 64));
    v9 = sub_231C8ADDC;
    v10 = v8;
  }

  else
  {
    v10 = *(v4 + 16);
    v9 = sub_231C8AC64;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_231C8AC64()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  sub_231C8BC4C();
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  if (v2)
  {
    MEMORY[0x238379800](v2);
    sub_231C723D0(v5, v6);
    v7 = *(v0 + 112);
    v8 = *(v0 + 16);
    (*(v0 + 104))(*(v0 + 88), *(v0 + 64));
    v9 = sub_231C8ADDC;
    v10 = v8;
  }

  else
  {
    v11 = *(v0 + 112);
    (*(v0 + 104))(*(v0 + 88), *(v0 + 64));
    sub_231C723D0(v5, v6);
    v9 = sub_231C8AD48;
    v10 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_231C8AD48()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_231C8ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_231C8B28C(a3, v27 - v11);
  v13 = sub_231C8BF8C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_231C67FE0(v12, &qword_27DD70658, &qword_231C8D5C8);
  }

  else
  {
    sub_231C8BF7C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_231C8BF6C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_231C8BEEC() + 32;
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

uint64_t sub_231C8B0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231C8B0F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_231C8B120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_231C8B168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70AA8, &qword_231C8ED40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C8B1D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_231C67D74;

  return sub_231C8A750(a1, v4, v5, v6);
}

uint64_t sub_231C8B28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C8B2FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C8B3F4;

  return v7(a1);
}

uint64_t sub_231C8B3F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_231C8B4F0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_231C8B510, v1, 0);
}

uint64_t sub_231C8B510()
{
  sub_231C8BAE4(*(v0 + 104) + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_modelMigrator, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 104);
    sub_231C8BB54((v0 + 56), v0 + 16);
    v2 = *(v1 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_recencyModel);
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_231C8B63C;

    return sub_231C72B94(v0 + 16, 0);
  }

  else
  {
    v5 = *(v0 + 96);
    sub_231C70D94(v0 + 56);
    *v5 = xmmword_231C8C920;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *(v5 + 57) = 0u;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_231C8B63C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_231C8B7E8;
  }

  else
  {
    v6 = sub_231C8B768;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_231C8B768()
{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  *v1 = xmmword_231C8C920;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;
  v2 = v0[1];

  return v2();
}

uint64_t sub_231C8B7E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[15];

  return v1();
}

uint64_t sub_231C8B84C()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_request);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_recencyModel);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PerformMigrationHandler()
{
  result = qword_27DD70AB0;
  if (!qword_27DD70AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C8B900()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C8B9B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v11 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_request);
  *(v11 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C8BA48(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C8B4F0(a1);
}

uint64_t sub_231C8BAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70650, &unk_231C8EE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C8BB54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}