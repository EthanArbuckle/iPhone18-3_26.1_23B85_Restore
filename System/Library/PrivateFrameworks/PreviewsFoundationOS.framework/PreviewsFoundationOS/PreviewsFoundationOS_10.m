id sub_25F2810B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a4;
  v14 = sub_25F305C1C();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = *(a9 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isValid];
  if (result)
  {
    (*(v19 + 16))(v22, a3, a9);
    v24 = sub_25F30477C();
    v25 = sub_25F3059FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = a5;
      v27 = v26;
      v38 = swift_slowAlloc();
      v45 = v38;
      *v27 = 136446210;
      sub_25F30657C();
      v41 = a6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v28 = swift_allocObject();
      v40 = a7;
      v29 = v28;
      *(v28 + 16) = xmmword_25F3081E0;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_25F1F7190();
      v29[4] = 0x63656A624F796E41;
      v29[5] = 0xE900000000000074;
      v30 = sub_25F304DBC();
      v31 = MEMORY[0x277D83C10];
      v29[12] = MEMORY[0x277D83B88];
      v29[13] = v31;
      v29[9] = v30;
      v32 = sub_25F304E3C();
      v34 = v33;
      swift_unknownObjectRelease();
      (*(v19 + 8))(v22, a9);
      v35 = sub_25F1C53AC(v32, v34, &v45);

      *(v27 + 4) = v35;
      a6 = v41;
      _os_log_impl(&dword_25F1A2000, v24, v25, "Purging pending associated object %{public}s", v27, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x25F8D9510](v36, -1, -1);
      v37 = v27;
      a5 = v39;
      MEMORY[0x25F8D9510](v37, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v22, a9);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      AssociatedObjectCache.purgeAssociatedObject(to:)(a5, v18);
    }

    else
    {
      (*(v19 + 56))(v18, 1, 1, a9);
    }

    (*(v43 + 8))(v18, v44);
    return a6(a5);
  }

  return result;
}

Swift::Void __swiftcall AssociatedObjectCache.purgeAllAssociatedObjects()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v63 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v71 = v52 - v10;
  v11 = *(v1 + 80);
  v52[1] = type metadata accessor for Ref();
  v72 = TupleTypeMetadata3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = sub_25F305C1C();
  v13 = *(v67 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v67);
  v17 = (v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v66 = v52 - v18;
  swift_beginAccess();
  v53 = v0;
  v19 = v0[2];
  v20 = *(v19 + 64);
  v55 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v54 = (v21 + 63) >> 6;
  v68 = TupleTypeMetadata2 - 8;
  v69 = TupleTypeMetadata2;
  v70 = (v4 + 16);
  v56 = v4 + 32;
  v64 = v2;
  v65 = (v13 + 32);
  v60 = v2 - 8;
  v57 = v4;
  v59 = (v4 + 8);
  v58 = v19;

  v24 = 0;
  v61 = v17;
  if (v23)
  {
    while (1)
    {
      v25 = v24;
      v26 = v69;
LABEL_12:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = v29 | (v25 << 6);
      v31 = *(*(v58 + 48) + 8 * v30);
      v32 = v57;
      v34 = v71;
      v33 = v72;
      (*(v57 + 16))(v71, *(v58 + 56) + *(v57 + 72) * v30, v72);
      v35 = *(v26 + 48);
      *v17 = v31;
      (*(v32 + 32))(v17 + v35, v34, v33);
      v36 = *(v26 - 8);
      (*(v36 + 56))(v17, 0, 1, v26);
      swift_unknownObjectRetain();
      v28 = v25;
LABEL_13:
      v37 = v66;
      (*v65)(v66, v17, v67);
      if ((*(v36 + 48))(v37, 1, v26) == 1)
      {
        break;
      }

      v38 = *v37;
      swift_unknownObjectRelease();
      v39 = v37 + *(v26 + 48);
      v75 = v28;
      v40 = v72;
      v41 = *&v39[*(v72 + 48)];
      v73 = *&v39[*(v72 + 64)];
      v74 = v41;
      v42 = v64;
      v43 = *(v64 - 8);
      v44 = *(v43 + 32);
      v45 = v62;
      v44(v62);
      v46 = *(v40 + 48);
      v47 = *(v40 + 64);
      v48 = v71;
      (v44)(v71, v45, v42);
      v17 = v61;
      v49 = v73;
      *&v48[v46] = v74;
      *&v48[v47] = v49;
      v50 = v63;
      (*v70)(v63, v48, v40);
      v51 = *&v50[*(v40 + 64)];
      [v51 invalidate];

      (*v59)(v48, v40);
      (*(v43 + 8))(v50, v42);
      v24 = v75;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    swift_beginAccess();
    swift_getWitnessTable();
    sub_25F304B4C();
    sub_25F304B3C();
    swift_endAccess();
  }

  else
  {
LABEL_5:
    if (v54 <= v24 + 1)
    {
      v27 = v24 + 1;
    }

    else
    {
      v27 = v54;
    }

    v28 = v27 - 1;
    v26 = v69;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v54)
      {
        v36 = *(v69 - 8);
        (*(v36 + 56))(v17, 1, 1, v69);
        v23 = 0;
        goto LABEL_13;
      }

      v23 = *(v55 + 8 * v25);
      ++v24;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t AssociatedObjectCache.deinit()
{
  v1 = *(v0 + 16);

  v2 = qword_27FD56C40;
  v3 = sub_25F30479C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t AssociatedObjectCache.__deallocating_deinit()
{
  AssociatedObjectCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AssociatedObjectCache.DecrementResult.Discriminant.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

uint64_t sub_25F281C80()
{
  sub_25F30671C();
  AssociatedObjectCache.DecrementResult.Discriminant.hash(into:)(v2, *v0);
  return sub_25F30676C();
}

uint64_t AssociatedObjectCache.DecrementResult.discriminant.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  result = (*(*(*(a1 + 24) - 8) + 48))(v5, 2);
  if (result)
  {
    if (result != 1)
    {
      return 2;
    }
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }

  return result;
}

uint64_t sub_25F281DDC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25F281E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25F304BCC();

  return sub_25F281E68(a1, v9, a2, a3);
}

unint64_t sub_25F281E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_25F304DCC();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

id sub_25F282008(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_25F30479C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25F2810B4(a1, v1 + v6, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v4);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F282158()
{
  result = sub_25F30479C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F28223C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_25F282298(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_25F28246C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_25F2826DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS21AssociatedObjectCacheC10PurgeDelayOyxq__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F282730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F282780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_25F2827D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t CommandLineTool.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommandLineTool.init(description:commands:usageExamples:printer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return sub_25F1A42F8(a5, (a6 + 4));
}

Swift::Void __swiftcall CommandLineTool.run()()
{
  v1 = sub_25F305F0C();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);

    v3 = v0[7];
    v4 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    sub_25F30619C();
    (*(v4 + 24))(0, 0xE000000000000000, 1, v3, v4);

    exit(1);
  }

  sub_25F282A8C(v1, v1 + 32, 1, (2 * v2) | 1);
}

uint64_t sub_25F282A8C(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (((a4 >> 1) - a3) <= 0)
  {
    v19 = v4[7];
    v20 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v19);
    v21 = CommandLineTool.usage.getter();
    AnyCommandLinePrinter.print(_:_:)(v21, v22, MEMORY[0x277D84F90], v19, v20);

    sub_25F283E08();
    swift_allocError();
    return swift_willThrow();
  }

  if ((a4 >> 1) <= a3)
  {
    goto LABEL_41;
  }

  v36 = a4 >> 1;
  v37 = a2;
  v10 = (a2 + 16 * a3);
  v11 = *v10;
  v38 = a3 + 1;
  v40 = v4;
  v6 = v4[2];
  v12 = *(v6 + 16);
  v41 = v10[1];

  swift_unknownObjectRetain();
  v13 = (v6 + 40);
  v7 = -1;
  while (v7 - v12 != -1)
  {
    ++v7;
    v5 = v41;
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v4 = *(v13 - 1);
    v8 = *v13;
    if ((*(*v13 + 8))(v4, *v13) == v11 && v14 == v41)
    {

      v5 = a4;
      if (a4)
      {
LABEL_20:
        sub_25F3065CC();
        v6 = a1;
        swift_unknownObjectRetain_n();
        v25 = swift_dynamicCastClass();
        v7 = v38;
        if (!v25)
        {
          swift_unknownObjectRelease();
          v25 = MEMORY[0x277D84F90];
        }

        v26 = *(v25 + 16);

        if (!__OFSUB__(v36, v38))
        {
          if (v26 == v36 - v38)
          {
            v18 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v18)
            {
              v18 = MEMORY[0x277D84F90];
              goto LABEL_26;
            }

            goto LABEL_27;
          }

LABEL_43:
          swift_unknownObjectRelease();
LABEL_14:
          sub_25F283F04(v6, v37, v7, v5);
          v18 = v17;
LABEL_26:
          swift_unknownObjectRelease();
LABEL_27:
          (*(v8 + 40))(v18, v40 + 4, v4, v8);

          return swift_unknownObjectRelease();
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_13:
      v6 = a1;
      swift_unknownObjectRetain();
      v7 = v38;
      goto LABEL_14;
    }

    v13 += 2;
    v16 = sub_25F30659C();

    if (v16)
    {
      v5 = a4;
      if (a4)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  if (v11 == 26669 && v41 == 0xE200000000000000)
  {

    v24 = v40;
  }

  else
  {
    v24 = v40;
    if ((sub_25F30659C() & 1) == 0 && (v11 != 0x706C65682D2DLL || v41 != 0xE600000000000000) && (sub_25F30659C() & 1) == 0 && (v11 != 0x706C65682DLL || v41 != 0xE500000000000000) && (sub_25F30659C() & 1) == 0)
    {
      v31 = v40[7];
      v32 = v40[8];
      __swift_project_boxed_opaque_existential_1(v40 + 4, v31);
      v33 = CommandLineTool.usage.getter();
      AnyCommandLinePrinter.print(_:_:)(v33, v34, MEMORY[0x277D84F90], v31, v32);

      sub_25F283DB4();
      swift_allocError();
      *v35 = v11;
      v35[1] = v41;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  v27 = v24[7];
  v28 = v24[8];
  __swift_project_boxed_opaque_existential_1(v24 + 4, v27);
  v29 = CommandLineTool.usage.getter();
  AnyCommandLinePrinter.print(_:_:)(v29, v30, MEMORY[0x277D84F90], v27, v28);

  return swift_unknownObjectRelease();
}

uint64_t CommandLineTool.run<A>(arguments:)(uint64_t a1, uint64_t a2)
{
  v65 = *(a2 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](a1);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v64 = swift_getAssociatedTypeWitness();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v64);
  v63 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  if (sub_25F3057BC() < 1)
  {
    v38 = v68[7];
    v39 = v68[8];
    __swift_project_boxed_opaque_existential_1(v68 + 4, v38);
    v40 = CommandLineTool.usage.getter();
    AnyCommandLinePrinter.print(_:_:)(v40, v41, MEMORY[0x277D84F90], v38, v39);

    sub_25F283E08();
    swift_allocError();
    return swift_willThrow();
  }

  v59 = v10;
  v60 = AssociatedTypeWitness;
  v61 = v2;
  sub_25F3057AC();
  v22 = sub_25F3058FC();
  v66 = v15;
  v24 = *v23;
  v70 = v23[1];

  v22(v69, 0);
  v25 = *(v16 + 8);
  v26 = v64;
  v25(v21, v64);
  (*(v65 + 16))(v67, a1, a2);
  v27 = v63;
  sub_25F3057AC();
  sub_25F3057CC();
  v25(v27, v26);
  v65 = a2;
  v63 = v8;
  sub_25F30587C();
  result = (v25)(v21, v26);
  v29 = v68[2];
  v30 = (v29 + 40);
  v31 = -*(v29 + 16);
  v32 = -1;
  while (1)
  {
    if (v31 + v32 == -1)
    {
      v42 = v68;
      v43 = v70;
      if (v24 == 26669 && v70 == 0xE200000000000000)
      {

        v44 = v60;
        v45 = v59;
      }

      else
      {
        v48 = sub_25F30659C();
        v44 = v60;
        v45 = v59;
        if ((v48 & 1) == 0 && (v24 != 0x706C65682D2DLL || v43 != 0xE600000000000000) && (sub_25F30659C() & 1) == 0 && (v24 != 0x706C65682DLL || v43 != 0xE500000000000000) && (sub_25F30659C() & 1) == 0)
        {
          v53 = v42[7];
          v54 = v42[8];
          __swift_project_boxed_opaque_existential_1(v42 + 4, v53);
          v55 = CommandLineTool.usage.getter();
          AnyCommandLinePrinter.print(_:_:)(v55, v56, MEMORY[0x277D84F90], v53, v54);

          sub_25F283DB4();
          swift_allocError();
          v57 = v70;
          *v58 = v24;
          v58[1] = v57;
          swift_willThrow();
          return (*(v45 + 8))(v66, v44);
        }
      }

      v49 = v42[7];
      v50 = v42[8];
      __swift_project_boxed_opaque_existential_1(v42 + 4, v49);
      v51 = CommandLineTool.usage.getter();
      AnyCommandLinePrinter.print(_:_:)(v51, v52, MEMORY[0x277D84F90], v49, v50);
      v46 = v66;
      goto LABEL_26;
    }

    ++v32;
    v33 = v70;
    if (v32 >= *(v29 + 16))
    {
      break;
    }

    v34 = *v30;
    if ((*(*v30 + 8))(*(v30 - 1), *v30) == v24 && v35 == v33)
    {

LABEL_16:
      v45 = v59;
      v44 = v60;
      v46 = v66;
      (*(v59 + 16))(v62, v66, v60);
      v47 = *(swift_getAssociatedConformanceWitness() + 8);
      sub_25F3053CC();
      (*(v34 + 40))();

LABEL_26:

      return (*(v45 + 8))(v46, v44);
    }

    v30 += 2;
    v37 = sub_25F30659C();

    if (v37)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CommandLineTool.printUsage()()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  v3 = CommandLineTool.usage.getter();
  AnyCommandLinePrinter.print(_:_:)(v3, v4, MEMORY[0x277D84F90], v1, v2);
}

uint64_t CommandLineTool.usage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  v40 = v0;
  v3 = v0[3];
  v4 = v3[2];
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    v44 = inited;
    goto LABEL_13;
  }

  v6 = v3[5];
  *(v2 + 32) = v3[4];
  *(v2 + 40) = v6;
  v44 = v2;

  if (v4 == 1)
  {
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  sub_25F1BF514(v7, (v3 + 4), 1, (2 * v4) | 1);

  v2 = v44;
  v8 = *(v44 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

LABEL_14:
  *&v41 = v5;
  sub_25F1BD008(0, v8, 0);
  v9 = v5;
  v23 = (v2 + 40);
  do
  {
    v25 = *(v23 - 1);
    v24 = *v23;
    v26 = objc_allocWithZone(MEMORY[0x277CCAC38]);

    v27 = [v26 init];
    v28 = [v27 processName];

    v29 = sub_25F304E0C();
    v31 = v30;

    v43._countAndFlagsBits = v29;
    v43._object = v31;

    MEMORY[0x25F8D7130](32, 0xE100000000000000);

    MEMORY[0x25F8D7130](v25, v24);

    v32 = v31;
    *&v41 = v9;
    v34 = *(v9 + 16);
    v33 = *(v9 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_25F1BD008((v33 > 1), v34 + 1, 1);
      v9 = v41;
    }

    *(v9 + 16) = v34 + 1;
    v35 = v9 + 16 * v34;
    *(v35 + 32) = v29;
    *(v35 + 40) = v32;
    v23 += 2;
    --v8;
  }

  while (v8);
LABEL_5:
  v43._countAndFlagsBits = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  sub_25F304CAC();

  v10._countAndFlagsBits = 0x20202020202020;
  v10._object = 0xE700000000000000;
  v11 = String.prefixingEachLine(with:startingOnLine:)(v10, 1uLL);

  v12 = v40[2];
  v13 = *(v12 + 16);
  if (v13)
  {
    v42 = MEMORY[0x277D84F90];
    v39 = v12;
    result = sub_25F1BD008(0, v13, 0);
    v15 = v39;
    v16 = 0;
    v17 = v42;
    while (v16 < *(v15 + 16))
    {
      v41 = *(v39 + 32 + 16 * v16);
      result = sub_25F283A40(&v41, &v43);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      v42 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_25F1BD008((v20 > 1), v21 + 1, 1);
        v15 = v39;
        v17 = v42;
      }

      ++v16;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = countAndFlagsBits;
      *(v22 + 40) = object;
      if (v13 == v16)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
LABEL_20:
    v43._countAndFlagsBits = v17;
    v36 = sub_25F304CAC();
    v38 = v37;

    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_25F305FAC();

    v43._countAndFlagsBits = 0x203A6567617355;
    v43._object = 0xE700000000000000;
    MEMORY[0x25F8D7130](v11._countAndFlagsBits, v11._object);

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](*v40, v40[1]);
    MEMORY[0x25F8D7130](0x4E414D4D4F430A0ALL, 0xEC0000000A0A5344);
    MEMORY[0x25F8D7130](v36, v38);

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    return v43._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_25F283A40@<X0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*(v4 + 32))(*a1, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v31 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v6, 0);
    v7 = (v5 + 80);
    do
    {
      v22 = *(v7 - 6);
      v23 = *(v7 - 5);
      v24 = *(v7 - 4);
      v25 = *(v7 - 3);
      v26 = *(v7 - 2);
      v27 = *(v7 - 1);
      v28 = *v7;

      v29 = CommandLineOptionDescription.shortUsage.getter();
      v30 = v8;
      MEMORY[0x25F8D7130](2570, 0xE200000000000000);
      v9._countAndFlagsBits = 538976288;
      v9._object = 0xE400000000000000;
      countAndFlagsBits = String.prefixingEachLine(with:startingOnLine:)(v9, 0)._countAndFlagsBits;
      MEMORY[0x25F8D7130](countAndFlagsBits);

      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25F1BD008((v11 > 1), v12 + 1, 1);
      }

      v7 += 7;
      *(v31 + 16) = v12 + 1;
      v13 = v31 + 16 * v12;
      *(v13 + 32) = v29;
      *(v13 + 40) = v30;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  sub_25F304CAC();

  (*(v4 + 8))(v3, v4);
  MEMORY[0x25F8D7130](32, 0xE100000000000000);
  v14 = (*(v4 + 16))(v3, v4);
  MEMORY[0x25F8D7130](v14);

  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  (*(v4 + 24))(v3, v4);
  v15._countAndFlagsBits = 538976288;
  v15._object = 0xE400000000000000;
  v16 = String.prefixingEachLine(with:startingOnLine:)(v15, 0);

  MEMORY[0x25F8D7130](v16._countAndFlagsBits, v16._object);

  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  v17._countAndFlagsBits = 538976288;
  v17._object = 0xE400000000000000;
  v18 = String.prefixingEachLine(with:startingOnLine:)(v17, 0);

  MEMORY[0x25F8D7130](v18._countAndFlagsBits, v18._object);

  v19._countAndFlagsBits = 538976288;
  v19._object = 0xE400000000000000;
  v20 = String.prefixingEachLine(with:startingOnLine:)(v19, 0);

  *a2 = v20;
  return result;
}

unint64_t sub_25F283DB4()
{
  result = qword_27FD56E48;
  if (!qword_27FD56E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56E48);
  }

  return result;
}

unint64_t sub_25F283E08()
{
  result = qword_27FD56E50;
  if (!qword_27FD56E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56E50);
  }

  return result;
}

unint64_t sub_25F283E78()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  return 0xD000000000000011;
}

void sub_25F283F04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
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

uint64_t RandomAccessCollection<>.remapTransferredPathsForDestination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a1;
  v47 = a5;
  v7 = a3;
  v49 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v37 - v10;
  v11 = sub_25F305C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = AssociatedTypeWitness;
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v48 = swift_getAssociatedTypeWitness();
  v38 = *(v48 - 8);
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v48);
  v21 = &v37 - v20;
  sub_25F3057DC();
  sub_25F3050DC();
  v22 = v37;
  v23 = v48;
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v24 = v50;
  v44 = *(v50 + 48);
  v45 = v50 + 48;
  if (v44(v14, 1, v17) != 1)
  {
    v25 = *(v24 + 32);
    v40 = v47 + 16;
    v41 = v25;
    v50 = v24 + 32;
    v39 = (v24 + 8);
    v42 = v14;
    v43 = v21;
    do
    {
      v41(v22, v14, v17);
      v26 = v22;
      v27 = sub_25F304D8C();
      v28 = v17;
      v29 = v6;
      v30 = v7;
      v31 = v47;
      v32 = *(v47 + 16);
      v33 = *(v49 + 8);
      v34 = swift_getAssociatedTypeWitness();
      v35 = v31;
      v7 = v30;
      v32(v46, v34, v35);
      v6 = v29;
      v17 = v28;
      v27(v51, 0);
      v22 = v26;
      v14 = v42;
      v21 = v43;
      v23 = v48;
      (*v39)(v22, v17);
      sub_25F305CDC();
    }

    while (v44(v14, 1, v17) != 1);
  }

  return (*(v38 + 8))(v21, v23);
}

uint64_t RandomAccessCollection<>.remappedTransferredPathsForDestination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v13 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v19 = sub_25F3053CC();
  v14 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  RandomAccessCollection<>.remapTransferredPathsForDestination(_:)(a1, v14, WitnessTable, v16, a5);
  return v19;
}

