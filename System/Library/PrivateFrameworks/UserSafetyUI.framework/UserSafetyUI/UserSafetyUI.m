uint64_t sub_270B5A79C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_270B5BBA0(0, &qword_28084B920, &off_279E16208);
  result = sub_270B5C414();
  *a1 = result;
  return result;
}

uint64_t sub_270B5A7F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_270B5BBA0(0, &qword_28084B928, off_279E16200);
  result = sub_270B5C414();
  *a1 = result;
  return result;
}

uint64_t USUIMoreHelpContextMenuSwiftUI.USUIHelpMenuActions.init(messageSomeoneAction:blockContactAction:blockContactsAction:moreHelpAction:leaveChatAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t USUIMoreHelpContextMenuSwiftUI.init(options:contentView:showTitle:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() getCurrentInterventionType];
  (*(v12 + 16))(v15, a2, a5);
  v17 = USUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:showTitle:actions:)(a1, v16, v15, a3, a4, a5, a6);
  return (*(v12 + 8))(a2, a5, v17);
}

__n128 USUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:showTitle:actions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = [objc_opt_self() modelWithOptions:a1 interventionType:a2];
  v12 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI();
  (*(*(a6 - 8) + 32))(&a7[v12[9]], a3, a6);
  a7[v12[10]] = a4;
  v13 = &a7[v12[11]];
  v14 = *(a5 + 48);
  *(v13 + 2) = *(a5 + 32);
  *(v13 + 3) = v14;
  *(v13 + 4) = *(a5 + 64);
  result = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 1) = result;
  return result;
}

uint64_t USUIMoreHelpContextMenuSwiftUI.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28084B910, qword_270B5CBA0);
  v7 = *(a1 + 24);
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = sub_270B5BDEC(&qword_28084B918, &qword_28084B910, qword_270B5CBA0);
  v8 = sub_270B5C384();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  v23 = v5;
  v24 = v7;
  v25 = v2;
  v20 = v5;
  v21 = v7;
  v22 = v2;
  sub_270B5C374();
  swift_getWitnessTable();
  v16 = v9[2];
  v16(v15, v13, v8);
  v17 = v9[1];
  v17(v13, v8);
  v16(a2, v15, v8);
  return (v17)(v15, v8);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270B5AD28@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a4;
  v7 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI();
  v8 = *(v7 - 8);
  v48 = *(v8 + 64);
  (MEMORY[0x28223BE20])();
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B930, &qword_270B5CD80);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v59 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v46 - v14;
  v15 = *a1;
  if (*(a1 + *(v7 + 40)) == 1)
  {
    v16 = [*a1 title];
    v17 = a3;
    v18 = sub_270B5C3F4();
    v47 = a2;
    v20 = v19;

    v60 = v18;
    v61 = v20;
    sub_270B5BF5C();
    v21 = sub_270B5C394();
    v23 = v22;
    LOBYTE(v16) = v24;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v54 = v23;
    v55 = v21;
    v28 = v23;
    a3 = v17;
    v52 = v16 & 1;
    sub_270B5BEEC(v21, v28, v16 & 1);
    v29 = v26;
    a2 = v47;

    v53 = KeyPath;

    v51 = 1;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v29 = 0;
    v51 = 0;
  }

  v30 = [v15 actions];
  sub_270B5BBA0(0, &qword_28084B928, off_279E16200);
  v31 = sub_270B5C404();

  v60 = v31;
  v32 = v49;
  (*(v8 + 16))(v49, a1, v7);
  v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  (*(v8 + 32))(v34 + v33, v32, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B938, &qword_270B5CD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B940, &qword_270B5CD90);
  sub_270B5BDEC(&qword_28084B948, &qword_28084B938, &qword_270B5CD88);
  sub_270B5BDEC(&qword_28084B950, &qword_28084B940, &qword_270B5CD90);
  sub_270B5BE34();
  v35 = v58;
  sub_270B5C3E4();
  v37 = v56;
  v36 = v57;
  v49 = *(v56 + 16);
  (v49)(v59, v35, v57);
  v38 = v54;
  v39 = v55;
  v40 = v50;
  *v50 = v55;
  v40[1] = v38;
  v41 = v52;
  v42 = v53;
  v40[2] = v52;
  v40[3] = v29;
  v40[4] = v42;
  v40[5] = 0;
  *(v40 + 48) = v51;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B960, &qword_270B5CD98);
  (v49)(v40 + *(v43 + 48), v59, v36);
  sub_270B5BE9C(v39, v38, v41, v29);
  sub_270B5BEFC(v39, v38, v41, v29);
  v44 = *(v37 + 8);
  v44(v58, v36);
  v44(v59, v36);
  return sub_270B5BEFC(v39, v38, v41, v29);
}

