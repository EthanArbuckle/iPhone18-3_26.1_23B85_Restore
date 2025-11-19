uint64_t sub_264C90B90()
{
  result = sub_264C90018();
  if (result || (result = sub_264C90C44()) != 0)
  {
    v1 = result;
    v2 = sub_264CC459C();
    v3 = [v1 sourceWithIdentifier_];

    if (v3)
    {
      v4 = [v3 configuration];

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_264C90C44()
{
  v0 = sub_264C97E78();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v3 = v7 >> 62 ? sub_264CC4A0C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2 >= v3)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26674B600](v2);
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v7 + 8 * v2 + 32);
LABEL_9:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

void *sub_264C90DA4(void *a1, char a2)
{
  v5 = [a1 preferredRegion];
  v6 = sub_264CC45DC();
  v8 = v7;

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_regionRatingsFetcher), *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_regionRatingsFetcher + 24));
  v9 = &type metadata for SettingsPresetViewModel.RegionRatingsFetcher;
  v10 = &off_28766D658;
  v11 = a1;
  v12 = v6;
  v13 = v8;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_9;
    }

    v14 = sub_264C98558(a1, v6, v8, &type metadata for SettingsPresetViewModel.RegionRatingsFetcher, &off_28766D658);

    v15 = *(v14 + 16);
    if (!v15)
    {
LABEL_12:

      return MEMORY[0x277D84F90];
    }

    v16 = sub_264C98E50(*(v14 + 16), 0);
    v17 = sub_264C9CC98(&v25, v16 + 4, v15, v14);
    v11 = sub_264C9E014();
    if (v17 == v15)
    {
      return v16;
    }

    __break(1u);
  }

  v18 = sub_264C984AC(v11, v12, v13, v9, v10);

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_12;
  }

  v16 = sub_264C98E50(*(v18 + 16), 0);
  v20 = sub_264C9CC98(&v25, v16 + 4, v19, v18);
  v11 = sub_264C9E014();
  if (v20 == v19)
  {
    return v16;
  }

  __break(1u);
LABEL_9:
  v21 = sub_264C984A0(v11, v12, v13, v9, v10);

  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_12;
  }

  v16 = sub_264C98E50(*(v21 + 16), 0);
  v23 = sub_264C9CC98(&v25, v16 + 4, v22, v21);
  sub_264C9E014();
  if (v23 != v22)
  {
    __break(1u);
    goto LABEL_12;
  }

  return v16;
}