uint64_t Sequence<>.pathsForTransferrableArtifactsOnHost.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F305FEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  MEMORY[0x25F8D7310](a1, a2);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  swift_getWitnessTable();
  sub_25F284848();
  sub_25F30639C();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25F2847D4@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v6(AssociatedTypeWitness, v5);
  *a1 = result;
  return result;
}

unint64_t sub_25F284848()
{
  result = qword_27FD56E58[0];
  if (!qword_27FD56E58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD56E58);
  }

  return result;
}

uint64_t sub_25F2848D4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    v12 = *(a2 + 16);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    sub_25F30678C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_25F284B18(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(v8 + 80);
  type metadata accessor for MapFuture();
  *&v17 = v10;
  *(&v17 + 1) = v11;
  *&v16 = v12;
  *(&v16 + 1) = v13;

  sub_25F2033CC(v10);
  sub_25F2033CC(v12);
  swift_allocObject();

  return sub_25F2854D4(v18, v5, &v17, &v16, a4, a5);
}

uint64_t sub_25F284CD4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = sub_25F30678C();
  return sub_25F284D70(sub_25F2868D4, v2, a1);
}

uint64_t sub_25F284D70@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
    v18 = a2[4];
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t Future.mapFailure(dsoHandle:file:line:column:function:on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v18 = *a10;
  v14 = swift_allocObject();
  v14[2] = *(v13 + 80);
  v14[3] = a11;
  v14[4] = a12;
  v17[0] = 0;
  v17[1] = 0;

  v15 = sub_25F284B18(&v19, v17, &v18, sub_25F28654C, v14);

  sub_25F2033DC(v17[0]);
  return v15;
}

uint64_t sub_25F285060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = sub_25F30678C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13[-v10], a1, v8);
  v14 = a2;
  v15 = a3;
  return sub_25F2848D4(sub_25F2868A0, v8, a4);
}

uint64_t sub_25F2851F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *v15;
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v21 = *a10;
  v17 = swift_allocObject();
  v17[2] = *(v16 + 80);
  v17[3] = a13;
  v17[4] = a11;
  v17[5] = a12;
  v20[0] = 0;
  v20[1] = 0;

  v18 = sub_25F284B18(&v22, &v21, v20, a15, v17);

  sub_25F2033DC(v20[0]);
  return v18;
}

uint64_t sub_25F2852CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  return a6(a2, a3, v10, a5);
}

uint64_t Future.ignoringValue(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *v9;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v11 = swift_allocObject();
  *(v11 + 16) = *(v10 + 80);
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  v12 = sub_25F284B18(&v16, v15, v14, sub_25F28658C, v11);

  sub_25F2033DC(v14[0]);
  sub_25F2033DC(v15[0]);
  return v12;
}

uint64_t sub_25F28543C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = sub_25F30678C();
  return sub_25F2B722C(nullsub_2, v2, a1);
}

uint64_t sub_25F2854D4(_OWORD *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = a1[1];
  v19[0] = *a1;
  v19[1] = v10;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  v16 = *a4;
  v17 = *a3;
  v18 = a2;
  v11 = *(v9 + 200);
  v12 = *(v9 + 208);
  v13 = type metadata accessor for MapFuture.Activity();
  v6[13] = sub_25F203E0C(&v18, v13);
  v6[14] = a5;
  v6[15] = a6;
  *(v6 + 8) = v17;
  *(v6 + 9) = v16;

  v14 = sub_25F2E95EC(v19);
  swift_retain_n();
  Future.observeCompletion(_:)(sub_25F286780, v14);

  Future.observeCancelation(_:)(sub_25F286744, v14);

  return v14;
}

uint64_t sub_25F28560C(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = *v1;
  v4 = sub_25F30490C();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25F30494C();
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v68 = v2[13];
  *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/MapFuture.swift";
  *(&aBlock + 1) = 121;
  LOBYTE(v63) = 2;
  v64 = xmmword_25F311E40;
  v65 = "receiveUnderlyingCompletion(_:)";
  v66 = 31;
  v67 = 2;
  v60 = v9;
  v18 = *(v3 + 208);
  v61 = v18;
  type metadata accessor for MapFuture.Activity();
  v19 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&aBlock, sub_25F286784, v59, v19, MEMORY[0x277D839B0], WitnessTable);

  if (v69 == 1)
  {
    v22 = v56;
    Result.analyze<A>(success:failure:)(sub_25F2867DC, v2, sub_25F2867E8, v2, v10);
    v23 = *(&aBlock + 1);
    v49 = aBlock;
    v24 = *(v11 + 16);
    v24(v17, v22, v10);
    v24(v57, v17, v10);
    v24(v58, v17, v10);
    v25 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = v9;
    *(v26 + 3) = v18;
    *(v26 + 4) = v2;
    v27 = v17;
    v28 = v23;
    v29 = v49;
    (*(v11 + 32))(&v26[v25], v27, v10);
    *&aBlock = v29;
    *(&aBlock + 1) = v28;
    swift_retain_n();
    v30 = v10;
    if (ExecutionLane.isCurrentLane.getter())
    {
      v31 = v2;
      v32 = v57;
      sub_25F2860BC(v31, v57);
      sub_25F2033DC(v29);

      v33 = *(v11 + 8);
      v33(v58, v10);
      return (v33)(v32, v10);
    }

    else
    {
      if (v29)
      {
        v56 = v11;
        if (v29 == 1)
        {
          sub_25F1F54F4();
          v48 = sub_25F305AAC();
          *(&v64 + 1) = sub_25F2867F4;
          v65 = v26;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v63 = sub_25F1D8C38;
          *&v64 = &block_descriptor_15;
          v47 = _Block_copy(&aBlock);

          v34 = v50;
          sub_25F30492C();
          *&aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v35 = v51;
          v36 = v55;
          sub_25F305E5C();
          v37 = v47;
          v38 = v48;
          MEMORY[0x25F8D7C70](0, v34, v35, v47);
          _Block_release(v37);

          (*(v54 + 8))(v35, v36);
          (*(v52 + 8))(v34, v53);
        }

        else
        {
          *(&v64 + 1) = sub_25F2867F4;
          v65 = v26;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v63 = sub_25F1D8C38;
          *&v64 = &block_descriptor_9;
          v48 = _Block_copy(&aBlock);

          sub_25F2033CC(v29);
          v42 = v50;
          sub_25F30492C();
          v68 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v43 = v51;
          v44 = v55;
          sub_25F305E5C();
          v45 = v48;
          MEMORY[0x25F8D7C70](0, v42, v43, v48);
          _Block_release(v45);
          sub_25F2033DC(v29);
          (*(v54 + 8))(v43, v44);
          (*(v52 + 8))(v42, v53);
        }

        v11 = v56;
        v41 = v57;
        v40 = v58;
      }

      else
      {
        v39 = v58;
        sub_25F2860BC(v2, v58);

        v40 = v39;
        v41 = v57;
      }

      v46 = *(v11 + 8);
      v46(v40, v30);
      sub_25F2033DC(v29);
      return (v46)(v41, v30);
    }
  }

  return result;
}

uint64_t sub_25F285E2C(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 208);
  v6 = type metadata accessor for FutureTermination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = a1[1];
  v25 = *a1;
  v26 = v11;
  v27[0] = a1[2];
  *(v27 + 9) = *(a1 + 41);
  v23 = v2[13];
  *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/MapFuture.swift";
  *(&v21 + 1) = 121;
  v22[0] = 2;
  *&v22[8] = xmmword_25F311E50;
  *&v22[24] = "cancel(callsite:)";
  *&v22[32] = 17;
  v22[40] = 2;
  v19 = *(v4 + 200);
  v20 = v5;
  type metadata accessor for MapFuture.Activity();
  v12 = sub_25F30476C();
  type metadata accessor for Future();
  v13 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v21, sub_25F286728, v18, v12, v13, WitnessTable);

  v16 = v24;
  if (v24)
  {
    v17 = v26;
    *v10 = v25;
    v10[1] = v17;
    v10[2] = v27[0];
    *(v10 + 41) = *(v27 + 9);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v10);
    (*(v7 + 8))(v10, v6);
    v21 = v25;
    *v22 = v26;
    *&v22[16] = v27[0];
    *&v22[25] = *(v27 + 9);
    (*(*v16 + 192))(&v21);
  }

  return result;
}

unint64_t sub_25F2860BC(uint64_t *a1, uint64_t a2)
{
  v22 = a2;
  v3 = *a1;
  v4 = *(*a1 + 208);
  v5 = type metadata accessor for FutureTermination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v21 - v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v29 = a1[13];
  *&v23 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/MapFuture.swift";
  *(&v23 + 1) = 121;
  v24 = 2;
  v25 = xmmword_25F311E60;
  v26 = "receiveUnderlyingCompletion(_:)";
  v27 = 31;
  v28 = 2;
  v15 = *(v3 + 200);
  type metadata accessor for MapFuture.Activity();
  v16 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v23, v16, WitnessTable);
  v18 = v30;
  result = sub_25F1AC51C(v30);
  if (v18 != 1)
  {
    v20 = a1[15];
    (a1[14])(v22);
    static FutureTermination.completed(_:)(v14, v4, v9);
    sub_25F2EA104(v9);
    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

void sub_25F286348()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);
  sub_25F2033DC(*(v0 + 128));
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  sub_25F2033DC(v4);
}

uint64_t sub_25F286388()
{
  v0 = Future.deinit();
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);
  sub_25F2033DC(*(v0 + 128));
  v4 = *(v0 + 152);
  sub_25F2033DC(*(v0 + 144));
  return v0;
}

uint64_t sub_25F2863D0()
{
  v0 = sub_25F286388();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_25F286400(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v12 = *a9;
  v11 = a9[1];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v15[0] = v12;
  v15[1] = v11;
  v14[0] = v12;
  v14[1] = v11;
  return sub_25F284B18(&v16, v15, v14, a10, a11);
}

uint64_t sub_25F286460(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = *a9;
  v14 = swift_allocObject();
  v14[2] = *(v13 + 80);
  v14[3] = a12;
  v14[4] = a10;
  v14[5] = a11;
  v17[0] = 0;
  v17[1] = 0;

  v15 = sub_25F284B18(&v19, &v18, v17, sub_25F2869A0, v14);

  sub_25F2033DC(v17[0]);
  return v15;
}

uint64_t sub_25F286540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_25F284CD4(a1);
}

uint64_t sub_25F28660C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS9MapFuture33_07154E19DA1EE4718DB1BBAB4DC353C1LLC8ActivityOyxq__G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F286660(uint64_t *a1, unsigned int a2)
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

uint64_t sub_25F2866B4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *sub_25F286728@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result < 2)
  {
    v2 = 0;
  }

  *result = 1;
  *a2 = v2;
  return result;
}

uint64_t sub_25F286744(__int128 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_25F285E2C(v3);
}

unint64_t sub_25F286784@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  result = *a1;
  if (result >= 2)
  {
    result = sub_25F1AC51C(result);
    *a1 = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id sub_25F2867DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

id sub_25F2867E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

unint64_t sub_25F2867F4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_25F2860BC(v3, v4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2868A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F2868D4@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  return sub_25F1BFDA0(sub_25F286960, v3, a1);
}

uint64_t sub_25F286960(void *a1)
{
  v4 = *(v1 + 40);
  result = (*(v1 + 32))(*(v1 + 48));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t static EventStream.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  sub_25F2BC048(sub_25F286B70, v6, a3);
}

double sub_25F286A60@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v14[7] = a4;
  v14[2] = a5;
  v14[3] = a2;
  v14[4] = a3;
  type metadata accessor for EventStream();
  v8 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25F1C1AC4(sub_25F289504, v14, v8, &type metadata for CancellationToken, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  return CancellationToken.init(callsite:didCancel:)(v15, sub_25F289528, v12, a6);
}

uint64_t sub_25F286B78(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EventStream();
  return EventStream.observe(dsoHandle:file:line:column:function:_:)(&dword_25F1A2000, "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift", 133, 2, 18, 50, "merge(_:)", 9, 2, a2, a3);
}

uint64_t sub_25F286C14(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 2);
      v3 = *(v2 - 1);
      v5 = *v2;
      v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
      v9 = 133;
      v10 = 2;
      v11 = xmmword_25F311F50;
      v12 = "merge(_:)";
      v13 = 9;
      v14 = 2;
      v6 = *(v5 + 152);
      MEMORY[0x28223BE20](result);

      os_unfair_lock_lock(v6 + 19);
      sub_25F1D3F70(&v6[4], &v7);
      os_unfair_lock_unlock(v6 + 19);
      if ((v7 & 1) == 0)
      {
        v4();
      }

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_25F286D90(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a1[1];
  v18[0] = *a1;
  v18[1] = v15;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  (*(a9 + 16))(&v20, a7, a9);
  v19[2] = v20;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a2;
  v16[8] = a3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream();

  sub_25F2BBFFC(v18);
}

uint64_t sub_25F286F00(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  if ((*(v16 + 48))(v15, 1, a7) == 1)
  {
    return (*(v11 + 8))(v15, v10);
  }

  (*(v16 + 32))(v19, v15, a7);
  v22(v19);
  return (*(v16 + 8))(v19, a7);
}

uint64_t sub_25F287100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v19 = a7;
  v20 = a6;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  (*(v12 + 32))(&v16[v15], &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v17 = &v16[(v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a1;
  *(v17 + 1) = a2;
  sub_25F2BC048(v20, v16, v19);
}

uint64_t sub_25F28725C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a1[1];
  v18[0] = *a1;
  v18[1] = v15;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  (*(a9 + 16))(&v20, a7, a9);
  v19[2] = v20;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a5;
  v16[8] = a6;
  swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream();

  sub_25F2BBFFC(v18);
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_25F287464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, char *, void, void))
{
  v5 = *(v4 + 3);
  v6 = (*(*(*(v4 + 2) - 8) + 80) + 40) & ~*(*(*(v4 + 2) - 8) + 80);
  v7 = &v4[(*(*(*(v4 + 2) - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8];
  v9 = *(v4 + 4);
  return a4(a1, a2, a3, &v4[v6], *v7, *(v7 + 1));
}

uint64_t sub_25F2874FC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a2(v13);
  return (*(v9 + 8))(v13, a7);
}

uint64_t EventStreamProtocol.merged<A>(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream();
  sub_25F3064EC();
  swift_allocObject();
  v10 = sub_25F30527C();
  (*(a3 + 16))(a1, a3);
  (*(a4 + 16))(a2, a4);
  sub_25F1F7314();
  static EventStream.merge(_:)(v10, AssociatedTypeWitness, a5);
}

uint64_t EventStreamProtocol.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v13);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v12, a3);
  v17 = (v16 + v15);
  *v17 = a1;
  v17[1] = a2;
  swift_getAssociatedTypeWitness();
  sub_25F2BC048(sub_25F289168, v16, a5);
}

uint64_t sub_25F28788C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[1];
  v17[0] = *a1;
  v17[1] = v14;
  v18[0] = a1[2];
  *(v18 + 9) = *(a1 + 41);
  (*(a8 + 16))(&v19, a7, a8);
  v18[2] = v19;
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a2;
  v15[7] = a3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream();

  sub_25F2BBFFC(v17);
}

uint64_t EventStreamProtocol.replacingNil<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, a3);
  EventStreamProtocol.map<A>(_:)(sub_25F2891D4, v13, a2, a3, a4, a5);
}

uint64_t sub_25F287B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = *(a3 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, a3) != 1)
  {
    return (*(v13 + 32))(a4, v12, a3);
  }

  (*(v13 + 16))(a4, a2, a3);
  result = (v14)(v12, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t EventStreamProtocol<>.switchToLatest()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11, a1);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  (*(v8 + 32))(&v13[v12], v10, a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return sub_25F2BC048(sub_25F289214, v13, a4);
}

