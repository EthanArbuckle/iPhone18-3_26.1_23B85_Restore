uint64_t sub_22E479D74()
{
  v0 = sub_22E47CE94();
  v4 = sub_22E479DF4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22E479DF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22E47CE14();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22E47CEF4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22E479F4C(v9, 0);
  v12 = sub_22E479FC0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22E47CE14();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22E47CFA4();
LABEL_4:

  return sub_22E47CE14();
}

void *sub_22E479F4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643C0, &qword_22E47EEB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_22E479FC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22E47A1E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22E47CE64();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22E47CFA4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22E47A1E0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22E47CE44();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22E47A1E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22E47CE74();
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
    v5 = MEMORY[0x2318E6DD0](15, a1 >> 16);
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

unint64_t SymbolMetadata.privateScalar.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E46CE0C(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    v7 = 0;
  }

  else
  {
    v7 = *v5;
    v8 = *(v5 + 2);
    v9 = *(v5 + 5);
    v10 = *(v5 + 6);
    v11 = *(v5 + 7);
    v12 = *(v5 + 10);
    v13 = *(v5 + 12);
    v14 = *(v5 + 54);
    v20[6] = *(v5 + 50);
    v20[7] = v14;
    v15 = *(v5 + 62);
    v20[8] = *(v5 + 58);
    v20[9] = v15;
    v16 = *(v5 + 38);
    v20[2] = *(v5 + 34);
    v20[3] = v16;
    v17 = *(v5 + 46);
    v20[4] = *(v5 + 42);
    v20[5] = v17;
    v18 = *(v5 + 30);
    v20[0] = *(v5 + 26);
    v20[1] = v18;
    sub_22E467010(v20);
  }

  return v7 | ((EnumCaseMultiPayload == 1) << 32);
}

uint64_t SymbolMetadata.publicScalars.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v5 + 5);
    v6 = *(v5 + 6);
    v9 = *(v5 + 7);
    v10 = *(v5 + 10);
    v11 = *(v5 + 12);
    v12 = *(v5 + 216);
    v18[6] = *(v5 + 200);
    v18[7] = v12;
    v13 = *(v5 + 248);
    v18[8] = *(v5 + 232);
    v18[9] = v13;
    v14 = *(v5 + 152);
    v18[2] = *(v5 + 136);
    v18[3] = v14;
    v15 = *(v5 + 184);
    v18[4] = *(v5 + 168);
    v18[5] = v15;
    v16 = *(v5 + 120);
    v18[0] = *(v5 + 104);
    v18[1] = v16;
    sub_22E467010(v18);
  }

  return v6;
}

uint64_t SymbolMetadata.name.getter()
{
  v1 = type metadata accessor for CustomSymbol();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymbolMetadata.Backing(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v8, v4);
    v9 = &v4[*(v1 + 20)];
    v10 = *v9;
    v11 = *(v9 + 1);

    sub_22E46D074(v4, type metadata accessor for CustomSymbol);
  }

  else
  {
    v10 = *(v8 + 1);
    v12 = *(v8 + 2);
    v13 = *(v8 + 5);
    v14 = *(v8 + 6);
    v15 = *(v8 + 7);
    v16 = *(v8 + 10);
    v17 = *(v8 + 12);
    v18 = *(v8 + 216);
    v24[6] = *(v8 + 200);
    v24[7] = v18;
    v19 = *(v8 + 248);
    v24[8] = *(v8 + 232);
    v24[9] = v19;
    v20 = *(v8 + 152);
    v24[2] = *(v8 + 136);
    v24[3] = v20;
    v21 = *(v8 + 184);
    v24[4] = *(v8 + 168);
    v24[5] = v21;
    v22 = *(v8 + 120);
    v24[0] = *(v8 + 104);
    v24[1] = v22;
    sub_22E467010(v24);
  }

  return v10;
}