uint64_t sub_264C90F74(uint64_t a1)
{
  v2 = sub_264C8367C(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v53 = a1;

  v8 = 0;
  while (v6)
  {
    v11 = v8;
LABEL_15:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v53 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_264C71590(*(v53 + 56) + 32 * v15, &v56);
    *&v58 = v18;
    *(&v58 + 1) = v17;
    sub_264C6B7DC(&v56, &v59);

LABEL_16:
    v61 = v58;
    v62[0] = v59;
    v62[1] = v60;
    v19 = *(&v58 + 1);
    if (!*(&v58 + 1))
    {

      return v2;
    }

    v20 = v61;
    sub_264C6B7DC(v62, &v58);
    sub_264C914B0(&v58, v20, v19, &v56);
    if (!*(&v57 + 1))
    {
      sub_264C646E4(&v56, &unk_27FFA9A90);
      v30 = sub_264C82E84(v20, v19);
      if (v31)
      {
        v32 = v30;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_264C9BC00();
        }

        sub_264C6B7DC((v2[7] + 32 * v32), v55);
        sub_264C9B530(v32, v2);
      }

      else
      {
        memset(v55, 0, sizeof(v55));
      }

      sub_264C646E4(v55, &unk_27FFA9A90);
      if (!v2[2])
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    sub_264C6B7DC(&v56, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v2;
    v22 = sub_264C82E84(v20, v19);
    v24 = v2[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_52;
    }

    v28 = v23;
    if (v2[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v22;
        sub_264C9BC00();
        v22 = v34;
        v2 = v54;
        if (v28)
        {
LABEL_28:
          v33 = (v2[7] + 32 * v22);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          sub_264C6B7DC(v55, v33);
          if (!v2[2])
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_264C9AE28(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_264C82E84(v20, v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_55;
      }
    }

    if (v28)
    {
      goto LABEL_28;
    }

LABEL_35:
    v2[(v22 >> 6) + 8] |= 1 << v22;
    v35 = (v2[6] + 16 * v22);
    *v35 = v20;
    v35[1] = v19;
    sub_264C6B7DC(v55, (v2[7] + 32 * v22));
    v36 = v2[2];
    v26 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v26)
    {
      goto LABEL_54;
    }

    v2[2] = v37;

    if (!v2[2])
    {
      goto LABEL_39;
    }

LABEL_37:
    v38 = sub_264C82E84(v20, v19);
    if (v39)
    {
      sub_264C71590(v2[7] + 32 * v38, &v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v58);

      sub_264C646E4(&v56, &unk_27FFA9A90);
    }

    else
    {
LABEL_39:
      v56 = 0u;
      v57 = 0u;
      sub_264C646E4(&v56, &unk_27FFA9A90);
      sub_264C71590(&v58, &v56);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = v2;
      v41 = sub_264C82E84(v20, v19);
      v43 = v2[2];
      v44 = (v42 & 1) == 0;
      v26 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v26)
      {
        goto LABEL_51;
      }

      v46 = v42;
      if (v2[3] >= v45)
      {
        if (v40)
        {
          goto LABEL_44;
        }

        v51 = v41;
        sub_264C9BC00();
        v41 = v51;
        if (v46)
        {
          goto LABEL_4;
        }

LABEL_45:
        v2 = *&v55[0];
        *(*&v55[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
        v48 = (v2[6] + 16 * v41);
        *v48 = v20;
        v48[1] = v19;
        sub_264C6B7DC(&v56, (v2[7] + 32 * v41));
        __swift_destroy_boxed_opaque_existential_1Tm(&v58);
        v49 = v2[2];
        v26 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v26)
        {
          goto LABEL_53;
        }

        v2[2] = v50;
      }

      else
      {
        sub_264C9AE28(v45, v40);
        v41 = sub_264C82E84(v20, v19);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_55;
        }

LABEL_44:
        if ((v46 & 1) == 0)
        {
          goto LABEL_45;
        }

LABEL_4:
        v9 = v41;

        v2 = *&v55[0];
        v10 = (*(*&v55[0] + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        sub_264C6B7DC(&v56, v10);
        __swift_destroy_boxed_opaque_existential_1Tm(&v58);
      }
    }
  }

  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v59 = 0u;
      v60 = 0u;
      v8 = v13;
      v58 = 0u;
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_264CC4ADC();
  __break(1u);
  return result;
}

double sub_264C914B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v8 = v19[0];
  if (v19[0])
  {
    sub_264C71590(a1, v19);
    v9 = sub_264C8A740(0, &qword_27FFAA390);
    if (swift_dynamicCast())
    {

      v10 = sub_264C9DEB4(a2, a3);
      if (v10 != 3)
      {
        sub_264C90DA4(v8, v10);
        v15 = sub_264CC468C();

        v16 = sub_264CC459C();
        v17 = [v8 getClosestRestrictionMatch:v18 within:v15 forPayloadKey:v16];

        if (v17)
        {
          *(a4 + 24) = v9;

          *a4 = v17;
        }

        else
        {

          result = 0.0;
          *a4 = 0u;
          *(a4 + 16) = 0u;
        }

        return result;
      }
    }

    else
    {
    }
  }

  v11 = [objc_opt_self() BOOLPresetKeys];
  v12 = sub_264CC47AC();

  LOBYTE(v11) = sub_264C8E728(a2, a3, v12);

  if (v11 & 1) != 0 && (sub_264C71590(a1, v19), sub_264C8A740(0, &qword_27FFAA390), (swift_dynamicCast()))
  {
    v13 = [v18 BOOLValue];
    *(a4 + 24) = MEMORY[0x277D839B0];

    *a4 = v13;
  }

  else
  {
    sub_264C71590(a1, a4);
  }

  return result;
}

unint64_t sub_264C9173C(uint64_t a1)
{
  v2 = sub_264C90F74(a1);
  v3 = sub_264C918BC(v2);

  if (!v3)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v4 = v14;
  v5 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_20:
    v6 = sub_264CC4A0C();
  }

  else
  {
    v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26674B600](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v14 = v8;
    v10 = v1;
    v11 = sub_264C91E68(&v14, v1, v3);

    if (v11)
    {
      goto LABEL_16;
    }

    v12 = __OFADD__(v7++, 1);
    v1 = v10;
    if (v12)
    {
      goto LABEL_19;
    }
  }

  v7 = 0;
LABEL_16:

  return v7;
}

unint64_t sub_264C918BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E20);
    v2 = sub_264CC4A3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_264C71590(*(a1 + 56) + 32 * v11, v31);
        *&v30 = v13;
        *(&v30 + 1) = v14;
        v28 = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v15 = v30;
        sub_264C6B7DC(v29, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        v26[3] = v23;
        v26[4] = v24;
        v27 = v25;
        result = sub_264C82E84(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          result = sub_264C9E0CC(&v23, v2[7] + 40 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          v17 = v2[7] + 40 * result;
          v18 = v23;
          v19 = v24;
          *(v17 + 32) = v25;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_24;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_264C646E4(&v23, &qword_27FFA9E28);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_264C91B70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9B60);
    v2 = sub_264CC4A3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v12);
        ++v9;
        if (v5)
        {
          v9 = v12;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_264C9E01C(*(a1 + 48) + 40 * v13, v27);
    sub_264C71590(*(a1 + 56) + 32 * v13, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_264C9E01C(v24, v23);
    if (!swift_dynamicCast())
    {
      sub_264C646E4(v24, &qword_27FFA9E80);

      goto LABEL_29;
    }

    sub_264C71590(v25 + 8, v23);
    sub_264C646E4(v24, &qword_27FFA9E80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    result = sub_264CC4B6C();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v21;
    v11 = (*(v2 + 56) + 16 * v10);
    *v11 = v21;
    v11[1] = v22;
    ++*(v2 + 16);
  }

LABEL_29:

  return 0;
}

uint64_t sub_264C91E68(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_264C920F4(*a1);
  v6 = sub_264C918BC(v5);

  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = sub_264C9BF10(v6, sub_264C9C340, sub_264C9C340);

  v8 = sub_264C9BF10(a3, sub_264C9C340, sub_264C9C340);
  v9 = sub_264C92450(v7, v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  v10 = sub_264CC459C();
  v11 = [v4 sourceWithIdentifier_];

  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [v11 configuration];

  if (!v12)
  {
    goto LABEL_17;
  }

  if ([v12 presetValueForKey_])
  {
    sub_264CC489C();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v21[0] = v22;
  v21[1] = v23;
  if (!*(&v23 + 1))
  {

    sub_264C646E4(v21, &unk_27FFA9A90);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = v24;
  v14 = sub_264CC45DC();
  if (!*(a3 + 16))
  {

    goto LABEL_16;
  }

  v16 = sub_264C82E84(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_264C9E01C(*(a3 + 56) + 40 * v16, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  v19 = v13 ^ v22 ^ 1;
  return v19 & 1;
}

unint64_t sub_264C920F4(void *a1)
{
  v2 = sub_264CC459C();
  v3 = [a1 sourceWithIdentifier_];

  if (v3)
  {
    v4 = [v3 configuration];

    if (v4)
    {
      v5 = [v4 values];
      v6 = sub_264CC454C();

      v7 = sub_264C9BF10(v6, sub_264C9C080, sub_264C9C080);

      v8 = sub_264C90F74(v7);

      v33 = v8;
      v9 = sub_264CC336C();
      v31 = v9;
      v10 = sub_264C8E6D0();
      v32 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      v12 = *(*(v9 - 8) + 104);
      v12(boxed_opaque_existential_1, *MEMORY[0x277D4B870], v9);
      LOBYTE(v6) = sub_264CC30BC();
      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
      if (v6)
      {
        v13 = *MEMORY[0x277D4BB40];
        v14 = sub_264CC45DC();
        v16 = v15;
        if (![v4 presetValueForKey_])
        {
          sub_264C82EFC(v14, v16, v29);

          sub_264C646E4(v29, &unk_27FFA9A90);
          return v33;
        }

        sub_264CC489C();
        swift_unknownObjectRelease();
        sub_264C6B7DC(&v30, v29);
        v17 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v17;
        sub_264C83350(v29, v14, v16, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v31 = v9;
        v32 = v10;
        v21 = __swift_allocate_boxed_opaque_existential_1(&v30);
        v12(v21, *MEMORY[0x277D4B878], v9);
        v22 = sub_264CC30BC();
        __swift_destroy_boxed_opaque_existential_1Tm(&v30);
        if ((v22 & 1) == 0)
        {

          return v33;
        }

        v23 = sub_264CC45DC();
        v25 = v24;
        v31 = MEMORY[0x277D839B0];
        LOBYTE(v30) = 1;
        sub_264C6B7DC(&v30, v29);
        v26 = v33;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v28 = v26;
        sub_264C83350(v29, v23, v25, v27);
      }

      return v28;
    }
  }

  v19 = MEMORY[0x277D84F90];

  return sub_264C8367C(v19);
}

uint64_t sub_264C92450(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_264C9E01C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_264C82E84(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_264C9E078(&v24);
      return 0;
    }

    sub_264C9E01C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x26674B5A0](v23, &v24);
    sub_264C9E078(v23);
    result = sub_264C9E078(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_264C925EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_264CC336C();
  v57 = v5;
  v58 = sub_264C8E6D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4B870], v5);
  LOBYTE(v5) = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v5)
  {
    v7 = sub_264C90B90();
    if (v7)
    {
      v48 = v7;
      v8 = sub_264C9E128(a1, a2, v7);
      v9 = v8;
      v10 = v8 + 56;
      v11 = 1 << *(v8 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v8 + 56);
      v14 = (v11 + 63) >> 6;
      v15 = 0;
      v46 = v8 + 56;

      v44 = v2;
      for (i = v14; v13; v9 = v47)
      {
LABEL_12:
        while (1)
        {
          v17 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v18 = (*(v9 + 48) + ((v15 << 10) | (16 * v17)));
          v19 = *v18;
          v20 = v18[1];

          v21 = sub_264CC459C();
          v22 = swift_allocObject();
          *(v22 + 16) = v2;
          v58 = sub_264C9E3B0;
          v59 = v22;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v56 = sub_264C92C70;
          v57 = &block_descriptor_7;
          v23 = _Block_copy(&aBlock);
          v24 = v2;

          v25 = [v48 presetValueForKey:v21 userValueProvider:v23];
          _Block_release(v23);

          if (v25)
          {
            break;
          }

          v14 = i;
          v10 = v46;
          v9 = v47;
          if (!v13)
          {
            goto LABEL_8;
          }
        }

        sub_264CC489C();
        swift_unknownObjectRelease();
        sub_264C914B0(v60, v19, v20, &aBlock);
        swift_getKeyPath();
        swift_getKeyPath();
        v51 = v24;
        v26 = sub_264CC391C();
        v28 = v27;
        if (v57)
        {
          sub_264C6B7DC(&aBlock, v53);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = *v28;
          *v28 = 0x8000000000000000;
          sub_264C83350(v53, v19, v20, isUniquelyReferenced_nonNull_native);
          *v28 = v52;
        }

        else
        {
          sub_264C646E4(&aBlock, &unk_27FFA9A90);
          sub_264C82EFC(v19, v20, v53);
          sub_264C646E4(v53, &unk_27FFA9A90);
        }

        v26(v54, 0);

        v30 = v51;
        sub_264C925EC(v19, v20);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264CC392C();

        v31 = sub_264C90F74(aBlock);

        v32 = sub_264C918BC(v31);

        v50 = v32;
        if (v32)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264CC392C();

          v33 = aBlock;
          v49 = aBlock & 0xFFFFFFFFFFFFFF8;
          if (aBlock >> 62)
          {
            v34 = sub_264CC4A0C();
          }

          else
          {
            v34 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v35 = 0;
          v36 = v33 & 0xC000000000000001;
          while (1)
          {
            v37 = v34 == v35;
            if (v34 == v35)
            {
              break;
            }

            if (v36)
            {
              v38 = v33;
              v39 = MEMORY[0x26674B600](v35, v33);
            }

            else
            {
              if (v35 >= *(v49 + 16))
              {
                goto LABEL_38;
              }

              v38 = v33;
              v39 = *(v33 + 8 * v35 + 32);
            }

            v40 = v39;
            *&aBlock = v39;
            v41 = sub_264C91E68(&aBlock, v51, v50);

            if (v41)
            {
              goto LABEL_31;
            }

            v42 = __OFADD__(v35++, 1);
            v33 = v38;
            if (v42)
            {
              goto LABEL_39;
            }
          }

          v35 = 0;
LABEL_31:

          v14 = i;
          v30 = v51;
        }

        else
        {
          v35 = 0;
          v37 = 1;
          v14 = i;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *&aBlock = v35;
        BYTE8(aBlock) = v37;
        v43 = v30;
        sub_264CC393C();

        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        v2 = v44;
        v10 = v46;
      }

LABEL_8:
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(v10 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }
}

double sub_264C92BC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_keysSetByUser;
  swift_beginAccess();
  v9 = *(a3 + v8);

  v10 = sub_264C8E728(a1, a2, v9);

  if (v10)
  {
    return sub_264C8F02C(a1, a2, a4);
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

id sub_264C92C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_264CC45DC();
  v4 = v3;

  v1(v12, v2, v4);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_264CC4A8C();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_264C92DD8(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_keysSetByUser;
    swift_beginAccess();
    *&v1[v3] = MEMORY[0x277D84FA0];
    v4 = a1;

    v5 = sub_264C920F4(v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v1;
    sub_264CC393C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    sub_264C9173C(v5);

    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    sub_264CC393C();
  }

  else
  {
    sub_264C8367C(MEMORY[0x277D84F90]);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v1;
    sub_264CC393C();
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_264CC393C();
  }
}

uint64_t sub_264C92FE4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 112) = a3;
  *(v4 + 40) = a1;
  sub_264CC474C();
  *(v4 + 64) = sub_264CC473C();
  v6 = sub_264CC471C();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_264C93084, v6, v5);
}

uint64_t sub_264C93084()
{
  if (*(v0 + 112))
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_264C93248;
    v2 = *(v0 + 40);

    return sub_264C9EE98(v2);
  }

  else
  {
    v4 = *(v0 + 48);

    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    v6 = *(v0 + 32);
    if (v6)
    {
      v7 = [*(v0 + 32) storefront];

      if (v7)
      {
        v8 = sub_264CC45DC();
        v6 = v9;
      }

      else
      {
        v8 = 0;
        v6 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = sub_264C9F444(v5, v8, v6);

    v11 = *(v0 + 8);

    return v11(v10);
  }
}

uint64_t sub_264C93248(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_264C934B8;
  }

  else
  {
    v7 = sub_264C9338C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264C9338C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) storefront];

    if (v2)
    {
      v3 = sub_264CC45DC();
      v1 = v4;
    }

    else
    {
      v3 = 0;
      v1 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 96);
  v6 = sub_264C9F624(v5, v3, v1);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_264C934B8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) storefront];

    if (v2)
    {
      v3 = sub_264CC45DC();
      v1 = v4;
    }

    else
    {
      v3 = 0;
      v1 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 104);
  v6 = sub_264C9F444(0, v3, v1);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_264C935E8()
{
  v1[19] = v0;
  sub_264CC474C();
  v1[20] = sub_264CC473C();
  v3 = sub_264CC471C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_264C93680, v3, v2);
}

uint64_t sub_264C93680()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = [*(v0 + 80) storefront];

    if (v2)
    {
      v3 = sub_264CC45DC();
      v1 = v4;
    }

    else
    {
      v3 = 0;
      v1 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 184) = sub_264C9F444(0, v3, v1);

  return MEMORY[0x2822009F8](sub_264C937A0, 0, 0);
}

uint64_t sub_264C937A0()
{
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264C938BC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9EB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264C983C8;
  v0[13] = &block_descriptor_131;
  v0[14] = v2;
  [v1 fetchCachedPresetsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264C938BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_264C93AB4;
  }

  else
  {
    v2 = sub_264C939CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264C939EC()
{
  v1 = v0[25];
  v2 = v0[23];

  v3 = [v1 availablePresets];

  sub_264C8A740(0, &qword_27FFA9C80);
  v4 = sub_264CC469C();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_264C93AB4()
{
  swift_willThrow();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_264C93B20, v1, v2);
}

uint64_t sub_264C93B20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SettingsPresetViewModel.load()()
{
  v0[2] = sub_264CC474C();
  v0[3] = sub_264CC473C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_264C93C44;

  return sub_264C93DE0(1000000000);
}

uint64_t sub_264C93C44()
{

  v1 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C93D80, v1, v0);
}

uint64_t sub_264C93D80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264C93DE0(uint64_t a1)
{
  v2[185] = v1;
  v2[179] = a1;
  sub_264CC474C();
  v2[186] = sub_264CC473C();
  v4 = sub_264CC471C();
  v2[187] = v4;
  v2[188] = v3;

  return MEMORY[0x2822009F8](sub_264C93E80, v4, v3);
}

uint64_t sub_264C93E80()
{
  if (qword_27FFA8FF8 != -1)
  {
    swift_once();
  }

  v1 = sub_264CC387C();
  *(v0 + 1512) = __swift_project_value_buffer(v1, qword_27FFAC2B0);
  v2 = sub_264CC385C();
  v3 = sub_264CC47CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, v2, v3, "Loading from cache...", v4, 2u);
    MEMORY[0x26674C780](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 1520) = v5;
  *v5 = v0;
  v5[1] = sub_264C93FD4;

  return sub_264C94B70(1);
}

uint64_t sub_264C93FD4()
{
  v1 = *v0;

  v2 = *(v1 + 1504);
  v3 = *(v1 + 1496);

  return MEMORY[0x2822009F8](sub_264C940F4, v3, v2);
}

uint64_t sub_264C940F4()
{
  v1 = sub_264CC385C();
  v2 = sub_264CC47CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_264BA2000, v1, v2, "Loaded from cache", v3, 2u);
    MEMORY[0x26674C780](v3, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v4 = *(v0 + 1336);
  if (v4)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    v5 = *(v0 + 1384);
    if (v5 >> 62)
    {
      v6 = sub_264CC4A0C();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 1480);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1544) = v7;
  v9 = v8;
  sub_264CC393C();
  v10 = sub_264CC385C();
  v11 = sub_264CC47CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_264BA2000, v10, v11, "Loading from server...", v12, 2u);
    MEMORY[0x26674C780](v12, -1, -1);
  }

  v13 = *(v0 + 1480);
  v14 = *(v0 + 1432);

  v15 = swift_task_alloc();
  *(v0 + 1528) = v15;
  *(v15 + 16) = v13;
  swift_asyncLet_begin();
  if (v14)
  {
    v16 = *(v0 + 1432);
    v17 = swift_task_alloc();
    *(v0 + 1536) = v17;
    *(v17 + 16) = v16;
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 656);
  }

  else
  {

    return MEMORY[0x282200928](v0 + 16);
  }
}