double sub_25F287E60@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v14 = a1[1];
  v27[0] = *a1;
  v27[1] = v14;
  v28[0] = a1[2];
  *(v28 + 9) = *(a1 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD56F60, &qword_25F311FB0);
  v15 = swift_allocObject();
  *(v15 + 44) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = 0;
  (*(a5 + 16))(v25, a4, a5);
  v24[2] = v25[0];
  v16 = a1[1];
  v23[0] = *a1;
  v23[1] = v16;
  v24[0] = a1[2];
  *(v24 + 9) = *(a1 + 41);
  v17 = swift_allocObject();
  v18 = a1[1];
  *(v17 + 40) = *a1;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 56) = v18;
  *(v17 + 72) = a1[2];
  *(v17 + 81) = *(a1 + 41);
  *(v17 + 104) = a2;
  *(v17 + 112) = a3;
  *(v17 + 120) = v15;
  swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream();

  sub_25F2BBFFC(v23);

  v19 = v26;
  v22 = v25[1];
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = v22;
  *(v20 + 40) = v19;
  return CancellationToken.init(callsite:didCancel:)(v27, sub_25F289378, v20, a7);
}

uint64_t sub_25F288064(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, os_unfair_lock_s *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 16);
  swift_getAssociatedTypeWitness();
  v10(&v17);
  v11 = a2[1];
  v19 = *a2;
  *v20 = v11;
  *&v20[16] = a2[2];
  *&v20[25] = *(a2 + 41);
  swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream();
  sub_25F2BBFFC(&v19);

  os_unfair_lock_lock(a5 + 11);
  sub_25F289384(&a5[4], &v19);
  os_unfair_lock_unlock(a5 + 11);
  v13 = v19;
  if (v19)
  {
    v14 = *v20;
    *&v19 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
    *(&v19 + 1) = 133;
    v20[0] = 2;
    *&v20[8] = xmmword_25F311F60;
    *&v20[24] = "switchToLatest()";
    *&v20[32] = 16;
    v20[40] = 2;
    v15 = *(v14 + 152);
    MEMORY[0x28223BE20](v12);
    os_unfair_lock_lock(v15 + 19);
    sub_25F1D3F70(&v15[4], &v18);
    os_unfair_lock_unlock(v15 + 19);
    if ((v18 & 1) == 0)
    {
      v13();
    }

    return sub_25F1DF100(v13);
  }

  else
  {
  }
}

uint64_t sub_25F2882B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (*(result + 24))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = *result;
    v7 = *(result + 8);
    v8 = *(result + 16);
    v12 = result;
    sub_25F2893A4(*result);

    result = sub_25F1DF100(v6);
    *v12 = a2;
    v12[1] = a3;
    v12[2] = a4;
  }

  *a5 = v6;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

void sub_25F288370(os_unfair_lock_s *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a1 + 11);
  sub_25F288478(&a1[4]);
  os_unfair_lock_unlock(a1 + 11);
  v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  v10 = 133;
  v11 = 2;
  v12 = xmmword_25F311F70;
  v13 = "switchToLatest()";
  v14 = 16;
  v15 = 2;
  v7 = *(a4 + 152);
  os_unfair_lock_lock(v7 + 19);
  sub_25F1D3F70(&v7[4], v8);
  os_unfair_lock_unlock(v7 + 19);
  if ((v8[0] & 1) == 0)
  {
    a2();
  }
}

void sub_25F288478(uint64_t a1)
{
  v3 = *a1;
  if (!*a1)
  {
LABEL_6:
    *(a1 + 24) = 1;
    return;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  v9 = 133;
  v12 = "switchToLatest()";
  v13 = 16;
  v10 = 2;
  v11 = xmmword_25F311F80;
  v14 = 2;
  v6 = *(v5 + 152);
  MEMORY[0x28223BE20](a1);

  os_unfair_lock_lock(v6 + 19);
  sub_25F1D3F70(&v6[4], &v7);
  if (!v1)
  {
    os_unfair_lock_unlock(v6 + 19);
    if ((v7 & 1) == 0)
    {
      v3();
    }

    sub_25F1DF100(v3);
    goto LABEL_6;
  }

  os_unfair_lock_unlock(v6 + 19);
  __break(1u);
}

uint64_t EventStreamProtocol<>.filterDuplicateEvents()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11, a1);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  (*(v8 + 32))(&v13[v12], v10, a1);
  swift_getAssociatedTypeWitness();
  return sub_25F2BC048(sub_25F2892AC, v13, a4);
}

uint64_t sub_25F288734@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *&v25 = a6;
  v24 = a2;
  v26 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for FilterDuplicateEventsState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = a1[1];
  v31 = *a1;
  v32 = v17;
  v33[0] = a1[2];
  *(v33 + 9) = *(a1 + 41);
  (*(*(AssociatedTypeWitness - 8) + 56))(&v23 - v15, 1, 1, AssociatedTypeWitness);
  v18 = sub_25F203E0C(v16, v12);
  (*(v13 + 8))(v16, v12);
  (*(a5 + 16))(v29, a4, a5);
  v28[2] = v29[0];
  v27[0] = v31;
  v27[1] = v32;
  v28[0] = v33[0];
  *(v28 + 9) = *(v33 + 9);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = v25;
  v19[5] = v18;
  v19[6] = v24;
  v19[7] = a3;
  type metadata accessor for EventStream();

  sub_25F2BBFFC(v27);

  v20 = v30;
  v25 = v29[1];
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 32) = v20;
  CancellationToken.init(callsite:didCancel:)(&v31, sub_25F289334, v21, v26);
}

uint64_t sub_25F288A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a2;
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  *(&v13 + 1) = 133;
  v14 = 2;
  v15 = xmmword_25F311F90;
  v16 = "filterDuplicateEvents()";
  v17 = 23;
  v18 = 2;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  v12[5] = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FilterDuplicateEventsState();
  v9 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  result = SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v13, sub_25F289340, v12, v9, MEMORY[0x277D839B0], WitnessTable);
  if (v20 == 1)
  {
    return a3(a1);
  }

  return result;
}

uint64_t sub_25F288B38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  v52 = a4;
  v41 = a3;
  v54 = a2;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v38 - v7;
  v8 = sub_25F305C1C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v10 = *(v43 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v38 - v12;
  v46 = *(v8 - 8);
  v14 = v46;
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v45 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  v51 = v14;
  v23 = *(v14 + 16);
  v23(&v38 - v21, v55, v8);
  v49 = v5[2];
  v50 = v5 + 2;
  v49(v20, v54, AssociatedTypeWitness);
  v47 = v5[7];
  v48 = v5 + 7;
  v47(v20, 0, 1, AssociatedTypeWitness);
  v44 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  v23(v13, v22, v8);
  v53 = v24;
  v23(&v13[v24], v20, v8);
  v42 = v5;
  v25 = v5[6];
  if (v25(v13, 1, AssociatedTypeWitness) != 1)
  {
    v39 = v22;
    v23(v45, v13, v8);
    v29 = v25(&v13[v53], 1, AssociatedTypeWitness);
    v30 = v42;
    v31 = (v42 + 1);
    v27 = v13;
    if (v29 != 1)
    {
      v32 = &v13[v53];
      v33 = v40;
      (v42[4])(v40, v32, AssociatedTypeWitness);
      v34 = v45;
      LODWORD(v53) = sub_25F304DCC();
      v35 = v30[1];
      v35(v33, AssociatedTypeWitness);
      v26 = *(v46 + 8);
      v26(v20, v8);
      v26(v39, v8);
      v35(v34, AssociatedTypeWitness);
      v26(v27, v8);
      v28 = v53 ^ 1;
      goto LABEL_8;
    }

    v26 = *(v46 + 8);
    v26(v20, v8);
    v26(v39, v8);
    (*v31)(v45, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v26 = *(v46 + 8);
  v26(v20, v8);
  v26(v22, v8);
  v27 = v13;
  if (v25(&v13[v53], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v27, v44);
    v28 = 1;
    goto LABEL_8;
  }

  v26(v13, v8);
  v28 = 0;
LABEL_8:
  v36 = v55;
  v26(v55, v8);
  v49(v36, v54, AssociatedTypeWitness);
  result = (v47)(v36, 0, 1, AssociatedTypeWitness);
  *v52 = v28 & 1;
  return result;
}

void sub_25F289088(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  v7 = 133;
  v8 = 2;
  v9 = xmmword_25F311FA0;
  v10 = "filterDuplicateEvents()";
  v11 = 23;
  v12 = 2;
  v4 = *(a3 + 152);
  os_unfair_lock_lock(v4 + 19);
  sub_25F1D3DD4(&v4[4], &v5);
  os_unfair_lock_unlock(v4 + 19);
  if ((v5 & 1) == 0)
  {
    a1();
  }
}

uint64_t sub_25F289168(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 32) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_25F28788C(a1, a2, a3, v3 + v4, *v5, v5[1], *(v3 + 16), *(v3 + 24));
}

uint64_t sub_25F2891D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_25F287B30(a1, v2 + ((*(*(v2[3] - 8) + 80) + 40) & ~*(*(v2[3] - 8) + 80)), v2[3], a2);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F2892C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, char *))
{
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  return a4(a1, a2, a3, &v4[(*(*(*(v4 + 2) - 8) + 80) + 40) & ~*(*(*(v4 + 2) - 8) + 80)]);
}

uint64_t sub_25F289340@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_25F288B38(a1, v2[5], v2[4], a2);
}

uint64_t sub_25F2893A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_25F289428(uint64_t a1)
{
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = (*(v1 + 32))();
  if (result)
  {
    return v5(a1);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS17CancellationTokenVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F289548(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_25F2895A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F28960C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_25F305C1C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double Timeout.effectiveSeconds.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    if (qword_27FD52858 != -1)
    {
      v2 = *v0;
      swift_once();
      result = v2;
    }

    if (byte_27FD56FF0)
    {
      if (qword_27FD52860 != -1)
      {
        v3 = result;
        swift_once();
        result = v3;
      }

      if (byte_27FD56FF1)
      {
        return result * 20.0;
      }
    }

    else
    {
      return *&qword_27FD56FE8;
    }
  }

  return result;
}

Swift::Double __swiftcall effectiveTimeout(_:)(Swift::Double result)
{
  if (qword_27FD52858 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if ((byte_27FD56FF0 & 1) == 0)
  {
    return *&qword_27FD56FE8;
  }

  if (qword_27FD52860 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (byte_27FD56FF1)
  {
    return result * 20.0;
  }

  return result;
}

double static Timeout.minutes(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2 * 60.0;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_25F28983C()
{
  result = sub_25F289868();
  qword_27FD56FE8 = result;
  byte_27FD56FF0 = v1 & 1;
  return result;
}

uint64_t sub_25F289868()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_25F304A6C();
  if (!*(v2 + 16) || (v3 = sub_25F219234(0x4F454D49545F5655, 0xEA00000000005455), (v4 & 1) == 0))
  {

    return 0;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  LOBYTE(v6) = sub_25F2039A8(v6, v7);
  swift_bridgeObjectRelease_n();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (qword_27FD52910 != -1)
  {
    swift_once();
  }

  v8 = sub_25F30479C();
  __swift_project_value_buffer(v8, qword_27FD57190);
  v9 = sub_25F30477C();
  v10 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = 0;
    _os_log_impl(&dword_25F1A2000, v9, v10, "Using explicit timeout %f", v11, 0xCu);
    MEMORY[0x25F8D9510](v11, -1, -1);
  }

  return 0;
}

uint64_t sub_25F289A5C()
{
  result = sub_25F289B28();
  byte_27FD56FF1 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for Timeout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Timeout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25F289B28()
{
  if (qword_281561A58 != -1)
  {
    swift_once();
  }

  v0 = byte_27FD54198;
  if (byte_27FD54198)
  {
    goto LABEL_7;
  }

  if (qword_281561A60 != -1)
  {
    swift_once();
  }

  if (byte_27FD54199 == 1)
  {
LABEL_7:
    if (qword_27FD52910 != -1)
    {
      swift_once();
    }

    v1 = sub_25F30479C();
    __swift_project_value_buffer(v1, qword_27FD57190);
    v2 = sub_25F30477C();
    v3 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25F1A2000, v2, v3, "Using CI timeout", v4, 2u);
      MEMORY[0x25F8D9510](v4, -1, -1);
    }

    if (v0)
    {
      return 1;
    }

    if (qword_281561A60 != -1)
    {
      swift_once();
    }
  }

  return byte_27FD54199;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.MissingEnvironmentObjectError() + 28);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.MissingEnvironmentObjectError()
{
  result = qword_27FD57000;
  if (!qword_27FD57000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.highValueTitle.getter()
{
  sub_25F305FAC();

  MEMORY[0x25F8D7130](*(v0 + 32), *(v0 + 40));
  MEMORY[0x25F8D7130](10322146, 0xA300000000000000);
  return 0x1000000000000029;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.additionalInfo.getter()
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v0[2], v0[3]);
  MEMORY[0x25F8D7130](0xD00000000000002DLL, 0x800000025F31A2F0);
  v2 = v0[4];
  v1 = v0[5];
  MEMORY[0x25F8D7130](v2, v1);
  MEMORY[0x25F8D7130](0xD00000000000002ALL, 0x800000025F31A320);
  MEMORY[0x25F8D7130](v2, v1);
  MEMORY[0x25F8D7130](0xD000000000000023, 0x800000025F31A350);
  return 0;
}

id sub_25F289EE8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000048, 0x800000025F31A420, 0);
  qword_27FD56FF8 = result;
  return result;
}

uint64_t static CrashReportError.MissingEnvironmentObjectError.asiRegularExpression.getter()
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD56FF8;
  v1 = qword_27FD56FF8;
  return v0;
}

void static CrashReportError.MissingEnvironmentObjectError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56FF8;
  qword_27FD56FF8 = a1;
}

uint64_t (*static CrashReportError.MissingEnvironmentObjectError.asiRegularExpression.modify())()
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F28A124@<X0>(void *a1@<X8>)
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56FF8;
  *a1 = qword_27FD56FF8;

  return v2;
}

void sub_25F28A1B0(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52868;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD56FF8;
  qword_27FD56FF8 = v1;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CrashReportError.MissingEnvironmentObjectError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v10[8] = 1;
  v11 = (a1 + *(type metadata accessor for CrashReport(0) + 20));
  v12 = v11[1];
  *(v10 + 2) = *v11;
  *(v10 + 3) = v12;

  v13 = sub_25F304DDC();

  v14 = sub_25F304DDC();
  v15 = [a2 rangeWithName_];
  v17 = v16;

  v18 = [v13 substringWithRange_];
  v19 = sub_25F304E0C();
  v21 = v20;

  v26[0] = v19;
  v26[1] = v21;
  v22 = sub_25F3050BC();
  v24 = v23;

  *(v10 + 4) = v22;
  *(v10 + 5) = v24;
  sub_25F28A44C(a1, &v10[*(v6 + 28)], type metadata accessor for CrashReport);
  sub_25F28A44C(v10, a3, type metadata accessor for CrashReportError.MissingEnvironmentObjectError);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_25F28A44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F28A4B4()
{
  sub_25F305FAC();

  MEMORY[0x25F8D7130](*(v0 + 32), *(v0 + 40));
  MEMORY[0x25F8D7130](10322146, 0xA300000000000000);
  return 0x1000000000000029;
}

uint64_t ConcurrentInvalidatable.observeInvalidation(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  (*(a4 + 16))(a3, a4);

  sub_25F28A760(a1, a2, a5);
}

uint64_t sub_25F28A638@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(_BYTE *)@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v25 = *(a1 + 64);
  v8 = *(a1 + 16);
  *v22 = *a1;
  *&v22[16] = v8;
  v9 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v9;
  v10 = *v22;
  v11 = HIBYTE(v25);
  if ((v25 & 0x100) != 0)
  {
    *a5 = *v22;
    result = sub_25F1B7174(v22, v20, a3, a4);
  }

  else
  {
    v14 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v14;
    v21 = *(a1 + 64);
    v15 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v15;
    v18 = *&v22[8];
    sub_25F1B7174(v22, v19, a3, a4);
    sub_25F1AF698(v20, a3, a4);
    *v19 = v10;
    *&v19[8] = v18;
    result = a2(v19);
    v17 = *&v19[16];
    v26 = 0;
    *a1 = *v19;
    *(a1 + 16) = v17;
    *(a1 + 65) = 0;
  }

  *(a5 + 8) = v11 & 1;
  return result;
}

uint64_t sub_25F28A760@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v15 = a1;
  v16 = a2;
  v6 = *(*(v3 + 32) + 152);
  os_unfair_lock_lock(v6 + 21);
  sub_25F28D32C(&v6[4], &v13);
  os_unfair_lock_unlock(v6 + 21);
  v7 = v13;
  if (v14 == 1)
  {

    a1(&v13);
    sub_25F1A4678(v7, 1);
    result = sub_25F1A4678(v7, 1);
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v12;
    *(v10 + 24) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v11 = swift_allocObject();
    LOBYTE(v13) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    result = swift_allocObject();
    *(result + 76) = 0;
    *(result + 73) = v13;
    *(v11 + 152) = result;
    *(v11 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    *(v11 + 24) = 130;
    *(v11 + 32) = 2;
    *(v11 + 40) = xmmword_25F312120;
    *(v11 + 56) = "makeCancelationToken(for:)";
    *(v11 + 64) = 26;
    *(v11 + 72) = 2;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    *(v11 + 96) = xmmword_25F3077E0;
    *(v11 + 112) = 2;
    *(v11 + 120) = 0xD000000000000011;
    *(v11 + 128) = 0x800000025F319920;
    *(v11 + 136) = 0x64656C65636E6163;
    *(v11 + 144) = 0xE800000000000000;
    v9 = sub_25F28D358;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  return result;
}

double sub_25F28A980@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*(v2 + 32) + 152);
  os_unfair_lock_lock(v6 + 21);
  sub_25F28D190(&v6[4], &v18);
  os_unfair_lock_unlock(v6 + 21);
  v7 = v18;
  if (v19 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = a1[1];
      swift_getObjectType();

      Actor.verifyIsolated(_:file:line:)();
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v16 = a1[2];
    v17 = a1[3];
    v18 = v7;
    v16(&v18);
    sub_25F1A4678(v7, 1);
    sub_25F1A4678(v7, 1);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = *(v3 + 48);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v13 = swift_allocObject();
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    v14 = swift_allocObject();
    *(v14 + 76) = 0;
    *(v14 + 73) = v20;
    *(v13 + 152) = v14;
    *(v13 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    *(v13 + 24) = 130;
    *(v13 + 32) = 2;
    *(v13 + 40) = xmmword_25F312130;
    *(v13 + 56) = "makeCancelationToken(for:)";
    *(v13 + 64) = 26;
    *(v13 + 72) = 2;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0;
    *&result = 1;
    *(v13 + 96) = xmmword_25F3077E0;
    *(v13 + 112) = 2;
    *(v13 + 120) = 0xD000000000000011;
    *(v13 + 128) = 0x800000025F319920;
    *(v13 + 136) = 0x64656C65636E6163;
    *(v13 + 144) = 0xE800000000000000;
    *a2 = Strong;
    *(a2 + 8) = v10;
    *(a2 + 16) = sub_25F28D1BC;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
  }

  return result;
}