uint64_t sub_270B5B228@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v28 = a4;
  v29 = a5;
  v7 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28084B970, &qword_270B5CDD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v26 - v13;
  v15 = *a1;
  v16 = [v15 title];
  v17 = sub_270B5C3F4();
  v19 = v18;

  v30 = v17;
  v31 = v19;
  if ([v15 destructive])
  {
    sub_270B5C324();
  }

  else
  {
    sub_270B5C334();
  }

  v20 = sub_270B5C344();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  (*(v8 + 16))(v11, v27, v7);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 2) = a3;
  *(v22 + 3) = v23;
  *(v22 + 4) = v15;
  (*(v8 + 32))(&v22[v21], v11, v7);
  sub_270B5BF5C();
  v24 = v15;
  return sub_270B5C3D4();
}

uint64_t sub_270B5B48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_270B5B624(uint64_t a1)
{
  result = sub_270B5BBA0(319, &qword_28084B920, &off_279E16208);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = type metadata accessor for USUIMoreHelpContextMenuSwiftUI.USUIHelpMenuActions();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_270B5B6E4(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_270B5B828(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFA8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_270B5B9F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_270B5BA54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_270B5BA9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270B5BAF0(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28084B910, qword_270B5CBA0);
  sub_270B5BDEC(&qword_28084B918, &qword_28084B910, qword_270B5CBA0);
  sub_270B5C384();
  return swift_getWitnessTable();
}

uint64_t sub_270B5BBA0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270B5BC30()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for USUIMoreHelpContextMenuSwiftUI() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v7 = (v0 + v5 + v3[13]);
  v8 = v7[1];

  v9 = v7[3];

  v10 = v7[5];

  v11 = v7[7];

  v12 = v7[9];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_270B5BD50@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for USUIMoreHelpContextMenuSwiftUI() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_270B5B228(a1, v8, v5, v6, a2);
}

uint64_t sub_270B5BDEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_270B5BE34()
{
  result = qword_28084B958;
  if (!qword_28084B958)
  {
    sub_270B5BBA0(255, &qword_28084B928, off_279E16200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28084B958);
  }

  return result;
}

uint64_t sub_270B5BE9C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_270B5BEEC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_270B5BEEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_270B5BEFC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_270B5BF4C(result, a2, a3 & 1);

    return MEMORY[0x2821FE838](a4);
  }

  return result;
}

uint64_t sub_270B5BF4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return MEMORY[0x2821FE838](a2);
  }
}

unint64_t sub_270B5BF5C()
{
  result = qword_28084B968;
  if (!qword_28084B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28084B968);
  }

  return result;
}

uint64_t sub_270B5BFB0@<X0>(uint64_t a1@<X8>)
{
  result = sub_270B5C354();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_270B5BFE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_270B5C364();
}

uint64_t sub_270B5C014()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for USUIMoreHelpContextMenuSwiftUI() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(*v3 + 64);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v7 = (v0 + v5 + v3[13]);
  v8 = v7[1];

  v9 = v7[3];

  v10 = v7[5];

  v11 = v7[7];

  v12 = v7[9];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_270B5C13C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI();
  v4 = v0[4];
  v5 = v0 + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));
  result = [v4 actionID];
  if (result <= 2)
  {
    if (result == 1)
    {
      v8 = &v5[*(v3 + 44)];
      v9 = (v8 + 1);
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v10 = &v5[*(v3 + 44)];
      v8 = (v10 + 48);
      v9 = (v10 + 56);
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        v11 = &v5[*(v3 + 44)];
        v8 = (v11 + 64);
        v9 = (v11 + 72);
        break;
      case 4:
        v12 = &v5[*(v3 + 44)];
        v8 = (v12 + 16);
        v9 = (v12 + 24);
        break;
      case 5:
        v7 = &v5[*(v3 + 44)];
        v8 = (v7 + 32);
        v9 = (v7 + 40);
        break;
      default:
        return result;
    }
  }

  v13 = *v9;
  return (*v8)();
}