uint64_t sub_264C94434()
{
  if (v0)
  {
  }

  return MEMORY[0x282200920](v1 + 656);
}

uint64_t sub_264C944BC()
{

  return MEMORY[0x282200928](v0 + 16);
}

uint64_t sub_264C94540()
{
  v1 = sub_264CC385C();
  v2 = sub_264CC47CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_264BA2000, v1, v2, "Loaded from server", v3, 2u);
    MEMORY[0x26674C780](v3, -1, -1);
  }

  v4 = *(v0 + 1480);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1545) = 0;
  v5 = v4;
  sub_264CC393C();

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_264C94674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264C94854(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_264CC474C();
  v2[5] = sub_264CC473C();
  v4 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C948F0, v4, v3);
}

uint64_t sub_264C948F0()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_264CC473C();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_264C949B4;

  return sub_264C93DE0(1000000000);
}

uint64_t sub_264C949B4()
{

  v1 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C94AF0, v1, v0);
}

uint64_t sub_264C94AF0()
{
  v1 = v0[6];
  v2 = v0[3];

  v1[2](v1);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_264C94B70(char a1)
{
  *(v2 + 3360) = v1;
  *(v2 + 3528) = a1;
  sub_264CC474C();
  *(v2 + 3368) = sub_264CC473C();
  v4 = sub_264CC471C();
  *(v2 + 3376) = v4;
  *(v2 + 3384) = v3;

  return MEMORY[0x2822009F8](sub_264C94C10, v4, v3);
}

void sub_264C94C10()
{
  if (qword_27FFA8FF8 != -1)
  {
    swift_once();
  }

  v1 = sub_264CC387C();
  *(v0 + 3392) = __swift_project_value_buffer(v1, qword_27FFAC2B0);
  v2 = sub_264CC385C();
  v3 = sub_264CC47DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 3528);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_264BA2000, v2, v3, "SettingsPresetViewModel loading presets cached: %{BOOL}d", v5, 8u);
    MEMORY[0x26674C780](v5, -1, -1);
  }

  v6 = *(v0 + 3360);

  v7 = *&v6[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_dsid];
  *(v0 + 3400) = v7;
  v8 = swift_allocObject();
  *(v0 + 3408) = v8;
  *(v8 + 16) = v6;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E88);
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v0 + 3416) = v10;
  *(v10 + 16) = v9;
  v11 = v9;
  sub_264C8A740(0, &qword_27FFA9E90);
  swift_asyncLet_begin();
  v12 = swift_allocObject();
  *(v0 + 3424) = v12;
  *(v12 + 16) = v11;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D50);
  swift_asyncLet_begin();
  v14 = swift_allocObject();
  *(v0 + 3432) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v7;
  v15 = v13;
  v16 = v7;
  sub_264C8A740(0, &qword_27FFA9E98);
  swift_asyncLet_begin();

  JUMPOUT(0x264CC572CLL);
}

uint64_t sub_264C94F00()
{
  v1[430] = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 322);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_264C94F44, v1[422], v1[423]);
  }
}

uint64_t sub_264C94F44()
{
  v1 = v0[420];
  v2 = v0[415];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[162] = v2;
  v3 = v1;
  v4 = v2;
  sub_264CC393C();

  return MEMORY[0x282200928](v0 + 82);
}

void sub_264C95018()
{
  v1 = *(v0 + 3528);
  v2 = *(v0 + 3352);
  v3 = v2;
  sub_264C92DD8(v2);

  if (v1 != 1)
  {
    v4 = *(v0 + 3400);
    v5 = *(v0 + 3360);
    v6 = swift_allocObject();
    *(v0 + 3456) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = v5;
    v8 = v4;
    sub_264C8A740(0, &unk_27FFA9EA0);
    swift_asyncLet_begin();
  }

  JUMPOUT(0x264CC572CLL);
}

uint64_t sub_264C95140()
{
  v1[431] = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 322);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_264C95184, v1[422], v1[423]);
  }
}

uint64_t sub_264C95184()
{
  v13 = v0;
  v1 = *(v0 + 3448);
  *(v0 + 3496) = *(v0 + 3344);
  *(v0 + 3480) = 0u;
  swift_bridgeObjectRetain_n();

  v12 = sub_264CABA38(v2);
  sub_264C985D0(&v12);
  if (!v1)
  {
    v4 = *(v0 + 3360);

    v5 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1296) = v5;
    v6 = v4;
    sub_264CC393C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    v7 = sub_264C9173C(*(v0 + 1296));
    LOBYTE(v4) = v8;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1296) = v7;
    *(v0 + 1304) = v4 & 1;
    v9 = v6;
    sub_264CC393C();
    v10 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge;
    *(v0 + 3504) = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge;
    if ((v9[v10 + 8] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264CC392C();

      v11 = *(*(v0 + 1296) + 16);

      if (!v11)
      {
        sub_264C8E8A8();
      }
    }

    JUMPOUT(0x264CC572CLL);
  }
}

uint64_t sub_264C953EC()
{
  v1[433] = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 162);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_264C95430, v1[422], v1[423]);
  }
}

uint64_t sub_264C95430()
{
  v1 = [*(v0 + 3328) availablePresets];
  sub_264C8A740(0, &qword_27FFA9C80);
  *(v0 + 3472) = sub_264CC469C();

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_264C95504()
{
  v14 = v0;
  v1 = *(v0 + 3464);
  v2 = *(v0 + 3456);
  *(v0 + 3496) = *(v0 + 3472);
  *(v0 + 3488) = v2;
  *(v0 + 3480) = &unk_264CD4610;

  v13 = sub_264CABA38(v3);
  sub_264C985D0(&v13);
  if (!v1)
  {
    v5 = *(v0 + 3360);

    v6 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1296) = v6;
    v7 = v5;
    sub_264CC393C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    v8 = sub_264C9173C(*(v0 + 1296));
    LOBYTE(v5) = v9;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1296) = v8;
    *(v0 + 1304) = v5 & 1;
    v10 = v7;
    sub_264CC393C();
    v11 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge;
    *(v0 + 3504) = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge;
    if ((v10[v11 + 8] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264CC392C();

      v12 = *(*(v0 + 1296) + 16);

      if (!v12)
      {
        sub_264C8E8A8();
      }
    }

    JUMPOUT(0x264CC572CLL);
  }
}

uint64_t sub_264C95770()
{
  v1[439] = v0;
  if (v0)
  {
    v2 = sub_264C965E8;
  }

  else
  {
    v2 = sub_264C957A8;
  }

  return MEMORY[0x2822009F8](v2, v1[422], v1[423]);
}

void sub_264C957A8()
{
  v1 = *(v0 + 3360) + *(v0 + 3504);
  *v1 = [*(v0 + 3304) age];
  *(v1 + 8) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v2 = *(*(v0 + 1296) + 16);

  if (!v2)
  {
    sub_264C8E8A8();
  }

  JUMPOUT(0x264CC572CLL);
}

uint64_t sub_264C95898()
{
  v1[440] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 322);
  }

  else
  {
    v2 = v1[423];
    v3 = v1[422];

    return MEMORY[0x2822009F8](sub_264C95944, v3, v2);
  }
}

uint64_t sub_264C95944()
{
  v27 = v0;
  v1 = [*(v0 + 3304) fullName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_264CC45DC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 3360);

  v7 = v6;

  v8 = sub_264CC385C();
  v9 = sub_264CC47FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 3496);
    v11 = *(v0 + 3360);
    v12 = &v11[*(v0 + 3504)];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136381187;
    if (v5)
    {
      v15 = v3;
    }

    else
    {
      v15 = 0;
    }

    if (!v5)
    {
      v5 = 0xE000000000000000;
    }

    v16 = sub_264C85E3C(v15, v5, &v26);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2049;
    v17 = *v12;
    LODWORD(v16) = v12[8];

    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    *(v13 + 14) = v18;

    *(v13 + 22) = 2082;
    v19 = sub_264C8A740(0, &qword_27FFA9C80);
    v20 = MEMORY[0x26674B370](v10, v19);
    v22 = v21;

    v23 = sub_264C85E3C(v20, v22, &v26);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_264BA2000, v8, v9, "Available Presets for %{private}s:\n Age: %{private}ld\n %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26674C780](v14, -1, -1);
    MEMORY[0x26674C780](v13, -1, -1);
  }

  else
  {
    v24 = *(v0 + 3360);
  }

  return MEMORY[0x282200920](v0 + 2576);
}

uint64_t sub_264C95C98()
{

  sub_264C88B98(*(v0 + 3480));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264C95E0C()
{
  v13 = v0;
  v1 = *(v0 + 3440);

  v2 = v1;
  v3 = sub_264CC385C();
  v4 = sub_264CC47EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_264CC4B1C();
    v9 = sub_264C85E3C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264BA2000, v3, v4, "failed to load presets: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26674C780](v6, -1, -1);
    MEMORY[0x26674C780](v5, -1, -1);
  }

  else
  {
  }

  sub_264C88B98(0);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264C960D4()
{
  v13 = v0;
  v1 = *(v0 + 3448);

  v2 = v1;
  v3 = sub_264CC385C();
  v4 = sub_264CC47EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_264CC4B1C();
    v9 = sub_264C85E3C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264BA2000, v3, v4, "failed to load presets: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26674C780](v6, -1, -1);
    MEMORY[0x26674C780](v5, -1, -1);
  }

  else
  {
  }

  sub_264C88B98(0);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264C963D8()
{
  v13 = v0;
  v1 = *(v0 + 3464);

  v2 = v1;
  v3 = sub_264CC385C();
  v4 = sub_264CC47EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_264CC4B1C();
    v9 = sub_264C85E3C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264BA2000, v3, v4, "failed to load presets: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26674C780](v6, -1, -1);
    MEMORY[0x26674C780](v5, -1, -1);
  }

  else
  {
  }

  sub_264C88B98(&unk_264CD4610);
  v10 = *(v0 + 8);

  return v10();
}