uint64_t sub_25F28AC24@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v4 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 + 1;
  os_unfair_lock_unlock(v4 + 6);
  sub_25F1E6D24(a1, v7);
  result = sub_25F1E4B54(v7, v5);
  *a2 = v5;
  return result;
}

uint64_t sub_25F28ACD4()
{
  v1 = *(*(v0 + 32) + 152);

  os_unfair_lock_lock(v1 + 21);
  sub_25F28D2CC(&v1[4]);
  os_unfair_lock_unlock(v1 + 21);

  v3 = v22;
  if (v22)
  {
    v4 = v23;
    v17 = v24;
    v5 = v25;
    v6 = *(v23 + 16);

    if (v6)
    {
      v7 = 0;
      v8 = v23 + 32;
      while (v7 < *(v4 + 16))
      {
        result = *(v8 + 8 * v7);
        v20 = result;
        if (!*(v3 + 2))
        {
          goto LABEL_22;
        }

        result = sub_25F21FC78(result);
        if ((v9 & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_25F1E6D24(*(v3 + 7) + 32 * result, v21);
        v22 = v20;
        sub_25F1E6CBC(v21, &v23);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          Actor.verifyIsolated(_:file:line:)();
          swift_unknownObjectRelease();
        }

        ++v7;
        v20 = v5;
        (v25)(&v20);
        result = sub_25F1AF698(&v22, &qword_27FD57018, &qword_25F312218);
        if (v6 == v7)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v16 = *(v17 + 16);
      if (!v16)
      {
LABEL_18:
      }

      v10 = 0;
      v11 = (v17 + 64);
      while (v10 < *(v17 + 16))
      {
        v12 = *(v11 - 4);
        v18 = *(v11 - 3);
        v13 = *(v11 - 1);
        v19 = *(v11 - 2);
        v14 = *v11;
        v22 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
        v23 = 130;
        LOBYTE(v24) = 2;
        v25 = xmmword_25F312140;
        v26 = "_invalidate(callsite:trace:)";
        v27 = 28;
        v28 = 2;
        v15 = *(v14 + 152);
        MEMORY[0x28223BE20](result);
        swift_unknownObjectRetain();

        os_unfair_lock_lock(v15 + 19);
        sub_25F1D3F70(&v15[4], &v20);
        os_unfair_lock_unlock(v15 + 19);
        if ((v20 & 1) == 0)
        {
          if (v12)
          {
            swift_getObjectType();
            Actor.verifyIsolated(_:file:line:)();
          }

          v19();
        }

        ++v10;

        result = swift_unknownObjectRelease();
        v11 += 5;
        if (v16 == v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F28B118()
{
  v1 = *(*(v0 + 32) + 152);

  os_unfair_lock_lock(v1 + 21);
  sub_25F28D270(&v1[4]);
  os_unfair_lock_unlock(v1 + 21);

  v3 = v21;
  if (v21)
  {
    v4 = v22;
    v19 = v23;
    v5 = v24;
    v6 = *(v22 + 16);

    if (v6)
    {
      v7 = 0;
      while (v7 < *(v4 + 16))
      {
        if (!*(v3 + 2))
        {
          goto LABEL_18;
        }

        result = sub_25F21FC78(*(v4 + 32 + 8 * v7));
        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }

        v9 = *(v3 + 7) + 16 * result;
        v11 = *v9;
        v10 = *(v9 + 8);
        ++v7;

        v21 = v5;
        v11(&v21);

        if (v6 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:

      v18 = *(v19 + 16);
      if (!v18)
      {
LABEL_14:
      }

      v12 = 0;
      v13 = (v19 + 48);
      while (v12 < *(v19 + 16))
      {
        v14 = *(v13 - 2);
        v15 = *(v13 - 1);
        v16 = *v13;
        v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
        v22 = 130;
        LOBYTE(v23) = 2;
        v24 = xmmword_25F312140;
        v25 = "_invalidate(callsite:trace:)";
        v26 = 28;
        v27 = 2;
        v17 = *(v16 + 152);
        MEMORY[0x28223BE20](result);

        os_unfair_lock_lock(v17 + 19);
        sub_25F1D3DD4(&v17[4], v20);
        os_unfair_lock_unlock(v17 + 19);
        if ((v20[0] & 1) == 0)
        {
          v14();
        }

        ++v12;

        v13 += 3;
        if (v18 == v12)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F28B420@<X0>(uint64_t a1@<X3>, void *a2@<X4>, _OWORD *a3@<X5>, void *a4@<X8>)
{
  *(v17 + 7) = *a3;
  v6 = a2[3];
  v7 = a2[4];
  *(&v17[1] + 7) = a3[1];
  *(&v17[2] + 7) = a3[2];
  v17[3] = *(a3 + 41);
  *&v18 = a2[2];
  *(&v18 + 1) = v6;
  memmove(v19, (v7 + 16), 0x39uLL);
  *(v20 + 9) = v17[0];
  *(&v20[1] + 9) = v17[1];
  *(&v20[2] + 9) = v17[2];
  *(&v20[3] + 9) = v17[3];
  sub_25F1DF180(&v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54D58, &qword_25F30D4B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_25F3077D0;
  v9 = v19[0];
  inited[2] = v18;
  v11 = v19[2];
  v10 = v20[0];
  v12 = v19[1];
  inited[3] = v9;
  inited[4] = v12;
  v13 = *(&v20[3] + 9);
  v15 = v20[2];
  v14 = v20[3];
  inited[7] = v20[1];
  inited[8] = v15;
  inited[9] = v14;
  *(inited + 153) = v13;
  inited[5] = v11;
  inited[6] = v10;

  result = sub_25F1BA3D4(inited);
  *a4 = a1;
  return result;
}

uint64_t sub_25F28B540(__int128 *a1, uint64_t *a2)
{
  v8 = *a1;
  v9 = a1[1];
  *v10 = a1[2];
  *&v10[9] = *(a1 + 41);
  v3 = *a2;
  v4 = *v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    Actor.verifyIsolated(_:file:line:)();
    swift_unknownObjectRelease();
  }

  return sub_25F28ACD4();
}

uint64_t IsolatedInvalidatable.invalidate(callsite:trace:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a1;
  v13 = a1[1];
  *v14 = a1[2];
  *&v14[9] = *(a1 + 41);
  v6 = *a2;
  v7 = *(a4 + 16);
  v8 = v7(a3, a4);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 48);

    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    Actor.verifyIsolated(_:file:line:)();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v7(a3, a4);
  sub_25F28ACD4();
}

uint64_t sub_25F28B7A8(__int128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v7 = a1[1];
  *v8 = a1[2];
  *&v8[9] = *(a1 + 41);
  v3 = *a2;
  v4 = *v2;
  return sub_25F28B118();
}

uint64_t ConcurrentInvalidatable.invalidate(callsite:trace:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  *v8 = a1[2];
  *&v8[9] = *(a1 + 41);
  v4 = *a2;
  (*(a4 + 16))(a3, a4);
  sub_25F28B118();
}

uint64_t AnyInvalidatable.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v11 = *a9;
  v14[0] = a1;
  v14[1] = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v13 = v11;
  return (*(a11 + 8))(v14, &v13, a10, a11);
}

uint64_t IsolatedInvalidatable.onInvalidation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = IsolatedInvalidatable.observeInvalidation(_:)(a1, a2, a3, a4, &v8);
  if (v9)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v4, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConcurrentInvalidatable.onInvalidation(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ConcurrentInvalidatable.observeInvalidation(_:)(a1, a2, a3, a4, &v8);
  if (v8)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v4, a3, a4);
  }

  return result;
}

unint64_t sub_25F28B9E8(__int128 *a1)
{
  sub_25F305FAC();

  v5 = *a1;
  v6 = a1[1];
  *v7 = a1[2];
  *&v7[9] = *(a1 + 41);
  v2 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v2);

  MEMORY[0x25F8D7130](0x3A6563617274202CLL, 0xE900000000000020);
  v3 = InvalidationTrace.description.getter();
  MEMORY[0x25F8D7130](v3);

  return 0xD000000000000017;
}

uint64_t IsolatedInvalidatable.observeInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v10[1] = *(v8 + 48);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v10[2] = a1;
  v10[3] = a2;

  sub_25F28A980(v10, a5);

  return sub_25F1E6CF4(v10);
}

uint64_t IsolatedInvalidatable.invalidationTrace(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  swift_getObjectType();
  v8 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F28BC2C, v8, v7);
}

uint64_t sub_25F28BC2C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_25F28BD3C;
  v7 = *(v0 + 16);

  return MEMORY[0x2822007B8](v7, v2, v3, 0xD000000000000016, 0x800000025F31A4B0, sub_25F28BFFC, v4, &type metadata for InvalidationTrace);
}

uint64_t sub_25F28BD3C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25F28BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)();
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  IsolatedInvalidatable.onInvalidation(_:)(sub_25F28D114, v15, a5, a6);
}

uint64_t IsolatedInvalidatable.invalidation(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_25F28C0D4;

  return IsolatedInvalidatable.invalidationTrace(on:)((v4 + 2), a1, a2, a3, a4);
}

uint64_t sub_25F28C0D4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v9 = *v0;

  v5 = *(v1 + 16);

  swift_getObjectType();
  v7 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F222AE4, v7, v6);
}

uint64_t sub_25F28C278(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 16))(a3, a5);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a2[1];
  *(v12 + 24) = *a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = a2[2];
  *(v12 + 65) = *(a2 + 41);

  IsolatedInvalidatable.observeInvalidation(_:)(sub_25F28D04C, v12, a4, a6, &v16);

  if (v17)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v15, a3, a5);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t IsolatedInvalidatable.isInvalidated.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*((*(a2 + 16))() + 32) + 152);
  os_unfair_lock_lock((v2 + 84));
  v3 = *(v2 + 48);
  v7[1] = *(v2 + 32);
  v7[2] = v3;
  v7[3] = *(v2 + 64);
  v8 = *(v2 + 80);
  v7[0] = *(v2 + 16);
  sub_25F1B7174(v7, v6, &qword_27FD538D8, &qword_25F312160);
  os_unfair_lock_unlock((v2 + 84));

  v4 = HIBYTE(v8);
  sub_25F1AF698(v7, &qword_27FD538D8, &qword_25F312160);
  return v4 & 1;
}

uint64_t ConcurrentInvalidatable.invalidationTrace.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25F28C550, 0, 0);
}

uint64_t sub_25F28C550()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_25F28C650;
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000011, 0x800000025F31A4D0, sub_25F28C8C0, v2, &type metadata for InvalidationTrace);
}

uint64_t sub_25F28C650()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25F28C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  ConcurrentInvalidatable.onInvalidation(_:)(sub_25F28D364, v13, a3, a4);
}

uint64_t sub_25F28C8CC(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  return sub_25F30541C();
}

uint64_t ConcurrentInvalidatable.invalidation.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_25F28C9CC;

  return ConcurrentInvalidatable.invalidationTrace.getter(v2 + 16, a1, a2);
}

uint64_t sub_25F28C9CC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_25F28D36C, 0, 0);
}

uint64_t sub_25F28CB24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  return a14(a9, v15, a10, a11, a12, a13);
}

uint64_t sub_25F28CB80(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 16))(a3, a5);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a2[1];
  *(v12 + 24) = *a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = a2[2];
  *(v12 + 65) = *(a2 + 41);

  ConcurrentInvalidatable.observeInvalidation(_:)(sub_25F28D018, v12, a4, a6, &v16);

  if (v16)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v6, a3, a5);
  }
}

uint64_t sub_25F28CD38(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = result;
  v12 = *(a9 + 16);
  if (v12)
  {
    v19 = (a9 + 32);
    do
    {
      v26 = v12;
      v20 = v19[3];
      v21 = v19[4];
      v22 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v29 = v27;
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      v36 = a8;
      a12(v22, &v29, a10, v20, a11, v21);
      v23 = v19[3];
      v25 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v23);
      v29 = v27;
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      v36 = a8;
      result = a12(v24, &v29, v23, a10, v25, a11);
      v19 += 5;
      v12 = v26 - 1;
    }

    while (v26 != 1);
  }

  return result;
}

uint64_t sub_25F28CEA0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a3, v6);
  }

  return result;
}

Swift::Bool __swiftcall ConcurrentInvalidatable.peekIsInvalidated()()
{
  v1 = *(*((*(v0 + 16))() + 32) + 152);
  os_unfair_lock_lock((v1 + 84));
  v2 = *(v1 + 48);
  v6[1] = *(v1 + 32);
  v6[2] = v2;
  v6[3] = *(v1 + 64);
  v7 = *(v1 + 80);
  v6[0] = *(v1 + 16);
  sub_25F1B7174(v6, v5, &qword_27FD538C0, &qword_25F309868);
  os_unfair_lock_unlock((v1 + 84));

  v3 = HIBYTE(v7);
  sub_25F1AF698(v6, &qword_27FD538C0, &qword_25F309868);
  return v3 & 1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F28D1BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F1E609C();
}

uint64_t sub_25F28D1C4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v5 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v6 = *(v5 + 2);
  *(v5 + 2) = v6 + 1;
  os_unfair_lock_unlock(v5 + 6);

  result = sub_25F1E4B14(v3, v4, v6);
  *a2 = v6;
  return result;
}

uint64_t sub_25F28D29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  return sub_25F28B420(*(v2 + 16), **(v2 + 24), *(v2 + 32), a2);
}

uint64_t sub_25F28D358()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F1E6724();
}

uint64_t static AsyncStream.empty.getter(uint64_t a1)
{
  v2 = sub_25F3054AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778]);
  return sub_25F30553C();
}

uint64_t sub_25F28D46C()
{
  v1 = *(v0 + 16);
  sub_25F3054DC();
  return sub_25F3054CC();
}

uint64_t AsyncStream.friendlyCompactMap<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v22 = a1;
  v23 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v14 = sub_25F3064CC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  sub_25F3064BC();
  v21 = swift_allocBox();
  (*(v10 + 16))(v13, v6, a3);
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  v16[2] = v17;
  v16[3] = a4;
  v16[4] = v22;
  v16[5] = a2;

  sub_25F3055FC();

  sub_25F30649C();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = v21;
  return sub_25F30551C();
}

uint64_t sub_25F28D6D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F1B51E0;

  return sub_25F28E190(a1, a2, v9);
}

uint64_t sub_25F28D7B4(uint64_t a1)
{
  v1[5] = a1;
  sub_25F30552C();
  swift_getWitnessTable();
  v1[6] = sub_25F3064BC();
  v1[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25F28D878, 0, 0);
}

uint64_t sub_25F28D878()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D859C8] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_25F28D928;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x282200780](v6, v4);
}

uint64_t sub_25F28D928()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F28E194, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25F28DA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1B51E0;

  return sub_25F28D7B4(a1);
}

uint64_t AsyncStream.friendlyMap<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v22 = a1;
  v23 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v14 = sub_25F3061DC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  sub_25F3061CC();
  v21 = swift_allocBox();
  (*(v10 + 16))(v13, v6, a3);
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  v16[2] = v17;
  v16[3] = a4;
  v16[4] = v22;
  v16[5] = a2;

  sub_25F30560C();

  sub_25F3061AC();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = v21;
  return sub_25F30551C();
}

uint64_t sub_25F28DD4C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F1B51E0;

  return sub_25F28E190(a1, a2, v9);
}

uint64_t sub_25F28DE28(uint64_t a1)
{
  v1[5] = a1;
  sub_25F30552C();
  swift_getWitnessTable();
  v1[6] = sub_25F3061CC();
  v1[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25F28DEEC, 0, 0);
}

uint64_t sub_25F28DEEC()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D85970] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_25F28DF9C;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822006C8](v6, v4);
}

uint64_t sub_25F28DF9C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F28E0D4, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25F28E0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F28DE28(a1);
}

uint64_t Sequence<>.identified()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return IdentifiedSet.init<A>(_:)(v11, AssociatedTypeWitness, a1, a3, a2, a4);
}

uint64_t RandomAccessCollection<>.binarySearchForFirstElementIndexLessThanOrEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a4;
  v5 = *(*(*(a3 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - v9;
  if (sub_25F3057EC())
  {
    return 0;
  }

  sub_25F3057AC();
  result = sub_25F3057FC();
  v12 = v24[0] - 1;
  if (__OFSUB__(v24[0], 1))
  {
    goto LABEL_20;
  }

  v13 = v25;
  if (v12 >= v25)
  {
    v20 = 0;
    v21 = a2;
    v14 = (v7 + 16);
    v15 = (v7 + 8);
    v19 = 1;
    while (!__OFSUB__(v12, v13))
    {
      v16 = v13 + (v12 - v13) / 2;
      if (__OFADD__(v13, (v12 - v13) / 2))
      {
        goto LABEL_17;
      }

      v24[4] = v13 + (v12 - v13) / 2;
      v17 = sub_25F3058FC();
      (*v14)(v10);
      (v17)(v24, 0);
      LOBYTE(v17) = sub_25F304CBC();
      result = (*v15)(v10, AssociatedTypeWitness);
      if (v17)
      {
        v12 = v16 - 1;
        if (__OFSUB__(v16, 1))
        {
          goto LABEL_19;
        }

        if (v12 < v13)
        {
          return v20;
        }
      }

      else
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_18;
        }

        v19 = 0;
        v20 = v16;
        if (v12 < v13)
        {
          return v20;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v20 = 0;
  v19 = 1;
  return v20;
}

uint64_t RandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v19[-v7];
  sub_25F3057FC();
  swift_getAssociatedConformanceWitness();
  v9 = sub_25F304CCC();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_25F3058FC();
    v12 = v11;
    v13 = *(v3 + 8);
    v14 = swift_getAssociatedTypeWitness();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a2, v12, v14);
    v10(v19, 0);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v17 = *(v3 + 8);
    v18 = swift_getAssociatedTypeWitness();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t Collection<>.uniqued()(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  return sub_25F30570C();
}

double Collection<>.orderedUniqued()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, a1);
  v13 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OrderedSet.init<A>(_:)(v11, AssociatedTypeWitness, a1, a3, a4);
}

double Sequence<>.orderedIdentified()@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OrderedIdentifiedSet.init<A>(_:)(v7, AssociatedTypeWitness, a1, a2);
}