char *SymbolMetadata.aliases.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_22E46CE0C(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = *v5;
    v8 = *(v5 + 1);
    v9 = *(v5 + 2);
    v10 = *(v5 + 56);
    v30 = *(v5 + 40);
    v31 = v10;
    v32 = *(v5 + 72);
    v33 = *(v5 + 88);
    v29 = *(v5 + 24);
    v11 = *(v5 + 216);
    v24 = *(v5 + 200);
    v25 = v11;
    v12 = *(v5 + 248);
    v26 = *(v5 + 232);
    v27 = v12;
    v13 = *(v5 + 152);
    v20 = *(v5 + 136);
    v21 = v13;
    v14 = *(v5 + 184);
    v22 = *(v5 + 168);
    v23 = v14;
    v15 = *(v5 + 120);
    *&v18[264] = *(v5 + 104);
    v19 = v15;
    v28[0] = v7;
    v28[1] = v8;
    v28[2] = v9;
    v40 = *(v5 + 200);
    v41 = *(v5 + 216);
    v42 = *(v5 + 232);
    v43 = *(v5 + 248);
    v36 = *(v5 + 136);
    v37 = *(v5 + 152);
    v38 = *(v5 + 168);
    v39 = *(v5 + 184);
    v34 = *(v5 + 104);
    v35 = *(v5 + 120);
    sub_22E46D734(v28, v18);
    v16 = sub_22E45BAF4(v8, v9);
    sub_22E46D7A4(v28);
    sub_22E46D7A4(v28);
    return v16;
  }
}

uint64_t SymbolMetadata.tags.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
  }

  else
  {
    v6 = *v4;
    v5 = *(v4 + 1);
    v7 = *(v4 + 2);
    v8 = *(v4 + 56);
    v23 = *(v4 + 40);
    v24 = v8;
    v9 = *(v4 + 88);
    v25 = *(v4 + 72);
    v26 = v9;
    v22 = *(v4 + 24);
    v10 = *(v4 + 120);
    v27 = *(v4 + 104);
    v28 = v10;
    v11 = *(v4 + 17);
    v12 = *(v4 + 11);
    v33 = *(v4 + 12);
    v32 = v12;
    v13 = *(v4 + 9);
    v31 = *(v4 + 10);
    v30 = v13;
    v37 = *(v4 + 32);
    v14 = *(v4 + 14);
    v36 = *(v4 + 15);
    v15 = *(v4 + 13);
    v35 = v14;
    v34 = v15;
    v21[0] = v6;
    v21[1] = v5;
    v21[2] = v7;
    v29 = v11;
    if (*(v11 + 16))
    {
      v16 = sub_22E450B0C(v5, v7);
      if (v17)
      {
        v18 = *(*(v11 + 56) + 8 * v16);

        sub_22E46D7A4(v21);
        return v18;
      }
    }

    sub_22E46D7A4(v21);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t SymbolMetadata.functions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v5 + 5);
    v9 = *(v5 + 6);
    v6 = *(v5 + 7);
    v10 = *(v5 + 10);
    v11 = *(v5 + 12);
    v12 = *(v5 + 216);
    v18[6] = *(v5 + 200);
    v18[7] = v12;
    v13 = *(v5 + 248);
    v18[8] = *(v5 + 232);
    v18[9] = v13;
    v14 = *(v5 + 152);
    v18[2] = *(v5 + 136);
    v18[3] = v14;
    v15 = *(v5 + 184);
    v18[4] = *(v5 + 168);
    v18[5] = v15;
    v16 = *(v5 + 120);
    v18[0] = *(v5 + 104);
    v18[1] = v16;
    sub_22E467010(v18);
  }

  return v6;
}

uint64_t SymbolMetadata.localeSuffix.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v6 = *(v4 + 2);
    v5 = *(v4 + 4);
    v7 = *(v4 + 5);
    v8 = *(v4 + 6);
    v9 = *(v4 + 7);
    v10 = *(v4 + 10);
    v11 = *(v4 + 12);
    v12 = *(v4 + 216);
    v18[6] = *(v4 + 200);
    v18[7] = v12;
    v13 = *(v4 + 248);
    v18[8] = *(v4 + 232);
    v18[9] = v13;
    v14 = *(v4 + 152);
    v18[2] = *(v4 + 136);
    v18[3] = v14;
    v15 = *(v4 + 184);
    v18[4] = *(v4 + 168);
    v18[5] = v15;
    v16 = *(v4 + 120);
    v18[0] = *(v4 + 104);
    v18[1] = v16;
    sub_22E467010(v18);
  }

  return v5;
}