void sub_264C965E8()
{
  v1 = *(v0 + 3512);
  v2 = v1;
  v3 = sub_264CC385C();
  v4 = sub_264CC47EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3512);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_264CC4B1C();
    v10 = sub_264C85E3C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264BA2000, v3, v4, "failed to fetch child Age: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26674C780](v7, -1, -1);
    MEMORY[0x26674C780](v6, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v11 = *(*(v0 + 1296) + 16);

  if (!v11)
  {
    sub_264C8E8A8();
  }

  JUMPOUT(0x264CC572CLL);
}

uint64_t sub_264C968A4()
{
  v14 = v0;
  v1 = v0[440];
  v2 = v0[435];

  v3 = v1;
  v4 = sub_264CC385C();
  v5 = sub_264CC47EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_264CC4B1C();
    v10 = sub_264C85E3C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264BA2000, v4, v5, "failed to load presets: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26674C780](v7, -1, -1);
    MEMORY[0x26674C780](v6, -1, -1);
  }

  else
  {
  }

  sub_264C88B98(v2);
  v11 = v0[1];

  return v11();
}

uint64_t sub_264C96AA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264C6E648;

  return sub_264C94B70(0);
}

uint64_t sub_264C96B3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264C6DF34;

  return MEMORY[0x282200480](a2);
}

uint64_t sub_264C96BD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_264C96BF4, 0, 0);
}

uint64_t sub_264C96BF4()
{
  *(v0 + 168) = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsToPresetMappingViewModel;
  sub_264CC474C();
  *(v0 + 176) = sub_264CC473C();
  v2 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C96C94, v2, v1);
}

uint64_t sub_264C96C94()
{
  v1 = v0[21];
  v2 = v0[20];

  v3 = *(v2 + v1);
  v0[23] = v3;
  if (v3)
  {
    swift_unknownObjectRetain();
    v4 = sub_264C96D48;
  }

  else
  {
    v4 = sub_264C96D28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264C96D48()
{
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264C96E64;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9ED8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264C9FC10;
  v0[13] = &block_descriptor_141;
  v0[14] = v2;
  [v1 loadPresetMatchingCurrentRestrictionsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264C96E64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_264C96FE0;
  }

  else
  {
    v2 = sub_264C96F74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264C96F74()
{
  **(v0 + 152) = *(v0 + 144);
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264C96FE0()
{
  v1 = v0[24];
  v2 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();
  *v2 = 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_264C97070(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264CC474C();
  v2[4] = sub_264CC473C();
  v4 = sub_264CC471C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_264C97108, v4, v3);
}

uint64_t sub_264C97108()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_dsid);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_264C971C0;

  return sub_264C9F858(0, v1);
}

uint64_t sub_264C971C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_264C97374;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_264C972E8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_264C972E8()
{

  return MEMORY[0x2822009F8](sub_264C97350, 0, 0);
}

uint64_t sub_264C97374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264C973D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_264C9746C;

  return sub_264C935E8();
}

uint64_t sub_264C9746C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_264C975B8, 0, 0);
  }
}

uint64_t sub_264C975DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_264C97674;

  return sub_264C9EE98(a3);
}

uint64_t sub_264C97674(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_264C9FC00, 0, 0);
  }
}

uint64_t sub_264C977C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_264C977E4, 0, 0);
}

uint64_t sub_264C977E4()
{
  *(v0 + 176) = sub_264CC474C();
  *(v0 + 184) = sub_264CC473C();
  v2 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C9787C, v2, v1);
}

uint64_t sub_264C9787C()
{

  return MEMORY[0x2822009F8](sub_264C978E4, 0, 0);
}

uint64_t sub_264C978E4()
{
  *(v0 + 192) = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge;
  *(v0 + 200) = sub_264CC473C();
  v2 = sub_264CC471C();

  return MEMORY[0x2822009F8](sub_264C9797C, v2, v1);
}

uint64_t sub_264C9797C()
{
  v1 = v0[24];
  v2 = v0[20];

  v3 = *(v2 + v1);
  v4 = *(v2 + v1 + 8);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_264C97A38;
  v6 = v0[21];

  return sub_264C92FE4(v6, v3, v4);
}

uint64_t sub_264C97A38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264C97B6C, 0, 0);
  }
}

uint64_t sub_264C97B6C()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264C97C88;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9EB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264C983C8;
  v0[13] = &block_descriptor_116;
  v0[14] = v2;
  [v1 fetchPresetsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264C97C88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_264C97E08;
  }

  else
  {
    v2 = sub_264C97D98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264C97D98()
{
  v1 = *(v0 + 152);

  *v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264C97E08()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_264C97E78()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge);
  if (*(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge + 8))
  {
    v2 = 1;
    v3 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    if (v11 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264CC4A0C())
    {
      v10 = v0;
      v3 = 0;
      v0 = &off_279B7F000;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x26674B600](v3);
        }

        else
        {
          if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v5 = *(v11 + 8 * v3 + 32);
        }

        v6 = v5;
        if (v1 >= [v5 minAge])
        {
          v7 = [v6 maxAge];

          if (v7 >= v1)
          {
            v2 = 0;
            goto LABEL_21;
          }
        }

        else
        {
        }

        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        ++v3;
        if (v8 == i)
        {
          v3 = 0;
          v2 = 1;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v3 = 0;
    v2 = 1;
LABEL_21:
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (v11 >> 62)
  {
    sub_264CC4A0C();
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

id SettingsPresetViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SettingsPresetViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264C98388@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_264CC38DC();
  *a1 = result;
  return result;
}

uint64_t sub_264C983C8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9400);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_264C984B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = sub_264CC459C();
  v9 = [a1 *a6];

  sub_264C8A740(0, &qword_27FFAA390);
  sub_264C9DE4C();
  v10 = sub_264CC454C();

  return v10;
}

void sub_264C98564(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_264C9CB08(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_264C98F28(v4);
  *a1 = v2;
}

uint64_t sub_264C985D0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_264BA6B2C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_264C99030(v6);
  return sub_264CC497C();
}

uint64_t sub_264C98660@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a1 = v3;
  return result;
}

uint64_t sub_264C986F0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264CC393C();
}

uint64_t sub_264C98764@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a1 = v3;
  return result;
}

uint64_t sub_264C987E4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_264CC393C();
}

char *sub_264C98858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_264C9895C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9E70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264C98A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264C98B90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264C98CA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264C98DC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_264C98E50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_264C98ED8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_264C98EF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_264C98F28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_264CC4A6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E30);
        v5 = sub_264CC46CC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_264C99388(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_264C99144(0, v2, 1, a1);
  }
}

void sub_264C99030(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_264CC4A6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_264C8A740(0, &qword_27FFA9C80);
        v6 = sub_264CC46CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_264C99AF8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_264C99290(0, v2, 1, a1);
  }
}

void sub_264C99144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 24 * a3;
    v5 = a1 - a3;