uint64_t sub_25F28EAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_25F1B4740(a1, v23 - v11);
  v13 = sub_25F30546C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25F1B47B0(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_25F3053EC();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25F30545C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_25F28EC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_25F305C1C();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t Collection.only.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (sub_25F3057BC() == 1)
  {

    return sub_25F30583C();
  }

  else
  {
    v5 = *(a1 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = *(*(AssociatedTypeWitness - 8) + 56);

    return v7(a2, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t LazySequence<>.compacted<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = *(a2 + 16);
  v7[3] = a3;
  v7[4] = a4;
  swift_getWitnessTable();
  sub_25F30637C();
}

uint64_t Collection<>.hasPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 8);
  v11 = *(a5 + 8);
  v28 = a2;
  v29 = a3;
  v24[1] = v10;
  v25 = a6;
  v30 = v10;
  v31 = v11;
  v24[0] = v11;
  v12 = sub_25F30600C();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  v16 = sub_25F3057BC();
  if (sub_25F3057BC() >= v16)
  {
    v18 = sub_25F30663C();
    v19 = MEMORY[0x28223BE20](v18);
    v24[-6] = a2;
    v24[-5] = a3;
    v24[-4] = a4;
    v24[-3] = a5;
    v24[-2] = v25;
    MEMORY[0x28223BE20](v19);
    v24[-8] = a2;
    v24[-7] = a3;
    v24[-6] = a4;
    v24[-5] = a5;
    v24[-4] = v20;
    v24[-3] = sub_25F28F124;
    v24[-2] = v21;
    v22 = v27;
    swift_getWitnessTable();
    v17 = sub_25F30510C();
    (*(v26 + 8))(v15, v22);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_25F28F0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_25F28F124()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = *(v0[4] + 8);
  swift_getAssociatedTypeWitness();
  return sub_25F304DCC() & 1;
}

uint64_t sub_25F28F194(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v6 = v1[7];
  v5 = v1[8];
  v7 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t Collection.asyncChildTaskMap<A>(width:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_25F28F248, 0, 0);
}

uint64_t sub_25F28F248()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v10 = *(v0 + 72);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v0 + 96) = sub_25F30539C();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v2;
  *(v5 + 24) = v10;
  *(v5 + 40) = v1;
  *(v5 + 48) = v6;
  *(v5 + 64) = v3;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_25F28F3A0;

  return MEMORY[0x282200740](v0 + 16, TupleTypeMetadata2);
}

uint64_t sub_25F28F3A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_25F28F67C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_25F28F4BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F28F4BC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v0[3] = v0[2];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  swift_getWitnessTable();
  v7 = sub_25F3051AC();

  v0[4] = v7;
  v8 = swift_task_alloc();
  *v8 = v5;
  v8[1] = v3;
  v8[2] = v4;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_25F1C1AC4(sub_25F29093C, v10, v2, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_25F28F67C()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_25F28F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v23;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[12] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[13] = v12;
  v13 = *(v12 + 64) + 15;
  v8[14] = swift_task_alloc();
  v14 = sub_25F305C1C();
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v16 = *(v15 + 64) + 15;
  v8[17] = swift_task_alloc();
  v17 = *(a8 - 8);
  v8[18] = v17;
  v18 = *(v17 + 64) + 15;
  v8[19] = swift_task_alloc();
  v19 = *(a7 - 8);
  v8[20] = v19;
  v20 = *(v19 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F28F8E4, 0, 0);
}

uint64_t sub_25F28F8E4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = 0;
  v8 = *(v3 + 8);
  swift_getAssociatedTypeWitness();
  v9 = swift_allocBox();
  v0[23] = v9;
  (*(v2 + 16))(v1, v6, v4);
  v10 = sub_25F3050DC();
  if (v5 < 0)
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v14 = 0;
    do
    {
      if (v14 == v0[8])
      {
        break;
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      v10 = sub_25F290080(v9, v7, v0[4], v0[6], v0[7], v0[9], v0[10], v0[11]);
      ++v14;
    }

    while ((v10 & 1) != 0);
    v15 = v0[12];
    v0[2] = sub_25F3052DC();
    v16 = v0[12];
    v17 = *(MEMORY[0x277D85818] + 4);
    v18 = swift_task_alloc();
    v0[24] = v18;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v13 = sub_25F3055DC();
    *v18 = v0;
    v18[1] = sub_25F28FAC4;
    v10 = v0[17];
    v19 = v0[4];
    v11 = 0;
    v12 = 0;
  }

  return MEMORY[0x2822004D0](v10, v11, v12, v13);
}