uint64_t SymbolMetadata.key.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CustomSymbol();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolMetadata.Backing(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v11, v7);
    v12 = sub_22E47CD64();
    (*(*(v12 - 8) + 16))(a1, v7, v12);
    sub_22E46D074(v7, type metadata accessor for CustomSymbol);
  }

  else
  {
    v13 = *v11;
    v14 = *(v11 + 2);
    v15 = *(v11 + 5);
    v16 = *(v11 + 6);
    v17 = *(v11 + 7);
    v18 = *(v11 + 10);
    v19 = *(v11 + 12);
    v20 = *(v11 + 216);
    v26[6] = *(v11 + 200);
    v26[7] = v20;
    v21 = *(v11 + 248);
    v26[8] = *(v11 + 232);
    v26[9] = v21;
    v22 = *(v11 + 152);
    v26[2] = *(v11 + 136);
    v26[3] = v22;
    v23 = *(v11 + 184);
    v26[4] = *(v11 + 168);
    v26[5] = v23;
    v24 = *(v11 + 120);
    v26[0] = *(v11 + 104);
    v26[1] = v24;
    sub_22E467010(v26);

    *a1 = v13;
  }

  type metadata accessor for SymbolKey(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t SymbolMetadata.additionalCSVColumns.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return sub_22E4509F8(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = *(v4 + 2);
    v7 = *(v4 + 5);
    v8 = *(v4 + 6);
    v9 = *(v4 + 7);
    v10 = *(v4 + 10);
    v11 = *(v4 + 12);
    v12 = *(v4 + 216);
    v17[6] = *(v4 + 200);
    v17[7] = v12;
    v13 = *(v4 + 248);
    v17[8] = *(v4 + 232);
    v17[9] = v13;
    v14 = *(v4 + 152);
    v17[2] = *(v4 + 136);
    v17[3] = v14;
    v15 = *(v4 + 184);
    v17[4] = *(v4 + 168);
    v17[5] = v15;
    v16 = *(v4 + 120);
    v17[0] = *(v4 + 104);
    v17[1] = v16;
    sub_22E467010(v17);

    return v11;
  }
}

uint64_t SymbolMetadata.useRestrictionsDescription.getter()
{
  v1 = type metadata accessor for SymbolMetadata.Backing(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v4, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v6 = *(v4 + 2);
    v7 = *(v4 + 5);
    v8 = *(v4 + 6);
    v9 = *(v4 + 7);
    v5 = *(v4 + 9);
    v10 = *(v4 + 10);
    v11 = *(v4 + 12);
    v12 = *(v4 + 216);
    v18[6] = *(v4 + 200);
    v18[7] = v12;
    v13 = *(v4 + 248);
    v18[8] = *(v4 + 232);
    v18[9] = v13;
    v14 = *(v4 + 152);
    v18[2] = *(v4 + 136);
    v18[3] = v14;
    v15 = *(v4 + 184);
    v18[4] = *(v4 + 168);
    v18[5] = v15;
    v16 = *(v4 + 120);
    v18[0] = *(v4 + 104);
    v18[1] = v16;
    sub_22E467010(v18);
  }

  return v5;
}

uint64_t SymbolMetadata.useRestrictionsLocalizedDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  sub_22E46CE0C(v1, v33 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v8, type metadata accessor for SymbolMetadata.Backing);
  }

  else
  {
    v9 = *(v8 + 5);
    v49[4] = *(v8 + 4);
    v49[5] = v9;
    v50 = *(v8 + 12);
    v10 = *(v8 + 1);
    v49[0] = *v8;
    v49[1] = v10;
    v11 = *(v8 + 3);
    v49[2] = *(v8 + 2);
    v49[3] = v11;
    v12 = *(v8 + 120);
    v39 = *(v8 + 104);
    v40 = v12;
    v13 = *(v8 + 136);
    v14 = *(v8 + 152);
    v15 = *(v8 + 184);
    v43 = *(v8 + 168);
    v44 = v15;
    v41 = v13;
    v42 = v14;
    v16 = *(v8 + 200);
    v17 = *(v8 + 216);
    v18 = *(v8 + 248);
    v47 = *(v8 + 232);
    v48 = v18;
    v45 = v16;
    v46 = v17;
    v57 = *(v8 + 200);
    v58 = *(v8 + 216);
    v59 = *(v8 + 232);
    v60 = *(v8 + 248);
    v53 = *(v8 + 136);
    v54 = *(v8 + 152);
    v55 = *(v8 + 168);
    v56 = *(v8 + 184);
    v51 = *(v8 + 104);
    v52 = *(v8 + 120);
    sub_22E46CE0C(v1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22E46D7A4(v49);
      sub_22E46D074(v6, type metadata accessor for SymbolMetadata.Backing);
    }

    else
    {
      v19 = *(v6 + 5);
      v35 = *(v6 + 4);
      v36 = v19;
      v37 = *(v6 + 12);
      v20 = *(v6 + 1);
      v34[0] = *v6;
      v34[1] = v20;
      v21 = *(v6 + 3);
      v34[2] = *(v6 + 2);
      v34[3] = v21;
      v22 = *(v6 + 120);
      v38[0] = *(v6 + 104);
      v38[1] = v22;
      v23 = *(v6 + 136);
      v24 = *(v6 + 152);
      v25 = *(v6 + 184);
      v38[4] = *(v6 + 168);
      v38[5] = v25;
      v38[2] = v23;
      v38[3] = v24;
      v26 = *(v6 + 200);
      v27 = *(v6 + 216);
      v28 = *(v6 + 248);
      v38[8] = *(v6 + 232);
      v38[9] = v28;
      v38[6] = v26;
      v38[7] = v27;
      sub_22E467010(v38);
      v30 = *(&v35 + 1);
      v29 = v36;

      sub_22E465940(v34);
      if (v29)
      {
        v33[6] = v45;
        v33[7] = v46;
        v33[8] = v47;
        v33[9] = v48;
        v33[2] = v41;
        v33[3] = v42;
        v33[4] = v43;
        v33[5] = v44;
        v33[0] = v39;
        v33[1] = v40;
        v31 = sub_22E470AC4(v30, v29);

        sub_22E46D7A4(v49);
        return v31;
      }

      sub_22E46D7A4(v49);
    }
  }

  return 0;
}