LABEL_5:
    v17 = v4;
    v18 = a3;
    v6 = *(v19 + 24 * a3);
    v16 = v5;
    while (1)
    {
      v7 = *(v4 - 24);
      v8 = v6;

      v9 = v7;

      v10 = [v8 integerValue];
      v11 = [v9 integerValue];

      if (v10 >= v11)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 24;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v6 = *v4;
      v12 = *(v4 + 8);
      v13 = *(v4 + 16);
      *v4 = *(v4 - 24);
      *(v4 + 16) = *(v4 - 8);
      *(v4 - 16) = v12;
      *(v4 - 8) = v13;
      *(v4 - 24) = v6;
      v4 -= 24;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_264C99290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 minAge];
      v13 = [v11 minAge];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_264C99388(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_264C9A858(v5);
    }

    v95 = *(v5 + 16);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v95 - 1);
        v97 = *(v5 + 16 * v95);
        v98 = *(v5 + 16 * (v95 - 1) + 40);
        sub_264C9A160((v96 + 24 * v97), (v96 + 24 * *(v5 + 16 * (v95 - 1) + 32)), v96 + 24 * v98, v10);
        if (v6)
        {
          break;
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_264C9A858(v5);
        }

        if (v95 - 2 >= *(v5 + 16))
        {
          goto LABEL_115;
        }

        v99 = (v5 + 16 * v95);
        *v99 = v97;
        v99[1] = v98;
        sub_264C9A7CC(v7);
        v95 = *(v5 + 16);
        v7 = a3;
      }

      while (v95 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v105 = v11;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v101 = v10;
      v103 = v6;
      v13 = v11;
      v109 = 24 * v11;
      v14 = (*v7 + 24 * v11);
      v15 = *v14;
      v16 = *(*v7 + 24 * v12);

      v17 = v15;

      v115 = [v16 integerValue];
      v111 = [v17 integerValue];

      v18 = v13 + 2;
      v19 = v14 + 5;
      v113 = v8;
      while (v8 != v18)
      {
        v5 = (v19 + 3);
        v20 = *(v19 - 2);
        v21 = v19[1];

        v22 = v20;

        v23 = [v21 integerValue];
        v24 = [v22 integerValue];

        v8 = v113;
        ++v18;
        v19 = v5;
        if (v115 < v111 == v23 >= v24)
        {
          v8 = v18 - 1;
          break;
        }
      }

      v25 = v109;
      v10 = v101;
      v6 = v103;
      v11 = v105;
      v7 = a3;
      if (v115 < v111)
      {
        if (v8 < v105)
        {
          goto LABEL_118;
        }

        if (v105 < v8)
        {
          v26 = 0;
          v27 = 24 * v8;
          v28 = v105;
          do
          {
            if (v28 != v8 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = (v34 + v25);
              v30 = v34 + v27;
              v31 = *v29;
              v32 = *(v29 + 2);
              v33 = *(v30 - 8);
              *v29 = *(v30 - 24);
              *(v29 + 2) = v33;
              *(v30 - 24) = v31;
              *(v30 - 8) = v32;
            }

            ++v28;
            --v26;
            v27 -= 24;
            v25 += 24;
          }

          while (v28 < v8 + v26);
        }
      }
    }

    v35 = v7[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v35)
        {
          v36 = v7[1];
        }

        else
        {
          v36 = v11 + a4;
        }

        if (v36 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v36)
        {
          break;
        }
      }
    }

    v37 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_264C98858(0, *(v10 + 2) + 1, 1, v10);
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v10 = sub_264C98858((v38 > 1), v39 + 1, 1, v10);
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v105;
    *(v41 + 5) = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v107 = v37;
    if (v39)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v10 + 4);
          v44 = *(v10 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_48:
          if (v46)
          {
            goto LABEL_105;
          }

          v59 = &v10[16 * v40];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_108;
          }

          v65 = &v10[16 * v5 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_112;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v69 = &v10[16 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_62:
        if (v64)
        {
          goto LABEL_107;
        }

        v72 = &v10[16 * v5];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_69:
        v80 = v5 - 1;
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v81 = *&v10[16 * v80 + 32];
        v82 = *&v10[16 * v5 + 40];
        sub_264C9A160((*v7 + 24 * v81), (*v7 + 24 * *&v10[16 * v5 + 32]), *v7 + 24 * v82, v42);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v82 < v81)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_264C9A858(v10);
        }

        if (v80 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v83 = &v10[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        sub_264C9A7CC(v5);
        v40 = *(v10 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v10[16 * v40 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_103;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_104;
      }

      v54 = &v10[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_106;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_109;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v5 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v107;
    if (v107 >= v8)
    {
      goto LABEL_89;
    }
  }

  v102 = v10;
  v116 = *v7;
  v84 = *v7 + 24 * v8;
  v85 = v11 - v8;
  v108 = v36;
LABEL_80:
  v112 = v84;
  v114 = v8;
  v86 = *(v116 + 24 * v8);
  v110 = v85;
  v87 = v85;
  while (1)
  {
    v88 = *(v84 - 24);
    v89 = v86;

    v90 = v88;

    v91 = [v89 integerValue];
    v5 = [v90 integerValue];

    if (v91 >= v5)
    {
LABEL_79:
      v8 = v114 + 1;
      v84 = v112 + 24;
      v37 = v108;
      v85 = v110 - 1;
      if (v114 + 1 != v108)
      {
        goto LABEL_80;
      }

      v10 = v102;
      v7 = a3;
      if (v108 < v105)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v116)
    {
      break;
    }

    v86 = *v84;
    v92 = *(v84 + 8);
    v93 = *(v84 + 16);
    *v84 = *(v84 - 24);
    *(v84 + 16) = *(v84 - 8);
    *(v84 - 16) = v92;
    *(v84 - 8) = v93;
    *(v84 - 24) = v86;
    v84 -= 24;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_264C99AF8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_264C9A858(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_264C9A4E8((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_264C9A858(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_264C9A7CC(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 minAge];
      v104 = [v14 minAge];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 minAge];
        v7 = [v18 minAge];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_264C98858(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_264C98858((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_264C9A4E8((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264C9A858(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_264C9A7CC(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 minAge];
    v41 = [v39 minAge];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_264C9A160(id *__dst, id *__src, unint64_t a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 24;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 24;
  if (v8 >= v10)
  {
    if (a4 != __src || &__src[3 * v10] <= a4)
    {
      v21 = a4;
      memmove(a4, __src, 24 * v10);
      a4 = v21;
    }

    v40 = &a4[3 * v10];
    v11 = a4;
    if (v9 >= 24 && v5 > __dst)
    {
      v38 = a4;
LABEL_22:
      v39 = v5;
      v36 = (v5 - 3);
      v22 = v4 - 24;
      v23 = v40;
      do
      {
        v24 = v22;
        v25 = (v22 + 24);
        v26 = *(v23 - 3);
        v23 -= 3;
        v27 = *(v39 - 3);
        v28 = v26;

        v29 = v27;

        v30 = [v28 integerValue];
        v31 = [v29 integerValue];

        if (v30 < v31)
        {
          v4 = v24;
          if (v25 != v39)
          {
            v33 = *v36;
            *(v24 + 16) = *(v36 + 16);
            *v24 = v33;
          }

          v11 = v38;
          if (v40 <= v38 || (v5 = v36, v36 <= __dst))
          {
            v5 = v36;
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        if (v25 != v40)
        {
          v32 = *v23;
          *(v24 + 16) = v23[2];
          *v24 = v32;
        }

        v22 = v24 - 24;
        v40 = v23;
        v11 = v38;
      }

      while (v23 > v38);
      v40 = v23;
      v5 = v39;
    }
  }

  else
  {
    v11 = a4;
    if (a4 != __dst || &__dst[3 * v8] <= a4)
    {
      memmove(a4, __dst, 24 * v8);
    }

    v40 = &v11[3 * v8];
    if (v7 < 24)
    {
      v5 = __dst;
    }

    else
    {
      v12 = __dst;
      if (v5 < v4)
      {
        while (1)
        {
          v13 = *v11;
          v14 = *v5;

          v15 = v13;

          v16 = [v14 integerValue];
          v17 = [v15 integerValue];

          if (v16 >= v17)
          {
            break;
          }

          v18 = v5;
          v19 = v12 == v5;
          v5 += 3;
          if (!v19)
          {
            goto LABEL_12;
          }

LABEL_13:
          v12 += 3;
          if (v11 >= v40 || v5 >= v4)
          {
            goto LABEL_15;
          }
        }

        v18 = v11;
        v19 = v12 == v11;
        v11 += 3;
        if (v19)
        {
          goto LABEL_13;
        }

LABEL_12:
        v20 = *v18;
        v12[2] = v18[2];
        *v12 = v20;
        goto LABEL_13;
      }

LABEL_15:
      v5 = v12;
    }
  }

LABEL_34:
  v34 = (v40 - v11) / 24;
  if (v5 != v11 || v5 >= &v11[3 * v34])
  {
    memmove(v5, v11, 24 * v34);
  }

  return 1;
}

uint64_t sub_264C9A4E8(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 minAge];
          v35 = [v33 minAge];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 minAge];
          v20 = [v18 minAge];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_264C9A7CC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264C9A858(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_264C9A86C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9EE8);
  result = sub_264CC4A2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_264CC4B6C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_264C9AADC(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_264CC2FCC();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B90);
  v37 = a2;
  result = sub_264CC4A2C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_264CC4B6C();
      v26 = -1 << *(v9 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_264C9AE28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9B68);
  v33 = a2;
  result = sub_264CC4A2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_264C6B7DC(v24, v34);
      }

      else
      {
        sub_264C71590(v24, v34);
      }

      sub_264CC4B7C();
      sub_264CC460C();
      result = sub_264CC4B9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_264C6B7DC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_264C9B0E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E50);
  v35 = a2;
  result = sub_264CC4A2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_264CC4B7C();
      sub_264CC460C();
      result = sub_264CC4B9C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_264C9B384(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264CC48BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_264CC4B6C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_264CC2FCC() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_264C9B530(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264CC48BC() + 1) & ~v5;
    do
    {
      sub_264CC4B7C();

      sub_264CC460C();
      v10 = sub_264CC4B9C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_264C9B6E0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_264C9B724(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_264CC2FCC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_264C9B7D0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_264C6B7DC(a4, (a5[7] + 32 * a1));
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

void *sub_264C9B83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFA9EE8);
  v2 = *v0;
  v3 = sub_264CC4A1C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_264C9B998()
{
  v1 = v0;
  v29 = sub_264CC2FCC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B90);
  v3 = *v0;
  v4 = sub_264CC4A1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_264C9BC00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9B68);
  v2 = *v0;
  v3 = sub_264CC4A1C();
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
        sub_264C71590(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_264C6B7DC(v25, (*(v4 + 56) + v22));
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

id sub_264C9BDA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E50);
  v2 = *v0;
  v3 = sub_264CC4A1C();
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

uint64_t sub_264C9BF10(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_264C9C4C4(v12, v7, v5, a3);
  result = MEMORY[0x26674C780](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_264C9C080(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = result;
  v28 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v29 = v12;
    sub_264C71590(*(a3 + 56) + 32 * v12, v33);
    v31[0] = v15;
    v31[1] = v14;
    sub_264C71590(v33, &v32);
    v16 = objc_opt_self();
    swift_bridgeObjectRetain_n();
    v17 = [v16 presetKeys];
    v18 = sub_264CC47AC();

    if (*(v18 + 16) && (sub_264CC4B7C(), sub_264CC460C(), v19 = sub_264CC4B9C(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(v18 + 48) + 16 * v21);
        v24 = *v23 == v15 && v23[1] == v14;
        if (v24 || (sub_264CC4AAC() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_264C646E4(v31, &qword_27FFA9E18);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);

      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v25 = __OFADD__(v28++, 1);
      v7 = v34;
      if (v25)
      {
        __break(1u);
        return sub_264C9C54C(v27, v26, v28, a3);
      }
    }

    else
    {
LABEL_5:

      sub_264C646E4(v31, &qword_27FFA9E18);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);

      v7 = v34;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_264C9C54C(v27, v26, v28, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264C9C340(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    if (v15 == sub_264CC45DC() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_264CC4AAC();

      if ((v19 & 1) == 0)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_264C9C79C(v22, a2, v23, a3);
        }
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

    if (v4 >= v9)
    {
      return sub_264C9C79C(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_264C9C4C4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_264C9C54C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9B68);
  result = sub_264CC4A3C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_264C71590(v17 + 32 * v16, v33);
    sub_264C6B7DC(v33, v32);
    sub_264CC4B7C();

    sub_264CC460C();
    result = sub_264CC4B9C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_264C6B7DC(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_264C9C79C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E20);
  result = sub_264CC4A3C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_264C9E01C(v17 + 40 * v16, v36);
    v33 = v36[0];
    v34 = v36[1];
    v35 = v37;
    sub_264CC4B7C();

    sub_264CC460C();
    result = sub_264CC4B9C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    v30 = *(v9 + 56) + 40 * v24;
    *v30 = v33;
    *(v30 + 16) = v34;
    *(v30 + 32) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_264C9CA00(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26674B600](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_264C9CA80;
  }

  __break(1u);
  return result;
}

void (*sub_264C9CA88(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26674B600](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_264C9FC04;
  }

  __break(1u);
  return result;
}

void *sub_264C9CB1C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      *v11 = v19;
      v11[1] = v21;
      v11[2] = v22;
      if (v14 == v10)
      {
        v26 = v19;

        goto LABEL_23;
      }

      v11 += 3;
      v23 = v19;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = v13;
    }

    v12 = v25 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_264C9CC98(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_264C9CDEC(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7)
{
  v50 = a6;
  v52 = a5;
  v54 = a4;
  v51 = a3;
  v41 = a2;
  v49 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA3A0);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v36 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D20);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA3B0);
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D30);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v48 = objc_allocWithZone(a7);
  v68 = &type metadata for SettingsPresetViewModel.FamilyDataFetcher;
  v69 = &off_28766D680;
  v65 = &type metadata for SettingsPresetViewModel.RegionRatingsFetcher;
  v66 = &off_28766D658;
  v53 = a7;
  v18 = objc_allocWithZone(a7);
  __swift_mutable_project_boxed_opaque_existential_1(v67, &type metadata for SettingsPresetViewModel.FamilyDataFetcher);
  __swift_mutable_project_boxed_opaque_existential_1(v64, &type metadata for SettingsPresetViewModel.RegionRatingsFetcher);
  v62 = &type metadata for SettingsPresetViewModel.FamilyDataFetcher;
  v63 = &off_28766D680;
  v59 = &type metadata for SettingsPresetViewModel.RegionRatingsFetcher;
  v60 = &off_28766D658;
  v19 = &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsToPresetMappingViewModel;
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsToPresetMappingViewModel] = 0;
  v21 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__availablePresets;
  v56 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D50);
  sub_264CC38EC();
  v22 = v14;
  v23 = v41;
  (*(v15 + 32))(&v18[v21], v17, v22);
  v24 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__ratings;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D60);
  sub_264CC38EC();
  (*(v11 + 32))(&v18[v24], v13, v37);
  v25 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__selectedPresetIndex;
  v56 = 0;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70);
  v26 = v38;
  sub_264CC38EC();
  (*(v39 + 32))(&v18[v25], v26, v40);
  v27 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__restrictions;
  v56 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D80);
  v28 = v42;
  sub_264CC38EC();
  (*(v43 + 32))(&v18[v27], v28, v44);
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_keysSetByUser] = MEMORY[0x277D84FA0];
  v29 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__showLoadingIndicator;
  LOBYTE(v56) = 0;
  v30 = v45;
  sub_264CC38EC();
  (*(v46 + 32))(&v18[v29], v30, v47);
  v31 = v49;
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_dsid] = v49;
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics] = v50;
  v32 = v31;
  if (v23)
  {
    v33 = [v23 integerValue];
  }

  else
  {
    v33 = 0;
  }

  *v19 = v33;
  v19[8] = v23 == 0;
  v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_isInitialSetup] = v51 & 1;
  *&v18[v20] = v54;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsDefaultValueProvider] = v52;
  sub_264C6A834(v61, &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_familyDataFetcher]);
  sub_264C6A834(v58, &v18[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_regionRatingsFetcher]);
  v55.receiver = v18;
  v55.super_class = v53;
  v34 = objc_msgSendSuper2(&v55, sel_init);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v34;
}

uint64_t type metadata accessor for SettingsPresetViewModel()
{
  result = qword_27FFA9DD0;
  if (!qword_27FFA9DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264C9D574()
{
  sub_264C9D7B8(319, &qword_27FFA9DE0, &qword_27FFA9D50);
  if (v0 <= 0x3F)
  {
    sub_264C9D7B8(319, &qword_27FFA9DE8, &qword_27FFA9D60);
    if (v1 <= 0x3F)
    {
      sub_264C9D7B8(319, &qword_27FFA9DF0, &qword_27FFA9D70);
      if (v2 <= 0x3F)
      {
        sub_264C9D7B8(319, &qword_27FFA9DF8, &qword_27FFA9D80);
        if (v3 <= 0x3F)
        {
          sub_264C9D80C();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_264C9D7B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_264CC394C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_264C9D80C()
{
  if (!qword_27FFA9E00)
  {
    v0 = sub_264CC394C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFA9E00);
    }
  }
}

uint64_t sub_264C9D85C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C9D974;

  return v7(a1, a2);
}

uint64_t sub_264C9D974(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_264C9DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264C9FBFC;

  return v9(a1, a2, a3);
}

uint64_t sub_264C9DB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264C9FBFC;

  return v9(a1, a2, a3);
}

uint64_t sub_264C9DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264C9FBFC;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_264C9DE4C()
{
  result = qword_27FFA9E10;
  if (!qword_27FFA9E10)
  {
    sub_264C8A740(255, &qword_27FFAA390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9E10);
  }

  return result;
}

uint64_t sub_264C9DEB4(uint64_t a1, uint64_t a2)
{
  if (sub_264CC45DC() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_264CC4AAC();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_264CC45DC() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = sub_264CC4AAC();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_264CC45DC() == a1 && v11 == a2)
  {

    return 2;
  }

  else
  {
    v13 = sub_264CC4AAC();

    if (v13)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264C9E128(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 computedProperties];
  sub_264CC483C();
  v6 = sub_264CC454C();

  v34 = MEMORY[0x277D84FA0];
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v29 = v6;
  while (v10)
  {
LABEL_12:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = v17[1];
    v32 = *v17;
    v19 = *(*(v6 + 56) + 8 * v16);

    v20 = v19;
    v21 = [v20 dependencies];
    v22 = sub_264CC47AC();

    if (*(v22 + 16))
    {
      v30 = v20;
      v31 = v18;
      sub_264CC4B7C();
      sub_264CC460C();
      v23 = sub_264CC4B9C();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v22 + 48) + 16 * v25);
          v28 = *v27 == a1 && v27[1] == a2;
          if (v28 || (sub_264CC4AAC() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        sub_264C779A0(&v33, v32, v31);
      }

      else
      {
LABEL_21:
      }
    }

    else
    {
    }

    v6 = v29;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v34;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264C9E3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C9E440()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264C6DF34;

  return sub_264C94854(v2, v3);
}

uint64_t sub_264C9E4EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264C6EA28;

  return sub_264CB836C(v2, v3, v4);
}

uint64_t objectdestroy_47Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_264C9E5EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264C6EA28;

  return sub_264CB8454(a1, v4, v5, v6);
}

uint64_t sub_264C9E6B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264C6EA28;

  return sub_264C96AA8();
}

uint64_t sub_264C9E758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6DF34;

  return sub_264C96B3C(a1, v4);
}

uint64_t sub_264C9E7F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6EA28;

  return sub_264C96BD4(a1, v4);
}

uint64_t sub_264C9E898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264C6EA28;

  return sub_264C97070(a1, v4);
}

uint64_t sub_264C9E938(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264C6EA28;

  return sub_264C973D8(a1);
}

uint64_t sub_264C9E9D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264C6EA28;

  return sub_264C975DC(a1, v5, v4);
}

uint64_t sub_264C9EA84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264C6EA28;

  return sub_264C977C0(a1, v5, v4);
}

uint64_t sub_264C9EB78()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264C9ECB0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9EC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264C9FC10;
  v0[13] = &block_descriptor_123;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264C9ECB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_264C9EE28;
  }

  else
  {
    v2 = sub_264C9EDC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264C9EDC0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_264C9EE28()
{
  v1 = *(v0 + 152);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264C9EE98(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_264CC474C();
  v1[4] = sub_264CC473C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_264C9EF54;

  return sub_264C9EB5C();
}

uint64_t sub_264C9EF54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  v5 = sub_264CC471C();
  if (v1)
  {
    v6 = sub_264C9F3E0;
  }

  else
  {
    v6 = sub_264C9F0B4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_264C9F0B4()
{
  v1 = v0;
  v2 = v0[6];

  v3 = [v2 members];
  sub_264C8A740(0, &qword_27FFA9E98);
  v4 = sub_264CC469C();

  v27 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264CC4A0C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26674B600](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 dsid];
      if (v10)
      {
        v11 = v10;
        v12 = v1;
        v13 = v1[2];
        sub_264C8A740(0, &qword_27FFAA390);
        v14 = v13;
        v15 = sub_264CC486C();

        if (v15)
        {
          sub_264CC496C();
          sub_264CC499C();
          sub_264CC49AC();
          sub_264CC497C();
        }

        else
        {
        }

        v1 = v12;
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v16 = v27;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_21:

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    result = sub_264CC4A0C();
    if (result)
    {
      goto LABEL_24;
    }

LABEL_31:
    v22 = v1[6];
    v23 = v1[2];

    sub_264C9F804();
    swift_allocError();
    *v24 = v23;
    swift_willThrow();
    v25 = v23;

    v26 = v1[1];

    return v26();
  }

  if (!*(v16 + 16))
  {
    goto LABEL_31;
  }

LABEL_24:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = v1[6];
    v19 = MEMORY[0x26674B600](0, v16);
  }

  else
  {
    if (!*(v16 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = v1[6];
    v19 = *(v16 + 32);
  }

  v20 = v19;

  v21 = v1[1];

  return v21(v20);
}

uint64_t sub_264C9F3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_264C9F444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264CC336C();
  v15[3] = v5;
  v15[4] = sub_264C8E6D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4B868], v5);
  LOBYTE(v5) = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if ((v5 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277D08328]) initWithChildAge_];
  }

  if (a3)
  {
    v7 = *MEMORY[0x277D08140];
    v8 = sub_264CC459C();
  }

  else
  {
    if (qword_27FFA8FF8 != -1)
    {
      swift_once();
    }

    v10 = sub_264CC387C();
    __swift_project_value_buffer(v10, qword_27FFAC2B0);
    v11 = sub_264CC385C();
    v12 = sub_264CC47EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_264BA2000, v11, v12, "SettingsPresetViewModel found storefront nil. As fallback, passing nil to FASettingsPresetsRequest, which will use storefront of signed-in user instead of child user.", v13, 2u);
      MEMORY[0x26674C780](v13, -1, -1);
    }

    v8 = 0;
    v7 = *MEMORY[0x277D08140];
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D08328]) initWithChildAge:a1 storeFront:v8 version:v7];

  return v14;
}