uint64_t sub_25F28FAC4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_25F28FED0;
  }

  else
  {
    v3 = sub_25F28FBD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F28FBD8()
{
  v1 = v0[17];
  v2 = v0[12];
  if ((*(v0[13] + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    v6 = v0[19];
    v7 = v0[14];
    v8 = v0[3];
    (*(v0[16] + 8))(v1, v0[15]);

    *v8 = v0[2];

    v9 = v0[1];
LABEL_5:

    return v9();
  }

  v10 = v0[25];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[14];
  v14 = v0[10];
  v15 = *v1;
  (*(v12 + 32))(v11, &v1[*(v2 + 48)], v14);
  v16 = *(v2 + 48);
  *v13 = v15;
  (*(v12 + 16))(&v13[v16], v11, v14);
  sub_25F30539C();
  sub_25F30533C();
  sub_25F3055AC();
  if (v10)
  {
    (*(v0[18] + 8))(v0[19], v0[10]);
    v17 = v0[22];
    v18 = v0[23];
    v19 = v0[21];
    v20 = v0[19];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[2];

    v9 = v0[1];
    goto LABEL_5;
  }

  v26 = v0[18];
  v25 = v0[19];
  v27 = v0[10];
  sub_25F290080(v0[23], v0[22], v0[4], v0[6], v0[7], v0[9], v27, v0[11]);
  (*(v26 + 8))(v25, v27);
  v28 = v0[12];
  v29 = *(MEMORY[0x277D85818] + 4);
  v30 = swift_task_alloc();
  v0[24] = v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v31 = sub_25F3055DC();
  *v30 = v0;
  v30[1] = sub_25F28FAC4;
  v32 = v0[17];
  v33 = v0[4];

  return MEMORY[0x2822004D0](v32, 0, 0, v31);
}

uint64_t sub_25F28FED0()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[2];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F28FF90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F1B51E0;

  return sub_25F28F6E0(a1, a2, v8, v10, v11, v12, v6, v7);
}

uint64_t sub_25F290080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a5;
  v49 = a7;
  v46 = a4;
  v50 = a3;
  v51 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v42[-v12];
  v47 = a8;
  v13 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_25F305C1C();
  v15 = *(v44 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v44);
  v19 = &v42[-v18];
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v45 = &v42[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v52 = &v42[-v23];
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  swift_endAccess();
  v24 = (*(v20 + 48))(v19, 1, AssociatedTypeWitness);
  v25 = v24;
  if (v24 == 1)
  {
    (*(v15 + 8))(v19, v44);
    return v25 != 1;
  }

  v43 = v24;
  v44 = *(v20 + 32);
  v26 = v52;
  (v44)(v52, v19, AssociatedTypeWitness);
  v27 = sub_25F30546C();
  (*(*(v27 - 8) + 56))(v53, 1, 1, v27);
  v28 = v51;
  swift_beginAccess();
  v29 = *(v28 + 16);
  v30 = v45;
  (*(v20 + 16))(v45, v26, AssociatedTypeWitness);
  v31 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v33 = v49;
  v32[4] = a6;
  v32[5] = v33;
  v34 = v46;
  v32[6] = v47;
  v32[7] = v29;
  v35 = v48;
  v32[8] = v34;
  v32[9] = v35;
  (v44)(v32 + v31, v30, AssociatedTypeWitness);

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v36 = sub_25F3055DC();
  v37 = v53;
  sub_25F28EAB4(v53, &unk_25F3122B0, v32, v36);
  sub_25F1B47B0(v37);
  (*(v20 + 8))(v52, AssociatedTypeWitness);
  result = swift_beginAccess();
  v39 = *(v28 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v51 + 16) = v41;
    v25 = v43;
    return v25 != 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F290500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x2822009F8](sub_25F290530, 0, 0);
}

uint64_t sub_25F290530()
{
  sub_25F3055AC();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  *v4 = v2;
  v11 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_25F2906A4;
  v9 = v0[5];
  v8 = v0[6];

  return v11(&v4[v5], v8);
}

uint64_t sub_25F2906A4()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F290798(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x277D84DE8];
  v4 = *(*a2 + *MEMORY[0x277D84DE8]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  (*(v5 + 16))(v14 - v10);
  v12 = *(v4 + 48);
  *v9 = *v11;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v9[v12], &v11[v12]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_25F29093C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25F290798(a1, *(v1 + 32));
}

uint64_t sub_25F290960(uint64_t a1)
{
  v3 = v1[4];
  v14 = v1[5];
  v4 = *(v1[6] + 8);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25F1AFDB0;

  return sub_25F290500(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t OS_os_log.logLargeString(_:publicPreamble:linePrefix:type:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6, os_log_type_t a7)
{
  v8 = v7;
  result = os_log_type_enabled(v8, a7);
  if (!result)
  {
    return result;
  }

  v16 = a1();
  v18 = v17;
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v19 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v20 = v19 + 2;
  if (__OFADD__(v19, 2))
  {
    goto LABEL_106;
  }

LABEL_7:
  a2 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x1000000000000000) != 0)
  {
LABEL_107:
    result = sub_25F304FAC();
    v21 = __OFADD__(v20, result);
    v22 = v20 + result;
    if (!v21)
    {
      goto LABEL_12;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v18) & 0xF;
  }

  else
  {
    result = v16 & 0xFFFFFFFFFFFFLL;
  }

  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
    goto LABEL_109;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v23 = MEMORY[0x277D837D0];
  if (v22 >= 1021)
  {
    v80 = a2;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25F3077D0;
    *(v24 + 56) = v23;
    v25 = sub_25F1F7190();
    *(v24 + 64) = v25;
    *(v24 + 32) = a3;
    *(v24 + 40) = a4;

    sub_25F3046FC();

    if (a6)
    {

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      v27 = a5;
      v26 = a6;
    }

    else
    {
      v27 = 0;
      v26 = 0xE000000000000000;
    }

    a3 = sub_25F304F2C();
    v75 = v26;

    v30 = 1020 - a3;
    if (!__OFSUB__(1020, a3))
    {
      a5 = 990 - a3;
      if (!__OFSUB__(v30, 30))
      {
        if ((v18 & 0x1000000000000000) != 0)
        {
          result = sub_25F304FAC();
          if (!a5)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((v18 & 0x2000000000000000) == 0)
          {
            result = v16 & 0xFFFFFFFFFFFFLL;
            if (v30 == 30)
            {
              goto LABEL_34;
            }

            goto LABEL_25;
          }

          result = v80;
          if (v30 == 30)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

LABEL_25:
        if (result == 0x8000000000000000 && a5 == -1)
        {
          goto LABEL_113;
        }

        v31 = result / a5;
        if (!(result % a5) || (v21 = __OFADD__(v31, 1), ++v31, !v21))
        {
          v73 = v31;
          v74 = v27;
          if ((v18 & 0x1000000000000000) != 0)
          {
            a2 = sub_25F304FAC();
          }

          else
          {
            if ((v18 & 0x2000000000000000) != 0)
            {
LABEL_35:
              a2 = v80;
              goto LABEL_36;
            }

            a2 = v16 & 0xFFFFFFFFFFFFLL;
          }

LABEL_36:
          v32 = a2 >= 0;
          if (a5 > 0)
          {
            v32 = a2 < 1;
          }

          if (v32)
          {
LABEL_39:

            goto LABEL_40;
          }

          v33 = 0;
          v34 = 0;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v35 = v80;
          }

          else
          {
            v35 = v16 & 0xFFFFFFFFFFFFLL;
          }

          v79 = (v16 & 0x800000000000000uLL) >> 59;
          if ((v16 & 0x800000000000000) != 0)
          {
            v36 = (v35 << 16) | 7;
          }

          else
          {
            v36 = (v35 << 16) | 0xB;
          }

          v77 = (v35 << 16) | 7;
          v78 = v36;
          v76 = 990 - a3;
          v81 = v35;
          v72 = a2;
          while (1)
          {
            if (__OFADD__(v34, a5))
            {
              a6 = ((v34 + a5) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              a6 = v34 + a5;
            }

            if (__OFADD__(v33, 1))
            {
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              v71 = sub_25F304FAC();
              v20 = v71 + 2;
              if (!__OFADD__(v71, 2))
              {
                goto LABEL_7;
              }

LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            if ((v18 & 0x1000000000000000) != 0)
            {
              v45 = sub_25F304FCC();
              if (v46)
              {
                goto LABEL_39;
              }

              a4 = v45;
              v44 = v78;
              v43 = v79;
              v35 = v81;
            }

            else
            {
              if ((v34 & 0x8000000000000000) != 0)
              {
                if (!v35)
                {
                  goto LABEL_39;
                }

                __break(1u);
                goto LABEL_98;
              }

              if (v35 < v34)
              {
                goto LABEL_39;
              }

              a4 = (v34 << 16) | 4;
              v43 = 1;
              v44 = v77;
            }

            a3 = a4 & 0xC;
            v47 = a4;
            if (a3 == 4 << v43)
            {
              v51 = v44;
              v47 = sub_25F2925C8(a4, v16, v18);
              v35 = v81;
              v44 = v51;
              a5 = v76;
            }

            if ((v44 & 0xC) == 4 << (((v18 & 0x1000000000000000) == 0) | v79))
            {
              v52 = v47;
              v53 = sub_25F2925C8(v44, v16, v18);
              v35 = v81;
              v44 = v53;
              v47 = v52;
              a5 = v76;
              if ((v18 & 0x1000000000000000) == 0)
              {
LABEL_68:
                v48 = (v44 >> 16) - (v47 >> 16);
                v49 = 1;
                v50 = v77;
                goto LABEL_73;
              }
            }

            else if ((v18 & 0x1000000000000000) == 0)
            {
              goto LABEL_68;
            }

            if (v35 < v47 >> 16)
            {
              goto LABEL_99;
            }

            if (v35 < v44 >> 16)
            {
              goto LABEL_100;
            }

            v48 = sub_25F304FEC();
            v50 = v78;
            v49 = v79;
LABEL_73:
            if (v48 >= a5)
            {
              v54 = a5;
            }

            else
            {
              v54 = v48;
            }

            v55 = a4;
            if (a3 == 4 << v49)
            {
              a3 = v54;
              a5 = v50;
              v55 = sub_25F2925C8(a4, v16, v18);
              v54 = a3;
              if ((v18 & 0x1000000000000000) != 0)
              {
LABEL_89:
                v59 = sub_25F304FCC();
                if (v60)
                {
                  goto LABEL_39;
                }

                a3 = v59;
                goto LABEL_91;
              }
            }

            else if ((v18 & 0x1000000000000000) != 0)
            {
              goto LABEL_89;
            }

            v56 = v55 >> 16;
            v57 = (v55 >> 16) + v54;
            if (__OFADD__(v55 >> 16, v54))
            {
              goto LABEL_101;
            }

            if (v54 < 0)
            {
              v58 = v81;
              if (v56 >= v81 && v57 < v81)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v58 = v81;
              if (v81 >= v56 && v81 < v57)
              {
                goto LABEL_39;
              }
            }

            if (v57 < 0)
            {
              goto LABEL_102;
            }

            if (v58 < v57)
            {
              goto LABEL_103;
            }

            a3 = (v57 << 16) | 4;
LABEL_91:
            v61 = sub_25F304F1C();
            if ((v62 & 1) == 0)
            {
              a4 = v61;
              v63 = sub_25F304F1C();
              if ((v64 & 1) == 0)
              {
                v65 = v63;
                v66 = v25;
                v67 = v16;
                a3 = swift_allocObject();
                *(a3 + 16) = xmmword_25F30B760;
                v68 = MEMORY[0x277D837D0];
                *(a3 + 56) = MEMORY[0x277D837D0];
                *(a3 + 64) = v66;
                *(a3 + 32) = v74;
                *(a3 + 40) = v75;
                v69 = MEMORY[0x277D83B88];
                *(a3 + 96) = MEMORY[0x277D83B88];
                v70 = MEMORY[0x277D83C10];
                *(a3 + 72) = v33 + 1;
                *(a3 + 136) = v69;
                *(a3 + 144) = v70;
                *(a3 + 104) = v70;
                *(a3 + 112) = v73;
                if (v65 >> 14 < a4 >> 14)
                {
                  __break(1u);
                  goto LABEL_39;
                }

                v37 = sub_25F3050CC();
                a4 = v38;
                v39 = MEMORY[0x25F8D7070](v37);
                v41 = v40;

                *(a3 + 176) = v68;
                *(a3 + 184) = v66;
                v16 = v67;
                *(a3 + 152) = v39;
                *(a3 + 160) = v41;
                sub_25F3046FC();

                v25 = v66;
                a2 = v72;
              }
            }

            v42 = a2 >= a6;
            a5 = v76;
            if (v76 > 0)
            {
              v42 = a6 >= a2;
            }

            ++v33;
            v34 = a6;
            v35 = v81;
            if (v42)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        return result;
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25F3081F0;
  *(v28 + 56) = v23;
  v29 = sub_25F1F7190();
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  *(v28 + 96) = v23;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 2618;
  *(v28 + 80) = 0xE200000000000000;
  *(v28 + 136) = v23;
  *(v28 + 144) = v29;
  *(v28 + 112) = v16;
  *(v28 + 120) = v18;

  sub_25F3046FC();
LABEL_40:
}

uint64_t Optional.log.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v6, v9, v1);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_25F30653C();
  v11 = v13[0];
  (*(v2 + 8))(v6, v1);
  return v11;
}

uint64_t static Logging.describe<A>(ref:)(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_25F3081E0;
    swift_unknownObjectRetain();
    v2 = sub_25F30685C();
    v4 = v3;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 64) = sub_25F1F7190();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    v5 = sub_25F304DBC();
    v6 = MEMORY[0x277D83C10];
    *(v1 + 96) = MEMORY[0x277D83B88];
    *(v1 + 104) = v6;
    *(v1 + 72) = v5;
    v7 = sub_25F304E3C();
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25F3077D0;
    v10 = sub_25F30685C();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_25F1F7190();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;

    return sub_25F304E3C();
  }
}

uint64_t static Logging.describe<A>(sequence:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v28 - v6;
  v8 = sub_25F305C1C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v29 = *(v17 - 8);
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v36 = 91;
  v37 = 0xE100000000000000;
  (*(v13 + 16))(v16, v33, a2);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v22 = v4;
  v23 = *(v4 + 48);
  if (v23(v12, 1, AssociatedTypeWitness) != 1)
  {
    v24 = *(v22 + 32);
    v32 = AssociatedConformanceWitness;
    v33 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v24;
    do
    {
      v31(v7, v12, AssociatedTypeWitness);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25F30653C();
      v25._countAndFlagsBits = 538976288;
      v25._object = 0xE400000000000000;
      v26 = String.prefixingEachLine(with:startingOnLine:)(v25, 0);

      v34 = 10;
      v35 = 0xE100000000000000;
      MEMORY[0x25F8D7130](v26._countAndFlagsBits, v26._object);

      MEMORY[0x25F8D7130](44, 0xE100000000000000);
      MEMORY[0x25F8D7130](v34, v35);

      (*v30)(v7, AssociatedTypeWitness);
      sub_25F305CDC();
    }

    while (v23(v12, 1, AssociatedTypeWitness) != 1);
  }

  (*(v29 + 8))(v20, v17);
  v34 = v36;
  v35 = v37;

  MEMORY[0x25F8D7130](23818, 0xE200000000000000);

  return v34;
}

uint64_t sub_25F291D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25F292674();
  result = sub_25F305BEC();
  *a4 = result;
  return result;
}

id sub_25F291DEC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_25F2922EC()
{
  v0 = sub_25F30479C();
  __swift_allocate_value_buffer(v0, qword_27FD571D8);
  __swift_project_value_buffer(v0, qword_27FD571D8);
  if (qword_27FD528A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FD57050;
  return sub_25F3047AC();
}

uint64_t sub_25F2923F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25F30479C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25F30478C();
}

uint64_t sub_25F29248C()
{
  v0 = sub_25F30479C();
  __swift_allocate_value_buffer(v0, qword_27FD57220);
  __swift_project_value_buffer(v0, qword_27FD57220);
  return sub_25F30478C();
}

uint64_t sub_25F292530@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25F30479C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_25F2925C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25F30504C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8D7190](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_25F292674()
{
  result = qword_27FD57238[0];
  if (!qword_27FD57238[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD57238);
  }

  return result;
}

uint64_t sub_25F2926C0(unint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, os_log_type_t a5, os_log_t oslog, _OWORD *a7)
{
  result = os_log_type_enabled(oslog, a5);
  if (!result)
  {
    return result;
  }

  v13 = a7[5];
  v80[4] = a7[4];
  v80[5] = v13;
  v80[6] = a7[6];
  v14 = a7[1];
  v80[0] = *a7;
  v80[1] = v14;
  v15 = a7[3];
  v80[2] = a7[2];
  v80[3] = v15;
  v16 = v80;
  v17 = CommandLineToolInvocation.commandLineDescription.getter();
  v19 = v18;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_106;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21 = v20 + 2;
  if (__OFADD__(v20, 2))
  {
    goto LABEL_108;
  }

LABEL_7:
  v16 = (HIBYTE(v19) & 0xF);
  if ((v19 & 0x1000000000000000) != 0)
  {
LABEL_109:
    result = sub_25F304FAC();
    v22 = __OFADD__(v21, result);
    v23 = v21 + result;
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v19) & 0xF;
  }

  else
  {
    result = v17 & 0xFFFFFFFFFFFFLL;
  }

  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
    goto LABEL_111;
  }

LABEL_12:
  v78 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v24 = MEMORY[0x277D837D0];
  if (v23 >= 1021)
  {
    v76 = v16;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25F3077D0;
    *(v25 + 56) = v24;
    v26 = sub_25F1F7190();
    *(v25 + 64) = v26;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;

    sub_25F3046FC();

    if (a4)
    {
      *&v80[0] = v78;
      *(&v80[0] + 1) = a4;

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      v27 = *(&v80[0] + 1);
      v28 = *&v80[0];
    }

    else
    {
      v28 = 0;
      v27 = 0xE000000000000000;
    }

    v31 = sub_25F304F2C();
    v73 = v27;

    v32 = 1020 - v31;
    if (!__OFSUB__(1020, v31))
    {
      v33 = 990 - v31;
      if (!__OFSUB__(v32, 30))
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          result = sub_25F304FAC();
          if (!v33)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((v19 & 0x2000000000000000) == 0)
          {
            result = v17 & 0xFFFFFFFFFFFFLL;
            if (v32 == 30)
            {
              goto LABEL_34;
            }

            goto LABEL_25;
          }

          result = v76;
          if (v32 == 30)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

LABEL_25:
        if (result == 0x8000000000000000 && v33 == -1)
        {
          goto LABEL_115;
        }

        v34 = result / v33;
        if (!(result % v33) || (v22 = __OFADD__(v34, 1), ++v34, !v22))
        {
          v70 = v34;
          v71 = v28;
          v72 = v26;
          if ((v19 & 0x1000000000000000) != 0)
          {
            a3 = sub_25F304FAC();
            v35 = v76;
          }

          else
          {
            if ((v19 & 0x2000000000000000) != 0)
            {
LABEL_35:
              v35 = v76;
              a3 = v76;
              goto LABEL_36;
            }

            a3 = v17 & 0xFFFFFFFFFFFFLL;
            v35 = v76;
          }

LABEL_36:
          v36 = a3 >= 0;
          if (v33 > 0)
          {
            v36 = a3 < 1;
          }

          if (v36)
          {
LABEL_39:

            goto LABEL_40;
          }

          v37 = 0;
          v38 = 0;
          if ((v19 & 0x2000000000000000) != 0)
          {
            a1 = v35;
          }

          else
          {
            a1 = v17 & 0xFFFFFFFFFFFFLL;
          }

          v39 = 7;
          v40 = 11;
          if ((v17 & 0x800000000000000) != 0)
          {
            v40 = 7;
          }

          if ((v19 & 0x1000000000000000) != 0)
          {
            v39 = v40;
          }

          v79 = v39 | (a1 << 16);
          v41 = (v17 & 0x800000000000000uLL) >> 59;
          v42 = 4 << v41;
          if ((v19 & 0x1000000000000000) == 0)
          {
            v42 = 8;
          }

          v75 = v39 & 0xC;
          v77 = v42;
          v74 = 4 << (((v19 & 0x1000000000000000) == 0) | v41);
          v69 = a1;
          v68 = a3;
          while (1)
          {
            if (__OFADD__(v38, v33))
            {
              a4 = ((v38 + v33) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              a4 = v38 + v33;
            }

            v16 = (v37 + 1);
            if (__OFADD__(v37, 1))
            {
LABEL_100:
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
              v67 = sub_25F304FAC();
              v21 = v67 + 2;
              if (!__OFADD__(v67, 2))
              {
                goto LABEL_7;
              }

LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            if ((v19 & 0x1000000000000000) != 0)
            {
              v47 = sub_25F304FCC();
              if (v48)
              {
                goto LABEL_39;
              }

              a2 = v47;
            }

            else
            {
              if ((v38 & 0x8000000000000000) != 0)
              {
                if (!a1)
                {
                  goto LABEL_39;
                }

                __break(1u);
                goto LABEL_100;
              }

              if (a1 < v38)
              {
                goto LABEL_39;
              }

              a2 = (v38 << 16) | 4;
            }

            v49 = a2;
            if ((a2 & 0xC) == v77)
            {
              v49 = sub_25F2925C8(a2, v17, v19);
            }

            v50 = v79;
            if (v75 == v74)
            {
              v52 = v49;
              v50 = sub_25F2925C8(v79, v17, v19);
              v49 = v52;
              a1 = v69;
              if ((v19 & 0x1000000000000000) == 0)
              {
LABEL_71:
                v51 = (v50 >> 16) - (v49 >> 16);
                goto LABEL_76;
              }
            }

            else if ((v19 & 0x1000000000000000) == 0)
            {
              goto LABEL_71;
            }

            if (a1 < v49 >> 16)
            {
              goto LABEL_101;
            }

            if (a1 < v50 >> 16)
            {
              goto LABEL_102;
            }

            v51 = sub_25F304FEC();
LABEL_76:
            if (v51 >= v33)
            {
              v53 = v33;
            }

            else
            {
              v53 = v51;
            }

            v54 = a2;
            if ((a2 & 0xC) == v77)
            {
              v57 = v53;
              v54 = sub_25F2925C8(a2, v17, v19);
              v53 = v57;
              if ((v19 & 0x1000000000000000) != 0)
              {
LABEL_92:
                sub_25F304FCC();
                if (v58)
                {
                  goto LABEL_39;
                }

                goto LABEL_93;
              }
            }

            else if ((v19 & 0x1000000000000000) != 0)
            {
              goto LABEL_92;
            }

            v55 = v54 >> 16;
            v56 = (v54 >> 16) + v53;
            if (__OFADD__(v54 >> 16, v53))
            {
              goto LABEL_103;
            }

            if (v53 < 0)
            {
              if (v55 >= a1 && v56 < a1)
              {
                goto LABEL_39;
              }
            }

            else if (a1 >= v55 && a1 < v56)
            {
              goto LABEL_39;
            }

            if (v56 < 0)
            {
              goto LABEL_104;
            }

            if (a1 < v56)
            {
              goto LABEL_105;
            }

LABEL_93:
            v59 = sub_25F304F1C();
            if ((v60 & 1) == 0)
            {
              a2 = v59;
              v61 = sub_25F304F1C();
              if ((v62 & 1) == 0)
              {
                v63 = v61;
                v64 = swift_allocObject();
                *(v64 + 16) = xmmword_25F30B760;
                *(v64 + 56) = MEMORY[0x277D837D0];
                *(v64 + 64) = v72;
                *(v64 + 32) = v71;
                *(v64 + 40) = v73;
                v65 = MEMORY[0x277D83B88];
                *(v64 + 96) = MEMORY[0x277D83B88];
                v66 = MEMORY[0x277D83C10];
                *(v64 + 72) = v16;
                *(v64 + 136) = v65;
                *(v64 + 144) = v66;
                *(v64 + 104) = v66;
                *(v64 + 112) = v70;
                if (v63 >> 14 < a2 >> 14)
                {
                  __break(1u);
                  goto LABEL_39;
                }

                v43 = sub_25F3050CC();
                a2 = MEMORY[0x25F8D7070](v43);
                v45 = v44;

                *(v64 + 176) = MEMORY[0x277D837D0];
                *(v64 + 184) = v72;
                *(v64 + 152) = a2;
                *(v64 + 160) = v45;
                sub_25F3046FC();

                a3 = v68;
                a1 = v69;
              }
            }

            v46 = a3 >= a4;
            if (v33 > 0)
            {
              v46 = a4 >= a3;
            }

            ++v37;
            v38 = a4;
            if (v46)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        return result;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25F3081F0;
  *(v29 + 56) = v24;
  v30 = sub_25F1F7190();
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 96) = v24;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = 2618;
  *(v29 + 80) = 0xE200000000000000;
  *(v29 + 136) = v24;
  *(v29 + 144) = v30;
  *(v29 + 112) = v17;
  *(v29 + 120) = v19;

  sub_25F3046FC();
LABEL_40:
}

uint64_t sub_25F292DA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, os_log_type_t a5, os_log_t oslog, uint64_t a7, unint64_t a8)
{
  result = os_log_type_enabled(oslog, a5);
  if (!result)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_106:
    v60 = sub_25F304FAC();
    v16 = v60 + 2;
    if (!__OFADD__(v60, 2))
    {
      goto LABEL_7;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    result = sub_25F304FAC();
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
    goto LABEL_108;
  }

LABEL_7:
  v8 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x1000000000000000) != 0)
  {
    goto LABEL_109;
  }

  if ((a8 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a8) & 0xF;
  }

  else
  {
    result = a7 & 0xFFFFFFFFFFFFLL;
  }

  v17 = __OFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_111;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v19 = MEMORY[0x277D837D0];
  if (v18 < 1021)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25F3081F0;
    *(v23 + 56) = v19;
    v24 = sub_25F1F7190();
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 96) = v19;
    *(v23 + 104) = v24;
    *(v23 + 64) = v24;
    *(v23 + 72) = 2618;
    *(v23 + 80) = 0xE200000000000000;
    *(v23 + 136) = v19;
    *(v23 + 144) = v24;
    *(v23 + 112) = a7;
    *(v23 + 120) = a8;

    sub_25F3046FC();
    goto LABEL_40;
  }

  v20 = swift_allocObject();
  v21 = v19;
  v22 = v20;
  *(v20 + 16) = xmmword_25F3077D0;
  *(v20 + 56) = v21;
  v64 = sub_25F1F7190();
  v22[8] = v64;
  v22[4] = a1;
  v22[5] = a2;

  sub_25F3046FC();

  if (a4)
  {

    MEMORY[0x25F8D7130](32, 0xE100000000000000);
    a2 = a3;
  }

  else
  {
    a2 = 0;
    a4 = 0xE000000000000000;
  }

  v25 = sub_25F304F2C();

  v26 = 1020 - v25;
  if (__OFSUB__(1020, v25))
  {
    goto LABEL_112;
  }

  v27 = 990 - v25;
  if (__OFSUB__(v26, 30))
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((a8 & 0x1000000000000000) != 0)
  {
    result = sub_25F304FAC();
    if (v27)
    {
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((a8 & 0x2000000000000000) != 0)
  {
    result = v8;
    if (v26 != 30)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  result = a7 & 0xFFFFFFFFFFFFLL;
  if (!v27)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (result == 0x8000000000000000 && v27 == -1)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    return result;
  }

  v28 = result / v27;
  if (result % v27)
  {
    v17 = __OFADD__(v28++, 1);
    if (v17)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  v62 = v28;
  v63 = a2;
  v65 = a4;
  if ((a8 & 0x1000000000000000) != 0)
  {
    result = sub_25F304FAC();
    a3 = result;
  }

  else
  {
    if ((a8 & 0x2000000000000000) != 0)
    {
LABEL_35:
      a3 = v8;
      goto LABEL_36;
    }

    a3 = a7 & 0xFFFFFFFFFFFFLL;
  }

LABEL_36:
  v29 = a3 >= 0;
  if (v27 > 0)
  {
    v29 = a3 < 1;
  }

  if (v29)
  {
    goto LABEL_39;
  }

  a1 = 0;
  v30 = 0;
  if ((a8 & 0x2000000000000000) != 0)
  {
    a4 = v8;
  }

  else
  {
    a4 = a7 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 7;
  v32 = 11;
  if ((a7 & 0x800000000000000) != 0)
  {
    v32 = 7;
  }

  if ((a8 & 0x1000000000000000) != 0)
  {
    v31 = v32;
  }

  v33 = v31 | (a4 << 16);
  v34 = (a7 & 0x800000000000000uLL) >> 59;
  v35 = 4 << v34;
  if ((a8 & 0x1000000000000000) == 0)
  {
    v35 = 8;
  }

  v68 = v31 & 0xC;
  v69 = v35;
  v67 = 4 << (((a8 & 0x1000000000000000) == 0) | v34);
  v66 = v31 | (a4 << 16);
  v61 = a4;
  while (1)
  {
    if (__OFADD__(v30, v27))
    {
      v41 = ((v30 + v27) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v41 = v30 + v27;
    }

    v8 = a1 + 1;
    if (__OFADD__(a1, 1))
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
      goto LABEL_106;
    }

    if ((a8 & 0x1000000000000000) == 0)
    {
      break;
    }

    v42 = sub_25F304FCC();
    if (v43)
    {
      goto LABEL_39;
    }

    a2 = v42;
LABEL_67:
    v44 = a2;
    if ((a2 & 0xC) == v69)
    {
      v44 = sub_25F2925C8(a2, a7, a8);
    }

    v45 = v33;
    if (v68 == v67)
    {
      v47 = v44;
      v45 = sub_25F2925C8(v66, a7, a8);
      v44 = v47;
      if ((a8 & 0x1000000000000000) == 0)
      {
LABEL_71:
        v46 = (v45 >> 16) - (v44 >> 16);
        goto LABEL_76;
      }
    }

    else if ((a8 & 0x1000000000000000) == 0)
    {
      goto LABEL_71;
    }

    if (a4 < v44 >> 16)
    {
      goto LABEL_101;
    }

    if (a4 < v45 >> 16)
    {
      goto LABEL_102;
    }

    v46 = sub_25F304FEC();
LABEL_76:
    if (v46 >= v27)
    {
      v48 = v27;
    }

    else
    {
      v48 = v46;
    }

    v49 = a2;
    if ((a2 & 0xC) == v69)
    {
      v52 = v48;
      v49 = sub_25F2925C8(a2, a7, a8);
      v48 = v52;
      if ((a8 & 0x1000000000000000) != 0)
      {
LABEL_92:
        sub_25F304FCC();
        if (v53)
        {
          goto LABEL_39;
        }

        goto LABEL_93;
      }
    }

    else if ((a8 & 0x1000000000000000) != 0)
    {
      goto LABEL_92;
    }

    v50 = v49 >> 16;
    v51 = (v49 >> 16) + v48;
    if (__OFADD__(v49 >> 16, v48))
    {
      goto LABEL_103;
    }

    if (v48 < 0)
    {
      if (v50 >= a4 && v51 < a4)
      {
        goto LABEL_39;
      }
    }

    else if (a4 >= v50 && a4 < v51)
    {
      goto LABEL_39;
    }

    if (v51 < 0)
    {
      goto LABEL_104;
    }

    if (a4 < v51)
    {
      goto LABEL_105;
    }

LABEL_93:
    result = sub_25F304F1C();
    if ((v54 & 1) == 0)
    {
      v55 = result;
      result = sub_25F304F1C();
      if ((v56 & 1) == 0)
      {
        v57 = result;
        a2 = swift_allocObject();
        *(a2 + 16) = xmmword_25F30B760;
        *(a2 + 56) = MEMORY[0x277D837D0];
        *(a2 + 64) = v64;
        *(a2 + 32) = v63;
        *(a2 + 40) = v65;
        v58 = MEMORY[0x277D83B88];
        *(a2 + 96) = MEMORY[0x277D83B88];
        v59 = MEMORY[0x277D83C10];
        *(a2 + 72) = v8;
        *(a2 + 136) = v58;
        *(a2 + 144) = v59;
        *(a2 + 104) = v59;
        *(a2 + 112) = v62;
        if (v57 >> 14 < v55 >> 14)
        {
          __break(1u);
          goto LABEL_39;
        }

        v36 = sub_25F3050CC();
        v37 = MEMORY[0x25F8D7070](v36);
        v39 = v38;

        *(a2 + 176) = MEMORY[0x277D837D0];
        *(a2 + 184) = v64;
        *(a2 + 152) = v37;
        *(a2 + 160) = v39;
        sub_25F3046FC();

        a4 = v61;
      }
    }

    v40 = a3 >= v41;
    if (v27 > 0)
    {
      v40 = v41 >= a3;
    }

    ++a1;
    v30 = v41;
    v33 = v66;
    if (v40)
    {
      goto LABEL_39;
    }
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    if (a4 < v30)
    {
      goto LABEL_39;
    }

    a2 = (v30 << 16) | 4;
    goto LABEL_67;
  }

  if (a4)
  {
    goto LABEL_116;
  }

LABEL_39:

LABEL_40:
}

uint64_t InvalidatableCache.__allocating_init()()
{
  v0 = swift_allocObject();
  InvalidatableCache.init()();
  return v0;
}

void *InvalidatableCache.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for Future();
  v4 = *(v1 + 96);
  v8 = sub_25F304A0C();
  v5 = sub_25F304B4C();
  v6 = sub_25F203E0C(&v8, v5);

  v0[2] = v6;
  return v0;
}

uint64_t InvalidatableCache.subscript.getter()
{
  v1 = *v0;
  v14 = v0[2];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v8 + 1) = 130;
  v9 = 2;
  v10 = vdupq_n_s64(0x13uLL);
  v11 = "subscript(_:)";
  v12 = 13;
  v13 = 2;
  v2 = v1[10];
  v3 = v1[11];
  type metadata accessor for Future();
  v4 = v1[12];
  sub_25F304B4C();
  v5 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v8, v5, WitnessTable);
  sub_25F304B8C();

  return v8;
}

uint64_t InvalidatableCache.futureResource(for:create:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *v2;
  v5 = *v2;
  v24 = v2[2];
  *&v18 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v18 + 1) = 130;
  v19 = 2;
  v20 = xmmword_25F312310;
  v21 = "futureResource(for:create:)";
  v22 = 27;
  v23 = 2;
  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  v16 = *(v5 + 96);
  v17 = a1;
  type metadata accessor for Future();
  sub_25F304B4C();
  v6 = sub_25F30476C();
  type metadata accessor for Promise();
  sub_25F305C1C();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v18, sub_25F294834, v13, v6, TupleTypeMetadata2, WitnessTable);

  v9 = v25;
  if (*(&v25 + 1))
  {
    v10 = sub_25F293B10(v25);
    v11 = a2(v10);
    sub_25F229A9C(&v18);
    v25 = v18;
    Promise.track(future:on:)(v11, &v25);

    sub_25F2033DC(v25);
  }

  return v9;
}