uint64_t SymbolMetadata.accessLevel.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v7, type metadata accessor for SymbolMetadata.Backing);
    v9 = 0;
  }

  else
  {
    v10 = *(v7 + 2);
    v11 = *(v7 + 5);
    v12 = *(v7 + 6);
    v13 = *(v7 + 7);
    v9 = v7[64];
    v14 = *(v7 + 10);
    v15 = *(v7 + 12);
    v16 = *(v7 + 216);
    v21[6] = *(v7 + 200);
    v21[7] = v16;
    v17 = *(v7 + 248);
    v21[8] = *(v7 + 232);
    v21[9] = v17;
    v18 = *(v7 + 152);
    v21[2] = *(v7 + 136);
    v21[3] = v18;
    v19 = *(v7 + 184);
    v21[4] = *(v7 + 168);
    v21[5] = v19;
    v20 = *(v7 + 120);
    v21[0] = *(v7 + 104);
    v21[1] = v20;
    sub_22E467010(v21);
  }

  *a1 = v9;
  return result;
}

uint64_t SymbolMetadata.mirrorForRTL.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v7 = *(v5 + 2);
    v6 = v5[24];
    v8 = *(v5 + 5);
    v9 = *(v5 + 6);
    v10 = *(v5 + 7);
    v11 = *(v5 + 10);
    v12 = *(v5 + 12);
    v13 = *(v5 + 216);
    v19[6] = *(v5 + 200);
    v19[7] = v13;
    v14 = *(v5 + 248);
    v19[8] = *(v5 + 232);
    v19[9] = v14;
    v15 = *(v5 + 152);
    v19[2] = *(v5 + 136);
    v19[3] = v15;
    v16 = *(v5 + 184);
    v19[4] = *(v5 + 168);
    v19[5] = v16;
    v17 = *(v5 + 120);
    v19[0] = *(v5 + 104);
    v19[1] = v17;
    sub_22E467010(v19);
  }

  return v6;
}

uint64_t SymbolMetadata.glyphOrder.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22E46CE0C(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v5, type metadata accessor for SymbolMetadata.Backing);
    return 0;
  }

  else
  {
    v7 = *v5;
    v20 = *(v5 + 13);
    v21 = *(v5 + 17);
    v22 = *(v5 + 21);
    v8 = v5[25];
    v17 = *(v5 + 1);
    v18 = *(v5 + 5);
    v19 = *(v5 + 9);
    v9 = *(v5 + 54);
    v15[6] = *(v5 + 50);
    v15[7] = v9;
    v10 = *(v5 + 62);
    v15[8] = *(v5 + 58);
    v15[9] = v10;
    v11 = *(v5 + 38);
    v15[2] = *(v5 + 34);
    v15[3] = v11;
    v12 = *(v5 + 46);
    v15[4] = *(v5 + 42);
    v15[5] = v12;
    v13 = *(v5 + 30);
    v15[0] = *(v5 + 26);
    v15[1] = v13;
    v23 = v8;
    v16 = v7;
    v30 = *(v5 + 50);
    v31 = *(v5 + 54);
    v32 = *(v5 + 58);
    v33 = *(v5 + 62);
    v26 = *(v5 + 34);
    v27 = *(v5 + 38);
    v28 = *(v5 + 42);
    v29 = *(v5 + 46);
    v24 = *(v5 + 26);
    v25 = *(v5 + 30);
    v14 = sub_22E470488(v7);
    sub_22E46D7A4(&v16);
    return v14;
  }
}