id sub_264C9F624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264CC336C();
  v15[3] = v5;
  v15[4] = sub_264C8E6D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4B868], v5);
  LOBYTE(v5) = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if ((v5 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277D08328]) initWithFamilyMember_];
  }

  if (a3)
  {
    v7 = *MEMORY[0x277D08140];
    v8 = sub_264CC459C();
  }

  else
  {
    if (qword_27FFA8FF8 != -1)
    {
      swift_once();
    }

    v10 = sub_264CC387C();
    __swift_project_value_buffer(v10, qword_27FFAC2B0);
    v11 = sub_264CC385C();
    v12 = sub_264CC47EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_264BA2000, v11, v12, "SettingsPresetViewModel found storefront nil. As fallback, passing nil to FASettingsPresetsRequest, which will use storefront of signed-in user instead of child user.", v13, 2u);
      MEMORY[0x26674C780](v13, -1, -1);
    }

    v8 = 0;
    v7 = *MEMORY[0x277D08140];
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D08328]) initWithFamilyMember:a1 storeFront:v8 version:v7];

  return v14;
}

unint64_t sub_264C9F804()
{
  result = qword_27FFA9EB8;
  if (!qword_27FFA9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9EB8);
  }

  return result;
}

uint64_t sub_264C9F858(char a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_264C9F87C, 0, 0);
}