uint64_t sub_25F293930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = v12;
  v15 = *v12;
  type metadata accessor for Future();
  v20[2] = a4;
  result = sub_25F304B8C();
  v17 = v21;
  if (v21)
  {
    v18 = 0;
  }

  else
  {
    v20[1] = v5;
    v20[0] = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift", 130, 2, 28, 60, "futureResource(for:create:)", 27, 2);
    v18 = v19;
    v17 = sub_25F2AA33C("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift", 130, 2, 31, 51, "futureResource(for:create:)", 27, 2);
    (*(v10 + 16))(v14, a2, a3);
    v21 = v17;
    sub_25F304B4C();

    sub_25F304B9C();
  }

  *a5 = v17;
  a5[1] = v18;
  return result;
}

uint64_t sub_25F293B10(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7);
  v9 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = *(v3 + 88);
  *(v10 + 40) = *(v2 + 104);
  *(v10 + 48) = v1;
  (*(v5 + 32))(v10 + v9, v8, v4);

  Future.observeFinish(_:)(sub_25F294948, v10);
}

Swift::Void __swiftcall InvalidatableCache.invalidate()()
{
  v1 = *v0;
  v2 = *v0;
  v31 = v0[2];
  v24 = v2;
  *&v25 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v25 + 1) = 130;
  v26 = 2;
  v27 = xmmword_25F312320;
  v28 = "invalidate()";
  v29 = 12;
  v30 = 2;
  v3 = v1[10];
  v23 = v1[11];
  type metadata accessor for Future();
  v4 = v1[12];
  sub_25F304B4C();
  v5 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v25, v5, WitnessTable);
  v7 = nullsub_2(v32);

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_25F30625C();
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7 = v8 | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = v7 + 64;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 64);
  }

  v15 = 0;
  v16 = (v10 + 64) >> 6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v15;
    v18 = v11;
    v19 = v15;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
LABEL_18:
      sub_25F1BF034();
      return;
    }

    while (1)
    {
      v22 = swift_allocObject();
      v22[2] = v3;
      v22[3] = v23;
      v22[4] = v4;
      v22[5] = v24[13];
      Future.observeSuccess(_:)(sub_25F294858, v22);

      sub_25F2ECD6C("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift", 130, 2, 55, 28, "invalidate()", 12, 2);

      v15 = v19;
      v11 = v20;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_25F30626C())
      {
        swift_unknownObjectRelease();
        sub_25F30655C();
        swift_unknownObjectRelease();
        v19 = v15;
        v20 = v11;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t InvalidatableCache.snapshot.getter()
{
  v1 = *v0;
  v14 = v0[2];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v8 + 1) = 130;
  v9 = 2;
  v10 = xmmword_25F312330;
  v11 = "snapshot";
  v12 = 8;
  v13 = 2;
  v2 = v1[10];
  v3 = v1[11];
  type metadata accessor for Future();
  v4 = v1[12];
  sub_25F304B4C();
  v5 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v8, v5, WitnessTable);
  return v15;
}

uint64_t sub_25F2940F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v30 = a3;
  v28 = *a2;
  v5 = *(v28 + 80);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v27 - v8;
  v11 = *(v10 + 88);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v14 = &v27 - v13;
  v15 = type metadata accessor for FutureTermination();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  (*(v16 + 16))(&v27 - v18, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 8))(v19, v15);
    }

    return sub_25F294434(v30);
  }

  else
  {
    (*(v29 + 32))(v14, v19, v11);
    v22 = v27;
    (*(v27 + 16))(v9, v30, v5);
    v23 = (*(v22 + 80) + 56) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = v5;
    *(v24 + 3) = v11;
    v25 = v28;
    *(v24 + 4) = *(v28 + 96);
    v26 = *(v25 + 104);
    *(v24 + 5) = v26;
    *(v24 + 6) = a2;
    (*(v22 + 32))(&v24[v23], v9, v5);

    Invalidatable.onInvalidation(_:)(sub_25F294A40, v24, v11, v26);

    return (*(v29 + 8))(v14, v11);
  }
}

uint64_t sub_25F294434(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v17[-1] - v7;
  v17[1] = v1[2];
  v9 = (*(v5 + 16))(&v17[-1] - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-1] - v10;
  *v11 = v4;
  *(v11 + 1) = *(v2 + 88);
  v16 = *(v3 + 96);
  *(v11 + 1) = v16;
  (*(v5 + 32))(&v17[3] - v10, v8, v4);
  KeyPath = swift_getKeyPath();
  v17[0] = 0;
  type metadata accessor for Future();
  sub_25F304B4C();
  v13 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, v17, v13, WitnessTable);
}

uint64_t sub_25F294654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a2 + a3 - 32);
  v6 = *(a2 + a3 - 24);
  v8 = *(v5 - 16);
  v9 = *a1;
  type metadata accessor for Future();
  result = sub_25F304B8C();
  *a4 = v11;
  return result;
}

uint64_t sub_25F2946CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(v12 - v8, v10, v5);
  v12[1] = *a1;
  type metadata accessor for Future();
  sub_25F304B4C();

  return sub_25F304B9C();
}

uint64_t InvalidatableCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InvalidatableCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F294834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  return sub_25F293930(a1, v2[6], v2[2], v2[4], a2);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F294A40()
{
  v1 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80));
  v2 = *(v0 + 48);
  return sub_25F294434(v1);
}

uint64_t ResourceHub.__allocating_init(serviceName:resourceName:bootstrapResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ResourceHub.init(serviceName:resourceName:bootstrapResource:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t *ResourceHub.init(serviceName:resourceName:bootstrapResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *v6;
  swift_defaultActor_initialize();
  v20 = *(v12 + 80);
  v18 = *(v13 + 88);
  v21 = *(v12 + 104);
  v14 = type metadata accessor for ResourceHub.ResourceState();
  swift_getTupleTypeMetadata2();
  v15 = sub_25F3052DC();
  v16 = sub_25F1CCBBC(v15, v18, v14, v21);

  v6[14] = v16;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v6[19] = a5;
  v6[20] = a6;
  return v6;
}

uint64_t sub_25F294C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  return MEMORY[0x2822009F8](sub_25F294CA8, v3, 0);
}

uint64_t sub_25F294CA8()
{
  v28 = v0;
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v6 = *(v5 + 2);
  *(v5 + 2) = v6 + 1;
  os_unfair_lock_unlock(v5 + 6);
  *&v22 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
  *(&v22 + 1) = 123;
  v23 = 2;
  v24 = xmmword_25F3123E0;
  v25 = "requestResource(for:with:)";
  v26 = 26;
  v27 = 2;
  v7 = *(v2 + 80);
  v8 = static Task.create<>(callsite:)(&v21, &v22, v7);
  v9 = v21;
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  v10 = *(v2 + 104);
  *&v22 = v6;
  *(&v22 + 1) = v9;

  v20 = *(v2 + 88);
  sub_25F2967A8(&v22, v3, v4);
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v20;
  *(v11 + 40) = v10;
  *(v11 + 48) = v8;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v12[2] = v8;
  v12[3] = v1;
  v12[4] = v6;
  v12[5] = v3;
  v13.i64[0] = v7;
  *&v14 = vdupq_laneq_s64(v20, 1).u64[0];
  *(&v14 + 1) = v10;
  *(v0 + 32) = v14;
  *(v0 + 16) = vzip1q_s64(v13, v20);
  type metadata accessor for ResourceHub();
  WitnessTable = swift_getWitnessTable();
  v16 = *(MEMORY[0x277D85A10] + 4);
  v17 = swift_task_alloc();
  *(v0 + 120) = v17;
  *v17 = v0;
  v17[1] = sub_25F294EF4;
  v18 = *(v0 + 48);

  return MEMORY[0x282200830](v18, &unk_25F312470, v11, sub_25F2997DC, v12, v1, WitnessTable, v7);
}

uint64_t sub_25F294EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_25F295094;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[9];

    v5 = sub_25F295024;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25F295024()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F295094()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_25F295120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  *v8 = v3;
  v8[1] = sub_25F1B51E0;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, a3, v9, v10);
}

uint64_t sub_25F2951F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v6 = *a2;
  v7 = *(*a2 + 88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30555C();
  v17 = sub_25F30546C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v8 + 16))(v11, a4, v7);
  v18 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v16;
  *(v19 + 5) = v7;
  *(v19 + 6) = v6[12];
  *(v19 + 7) = v6[13];
  *(v19 + 8) = a2;
  *(v19 + 9) = v22;
  (*(v8 + 32))(&v19[v18], v11, v7);

  sub_25F1B1524(0, 0, v15, &unk_25F312630, v19);
}

uint64_t sub_25F29546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a5;
  return MEMORY[0x2822009F8](sub_25F295490, a4, 0);
}

uint64_t sub_25F295490()
{
  v1 = v0[3];
  sub_25F297110(v0 + 2, v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25F2954F4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25F2955A0;

  return sub_25F294C5C(a1, a2, v6);
}

uint64_t sub_25F2955A0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_25F2231E4, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25F2956D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a1;
  v5 = *(*v2 + 88);
  v92 = *(v5 - 8);
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v82 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v77 - v9;
  v11 = *(v10 + 80);
  v94 = *(v12 + 96);
  *&v98 = v11;
  *(&v98 + 1) = v5;
  *v99 = v94;
  v13 = type metadata accessor for ResourceHub.ResourceState();
  v14 = sub_25F305C1C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v81 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v77 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v77 - v21);
  v93 = v11;
  v23 = *(v11 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v77 - v25;
  swift_beginAccess();
  v27 = *(v3 + 112);

  v83 = *(&v94 + 1);
  sub_25F304B8C();
  v28 = v13;

  v29 = *(v13 - 8);
  if ((*(v29 + 48))(v22, 1, v28) == 1)
  {
    (*(v92 + 16))(v90, a2, v5);
    v30 = v88;
    (*(v23 + 16))(v88, v91, v93);
    swift_storeEnumTagMultiPayload();
    (*(v29 + 56))(v30, 0, 1, v28);
    swift_beginAccess();
    sub_25F304B4C();
LABEL_22:
    sub_25F304B9C();
    return swift_endAccess();
  }

  v87 = v3;
  v80 = v23;
  v86 = a2;
  v79 = v5;
  if (swift_getEnumCaseMultiPayload())
  {
    v31 = v80;
    v32 = v93;
    (*(v80 + 32))(v26, v22, v93);
    sub_25F2987D8(&v98);
    (*(v31 + 8))(v26, v32);
    v33 = *&v99[8];
    v34 = *&v99[16];
    v35 = __swift_project_boxed_opaque_existential_1(&v98, *&v99[8]);
    v36 = *(v33 - 8);
    v37 = *(v36 + 64);
    MEMORY[0x28223BE20](v35);
    v39 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39);
    v40 = *(*(v34 + 8) + 8);
    if (sub_25F30650C())
    {
      (*(v36 + 8))(v39, v33);
    }

    else
    {
      swift_allocError();
      (*(v36 + 32))(v73, v39, v33);
    }

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    v78 = v28;
    v41 = *v22;
    *&v42 = v93;
    v43 = v79;
    *(&v42 + 1) = v79;
    v98 = v42;
    *v99 = v94;
    v44 = type metadata accessor for ResourceHub.Request();
    if (!sub_25F30531C())
    {

      (*(v92 + 16))(v82, v86, v43);
      v74 = v80;
LABEL_21:
      v75 = v81;
      (*(v74 + 16))(v81, v91, v93);
      v76 = v78;
      swift_storeEnumTagMultiPayload();
      (*(v29 + 56))(v75, 0, 1, v76);
      swift_beginAccess();
      sub_25F304B4C();
      goto LABEL_22;
    }

    v45 = 0;
    v46 = 0;
    v47 = 40;
    v85 = xmmword_25F312400;
    v84 = xmmword_25F3123F0;
    v48 = v86;
    v49 = v41;
    v89 = v29;
    v90 = v44;
    while (1)
    {
      v54 = sub_25F3052FC();
      v55 = v49;
      v56 = v54;
      v57 = v55;
      result = sub_25F30528C();
      if ((v56 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v45, 1))
      {
        goto LABEL_25;
      }

      *&v94 = v45 + 1;
      v59 = *(v57 + v47);
      if (v46)
      {
        v103 = *(v57 + v47);
        *&v98 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v98 + 1) = 123;
        v99[0] = 2;
        *&v99[8] = v85;
        v100 = "deliverResource(_:for:)";
        v101 = 23;
        v102 = 2;
        swift_retain_n();
        sub_25F2986AC(v95);
        v60 = v96;
        v61 = v97;
        v62 = __swift_project_boxed_opaque_existential_1(v95, v96);
        v88 = &v77;
        v63 = *(v60 - 8);
        v64 = *(v63 + 64);
        MEMORY[0x28223BE20](v62);
        v66 = &v77 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v63 + 16))(v66);
        v67 = *(*(v61 + 8) + 8);
        v68 = sub_25F30650C();
        if (v68)
        {
          v69 = v68;
          (*(v63 + 8))(v66, v60);
        }

        else
        {
          v69 = swift_allocError();
          (*(v63 + 32))(v70, v66, v60);
        }

        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v71 = type metadata accessor for Task.Promise();
        WitnessTable = swift_getWitnessTable();
        PromiseProtocol.fulfill<>(callsite:throwing:)(&v98, v69, v71, WitnessTable);

        __swift_destroy_boxed_opaque_existential_1(v95);
        v46 = 1;
        v48 = v86;
      }

      else
      {
        v95[0] = *(v57 + v47);
        *&v98 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v98 + 1) = 123;
        v99[0] = 2;
        *&v99[8] = v84;
        v100 = "deliverResource(_:for:)";
        v101 = 23;
        v102 = 2;

        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v50 = type metadata accessor for Task.Promise();
        v51 = swift_getWitnessTable();
        v46 = PromiseProtocol.fulfill(callsite:returning:)(&v98, v91, v50, v51);
      }

      v49 = v57;
      v52 = sub_25F30531C();
      ++v45;
      v47 += 16;
      v53 = v92;
      v29 = v89;
      if (v94 == v52)
      {

        (*(v53 + 16))(v82, v48, v79);
        v74 = v80;
        goto LABEL_21;
      }
    }

    result = sub_25F30601C();
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2961AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 80);
  sub_25F305FDC();
  sub_25F2956D4(a1, v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F2962B8(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v25 - v6;
  v8 = *(v7 + 80);
  v31 = *(v9 + 96);
  v28 = v8;
  v33 = v8;
  v34 = v3;
  v35 = v31;
  v10 = type metadata accessor for ResourceHub.ResourceState();
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v25 - v17);
  swift_beginAccess();
  v19 = v1[14];

  v29 = a1;
  sub_25F304B8C();

  v20 = *(v10 - 8);
  if ((*(v20 + 48))(v18, 1, v10) == 1)
  {
    (*(v12 + 8))(v18, v11);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      (*(v20 + 8))(v18, v10);
    }

    else
    {
      v27 = &v25;
      v26 = *v18;
      v32 = v26;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *&v22 = v28;
      *(&v22 + 1) = v3;
      v23 = v31;
      *(&v25 - 2) = v22;
      *(&v25 - 1) = v23;
      v33 = v22;
      v34 = v3;
      v35 = v23;
      type metadata accessor for ResourceHub.Request();
      sub_25F30539C();
      swift_getWitnessTable();
      sub_25F3051BC();
    }
  }

  (*(v4 + 16))(v30, v29, v3);
  (*(v20 + 56))(v16, 1, 1, v10);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F2966C4(uint64_t a1)
{
  v10 = *(a1 + 8);
  *&v4 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
  *(&v4 + 1) = 123;
  v5 = 2;
  v6 = xmmword_25F312410;
  v7 = "purgeResource(for:)";
  v8 = 19;
  v9 = 2;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v1 = type metadata accessor for Task.Promise();
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.cancel<>(callsite:)(&v4, v1, WitnessTable);
}