uint64_t SymbolMetadata.availability(for:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SymbolMetadata.Backing(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  sub_22E46CE0C(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v9, type metadata accessor for SymbolMetadata.Backing);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v13 = *v9;
    v14 = *(v9 + 1);
    v15 = *(v9 + 2);
    v16 = *(v9 + 56);
    v37 = *(v9 + 40);
    v38 = v16;
    v39 = *(v9 + 72);
    v40 = *(v9 + 88);
    v36 = *(v9 + 24);
    v17 = *(v9 + 216);
    v31 = *(v9 + 200);
    v32 = v17;
    v18 = *(v9 + 248);
    v33 = *(v9 + 232);
    v34 = v18;
    v19 = *(v9 + 152);
    v27 = *(v9 + 136);
    v28 = v19;
    v20 = *(v9 + 184);
    v29 = *(v9 + 168);
    v30 = v20;
    v21 = *(v9 + 120);
    v25 = *(v9 + 104);
    v26 = v21;
    v35[0] = v13;
    v35[1] = v14;
    v35[2] = v15;
    v47 = *(v9 + 200);
    v48 = *(v9 + 216);
    v49 = *(v9 + 232);
    v50 = *(v9 + 248);
    v43 = *(v9 + 136);
    v44 = *(v9 + 152);
    v45 = *(v9 + 168);
    v46 = *(v9 + 184);
    v41 = *(v9 + 104);
    v42 = *(v9 + 120);
    v24[0] = v10;
    v24[1] = v11;
    sub_22E46D734(v35, &v23);
    sub_22E471DCC(v24, v14, v15, a2);
    sub_22E46D7A4(v35);
    return sub_22E46D7A4(v35);
  }

  return result;
}

uint64_t SymbolMetadata.defaultRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v7, type metadata accessor for SymbolMetadata.Backing);
    v9 = 4;
  }

  else
  {
    v10 = *(v7 + 3);
    v12[2] = *(v7 + 2);
    v12[3] = v10;
    v12[4] = *(v7 + 4);
    v13 = *(v7 + 10);
    v11 = *(v7 + 1);
    v12[0] = *v7;
    v12[1] = v11;
    v9 = v7[88];
    v25 = *(v7 + 248);
    v24 = *(v7 + 232);
    v23 = *(v7 + 216);
    v22 = *(v7 + 200);
    v21 = *(v7 + 184);
    v20 = *(v7 + 168);
    v19 = *(v7 + 152);
    v18 = *(v7 + 136);
    v16 = *(v7 + 104);
    v17 = *(v7 + 120);
    v14 = v9;
    *v15 = *(v7 + 89);
    *&v15[7] = *(v7 + 12);
    result = sub_22E46D7A4(v12);
  }

  *a1 = v9;
  return result;
}

__n128 SymbolMetadata.csvRow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E46CE0C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v7, type metadata accessor for SymbolMetadata.Backing);
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0;
  }

  else
  {
    v9 = *(v7 + 5);
    v26 = *(v7 + 4);
    v27 = v9;
    v28 = *(v7 + 12);
    v10 = *(v7 + 1);
    v22 = *v7;
    v23 = v10;
    v11 = *(v7 + 3);
    v24 = *(v7 + 2);
    v25 = v11;
    v12 = *(v7 + 120);
    v21[0] = *(v7 + 104);
    v21[1] = v12;
    v13 = *(v7 + 136);
    v14 = *(v7 + 152);
    v15 = *(v7 + 184);
    v21[4] = *(v7 + 168);
    v21[5] = v15;
    v21[2] = v13;
    v21[3] = v14;
    v16 = *(v7 + 200);
    v17 = *(v7 + 216);
    v18 = *(v7 + 248);
    v21[8] = *(v7 + 232);
    v21[9] = v18;
    v21[6] = v16;
    v21[7] = v17;
    sub_22E467010(v21);
    v19 = v27;
    *(a1 + 64) = v26;
    *(a1 + 80) = v19;
    *(a1 + 96) = v28;
    v20 = v23;
    *a1 = v22;
    *(a1 + 16) = v20;
    result = v25;
    *(a1 + 32) = v24;
    *(a1 + 48) = result;
  }

  return result;
}