uint64_t sub_264C9F87C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 176);
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(MEMORY[0x277D4BA48]) initWithUnrated:v2 userDSID:v1];
  *(v0 + 160) = v4;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_264C9F9E0;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9ED0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_264C9FC10;
  *(v0 + 104) = &block_descriptor_137;
  *(v0 + 112) = v5;
  [v3 loadRegionRatingsWithOptions:v4 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264C9F9E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_264C9FB5C;
  }

  else
  {
    v2 = sub_264C9FAF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264C9FAF0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_264C9FB5C()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264C9FC14()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264C9FC94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_264C9FE18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_264CA00B8(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_264CC4AAC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ContentRestrictionValue();
  return sub_264CC458C() & 1;
}

uint64_t sub_264CA0144()
{
  sub_264CC4B7C();
  sub_264CC457C();
  return sub_264CC4B9C();
}

uint64_t sub_264CA019C()
{
  sub_264CC4B7C();
  sub_264CA0088();
  return sub_264CC4B9C();
}

void sub_264CA024C()
{
  sub_264CA0C18();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ContentRestrictionValue();
        sub_264CC46FC();
        if (v3 <= 0x3F)
        {
          sub_264CC487C();
          sub_264CC438C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_264CA0358(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[3] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[4] - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  v9 = a3[2];
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v4 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v6 + 80);
  v15 = *(v10 + 80);
  v16 = v11 - 1;
  if (!v11)
  {
    v16 = 0;
  }

  if (v16 <= v8)
  {
    v16 = v8;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  if (v11)
  {
    v17 = -2;
  }

  else
  {
    v17 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[4] - 8) + 64) + 7;
  v19 = v15 | 7;
  v20 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v21 = v17 + *(*(v9 - 8) + 64) - ((-17 - v15) | v15) - ((-9 - v19 - ((v18 + ((v13 + v14 + ((v12 + 64) & ~v12)) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) | v19);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v25 < 2)
    {
LABEL_37:
      if ((v16 & 0x80000000) != 0)
      {
        v30 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12;
        if (v5 == v16)
        {
          v31 = *(v4 + 48);

          return v31(v30, v5);
        }

        else
        {
          v32 = (v30 + v13 + v14) & ~v14;
          if (v7 == v16)
          {
            v33 = *(v6 + 48);

            return v33(v32);
          }

          else
          {
            v34 = (*(v10 + 48))((v15 + 8 + ((((v15 + 8 + ((v18 + v32) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15, v11, v9);
            if (v34 >= 2)
            {
              return v34 - 1;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      else
      {
        v29 = *(a1 + 3);
        if (v29 >= 0xFFFFFFFF)
        {
          LODWORD(v29) = -1;
        }

        return (v29 + 1);
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_37;
  }

LABEL_24:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = v21;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v16 + (v28 | v26) + 1;
}

void sub_264CA06E8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(a4[2] - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(*(a4[3] - 8) + 64);
  v17 = *(v10 + 80);
  v18 = *(*(v7 - 8) + 64);
  v19 = v14 - 1;
  if (!v14)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v12 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v12;
  }

  v22 = v18 + 7;
  v23 = *(v13 + 80);
  v24 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = v23 + 8;
  v26 = (v23 + 8 + ((v18 + 7 + ((v16 + v17 + ((v15 + 64) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & v24;
  if (v14)
  {
    v27 = *(*(a4[2] - 8) + 64);
  }

  else
  {
    v27 = *(*(a4[2] - 8) + 64) + 1;
  }

  v28 = ((*(v13 + 80) + 16) & ~*(v13 + 80)) + v27;
  v29 = v26 + v28;
  v30 = a3 >= v21;
  v31 = a3 - v21;
  if (v31 == 0 || !v30)
  {
LABEL_29:
    if (v21 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (v29 > 3)
  {
    v6 = 1;
    if (v21 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v32 = ((v31 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
  if (!HIWORD(v32))
  {
    if (v32 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v32 < 2)
    {
      v6 = 0;
    }

    goto LABEL_29;
  }

  v6 = 4;
  if (v21 < a2)
  {
LABEL_30:
    v33 = ~v21 + a2;
    if (v29 >= 4)
    {
      bzero(a1, v29);
      *a1 = v33;
      v34 = 1;
      if (v6 > 1)
      {
        goto LABEL_32;
      }

      goto LABEL_61;
    }

    v34 = (v33 >> (8 * v29)) + 1;
    if (v29)
    {
      v35 = v33 & ~(-1 << (8 * v29));
      bzero(a1, v29);
      if (v29 != 3)
      {
        if (v29 == 2)
        {
          *a1 = v35;
          if (v6 > 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          *a1 = v33;
          if (v6 > 1)
          {
LABEL_32:
            if (v6 == 2)
            {
              *&a1[v29] = v34;
            }

            else
            {
              *&a1[v29] = v34;
            }

            return;
          }
        }

LABEL_61:
        if (v6)
        {
          a1[v29] = v34;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v6 > 1)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_19:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v29] = 0;
  }

  else if (v6)
  {
    a1[v29] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v21 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 3) = a2 - 1;
    }

    return;
  }

  v36 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v15 + 32) & ~v15;
  if (v9 == v21)
  {
    v37 = *(v8 + 56);

LABEL_53:
    v37(v36);
    return;
  }

  v36 = (v36 + v16 + v17) & ~v17;
  if (v11 == v21)
  {
    v37 = *(v10 + 56);

    goto LABEL_53;
  }

  v38 = ((v25 + ((v22 + v36) & 0xFFFFFFFFFFFFFFF8)) & v24);
  if (v20 >= a2)
  {
    v38 = ((v25 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
    if (v19 >= a2)
    {
      v43 = *(v13 + 56);
      v44 = a2 + 1;

      v43(v38, v44);
    }

    else
    {
      if (v27 <= 3)
      {
        v42 = ~(-1 << (8 * v27));
      }

      else
      {
        v42 = -1;
      }

      if (v27)
      {
        v40 = v42 & (~v19 + a2);
        if (v27 <= 3)
        {
          v41 = v27;
        }

        else
        {
          v41 = 4;
        }

        bzero(v38, v27);
        if (v41 <= 2)
        {
          if (v41 == 1)
          {
            goto LABEL_76;
          }

          goto LABEL_87;
        }

LABEL_91:
        if (v41 == 3)
        {
          *v38 = v40;
          v38[2] = BYTE2(v40);
        }

        else
        {
          *v38 = v40;
        }
      }
    }
  }

  else
  {
    if (v28 <= 3)
    {
      v39 = ~(-1 << (8 * v28));
    }

    else
    {
      v39 = -1;
    }

    if (v28)
    {
      v40 = v39 & (~v20 + a2);
      if (v28 <= 3)
      {
        v41 = v28;
      }

      else
      {
        v41 = 4;
      }

      bzero(((v25 + ((v22 + v36) & 0xFFFFFFFFFFFFFFF8)) & v24), v28);
      if (v41 <= 2)
      {
        if (v41 == 1)
        {
LABEL_76:
          *v38 = v40;
          return;
        }

LABEL_87:
        *v38 = v40;
        return;
      }

      goto LABEL_91;
    }
  }
}

void sub_264CA0C18()
{
  if (!qword_27FFA9FF0)
  {
    v0 = sub_264CC487C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFA9FF0);
    }
  }
}

uint64_t sub_264CA0CB4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_264CC44AC();
}

uint64_t sub_264CA0E84()
{
  sub_264CC487C();
  v0 = sub_264CC438C();
  return MEMORY[0x26674B010](v0);
}

uint64_t sub_264CA0ED4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 - 1);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v29 = v5;
  v30 = v7;
  v7(v6, v4);
  sub_264CC474C();
  v8 = sub_264CC473C();
  v9 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  v12 = a1[3];
  v27 = a1[2];
  v28 = v12;
  *(v10 + 4) = v27;
  *(v10 + 5) = v12;
  v13 = a1[5];
  v26 = a1[4];
  *(v10 + 6) = v26;
  *(v10 + 7) = v13;
  v14 = a1[6];
  v24 = a1[7];
  v15 = v24;
  v25 = v14;
  *(v10 + 8) = v14;
  *(v10 + 9) = v15;
  v16 = *(v3 + 32);
  v16(&v10[v9], v6, a1);
  v30(v6, v31, a1);
  v17 = sub_264CC473C();
  v18 = swift_allocObject();
  *(v18 + 2) = v17;
  v19 = v27;
  *(v18 + 3) = MEMORY[0x277D85700];
  *(v18 + 4) = v19;
  v20 = v25;
  v21 = v26;
  *(v18 + 5) = v28;
  *(v18 + 6) = v21;
  *(v18 + 7) = v13;
  *(v18 + 8) = v20;
  *(v18 + 9) = v24;
  v16(&v18[v9], v6, a1);
  type metadata accessor for ContentRestrictionValue();
  sub_264CC487C();
  return sub_264CC437C();
}

uint64_t sub_264CA1110()
{
  type metadata accessor for ContentRestrictionCell();
  type metadata accessor for ContentRestrictionValue();
  sub_264CC46FC();

  swift_getWitnessTable();
  sub_264CC466C();
}

uint64_t sub_264CA1224(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v55 = a5;
  v56 = a7;
  v53 = a1;
  v54 = a4;
  v65 = a2;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264CC487C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v48 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x28223BE20](v17);
  v57 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v25 = type metadata accessor for ContentRestrictionValue();
  (*(v10 + 16))(v24, v53 + *(v25 + 36), a3);
  (*(v10 + 56))(v24, 0, 1, a3);
  v59 = a3;
  v60 = v54;
  v61 = v55;
  v62 = a6;
  v50 = a6;
  v63 = v56;
  v64 = v58;
  type metadata accessor for ContentRestrictionCell();
  sub_264CA0E84();
  v52 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v54 = v16;
  v27 = *(v16 + 16);
  v27(v15, v24, v12);
  v55 = v26;
  v58 = v12;
  v27(&v15[v26], v21, v12);
  v53 = v10;
  v28 = *(v10 + 48);
  v65 = v15;
  v56 = a3;
  if (v28(v15, 1, a3) != 1)
  {
    v48 = v21;
    v35 = v54;
    v36 = v65;
    v27(v57, v65, v58);
    v38 = v55;
    v37 = v56;
    if (v28(&v36[v55], 1, v56) != 1)
    {
      v41 = v53;
      v42 = v49;
      (*(v53 + 32))(v49, &v65[v38], v37);
      v43 = v57;
      v34 = sub_264CC458C();
      v44 = *(v41 + 8);
      v44(v42, v37);
      v45 = *(v35 + 8);
      v46 = v58;
      v45(v48, v58);
      v45(v24, v46);
      v44(v43, v37);
      v45(v65, v46);
      return v34 & 1;
    }

    v39 = *(v35 + 8);
    v40 = v58;
    v39(v48, v58);
    v39(v24, v40);
    (*(v53 + 8))(v57, v37);
    v33 = v65;
    goto LABEL_7;
  }

  v29 = *(v54 + 8);
  v30 = v58;
  v29(v21, v58);
  v29(v24, v30);
  v31 = v65;
  v32 = v28(&v65[v55], 1, v56) == 1;
  v33 = v31;
  if (!v32)
  {
LABEL_7:
    (*(v51 + 8))(v33, v52);
    v34 = 0;
    return v34 & 1;
  }

  v29(v31, v58);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_264CA172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a4;
  v26 = a9;
  v27 = a10;
  v12 = type metadata accessor for ContentRestrictionValue();
  v13 = sub_264CC487C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = sub_264CC487C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  (*(v14 + 16))(v16, a1, v13, v19);
  v22 = *(v12 - 8);
  if ((*(v22 + 48))(v16, 1, v12) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v23 = *(a5 - 8);
    v24 = 1;
  }

  else
  {
    v23 = *(a5 - 8);
    (*(v23 + 16))(v21, &v16[*(v12 + 36)], a5);
    (*(v22 + 8))(v16, v12);
    v24 = 0;
  }

  (*(v23 + 56))(v21, v24, 1, a5);
  v32 = a5;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v36 = v26;
  v37 = v27;
  type metadata accessor for ContentRestrictionCell();
  sub_264CA5D94(v21);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_264CA1A2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9FF8);
  v24 = a1[3];
  sub_264CC3B5C();
  v22 = a1[4];
  v23 = a1[7];
  sub_264CC3D6C();
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA000);
  sub_264CC3B5C();
  sub_264C64918(&qword_27FFAA008, &qword_27FFA9FF8);
  v21 = a1[6];
  v46 = v21;
  v47 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v43 = sub_264C64918(&qword_27FFAA010, &qword_27FFAA000);
  swift_getWitnessTable();
  v34 = sub_264CC423C();
  v35 = &type metadata for CenterAlignedLabelStyle;
  v36 = swift_getWitnessTable();
  v37 = sub_264CA54FC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9688);
  sub_264CC3B5C();
  v3 = a1[2];
  v4 = a1[5];
  type metadata accessor for ContentRestrictionValue();
  v5 = sub_264CC487C();
  sub_264CC46FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA020);
  v41 = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  sub_264CA5550();
  sub_264CC3A3C();
  swift_getWitnessTable();
  sub_264CC43BC();
  v40 = swift_getWitnessTable();
  swift_getWitnessTable();
  v7 = sub_264CC3ABC();
  v8 = swift_getWitnessTable();
  v34 = MEMORY[0x277CE1428];
  v35 = v5;
  v36 = v7;
  v37 = MEMORY[0x277CE1410];
  v38 = v6;
  v39 = v8;
  sub_264CC42FC();
  sub_264CC3B5C();
  swift_getTupleTypeMetadata3();
  sub_264CC449C();
  swift_getWitnessTable();
  sub_264CC42CC();
  swift_getTupleTypeMetadata3();
  sub_264CC449C();
  swift_getWitnessTable();
  sub_264CC42CC();
  sub_264CC3D9C();
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = type metadata accessor for ContentRestrictionRow();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  *&v16 = v3;
  *(&v16 + 1) = v24;
  *&v17 = v22;
  *(&v17 + 1) = v4;
  v28 = v17;
  v27 = v16;
  v29 = v21;
  v30 = v23;
  v31 = v25;
  sub_264C7A4FC(sub_264CA5608);
  v18 = swift_getWitnessTable();
  sub_264C71A58(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_264C71A58(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_264CA20EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a7;
  v70 = a6;
  v66 = a5;
  v71 = a4;
  v73 = a3;
  v77 = a2;
  v75 = a1;
  v76 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9FF8);
  sub_264CC3B5C();
  sub_264CC3D6C();
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA000);
  sub_264CC3B5C();
  sub_264C64918(&qword_27FFAA008, &qword_27FFA9FF8);
  v99 = a6;
  v100 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v96 = sub_264C64918(&qword_27FFAA010, &qword_27FFAA000);
  swift_getWitnessTable();
  v87 = sub_264CC423C();
  v88 = &type metadata for CenterAlignedLabelStyle;
  v89 = swift_getWitnessTable();
  v90 = sub_264CA54FC();
  swift_getOpaqueTypeMetadata2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9688);
  sub_264CC3B5C();
  swift_getTupleTypeMetadata3();
  v57[1] = sub_264CC449C();
  v57[0] = swift_getWitnessTable();
  v9 = sub_264CC42CC();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v57 - v12;
  v13 = v77;
  v14 = v66;
  type metadata accessor for ContentRestrictionValue();
  v15 = sub_264CC487C();
  v16 = sub_264CC46FC();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA020);
  v94 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_264CA5550();
  v87 = v15;
  v88 = v17;
  v89 = v18;
  v90 = v19;
  v20 = sub_264CC3A3C();
  v21 = swift_getWitnessTable();
  v87 = v16;
  v88 = v13;
  v89 = v20;
  v90 = v21;
  v91 = v14;
  v22 = v14;
  v23 = sub_264CC43BC();
  v93 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v87 = v15;
  v88 = v23;
  v89 = v18;
  v90 = v24;
  v25 = sub_264CC3ABC();
  v26 = swift_getWitnessTable();
  v87 = MEMORY[0x277CE1428];
  v88 = v15;
  v89 = v25;
  v90 = MEMORY[0x277CE1410];
  v91 = v18;
  v92 = v26;
  sub_264CC42FC();
  sub_264CC3B5C();
  swift_getTupleTypeMetadata3();
  v27 = sub_264CC449C();
  v28 = swift_getWitnessTable();
  v62 = v27;
  v61 = v28;
  v29 = sub_264CC42CC();
  v64 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v63 = v57 - v33;
  v74 = v9;
  v69 = sub_264CC3D9C();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v57 - v34;
  v35 = v77;
  v36 = v73;
  v87 = v77;
  v88 = v73;
  v37 = v71;
  v89 = v71;
  v90 = v22;
  v38 = v22;
  v39 = v70;
  v40 = v72;
  v91 = v70;
  v92 = v72;
  type metadata accessor for ContentRestrictionCell();
  v41 = v75;
  v42 = sub_264CC46EC();
  v65 = v57;
  v78 = v35;
  v79 = v36;
  v80 = v37;
  v81 = v38;
  v82 = v39;
  v83 = v40;
  v84 = v41;
  sub_264CC3CCC();
  if (v42 < 1)
  {
    v47 = v59;
    sub_264CC42BC();
    v48 = v74;
    v49 = swift_getWitnessTable();
    v50 = v58;
    sub_264C71A58(v47, v48, v49);
    v51 = *(v60 + 8);
    v51(v47, v48);
    sub_264C71A58(v50, v48, v49);
    swift_getWitnessTable();
    v46 = v67;
    sub_264C70B60(v47, v29, v48);
    v51(v47, v48);
    v51(v50, v48);
  }

  else
  {
    sub_264CC42BC();
    v43 = swift_getWitnessTable();
    v44 = v63;
    sub_264C71A58(v31, v29, v43);
    v45 = *(v64 + 8);
    v45(v31, v29);
    sub_264C71A58(v44, v29, v43);
    swift_getWitnessTable();
    v46 = v67;
    sub_264C70A68(v31, v29);
    v45(v31, v29);
    v45(v44, v29);
  }

  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v85 = v52;
  v86 = v53;
  v54 = v69;
  v55 = swift_getWitnessTable();
  sub_264C71A58(v46, v54, v55);
  return (*(v68 + 8))(v46, v54);
}

uint64_t sub_264CA2B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a7;
  v56 = a6;
  v53 = a4;
  v55 = a3;
  v64 = a1;
  v65 = a8;
  v60 = a2;
  v61 = a5;
  type metadata accessor for ContentRestrictionValue();
  v8 = sub_264CC487C();
  sub_264CC46FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA020);
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  sub_264CA5550();
  sub_264CC3A3C();
  swift_getWitnessTable();
  sub_264CC43BC();
  v89 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_264CC3ABC();
  v11 = swift_getWitnessTable();
  v83 = MEMORY[0x277CE1428];
  v84 = v8;
  v85 = v10;
  v86 = MEMORY[0x277CE1410];
  v87 = v9;
  v88 = v11;
  v59 = sub_264CC42FC();
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9688);
  v62 = sub_264CC3B5C();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9FF8);
  sub_264CC3B5C();
  sub_264CC3D6C();
  sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFAA000);
  v16 = sub_264CC3B5C();
  v17 = sub_264C64918(&qword_27FFAA008, &qword_27FFA9FF8);
  v18 = v56;
  v81 = v56;
  v82 = MEMORY[0x277CDF678];
  v19 = MEMORY[0x277CDFAD8];
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v79 = v20;
  v80 = v21;
  v52 = v19;
  v22 = swift_getWitnessTable();
  v23 = sub_264C64918(&qword_27FFAA010, &qword_27FFAA000);
  v77 = v22;
  v78 = v23;
  v24 = swift_getWitnessTable();
  v83 = v15;
  v84 = v16;
  v85 = v17;
  v86 = v24;
  v25 = sub_264CC423C();
  v26 = swift_getWitnessTable();
  v27 = sub_264CA54FC();
  v83 = v25;
  v84 = &type metadata for CenterAlignedLabelStyle;
  v85 = v26;
  v86 = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_264CC3B5C();
  v51 = *(v28 - 8);
  v29 = v51;
  MEMORY[0x28223BE20](v28);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v66 = &v48 - v33;
  v83 = v60;
  v84 = v55;
  v85 = v53;
  v86 = v61;
  v87 = v18;
  v88 = v54;
  v34 = type metadata accessor for ContentRestrictionCell();
  sub_264CA33A4(v34, v31);
  v83 = v25;
  v84 = &type metadata for CenterAlignedLabelStyle;
  v85 = v26;
  v86 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_264C64918(&qword_27FFA9680, &qword_27FFA9688);
  v75 = OpaqueTypeConformance2;
  v76 = v36;
  v60 = swift_getWitnessTable();
  v49 = v31;
  v50 = v28;
  sub_264C71A58(v31, v28, v60);
  v61 = *(v29 + 8);
  v37 = v61(v31, v28);
  v38 = v57;
  sub_264CA3850(v37, v34, MEMORY[0x277CE1428], MEMORY[0x277CE1410], v57);
  v73 = swift_getWitnessTable();
  v74 = v36;
  v39 = v62;
  v40 = swift_getWitnessTable();
  v41 = v58;
  sub_264C71A58(v38, v39, v40);
  v42 = v63;
  v43 = *(v63 + 8);
  v43(v38, v39);
  v44 = v49;
  v45 = v50;
  (*(v51 + 16))(v49, v66, v50);
  v71 = 0;
  v72 = 0;
  v83 = v44;
  v84 = &v71;
  (*(v42 + 16))(v38, v41, v39);
  v85 = v38;
  v70[0] = v45;
  v70[1] = MEMORY[0x277CE1180];
  v70[2] = v39;
  v67 = v60;
  v68 = MEMORY[0x277CE1170];
  v69 = v40;
  sub_264CA0CB4(&v83, 3uLL, v70);
  v43(v41, v39);
  v46 = v61;
  v61(v66, v45);
  v43(v38, v39);
  return v46(v44, v45);
}