uint64_t sub_25F2967A8(void *a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v6 = *(*v3 + 80);
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v72 = v70 - v9;
  v11 = *(v10 + 88);
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = v70 - v13;
  v79 = *(v14 + 96);
  *&v83 = v6;
  *(&v83 + 1) = v11;
  *v84 = v79;
  v15 = type metadata accessor for ResourceHub.ResourceState();
  v16 = sub_25F305C1C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = (v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (v70 - v21);
  v23 = a1[1];
  v75 = *a1;
  v77 = v23;
  swift_beginAccess();
  v24 = v3[14];

  v25 = *(&v79 + 1);
  v26 = a2;
  sub_25F304B8C();

  v27 = *(v15 - 8);
  if ((*(v27 + 48))(v22, 1, v15) == 1)
  {
    (*(v76 + 16))(v78, a2, v11);
    *&v28 = v6;
    *(&v28 + 1) = v11;
    *v84 = v79;
    v83 = v28;
    type metadata accessor for ResourceHub.Request();
    sub_25F3064EC();
    swift_allocObject();
    v29 = sub_25F30527C();
    v30 = v77;
    *v31 = v75;
    v31[1] = v30;
    sub_25F1F7314();
    *v20 = v29;
    swift_storeEnumTagMultiPayload();
    (*(v27 + 56))(v20, 0, 1, v15);
    swift_beginAccess();
    sub_25F304B4C();

    sub_25F304B9C();
    swift_endAccess();
    return sub_25F297550(v26, v74);
  }

  else
  {
    v33 = v76;
    v70[0] = v11;
    v34 = v77;
    v70[1] = v25;
    v71 = v20;
    v35 = v26;
    v74 = v6;
    v36 = v78;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      *&v79 = v15;
      v38 = v27;
      if (EnumCaseMultiPayload == 1)
      {
        v39 = v33;
        v75 = v3;
        v40 = v73;
        v41 = v72;
        v42 = v74;
        (*(v73 + 32))(v72, v22, v74);
        v43 = v34;
        v44 = v41;
        v80[0] = v43;
        *&v83 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v83 + 1) = 123;
        v84[0] = 2;
        *&v84[8] = xmmword_25F312430;
        v85 = "storeOrResumeRequest(_:for:with:)";
        v86 = 33;
        v87 = 2;

        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v45 = type metadata accessor for Task.Promise();
        WitnessTable = swift_getWitnessTable();
        LOBYTE(v41) = PromiseProtocol.fulfill(callsite:returning:)(&v83, v41, v45, WitnessTable);

        if (v41)
        {
          (*(v39 + 16))(v36, v35, v70[0]);
          v47 = v71;
          (*(v40 + 16))(v71, v44, v42);
          v48 = v79;
          swift_storeEnumTagMultiPayload();
          (*(v38 + 56))(v47, 0, 1, v48);
          swift_beginAccess();
          sub_25F304B4C();
          sub_25F304B9C();
          swift_endAccess();
        }

        return (*(v40 + 8))(v44, v42);
      }

      else
      {
        v56 = v22;
        v88 = v34;
        *&v83 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v83 + 1) = 123;
        v84[0] = 2;
        *&v84[8] = xmmword_25F312420;
        v85 = "storeOrResumeRequest(_:for:with:)";
        v86 = 33;
        v87 = 2;

        sub_25F2986AC(v80);
        v57 = v81;
        v58 = v82;
        v59 = __swift_project_boxed_opaque_existential_1(v80, v81);
        v60 = *(v57 - 8);
        v61 = *(v60 + 64);
        MEMORY[0x28223BE20](v59);
        v63 = v70 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v60 + 16))(v63);
        v64 = *(*(v58 + 8) + 8);
        v65 = sub_25F30650C();
        if (v65)
        {
          v66 = v65;
          (*(v60 + 8))(v63, v57);
        }

        else
        {
          v66 = swift_allocError();
          (*(v60 + 32))(v67, v63, v57);
        }

        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v68 = type metadata accessor for Task.Promise();
        v69 = swift_getWitnessTable();
        PromiseProtocol.fulfill<>(callsite:throwing:)(&v83, v66, v68, v69);

        __swift_destroy_boxed_opaque_existential_1(v80);
        return (*(v38 + 8))(v56, v79);
      }
    }

    else
    {
      v49 = *v22;
      v50 = v36;
      v51 = v70[0];
      (*(v33 + 16))(v50, v35, v70[0]);
      *&v83 = v74;
      *(&v83 + 1) = v51;
      *v84 = v79;
      type metadata accessor for ResourceHub.Request();
      v52 = v27;
      sub_25F3064EC();
      swift_allocObject();
      sub_25F30527C();
      *v53 = v75;
      v53[1] = v34;
      sub_25F1F7314();

      v54 = sub_25F3052BC();

      v55 = v71;
      *v71 = v54;
      swift_storeEnumTagMultiPayload();
      (*(v52 + 56))(v55, 0, 1, v15);
      swift_beginAccess();
      sub_25F304B4C();
      sub_25F304B9C();
      return swift_endAccess();
    }
  }
}

uint64_t sub_25F297110(uint64_t *a1, uint64_t a2)
{
  v5 = *(*v2 + 88);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = &v26 - v7;
  v9 = *(v8 + 80);
  v32 = *(v10 + 96);
  v34 = v9;
  v35 = v5;
  v36 = v32;
  v11 = type metadata accessor for ResourceHub.ResourceState();
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v28 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = (&v26 - v17);
  v27 = *a1;
  swift_beginAccess();
  v19 = v2[14];

  v30 = a2;
  sub_25F304B8C();

  v20 = *(v11 - 8);
  if ((*(v20 + 48))(v18, 1, v11) == 1)
  {
    return (*(v13 + 8))(v18, v12);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    return (*(v20 + 8))(v18, v11);
  }

  v26 = &v26;
  v33 = *v18;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *&v23 = v9;
  *(&v23 + 1) = v5;
  v24 = v32;
  *(&v26 - 3) = v23;
  *(&v26 - 2) = v24;
  *(&v26 - 2) = v27;
  v34 = v9;
  v35 = v5;
  v36 = v24;
  type metadata accessor for ResourceHub.Request();
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30599C();
  (*(v29 + 16))(v31, v30, v5);
  v25 = v28;
  *v28 = v33;
  swift_storeEnumTagMultiPayload();
  (*(v20 + 56))(v25, 0, 1, v11);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F297550(uint64_t a1, uint64_t a2)
{
  v29 = *v2;
  v30 = a2;
  v28 = *(v29 + 96);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v27 - v7;
  v27 = &v27 - v7;
  v10 = *(v9 + 88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = sub_25F30546C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = v8;
  v21 = v28;
  (*(v4 + 16))(v20, v30, v28);
  v22 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v23 = (v12 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = *(v25 + 80);
  *(v24 + 5) = v10;
  *(v24 + 6) = v21;
  *(v24 + 7) = *(v25 + 104);
  *(v24 + 8) = v2;
  (*(v11 + 32))(&v24[v22], v14, v10);
  (*(v4 + 32))(&v24[v23], v27, v21);

  sub_25F297F60(0, 0, v18, &unk_25F312600, v24);

  return sub_25F1AF698(v18, &qword_27FD52B40, &qword_25F307EA0);
}

uint64_t sub_25F29786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*a4 + 88);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F297948, 0, 0);
}

uint64_t sub_25F297948()
{
  v1 = v0[2];
  v2 = *(v1 + 160);
  v8 = (*(v1 + 152) + **(v1 + 152));
  v3 = *(*(v1 + 152) + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_25F297A3C;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_25F297A3C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F297B80, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_25F297B80()
{
  v33 = v0;
  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_25F30479C();
  __swift_project_value_buffer(v7, qword_281561A40);
  v8 = *(v4 + 16);
  v8(v2, v5, v3);

  v9 = v1;
  v10 = sub_25F30477C();
  v11 = sub_25F305A0C();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = v0[10];
    v12 = v0[7];
    v28 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[2];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 136446978;
    *(v16 + 4) = sub_25F1C53AC(*(v15 + 120), *(v15 + 128), &v32);
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_25F1C53AC(*(v15 + 136), *(v15 + 144), &v32);
    *(v16 + 22) = 2082;
    v8(v12, v28, v14);
    v17 = sub_25F304E7C();
    v19 = v18;
    (*(v13 + 8))(v28, v14);
    v20 = sub_25F1C53AC(v17, v19, &v32);

    *(v16 + 24) = v20;
    *(v16 + 32) = 2114;
    v21 = v30;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 34) = v22;
    *v29 = v22;
    _os_log_impl(&dword_25F1A2000, v10, v11, "%{public}s was unable to bootstrap %{public}s for '%{public}s': %{public}@", v16, 0x2Au);
    sub_25F1AF698(v29, qword_27FD53838, &qword_25F309710);
    MEMORY[0x25F8D9510](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v31, -1, -1);
    MEMORY[0x25F8D9510](v16, -1, -1);
  }

  else
  {
    v23 = v0[8];
    v24 = v0[5];
    v25 = v0[6];

    (*(v25 + 8))(v23, v24);
  }

  v26 = v0[2];

  return MEMORY[0x2822009F8](sub_25F297E84, v26, 0);
}

uint64_t sub_25F297E84()
{
  v1 = v0[2];
  sub_25F298210(v0[10], v0[3]);

  return MEMORY[0x2822009F8](sub_25F297EF0, 0, 0);
}

uint64_t sub_25F297EF0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F297F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25F1B4740(a3, v27 - v11);
  v13 = sub_25F30546C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F1AF698(v12, &qword_27FD52B40, &qword_25F307EA0);
  }

  else
  {
    sub_25F30545C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25F3053EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25F304EAC() + 32;
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

uint64_t sub_25F298210(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = *(*v2 + 88);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v25 - v6;
  v9 = *(v8 + 80);
  v28 = *(v10 + 96);
  v30 = v9;
  v31 = v4;
  v32 = v28;
  v11 = type metadata accessor for ResourceHub.ResourceState();
  v12 = sub_25F305C1C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v25 - v17);
  swift_beginAccess();
  v19 = v2[14];

  sub_25F304B8C();

  v20 = *(v11 - 8);
  result = (*(v20 + 48))(v18, 1, v11);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      return (*(v20 + 8))(v18, v11);
    }

    else
    {
      v25[1] = v25;
      v25[0] = *v18;
      v29 = v25[0];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *&v23 = v9;
      *(&v23 + 1) = v4;
      v24 = v28;
      *&v25[-6] = v23;
      *&v25[-4] = v24;
      v25[-2] = v26;
      v30 = v9;
      v31 = v4;
      v32 = v24;
      type metadata accessor for ResourceHub.Request();
      sub_25F30539C();
      swift_getWitnessTable();
      *&v28 = v2;
      sub_25F3051BC();

      (*(v27 + 16))(v7, a2, v4);
      (*(v20 + 56))(v16, 1, 1, v11);
      swift_beginAccess();
      sub_25F304B4C();
      sub_25F304B9C();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_25F2985C0(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 8);
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
  *(&v6 + 1) = 123;
  v7 = 2;
  v8 = xmmword_25F312440;
  v9 = "handleBootstrapError(_:for:)";
  v10 = 28;
  v11 = 2;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v3 = type metadata accessor for Task.Promise();
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill<>(callsite:throwing:)(&v6, a2, v3, WitnessTable);
}

double sub_25F2986AC@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v2[15], v2[16]);
  MEMORY[0x25F8D7130](0xD000000000000020, 0x800000025F31A860);
  MEMORY[0x25F8D7130](v2[17], v2[18]);
  MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F31A890);
  v5 = *(v4 + 88);
  sub_25F30653C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  a1[3] = &type metadata for LowValueError;
  a1[4] = sub_25F29A320();
  v6 = swift_allocObject();
  *a1 = v6;
  result = 0.0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 64) = 0;
  return result;
}

uint64_t sub_25F2987D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0x746163696C707564, 0xEA00000000002065);
  v4 = v1[17];
  v5 = v1[18];
  MEMORY[0x25F8D7130](v4, v5);
  MEMORY[0x25F8D7130](43020312340000, 0xE600000000000000);
  v6 = *(v3 + 88);
  sub_25F30653C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0x6C616E696769724FLL, 0xE900000000000020);
  MEMORY[0x25F8D7130](v4, v5);
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v7 = *(v3 + 80);
  sub_25F30653C();
  MEMORY[0x25F8D7130](0x6163696C7075440ALL, 0xEB00000000206574);
  MEMORY[0x25F8D7130](v4, v5);
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  sub_25F30653C();
  a1[3] = &type metadata for LowValueError;
  a1[4] = sub_25F29A320();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
}

void *ResourceHub.deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[18];

  v4 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ResourceHub.__deallocating_deinit()
{
  ResourceHub.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t ResourceHub.requestResource(for:with:withTimeout:makeTimeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v9 = *v6;
  *(v7 + 80) = *v6;
  v10 = *(v9 + 96);
  *(v7 + 88) = v10;
  v11 = *(v10 - 8);
  *(v7 + 96) = v11;
  *(v7 + 104) = *(v11 + 64);
  *(v7 + 112) = swift_task_alloc();
  v12 = *(v9 + 88);
  *(v7 + 120) = v12;
  v13 = *(v12 - 8);
  *(v7 + 128) = v13;
  *(v7 + 136) = *(v13 + 64);
  *(v7 + 144) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a4;
  *(v7 + 152) = v14;
  *(v7 + 160) = v15;
  *(v7 + 25) = *(a4 + 8);

  return MEMORY[0x2822009F8](sub_25F298C20, v6, 0);
}

uint64_t sub_25F298C20()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  v21 = v2;
  v22 = v6;
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v23 = *(v0 + 80);
  v29 = *(v0 + 72);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 24) = v1;
  v24 = *(v4 + 16);
  v25 = v9;
  v24();
  (*(v7 + 16))(v6, v10, v8);
  v11 = *(v4 + 80);
  v12 = (v11 + 56) & ~v11;
  v19 = (v3 + *(v7 + 80) + v12) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v0 + 168) = v13;
  v30 = *(v23 + 80);
  *(v13 + 2) = v30;
  *(v13 + 3) = v5;
  *(v13 + 4) = v8;
  v20 = *(v23 + 104);
  *(v13 + 5) = v20;
  *(v13 + 6) = v29;
  v14 = *(v4 + 32);
  v14(&v13[v12], v21, v5);
  (*(v7 + 32))(&v13[v19], v22, v8);
  (v24)(v26, v25, v5);
  v15 = swift_allocObject();
  *(v0 + 176) = v15;
  *(v15 + 2) = v30;
  *(v15 + 3) = v5;
  *(v15 + 4) = v8;
  *(v15 + 5) = v20;
  *(v15 + 6) = v27;
  *(v15 + 7) = v28;
  *(v15 + 8) = v29;
  v14(&v15[(v11 + 72) & ~v11], v26, v5);
  swift_retain_n();
  sub_25F1D2078(v27);
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_25F298EE4;
  v17 = *(v0 + 32);

  return withTimeout<A>(_:perform:makeTimeoutError:)(v17, v0 + 16, &unk_25F312498, v13, &unk_25F3124A8, v15, v30);
}

uint64_t sub_25F298EE4()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v5 = v3[21];
    v4 = v3[22];
    v6 = v3[9];

    return MEMORY[0x2822009F8](sub_25F29906C, v6, 0);
  }

  else
  {
    v7 = v3[21];
    v8 = v3[22];
    v10 = v3[18];
    v9 = v3[19];
    v11 = v3[14];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_25F29906C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_25F2990E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F1AFDB0;

  return sub_25F294C5C(a1, a3, a4);
}

uint64_t sub_25F29919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_25F2991C4, 0, 0);
}

uint64_t sub_25F2991C4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = v1(*(v0 + 56));
  }

  else
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 56);
    sub_25F299360((v0 + 16));
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    v10 = *(v7 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, v7);
    v13 = *(*(v8 + 8) + 8);
    v14 = sub_25F30650C();
    if (v14)
    {
      v15 = v14;
      (*(v10 + 8))(v12, v7);
    }

    else
    {
      v15 = swift_allocError();
      (*(v10 + 32))(v16, v12, v7);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v3 = v15;
  }

  v17 = *(v0 + 8);

  return v17(v3);
}

double sub_25F299360@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v2[15], v2[16]);
  MEMORY[0x25F8D7130](0xD000000000000011, 0x800000025F31A820);
  sub_25F30561C();
  MEMORY[0x25F8D7130](0x6E69746961772073, 0xEE0020726F662067);
  MEMORY[0x25F8D7130](v2[17], v2[18]);
  MEMORY[0x25F8D7130](43020312340000, 0xE600000000000000);
  v5 = *(v4 + 88);
  sub_25F30653C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  a1[3] = &type metadata for LowValueError;
  a1[4] = sub_25F29A320();
  v6 = swift_allocObject();
  *a1 = v6;
  result = 0.0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 64) = 2;
  return result;
}

uint64_t ResourceHub.requestResource<>(for:withTimeout:makeTimeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = v5;
  v11 = *(a3 + 8);
  *(v6 + 16) = *a3;
  *(v6 + 24) = v11;
  v13 = swift_task_alloc();
  *(v6 + 40) = v13;
  *v13 = v6;
  v13[1] = sub_25F2995B0;

  return ResourceHub.requestResource(for:with:withTimeout:makeTimeoutError:)(a1, a2, v12, (v6 + 16), a4, a5);
}

uint64_t sub_25F2995B0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_25F2996E4, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25F299714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F295120(a1, v8, v4);
}

uint64_t sub_25F299818(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_25F2966C4(a1);
}

uint64_t sub_25F299838(uint64_t a1)
{
  v3 = v2;
  v5 = *(*(v1[3] - 8) + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = (v6 + *(*(v1[3] - 8) + 64) + *(*(v1[4] - 8) + 80)) & ~*(*(v1[4] - 8) + 80);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F1AFDB0;

  return sub_25F2990E4(a1, v8, v1 + v6, v1 + v7);
}

uint64_t sub_25F299974(double a1)
{
  v4 = (*(*(v1[3] - 8) + 80) + 72) & ~*(*(v1[3] - 8) + 80);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1EA6F4;

  return sub_25F29919C(v5, v6, v7, v1 + v4, a1);
}

uint64_t dispatch thunk of ResourceHub.requestResource(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25F1B51E0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ResourceHub.requestResource<>(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F1B51E0;

  return v10(a1, a2);
}

uint64_t sub_25F299DF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F299E30(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  type metadata accessor for ResourceHub.Request();
  result = sub_25F30539C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F299EC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_25F299FE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}