Swift::String_optional __swiftcall SymbolMetadata.string(for:)(SFSymbols::SymbolProperty a1)
{
  v2 = v1;
  countAndFlagsBits = a1.rawValue._countAndFlagsBits;
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *countAndFlagsBits;
  v9 = countAndFlagsBits[1];
  sub_22E46CE0C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v7, type metadata accessor for SymbolMetadata.Backing);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = *v7;
    v13 = *(v7 + 1);
    v14 = *(v7 + 2);
    v15 = *(v7 + 56);
    v40 = *(v7 + 40);
    v41 = v15;
    v42 = *(v7 + 72);
    v43 = *(v7 + 88);
    v39 = *(v7 + 24);
    v16 = *(v7 + 216);
    v34 = *(v7 + 200);
    v35 = v16;
    v17 = *(v7 + 248);
    v36 = *(v7 + 232);
    v37 = v17;
    v18 = *(v7 + 152);
    v30 = *(v7 + 136);
    v31 = v18;
    v19 = *(v7 + 184);
    v32 = *(v7 + 168);
    v33 = v19;
    v20 = *(v7 + 120);
    v28 = *(v7 + 104);
    v29 = v20;
    v38[0] = v12;
    v38[1] = v13;
    v38[2] = v14;
    v50 = *(v7 + 200);
    v51 = *(v7 + 216);
    v52 = *(v7 + 232);
    v53 = *(v7 + 248);
    v46 = *(v7 + 136);
    v47 = *(v7 + 152);
    v48 = *(v7 + 168);
    v49 = *(v7 + 184);
    v44 = *(v7 + 104);
    v45 = *(v7 + 120);
    v27[0] = v8;
    v27[1] = v9;
    sub_22E46D734(v38, &v26);
    v21 = sub_22E471EBC(v27, v13, v14);
    v23 = v22;
    sub_22E46D7A4(v38);
    sub_22E46D7A4(v38);
    v11 = v23;
    v10 = v21;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_22E47C01C()
{
  result = type metadata accessor for SymbolMetadata.Backing(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22E47C088()
{
  sub_22E47C0FC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CustomSymbol();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22E47C0FC()
{
  if (!qword_27DA640E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA640E0);
    }
  }
}

uint64_t CustomSymbol.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22E47CD64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CustomSymbol.name.getter()
{
  v1 = (v0 + *(type metadata accessor for CustomSymbol() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CustomSymbol()
{
  result = qword_27DA64120;
  if (!qword_27DA64120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomSymbol.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CustomSymbol() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CustomSymbol.init(uuid:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22E47CD64();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CustomSymbol();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_22E47C390()
{
  result = sub_22E47CD64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double SymbolMetadataQuery.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 65792;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  return result;
}

Swift::Void __swiftcall SymbolMetadataQuery.limitResults(to:)(SFSymbols::SymbolCategory::Key to)
{
  v3 = *to.rawValue._countAndFlagsBits;
  v2 = *(to.rawValue._countAndFlagsBits + 8);
  v4 = v1[1];

  *v1 = v3;
  v1[1] = v2;
}

uint64_t SymbolMetadataQuery.searchString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SymbolMetadataQuery.searchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SymbolMetadataQuery.addSymbolKeyFilter(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 40);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E478EA4(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_22E478EA4((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_22E47C938;
  v10[5] = v5;
  *(v2 + 40) = v6;
  return result;
}

uint64_t SymbolMetadataQuery.addSymbolMetadataFilter(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 48);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E478EB8(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_22E478EB8((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_22E47C838;
  v10[5] = v5;
  *(v2 + 48) = v6;
  return result;
}

uint64_t SymbolMetadataQuery.addSearchTermFilter(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 56);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E478FF8(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_22E478FF8((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = (v9 + 32 * v12);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  *(v4 + 56) = v9;
  return result;
}

uint64_t sub_22E47C838@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22E47C880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E47C8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SymbolFeature.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void static SymbolFeature.hierarchical.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "hierarchical");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_22E47C9F0()
{
  result = qword_27DA64118;
  if (!qword_27DA64118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64118);
  }

  return result;
}

uint64_t name_aliases.getter()
{
  if (qword_280AC2DF8 != -1)
  {
    swift_once();
  }
}