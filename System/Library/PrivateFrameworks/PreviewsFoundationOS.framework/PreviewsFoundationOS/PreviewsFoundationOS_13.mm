BOOL UserDefault.Projected<>.isDifferentFromDefault.getter(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  return (sub_25F304DCC() & 1) == 0;
}

Swift::Double_optional __swiftcall Double.init(userDefaultsKey:userDefaults:)(Swift::String userDefaultsKey, NSUserDefaults userDefaults)
{
  v2 = sub_25F2CF63C(userDefaultsKey._countAndFlagsBits, userDefaultsKey._object, userDefaults.super.isa);
  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t sub_25F2CEF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25F2CF63C(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

Swift::Int_optional __swiftcall Int.init(userDefaultsKey:userDefaults:)(Swift::String userDefaultsKey, NSUserDefaults userDefaults)
{
  v2 = sub_25F2CF898(userDefaultsKey._countAndFlagsBits, userDefaultsKey._object, userDefaults.super.isa);
  v4 = v3 & 1;
  result.value = v2;
  result.is_nil = v4;
  return result;
}

id sub_25F2CEF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25F2CF898(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_25F2CEFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_25F2CF000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25F2CF764(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

Swift::String_optional __swiftcall String.init(userDefaultsKey:userDefaults:)(Swift::String userDefaultsKey, NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;
  v3 = sub_25F304DDC();
  v4 = [(objc_class *)isa objectForKey:v3];

  if (!v4)
  {

    memset(v14, 0, sizeof(v14));
    sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
LABEL_6:
    v11 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  sub_25F305DDC();
  swift_unknownObjectRelease();
  sub_25F1B707C(&v13, v14);
  sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
  v5 = sub_25F304DDC();

  v6 = [(objc_class *)isa stringForKey:v5];

  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = sub_25F304E0C();
  v9 = v8;

  v10 = v9;
  v11 = v7;
LABEL_7:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t Optional<A>.init(userDefaultsKey:userDefaults:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  (*(a1 + 24))();
  v3 = sub_25F305C1C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_25F2CF238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_25F304E0C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_25F305DDC();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_25F2D0974(&qword_27FD52B30, type metadata accessor for NSKeyValueChangeKey);
  v10 = sub_25F304A6C();

LABEL_8:
  sub_25F2D06E0(v14, v10);

  return sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
}

void sub_25F2CF36C()
{
  v1 = *(v0 + qword_27FD583D8);
  v2 = *(v0 + qword_27FD583E0);
  v3 = *(v0 + qword_27FD583E0 + 8);
  v4 = sub_25F304DDC();
  [v1 removeObserver:v0 forKeyPath:v4];
}

void sub_25F2CF3E0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_25F2D0944();
}

id sub_25F2CF420()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UserDefaultObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25F2CF490(uint64_t a1)
{
  v2 = *(a1 + qword_27FD583E0 + 8);

  v3 = *(a1 + qword_27FD583E8 + 8);
}

uint64_t _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v9, v10);
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    v7 = [a3 BOOLForKey_];
  }

  else
  {

    memset(v10, 0, sizeof(v10));
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    return 2;
  }

  return v7;
}

uint64_t sub_25F2CF63C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v10, v11);
    sub_25F1AF698(v11, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    [a3 doubleForKey_];
    v8 = v7;

    return v8;
  }

  else
  {

    memset(v11, 0, sizeof(v11));
    sub_25F1AF698(v11, &qword_27FD53DF8, &unk_25F30A470);
    return 0;
  }
}

unint64_t sub_25F2CF764(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v11, v12);
    sub_25F1AF698(v12, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    [a3 floatForKey_];
    v8 = v7;

    v9 = v8;
  }

  else
  {

    memset(v12, 0, sizeof(v12));
    sub_25F1AF698(v12, &qword_27FD53DF8, &unk_25F30A470);
    v9 = 0;
  }

  return v9 | ((v5 == 0) << 32);
}

id sub_25F2CF898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v9, v10);
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    v7 = [a3 integerForKey_];
  }

  else
  {

    memset(v10, 0, sizeof(v10));
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    return 0;
  }

  return v7;
}

id sub_25F2CF9B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x277D85000];
  *(v5 + qword_27FD583D8) = a1;
  v9 = (v5 + qword_27FD583E0);
  *v9 = a2;
  v9[1] = a3;
  v10 = (v5 + qword_27FD583E8);
  *v10 = a4;
  v10[1] = a5;
  v11 = *((v8 & v7) + 0x50);
  v12 = *((v8 & v7) + 0x58);
  v17.receiver = v5;
  v17.super_class = type metadata accessor for UserDefaultObserver();
  v13 = a1;

  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_25F304DDC();

  [v13 addObserver:v14 forKeyPath:v15 options:1 context:{0, v17.receiver, v17.super_class}];

  return v14;
}

id sub_25F2CFAE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  v13 = objc_allocWithZone(type metadata accessor for UserDefaultObserver());
  return sub_25F2CF9B8(a1, a2, a3, a4, a5);
}

void sub_25F2CFB54()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_25F2CEE5C(v0[4]);
}

uint64_t sub_25F2CFB60(uint64_t a1)
{
  v2 = MEMORY[0x277CC9578];
  *(a1 + 8) = sub_25F2D0974(&qword_27FD582B8, MEMORY[0x277CC9578]);
  result = sub_25F2D0974(qword_27FD582C0, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F2CFBE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_25F2CFC84(uint64_t a1)
{
  sub_25F2D0158();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_25F305C1C();
    if (v4 <= 0x3F)
    {
      sub_25F1D67AC();
      if (v5 <= 0x3F)
      {
        sub_25F3041FC();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25F2CFD54(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 25) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_25F2CFEE4(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_25F2D0158()
{
  if (!qword_27FD58348)
  {
    sub_25F2D01B0();
    v0 = type metadata accessor for UncheckedSendable();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD58348);
    }
  }
}

unint64_t sub_25F2D01B0()
{
  result = qword_27FD58350[0];
  if (!qword_27FD58350[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD58350);
  }

  return result;
}

uint64_t sub_25F2D01FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2D027C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_25F2D040C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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

uint64_t sub_25F2D06E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v22 - v14;
  if (a2 && *(a2 + 16) && (v16 = sub_25F219598(*MEMORY[0x277CCA2F0]), (v17 & 1) != 0))
  {
    sub_25F1B7118(*(a2 + 56) + 32 * v16, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DF8, &unk_25F30A470);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v11, 0, 1, v5);
    (*(v12 + 32))(v15, v11, v5);
    v20 = *(v3 + qword_27FD583E8 + 8);
    (*(v3 + qword_27FD583E8))(v15);
    return (*(v12 + 8))(v15, v5);
  }

  else
  {
    v19(v11, 1, 1, v5);
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_25F2D0974(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 CrashReport.Frame.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 CrashReport.init(id:name:bugType:pid:time:asi:termination:images:frames:logFilePath:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_25F1B6FA8(a1, a9);
  v22 = type metadata accessor for CrashReport(0);
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[6]);
  *v24 = a4;
  v24[1] = a5;
  *(a9 + v22[7]) = a6;
  v25 = v22[8];
  v26 = sub_25F30462C();
  (*(*(v26 - 8) + 32))(a9 + v25, a7, v26);
  *(a9 + v22[9]) = a8;
  v27 = a9 + v22[10];
  v28 = *(a10 + 80);
  *(v27 + 64) = *(a10 + 64);
  *(v27 + 80) = v28;
  *(v27 + 96) = *(a10 + 96);
  v29 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v29;
  result = *(a10 + 48);
  *(v27 + 32) = *(a10 + 32);
  *(v27 + 48) = result;
  *(a9 + v22[11]) = a11;
  *(a9 + v22[12]) = a12;
  v31 = (a9 + v22[13]);
  *v31 = a13;
  v31[1] = a14;
  return result;
}

uint64_t CrashReport.ID.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F30467C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CrashReport.ID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F30467C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CrashReport.ID.hash(into:)()
{
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0]);

  return sub_25F304BDC();
}

uint64_t CrashReport.ID.hashValue.getter()
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F2D0D54()
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F2D0DDC()
{
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0]);

  return sub_25F304BDC();
}

uint64_t sub_25F2D0E60()
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t CrashReport.name.getter()
{
  v1 = (v0 + *(type metadata accessor for CrashReport(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CrashReport.bugType.getter()
{
  v1 = (v0 + *(type metadata accessor for CrashReport(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CrashReport.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CrashReport(0) + 32);
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CrashReport.asi.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 36));
}

uint64_t CrashReport.termination.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CrashReport(0) + 40));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[6] = v6;
  return sub_25F2D10E4(v12, &v11);
}

uint64_t sub_25F2D10E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58470, &qword_25F314F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CrashReport.images.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 44));
}

uint64_t CrashReport.frames.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 48));
}

uint64_t CrashReport.frames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CrashReport(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CrashReport.logFilePath.getter()
{
  v1 = (v0 + *(type metadata accessor for CrashReport(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CrashReport.Termination.flags.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CrashReport.Termination.code.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CrashReport.Termination.namespace.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CrashReport.Termination.indicator.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CrashReport.Termination.byProc.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t CrashReport.Termination.byPid.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

PreviewsFoundationOS::CrashReport::Termination::CodingKeys_optional __swiftcall CrashReport.Termination.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7367616C66 && stringValue._object == 0xE500000000000000;
  if (v5 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1701080931 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x63617073656D616ELL && object == 0xE900000000000065 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x736C6961746564 && object == 0xE700000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x6F74616369646E69 && object == 0xE900000000000072 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x636F72507962 && object == 0xE600000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x6469507962 && object == 0xE500000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x736E6F73616572 && object == 0xE700000000000000)
  {

    v7 = 7;
  }

  else
  {
    v8 = sub_25F30659C();

    if (v8)
    {
      v7 = 7;
    }

    else
    {
      v7 = 8;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CrashReport.Termination.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6469507962;
  if (v1 != 6)
  {
    v3 = 0x736E6F73616572;
  }

  v4 = 0x6F74616369646E69;
  if (v1 != 4)
  {
    v4 = 0x636F72507962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 1701080931;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F2D1734()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6469507962;
  if (v1 != 6)
  {
    v3 = 0x736E6F73616572;
  }

  v4 = 0x6F74616369646E69;
  if (v1 != 4)
  {
    v4 = 0x636F72507962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 1701080931;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F2D1838(uint64_t a1)
{
  v2 = sub_25F2D1914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D1874(uint64_t a1)
{
  v2 = sub_25F2D1914();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 CrashReport.Termination.init(flags:code:namespace:details:indicator:byProc:byPid:reasons:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, char a13, unint64_t a14)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u8[8] = a2 & 1;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u8[8] = a4 & 1;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  a9[6].n128_u8[0] = a13 & 1;
  a9[6].n128_u64[1] = a14;
  return result;
}

unint64_t sub_25F2D1914()
{
  result = qword_27FD58480;
  if (!qword_27FD58480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58480);
  }

  return result;
}

unint64_t sub_25F2D1968()
{
  result = qword_27FD58488;
  if (!qword_27FD58488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58488);
  }

  return result;
}

uint64_t sub_25F2D1A68@<X0>(uint64_t *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58478, &unk_25F314F38);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v34 - v9;
  v12 = a1[3];
  v11 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_25F2D1914();
  sub_25F3067AC();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v13 = v7;
  LOBYTE(v55) = 0;
  v14 = sub_25F3063EC();
  v72 = v15 & 1;
  LOBYTE(v55) = 1;
  v45 = sub_25F3063EC();
  v71 = v16 & 1;
  LOBYTE(v55) = 2;
  v42 = sub_25F3063DC();
  v44 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  LOBYTE(v48) = a2;
  v19 = sub_25F2D1968();
  v20 = v46;
  v43 = v18;
  sub_25F3063FC();
  v38 = v19;
  v41 = v55;
  LOBYTE(v55) = 4;
  v37 = sub_25F3063DC();
  v40 = v21;
  LOBYTE(v55) = 5;
  v22 = sub_25F3063DC();
  v39 = v23;
  v36 = v22;
  LOBYTE(v55) = 6;
  v35 = sub_25F3063EC();
  v70 = v24 & 1;
  v73 = 7;
  sub_25F3063FC();
  (*(v13 + 8))(v10, v20);
  v25 = v69;
  *&v48 = v14;
  LODWORD(v46) = v72;
  BYTE8(v48) = v72;
  v26 = v44;
  *&v49 = v45;
  LODWORD(v43) = v71;
  BYTE8(v49) = v71;
  v27 = v41;
  *&v50 = v42;
  *(&v50 + 1) = v44;
  v28 = v36;
  *&v51 = v41;
  *(&v51 + 1) = v37;
  *&v52 = v40;
  *(&v52 + 1) = v36;
  v29 = v35;
  *&v53 = v39;
  *(&v53 + 1) = v35;
  LODWORD(v38) = v70;
  LOBYTE(v54) = v70;
  *(&v54 + 1) = v69;
  v30 = v53;
  a3[4] = v52;
  a3[5] = v30;
  v31 = v51;
  a3[2] = v50;
  a3[3] = v31;
  a3[6] = v54;
  v32 = v49;
  *a3 = v48;
  a3[1] = v32;
  sub_25F2D19E4(&v48, &v55);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v55 = v14;
  v56 = v46;
  v57 = v45;
  v58 = v43;
  v59 = v42;
  v60 = v26;
  v61 = v27;
  v62 = v37;
  v63 = v40;
  v64 = v28;
  v65 = v39;
  v66 = v29;
  v67 = v38;
  v68 = v25;
  return sub_25F2D1A1C(&v55);
}

uint64_t CrashReport.Frame.ImageLocation.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x25F8D88E0](*v0);
  return MEMORY[0x25F8D88E0](v1);
}

uint64_t CrashReport.Frame.ImageLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

uint64_t sub_25F2D206C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

uint64_t sub_25F2D20C8()
{
  v1 = v0[1];
  MEMORY[0x25F8D88E0](*v0);
  return MEMORY[0x25F8D88E0](v1);
}

uint64_t sub_25F2D2104()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

PreviewsFoundationOS::CrashReport::Frame::CodingKeys_optional __swiftcall CrashReport.Frame.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x646E496567616D69 && stringValue._object == 0xEA00000000007865;
  if (v5 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x66664F6567616D69 && object == 0xEB00000000746573 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C6F626D7973 && object == 0xE600000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6F4C6C6F626D7973 && object == 0xEE006E6F69746163 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x6946656372756F73 && object == 0xEA0000000000656CLL || (sub_25F30659C() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x694C656372756F73 && object == 0xEA0000000000656ELL)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_25F30659C();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CrashReport.Frame.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x646E496567616D69;
  v3 = 0x6F4C6C6F626D7973;
  v4 = 0x6946656372756F73;
  if (v1 != 4)
  {
    v4 = 0x694C656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t sub_25F2D2494()
{
  v1 = *v0;
  v2 = 0x646E496567616D69;
  v3 = 0x6F4C6C6F626D7973;
  v4 = 0x6946656372756F73;
  if (v1 != 4)
  {
    v4 = 0x694C656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t sub_25F2D2578(uint64_t a1)
{
  v2 = sub_25F2D27B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D25B4(uint64_t a1)
{
  v2 = sub_25F2D27B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashReport.Frame.symbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CrashReport.Frame.symbol.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CrashReport.Frame.symbolLocation.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t CrashReport.Frame.symbolLocation.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t CrashReport.Frame.sourceFile.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CrashReport.Frame.sourceFile.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CrashReport.Frame.sourceLine.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t CrashReport.Frame.sourceLine.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

void __swiftcall CrashReport.Frame.init(imageIndex:imageOffset:symbol:symbolLocation:sourceFile:sourceLine:)(PreviewsFoundationOS::CrashReport::Frame *__return_ptr retstr, Swift::Int imageIndex, Swift::Int imageOffset, Swift::String_optional symbol, Swift::Int_optional symbolLocation, Swift::String_optional sourceFile, Swift::Int_optional sourceLine)
{
  retstr->imageIndex = imageIndex;
  retstr->imageOffset = imageOffset;
  retstr->symbol = symbol;
  retstr->symbolLocation.value = symbolLocation.value;
  retstr->symbolLocation.is_nil = symbolLocation.is_nil;
  retstr->sourceFile = sourceFile;
  retstr->sourceLine.value = sourceLine.value;
  retstr->sourceLine.is_nil = sourceLine.is_nil;
}

unint64_t sub_25F2D27B8()
{
  result = qword_27FD58498;
  if (!qword_27FD58498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58498);
  }

  return result;
}

uint64_t sub_25F2D2824@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58490, &qword_25F314F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F2D27B8();
  sub_25F3067AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v11 = sub_25F30641C();
    LOBYTE(v40[0]) = 1;
    v35 = sub_25F30641C();
    LOBYTE(v40[0]) = 2;
    v12 = sub_25F3063DC();
    v14 = v13;
    v34 = v12;
    LOBYTE(v40[0]) = 3;
    v33 = sub_25F3063EC();
    v47 = v15 & 1;
    LOBYTE(v40[0]) = 4;
    v16 = sub_25F3063DC();
    v18 = v17;
    v32 = v16;
    v48 = 5;
    v19 = sub_25F3063EC();
    v20 = *(v6 + 8);
    v31 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    v24 = v23 & 1;
    *&v36 = v11;
    *(&v36 + 1) = v35;
    v25 = v34;
    *&v37 = v34;
    *(&v37 + 1) = v14;
    *&v38 = v33;
    HIDWORD(v30) = v47;
    BYTE8(v38) = v47;
    v26 = v32;
    *v39 = v32;
    *&v39[8] = v18;
    *&v39[16] = v31;
    v39[24] = v24;
    v27 = *v39;
    a2[2] = v38;
    a2[3] = v27;
    *(a2 + 57) = *&v39[9];
    v28 = v37;
    *a2 = v36;
    a2[1] = v28;
    v46 = v24;
    sub_25F1DF984(&v36, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v11;
    v40[1] = v35;
    v40[2] = v25;
    v40[3] = v14;
    v40[4] = v33;
    v41 = BYTE4(v30);
    v42 = v26;
    v43 = v18;
    v44 = v31;
    v45 = v24;
    return sub_25F1DF9E0(v40);
  }
}

uint64_t CrashReport.Image.uuid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrashReport.Image.uuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CrashReport.Image.arch.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CrashReport.Image.arch.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CrashReport.Image.path.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t CrashReport.Image.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CrashReport.Image.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CrashReport.Image.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

PreviewsFoundationOS::CrashReport::Image::CodingKeys_optional __swiftcall CrashReport.Image.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1684632949 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_25F30659C() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1751347809 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1702060386 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 1752457584 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1701667182 && object == 0xE400000000000000)
  {

    v7 = 4;
  }

  else
  {
    v8 = sub_25F30659C();

    if (v8)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F2D3008(uint64_t a1)
{
  v2 = sub_25F2D309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D3044(uint64_t a1)
{
  v2 = sub_25F2D309C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25F2D309C()
{
  result = qword_27FD584A8;
  if (!qword_27FD584A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584A8);
  }

  return result;
}

uint64_t sub_25F2D3108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584A0, &unk_25F314F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F2D309C();
  sub_25F3067AC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_25F30640C();
  v13 = v12;
  v30 = v11;
  LOBYTE(v36[0]) = 1;
  *&v29 = sub_25F3063DC();
  *(&v29 + 1) = v14;
  LOBYTE(v36[0]) = 2;
  v28 = sub_25F30641C();
  LOBYTE(v36[0]) = 3;
  v15 = sub_25F3063DC();
  v17 = v16;
  v27 = v15;
  v37 = 4;
  v18 = sub_25F3063DC();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v23 = *(&v29 + 1);
  v22 = v30;
  *&v31 = v30;
  *(&v31 + 1) = v13;
  v32 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v27;
  *&v34 = v17;
  *(&v34 + 1) = v18;
  v35 = v21;
  *(a2 + 64) = v21;
  v24 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v24;
  v25 = v32;
  *a2 = v31;
  *(a2 + 16) = v25;
  sub_25F2787A8(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v22;
  v36[1] = v13;
  v36[2] = v29;
  v36[3] = v23;
  v36[4] = v28;
  v36[5] = v27;
  v36[6] = v17;
  v36[7] = v18;
  v36[8] = v21;
  return sub_25F278804(v36);
}

uint64_t CrashReport.init(dictionary:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25F3041CC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_25F3041BC();
  v3 = objc_opt_self();
  v4 = sub_25F304A5C();

  v14[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:v14];

  v6 = v14[0];
  if (v5)
  {
    type metadata accessor for CrashReport(0);
    v7 = v6;
    v8 = sub_25F30453C();
    v10 = v9;

    sub_25F2D5B80(&qword_27FD584B0, type metadata accessor for CrashReport);
    sub_25F3041AC();

    result = sub_25F1D4BB0(v8, v10);
  }

  else
  {
    v12 = v14[0];

    sub_25F3043FC();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CrashReport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v58 = sub_25F30462C();
  v59 = *(v58 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56828, &qword_25F3103F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v52 - v7;
  v8 = sub_25F30467C();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584B8, &qword_25F314F60);
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = type metadata accessor for CrashReport(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_25F2D5BC8();
  v22 = v64;
  sub_25F3067AC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = v11;
  v23 = v61;
  v55 = v16;
  v54 = v19;
  LOBYTE(v66) = 0;
  sub_25F2D5B80(&qword_27FD584C8, MEMORY[0x277CC95F0]);
  v24 = v62;
  sub_25F3063FC();
  v52 = v12;
  v26 = v60;
  v27 = *(v60 + 48);
  v28 = v27(v24, 1, v8);
  v53 = v15;
  if (v28 == 1)
  {
    v29 = v64;
    _s20PreviewsFoundationOS11CrashReportV2IDVAEycfC_0();
    v30 = v27(v24, 1, v8);
    v31 = v54;
    if (v30 != 1)
    {
      sub_25F1AF698(v62, &qword_27FD56828, &qword_25F3103F0);
    }
  }

  else
  {
    v29 = v64;
    (*(v26 + 32))(v64, v24, v8);
    v31 = v54;
  }

  (*(v26 + 16))(v31, v29, v8);
  LOBYTE(v66) = 1;
  v32 = sub_25F30640C();
  v62 = v8;
  v33 = v55;
  v34 = &v31[v55[5]];
  *v34 = v32;
  v34[1] = v35;
  LOBYTE(v66) = 2;
  v36 = sub_25F30640C();
  v37 = &v31[v33[6]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v66) = 3;
  *&v31[v33[7]] = sub_25F30643C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584D0, &qword_25F314F68);
  LOBYTE(v65) = 4;
  sub_25F2D5C1C();
  sub_25F3063FC();
  *&v31[v33[9]] = v66;
  v74 = 5;
  sub_25F2D5CA8();
  sub_25F3063FC();
  v39 = &v31[v33[10]];
  v40 = v71;
  *(v39 + 4) = v70;
  *(v39 + 5) = v40;
  *(v39 + 6) = v72;
  v41 = v67;
  *v39 = v66;
  *(v39 + 1) = v41;
  v42 = v69;
  *(v39 + 2) = v68;
  *(v39 + 3) = v42;
  LOBYTE(v65) = 6;
  sub_25F2D5B80(&qword_27FD582B8, MEMORY[0x277CC9578]);
  v43 = v58;
  sub_25F30642C();
  (*(v59 + 32))(&v31[v33[8]], v57, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584E8, &qword_25F314F70);
  v73 = 7;
  sub_25F2D5D50(&qword_27FD584F0, &qword_27FD584E8, &qword_25F314F70, sub_25F2D5CFC);
  sub_25F3063FC();
  v44 = MEMORY[0x277D84F90];
  v45 = v65;
  if (!v65)
  {
    v45 = MEMORY[0x277D84F90];
  }

  *&v31[v55[11]] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58500, &unk_25F314F78);
  v73 = 8;
  sub_25F2D5D50(&qword_27FD58508, &qword_27FD58500, &unk_25F314F78, sub_25F2D5DCC);
  sub_25F3063FC();
  v46 = v65;
  if (!v65)
  {
    v46 = v44;
  }

  *&v54[v55[12]] = v46;
  LOBYTE(v65) = 9;
  v47 = sub_25F3063DC();
  v49 = v48;
  (*(v60 + 8))(v64, v62);
  (*(v23 + 8))(v53, v52);
  v50 = v54;
  v51 = &v54[v55[13]];
  *v51 = v47;
  v51[1] = v49;
  sub_25F2D5E20(v50, v56, type metadata accessor for CrashReport);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_25F2D5E88(v50, type metadata accessor for CrashReport);
}

unint64_t sub_25F2D4274(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736567616D69;
    v6 = 0x73656D617266;
    if (a1 != 8)
    {
      v6 = 0x50656C6946676F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 1701669236;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x657079745F677562;
    v3 = 6580592;
    if (a1 != 3)
    {
      v3 = 6910817;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25F2D438C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F2D4274(*a1);
  v5 = v4;
  if (v3 == sub_25F2D4274(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F30659C();
  }

  return v8 & 1;
}

uint64_t sub_25F2D4414()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F2D4274(v1);
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2D4478()
{
  sub_25F2D4274(*v0);
  sub_25F304F0C();
}

uint64_t sub_25F2D44CC()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F2D4274(v1);
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2D452C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F2D6D4C();
  *a2 = result;
  return result;
}

unint64_t sub_25F2D455C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F2D4274(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F2D45A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F2D6D4C();
  *a1 = result;
  return result;
}

uint64_t sub_25F2D45D8(uint64_t a1)
{
  v2 = sub_25F2D5BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D4614(uint64_t a1)
{
  v2 = sub_25F2D5BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall CrashReport.describe(with:)(Swift::OpaquePointer *with)
{
  v2 = CrashReport.formattedAsLegacyCrashReport()();
  rawValue = with->_rawValue;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_25F2EFA04(0, *(rawValue + 2) + 1, 1, rawValue);
  }

  v5 = *(rawValue + 2);
  v4 = *(rawValue + 3);
  if (v5 >= v4 >> 1)
  {
    rawValue = sub_25F2EFA04((v4 > 1), v5 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v5 + 1;
  v6 = &rawValue[24 * v5];
  v6[2] = v2;
  LOBYTE(v6[3]._countAndFlagsBits) = 0;
  with->_rawValue = rawValue;
}

Swift::String __swiftcall CrashReport.formattedAsLegacyCrashReport()()
{
  v1 = v0;
  v2 = 0xD000000000000015;
  v3 = 0xE000000000000000;
  sub_25F305FAC();

  v188 = 0xD000000000000015;
  *&v189 = 0x800000025F31B660;
  v4 = type metadata accessor for CrashReport(0);
  MEMORY[0x25F8D7130](*(v1 + *(v4 + 20)), *(v1 + *(v4 + 20) + 8));
  MEMORY[0x25F8D7130](23328, 0xE200000000000000);
  v167 = v4;
  LODWORD(v186[0]) = *(v0 + *(v4 + 28));
  v5 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v5);

  MEMORY[0x25F8D7130](93, 0xE100000000000000);
  v6 = 0xD000000000000015;
  v7 = 0x800000025F31B660;
  v8 = sub_25F2EFB20(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    goto LABEL_120;
  }

  while (1)
  {
    *(v8 + 2) = v11;
    v12 = v8;
    v13 = &v8[16 * v10];
    *(v13 + 4) = v6;
    *(v13 + 5) = v7;
    v188 = 0;
    *&v189 = v3;
    sub_25F305FAC();

    v188 = v2;
    *&v189 = 0x800000025F31B680;
    v14 = (v1 + v167[13]);
    if (v14[1])
    {
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      v16 = 0xE600000000000000;
      v15 = 0x3E656E6F6E3CLL;
    }

    MEMORY[0x25F8D7130](v15, v16);

    v17 = v188;
    v18 = v189;
    v19 = v12;
    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    v22 = v20 >> 1;
    v23 = v21 + 1;
    if (v20 >> 1 <= v21)
    {
      v19 = sub_25F2EFB20((v20 > 1), v21 + 1, 1, v12);
      v20 = *(v19 + 3);
      v22 = v20 >> 1;
    }

    *(v19 + 2) = v23;
    v24 = &v19[16 * v21];
    *(v24 + 4) = v17;
    *(v24 + 5) = v18;
    if (v22 < (v21 + 2))
    {
      v19 = sub_25F2EFB20((v20 > 1), v21 + 2, 1, v19);
    }

    *(v19 + 2) = v21 + 2;
    v25 = &v19[16 * v23];
    *(v25 + 4) = 0;
    *(v25 + 5) = 0xE000000000000000;
    v188 = 0;
    *&v189 = 0xE000000000000000;
    v26 = v19;
    sub_25F305FAC();

    v188 = v2;
    *&v189 = 0x800000025F31B6A0;
    v27 = v167[8];
    sub_25F30462C();
    sub_25F2D5B80(&qword_27FD58518, MEMORY[0x277CC9578]);
    v28 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v28);

    v29 = v26;
    v30 = v188;
    v7 = v189;
    v6 = *(v29 + 2);
    v31 = *(v29 + 3);
    v32 = v31 >> 1;
    v33 = v6 + 1;
    if (v31 >> 1 <= v6)
    {
      v29 = sub_25F2EFB20((v31 > 1), v6 + 1, 1, v29);
      v31 = *(v29 + 3);
      v32 = v31 >> 1;
    }

    *(v29 + 2) = v33;
    v34 = &v29[16 * v6];
    *(v34 + 4) = v30;
    *(v34 + 5) = v7;
    v11 = v6 + 2;
    if (v32 < (v6 + 2))
    {
      v29 = sub_25F2EFB20((v31 > 1), v6 + 2, 1, v29);
    }

    *(v29 + 2) = v11;
    v35 = &v29[16 * v33];
    *(v35 + 4) = 0;
    *(v35 + 5) = 0xE000000000000000;
    v36 = *(v1 + v167[9]);
    v163 = v1;
    if (v36)
    {
      v10 = v29;
      v37 = *(v29 + 3);
      v7 = v6 + 3;

      if ((v6 + 3) > (v37 >> 1))
      {
        v10 = sub_25F2EFB20((v37 > 1), v6 + 3, 1, v10);
      }

      v1 = 0;
      *(v10 + 16) = v7;
      v38 = v10;
      v39 = (v10 + 16 * v11);
      *(v39 + 4) = v2 + 12;
      *(v39 + 5) = 0x800000025F31B720;
      v40 = v36 + 64;
      v41 = 1 << *(v36 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v3 = v42 & *(v36 + 64);
      v43 = (v41 + 63) >> 6;
      v171 = v36 + 64;
      v174 = v36;
      v168 = v43;
      while (v3)
      {
LABEL_25:
        v44 = __clz(__rbit64(v3)) | (v1 << 6);
        v45 = *(v36 + 56);
        v46 = (*(v36 + 48) + 16 * v44);
        v47 = *v46;
        v48 = v46[1];
        v6 = *(v45 + 8 * v44);
        v188 = 538976288;
        *&v189 = 0xE400000000000000;

        MEMORY[0x25F8D7130](v47, v48);

        MEMORY[0x25F8D7130](58, 0xE100000000000000);
        v49 = v188;
        v10 = v189;
        v51 = *(v38 + 2);
        v50 = *(v38 + 3);
        v11 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          v38 = sub_25F2EFB20((v50 > 1), v51 + 1, 1, v38);
        }

        *(v38 + 2) = v11;
        v52 = &v38[16 * v51];
        *(v52 + 4) = v49;
        *(v52 + 5) = v10;
        v7 = *(v6 + 16);
        if (v7)
        {
          v2 = (v6 + 40);
          do
          {
            v53 = *(v2 - 1);
            v54 = *v2;
            v188 = 0x2020202020202020;
            *&v189 = 0xE800000000000000;

            MEMORY[0x25F8D7130](v53, v54);

            v10 = v188;
            v55 = v189;
            v6 = *(v38 + 2);
            v56 = *(v38 + 3);
            v11 = v6 + 1;
            if (v6 >= v56 >> 1)
            {
              v38 = sub_25F2EFB20((v56 > 1), v6 + 1, 1, v38);
            }

            *(v38 + 2) = v11;
            v57 = &v38[16 * v6];
            *(v57 + 4) = v10;
            *(v57 + 5) = v55;
            v2 += 2;
            --v7;
          }

          while (v7);
        }

        v3 &= v3 - 1;

        v40 = v171;
        v36 = v174;
        v43 = v168;
      }

      while (1)
      {
        v9 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v9 >= v43)
        {

          v29 = v38;
          v1 = v163;
          v2 = 0xD000000000000015;
          goto LABEL_34;
        }

        v3 = *(v40 + 8 * v9);
        ++v1;
        if (v3)
        {
          v1 = v9;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_116;
    }

LABEL_34:
    v58 = v1 + v167[10];
    v59 = *(v58 + 40);
    if (v59 != 1)
    {
      v60 = *(v58 + 16);
      v61 = *(v58 + 24);
      v62 = *(v58 + 32);
      v63 = *(v58 + 48);
      v64 = *(v58 + 56);
      v65 = *(v58 + 64);
      v172 = *(v58 + 72);
      v67 = *(v29 + 2);
      v66 = *(v29 + 3);
      v68 = *(v58 + 80);
      v175 = *(v58 + 88);
      v69 = *(v58 + 96);
      v70 = *(v58 + 104);
      if (v67 >= v66 >> 1)
      {
        v170 = *(v58 + 40);
        v161 = sub_25F2EFB20((v66 > 1), v67 + 1, 1, v29);
        v59 = v170;
        v29 = v161;
      }

      *(v29 + 2) = v67 + 1;
      v178 = v29;
      v71 = &v29[16 * v67];
      *(v71 + 4) = 0;
      *(v71 + 5) = 0xE000000000000000;
      v188 = 0xD000000000000014;
      *&v189 = 0x800000025F31B6E0;
      if (v59)
      {
        *&v186[0] = 0x617073656D614E20;
        *(&v186[0] + 1) = 0xEB00000000206563;
        MEMORY[0x25F8D7130]();
        MEMORY[0x25F8D7130](44, 0xE100000000000000);
        MEMORY[0x25F8D7130](*&v186[0], *(&v186[0] + 1));
      }

      if ((v61 & 1) == 0)
      {
        *&v186[0] = 0x2065646F4320;
        *(&v186[0] + 1) = 0xE600000000000000;
        v183 = v60;
        v72 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v72);

        MEMORY[0x25F8D7130](44, 0xE100000000000000);
        MEMORY[0x25F8D7130](*&v186[0], *(&v186[0] + 1));
      }

      if (v65)
      {
        *&v186[0] = 32;
        *(&v186[0] + 1) = 0xE100000000000000;
        MEMORY[0x25F8D7130](v64, v65);
        MEMORY[0x25F8D7130](*&v186[0], *(&v186[0] + 1));
      }

      if (v68 && (v69 & 1) == 0)
      {
        *&v186[0] = 0;
        *(&v186[0] + 1) = 0xE000000000000000;
        sub_25F305FAC();

        *&v186[0] = 0xD000000000000016;
        *(&v186[0] + 1) = 0x800000025F31B700;
        MEMORY[0x25F8D7130](v172, v68);
        MEMORY[0x25F8D7130](23328, 0xE200000000000000);
        v183 = v175;
        v73 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v73);

        MEMORY[0x25F8D7130](93, 0xE100000000000000);
        MEMORY[0x25F8D7130](*&v186[0], *(&v186[0] + 1));
      }

      if (v70)
      {
        v74 = *(v70 + 16);
        if (v74)
        {
          v75 = (v70 + 40);
          do
          {
            v76 = *(v75 - 1);
            v77 = *v75;
            *&v186[0] = 10;
            *(&v186[0] + 1) = 0xE100000000000000;

            MEMORY[0x25F8D7130](v76, v77);

            MEMORY[0x25F8D7130](*&v186[0], *(&v186[0] + 1));

            v75 += 2;
            --v74;
          }

          while (v74);
        }
      }

      v2 = 0xD000000000000015;
      if (v63)
      {
        v78 = *(v63 + 16);
        if (v78)
        {

          v79 = (v63 + 40);
          do
          {
            v80 = *(v79 - 1);
            v81 = *v79;
            *&v186[0] = 10;
            *(&v186[0] + 1) = 0xE100000000000000;

            MEMORY[0x25F8D7130](v80, v81);

            MEMORY[0x25F8D7130](*&v186[0], *(&v186[0] + 1));

            v79 += 2;
            --v78;
          }

          while (v78);
        }
      }

      v82 = v188;
      v83 = v189;
      v29 = v178;
      v7 = *(v178 + 2);
      v84 = *(v178 + 3);
      if (v7 >= v84 >> 1)
      {
        v29 = sub_25F2EFB20((v84 > 1), v7 + 1, 1, v178);
      }

      v1 = v163;
      *(v29 + 2) = v7 + 1;
      v85 = &v29[16 * v7];
      *(v85 + 4) = v82;
      *(v85 + 5) = v83;
    }

    v10 = *(v1 + v167[12]);
    if (!*(v10 + 16))
    {
      goto LABEL_89;
    }

    v87 = *(v29 + 2);
    v86 = *(v29 + 3);
    v88 = v86 >> 1;
    v89 = v87 + 1;
    if (v86 >> 1 <= v87)
    {
      v29 = sub_25F2EFB20((v86 > 1), v87 + 1, 1, v29);
      v86 = *(v29 + 3);
      v88 = v86 >> 1;
    }

    *(v29 + 2) = v89;
    v90 = &v29[16 * v87];
    *(v90 + 4) = 0;
    *(v90 + 5) = 0xE000000000000000;
    v91 = v88 < (v87 + 2) ? sub_25F2EFB20((v86 > 1), v87 + 2, 1, v29) : v29;
    *(v91 + 2) = v87 + 2;
    v3 = v91;
    v92 = &v91[16 * v89];
    *(v92 + 4) = v2 - 5;
    *(v92 + 5) = 0x800000025F31B6C0;
    v165 = sub_25F2D5ADC();
    *&v186[0] = *(v10 + 16);
    v188 = sub_25F3064DC();
    *&v189 = v93;
    MEMORY[0x25F8D7130](8224, 0xE200000000000000);
    v11 = v189;
    v166 = sub_25F304F2C();

    v6 = *(v10 + 16);

    if (!v6)
    {
      break;
    }

    v2 = 0;
    v94 = (v10 + 32);
    v9 = &loc_25F307000;
    v8 = v3;
    v164 = v10;
    while (v2 < v6)
    {
      v179 = v8;
      v186[0] = *v94;
      v95 = v94[1];
      v96 = v94[2];
      v97 = v94[3];
      *(v187 + 9) = *(v94 + 57);
      v186[2] = v96;
      v187[0] = v97;
      v186[1] = v95;
      v185[0] = v94[3];
      *(v185 + 9) = *(v94 + 57);
      v99 = v94[1];
      v98 = v94[2];
      v100 = *v94;
      v188 = v2;
      v190 = v99;
      v191 = v98;
      v189 = v100;
      *v192 = v185[0];
      *&v192[9] = *(v185 + 9);
      v181 = v2;
      sub_25F1DF984(v186, &v183);
      v11 = &v181;
      v7 = sub_25F3064DC();
      v3 = v101;
      v102 = sub_25F304F2C();
      v9 = v166;
      if (__OFSUB__(v166, v102))
      {
        goto LABEL_117;
      }

      v11 = sub_25F30507C();
      v9 = v189;
      v103 = *(v1 + v167[11]);
      v176 = v104;
      if (v189 >= *(v103 + 16))
      {
        goto LABEL_71;
      }

      if ((v189 & 0x8000000000000000) != 0)
      {
        goto LABEL_119;
      }

      v105 = v103 + 72 * v189;
      v106 = *(v105 + 96);
      if (v106)
      {
        v107 = *(v105 + 88);
        v108 = *(v105 + 96);

        v109 = v107;
      }

      else
      {
LABEL_71:
        v106 = 0xE300000000000000;
        v109 = 4144959;
      }

      v6 = v109;
      v110 = sub_25F304F2C();
      v9 = v165;
      if (__OFSUB__(v165, v110))
      {
        goto LABEL_118;
      }

      v169 = sub_25F30507C();
      v112 = v111;
      v113 = v190;
      if (*(&v190 + 1))
      {
        v114 = *(&v190 + 1);
      }

      else
      {
        v113 = 4144959;
        v114 = 0xE300000000000000;
      }

      v183 = v113;
      v184 = v114;
      if (BYTE8(v191) == 1)
      {
      }

      else
      {
        v181 = 2108192;
        v182 = 0xE300000000000000;

        v115 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v115);

        MEMORY[0x25F8D7130](v181, v182);
      }

      v181 = 0;
      v182 = 0xE000000000000000;
      v116 = *&v192[8];
      if (*&v192[8])
      {
        v117 = *v192;

        MEMORY[0x25F8D7130](v117, v116);

        MEMORY[0x25F8D7130](10272, 0xE200000000000000);

        if ((v192[24] & 1) == 0)
        {
          v118 = sub_25F3064DC();
          MEMORY[0x25F8D7130](v118);

          MEMORY[0x25F8D7130](58, 0xE100000000000000);
        }

        MEMORY[0x25F8D7130](41, 0xE100000000000000);
        v1 = v163;
      }

      sub_25F305FAC();

      MEMORY[0x25F8D7130](v11, v176);

      MEMORY[0x25F8D7130](v6, v106);

      MEMORY[0x25F8D7130](v169, v112);

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      v119 = *(&v189 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_25F3077D0;
      *(v120 + 56) = MEMORY[0x277D83B88];
      *(v120 + 64) = MEMORY[0x277D83C10];
      *(v120 + 32) = v119;
      v121 = sub_25F304E3C();
      MEMORY[0x25F8D7130](v121);
      sub_25F1AF698(&v188, &qword_27FD58520, &qword_25F314F88);

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      MEMORY[0x25F8D7130](v183, v184);

      MEMORY[0x25F8D7130](v181, v182);

      v122 = v7;
      v8 = v179;
      v7 = *(v179 + 2);
      v123 = *(v179 + 3);
      v11 = v7 + 1;
      if (v7 >= v123 >> 1)
      {
        v8 = sub_25F2EFB20((v123 > 1), v7 + 1, 1, v179);
      }

      v10 = v164;
      v2 = (v2 + 1);
      *(v8 + 2) = v11;
      v9 = &v8[16 * v7];
      *(v9 + 32) = v122;
      *(v9 + 40) = v3;
      v6 = *(v164 + 2);
      v94 += 5;
      if (v2 == v6)
      {
        goto LABEL_88;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v8 = sub_25F2EFB20((v9 > 1), v11, 1, v8);
  }

  v8 = v3;
LABEL_88:
  v124 = v8;

  v29 = v124;
LABEL_89:
  v125 = *(v1 + v167[11]);
  if (*(v125 + 16))
  {
    v127 = *(v29 + 2);
    v126 = *(v29 + 3);
    v128 = v126 >> 1;
    v129 = v127 + 1;
    if (v126 >> 1 <= v127)
    {
      v29 = sub_25F2EFB20((v126 > 1), v127 + 1, 1, v29);
      v126 = *(v29 + 3);
      v128 = v126 >> 1;
    }

    *(v29 + 2) = v129;
    v130 = &v29[16 * v127];
    *(v130 + 4) = 0;
    *(v130 + 5) = 0xE000000000000000;
    if (v128 < (v127 + 2))
    {
      v29 = sub_25F2EFB20((v126 > 1), v127 + 2, 1, v29);
    }

    *(v29 + 2) = v127 + 2;
    v131 = &v29[16 * v129];
    strcpy(v131 + 32, "Binary Images:");
    v131[47] = -18;
    v132 = *(v125 + 16);
    if (v132)
    {
      v133 = (v125 + 96);
      do
      {
        v134 = *(v133 - 7);
        v173 = *(v133 - 8);
        v136 = *(v133 - 4);
        v135 = *(v133 - 3);
        v137 = *(v133 - 2);
        if (*v133)
        {
          v138 = *(v133 - 1);
        }

        else
        {
          v138 = 4144959;
        }

        if (*v133)
        {
          v139 = *v133;
        }

        else
        {
          v139 = 0xE300000000000000;
        }

        if (!v137)
        {
          v135 = 4144959;
        }

        v177 = v135;
        v180 = v29;
        if (v137)
        {
          v140 = *(v133 - 2);
        }

        else
        {
          v140 = 0xE300000000000000;
        }

        v188 = 0x20202020202020;
        *&v189 = 0xE700000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_25F3077D0;
        *(v141 + 56) = MEMORY[0x277D83B88];
        *(v141 + 64) = MEMORY[0x277D83C10];
        *(v141 + 32) = v136;

        v142 = sub_25F304E3C();
        MEMORY[0x25F8D7130](v142);

        MEMORY[0x25F8D7130](32, 0xE100000000000000);
        MEMORY[0x25F8D7130](v138, v139);

        MEMORY[0x25F8D7130](15392, 0xE200000000000000);
        MEMORY[0x25F8D7130](v173, v134);

        MEMORY[0x25F8D7130](8254, 0xE200000000000000);
        MEMORY[0x25F8D7130](v177, v140);

        v29 = v180;
        v143 = v188;
        v144 = v189;
        v146 = *(v180 + 2);
        v145 = *(v180 + 3);
        if (v146 >= v145 >> 1)
        {
          v29 = sub_25F2EFB20((v145 > 1), v146 + 1, 1, v180);
        }

        *(v29 + 2) = v146 + 1;
        v147 = &v29[16 * v146];
        *(v147 + 4) = v143;
        *(v147 + 5) = v144;
        v133 += 9;
        --v132;
      }

      while (v132);
    }
  }

  v149 = *(v29 + 2);
  v148 = *(v29 + 3);
  v150 = v148 >> 1;
  v151 = v149 + 1;
  if (v148 >> 1 <= v149)
  {
    v29 = sub_25F2EFB20((v148 > 1), v149 + 1, 1, v29);
    v148 = *(v29 + 3);
    v150 = v148 >> 1;
  }

  *(v29 + 2) = v151;
  v152 = &v29[16 * v149];
  *(v152 + 4) = 0;
  *(v152 + 5) = 0xE000000000000000;
  v153 = v149 + 2;
  if (v150 < (v149 + 2))
  {
    v154 = sub_25F2EFB20((v148 > 1), v149 + 2, 1, v29);
  }

  else
  {
    v154 = v29;
  }

  *(v154 + 2) = v153;
  v155 = &v154[16 * v151];
  *(v155 + 4) = 4607813;
  *(v155 + 5) = 0xE300000000000000;
  v188 = v154;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v156 = sub_25F304CAC();
  v158 = v157;

  v159 = v156;
  v160 = v158;
  result._object = v160;
  result._countAndFlagsBits = v159;
  return result;
}

uint64_t sub_25F2D597C(uint64_t *a1)
{
  v2 = CrashReport.formattedAsLegacyCrashReport()();
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2EFA04(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = sub_25F2EFA04((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  v7 = v3 + 24 * v6;
  *(v7 + 32) = v2;
  *(v7 + 48) = 0;
  *a1 = v3;
  return result;
}

uint64_t sub_25F2D5A30()
{
  v0 = CrashReport.formattedAsLegacyCrashReport()();
  v1 = sub_25F2EFA04(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_25F2EFA04((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[24 * v3];
  *(v4 + 2) = v0;
  v4[48] = 0;
  v5 = Array<A>.builtDescription.getter(v1);

  return v5;
}

uint64_t sub_25F2D5ADC()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 44));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v1 + 96);
  v5 = v4;
  do
  {
    v8 = *v5;
    v5 += 9;
    if (v8)
    {
      v6 = *(v4 - 1);

      v7 = sub_25F304F2C();
    }

    else
    {
      v7 = 0;
    }

    if (v3 <= v7)
    {
      v3 = v7;
    }

    v4 = v5;
    --v2;
  }

  while (v2);
  return v3;
}

uint64_t sub_25F2D5B80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F2D5BC8()
{
  result = qword_27FD584C0;
  if (!qword_27FD584C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584C0);
  }

  return result;
}

unint64_t sub_25F2D5C1C()
{
  result = qword_27FD584D8;
  if (!qword_27FD584D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD584D0, &qword_25F314F68);
    sub_25F2D1968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584D8);
  }

  return result;
}

unint64_t sub_25F2D5CA8()
{
  result = qword_27FD584E0;
  if (!qword_27FD584E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584E0);
  }

  return result;
}

unint64_t sub_25F2D5CFC()
{
  result = qword_27FD584F8;
  if (!qword_27FD584F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584F8);
  }

  return result;
}

uint64_t sub_25F2D5D50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F2D5DCC()
{
  result = qword_27FD58510;
  if (!qword_27FD58510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58510);
  }

  return result;
}

uint64_t sub_25F2D5E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F2D5E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F2D5F34()
{
  result = qword_27FD58530;
  if (!qword_27FD58530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58530);
  }

  return result;
}

unint64_t sub_25F2D5F8C()
{
  result = qword_27FD58538;
  if (!qword_27FD58538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58538);
  }

  return result;
}

unint64_t sub_25F2D5FE4()
{
  result = qword_27FD58540;
  if (!qword_27FD58540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58540);
  }

  return result;
}

unint64_t sub_25F2D603C()
{
  result = qword_27FD58548;
  if (!qword_27FD58548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58548);
  }

  return result;
}

unint64_t sub_25F2D6094()
{
  result = qword_27FD58550;
  if (!qword_27FD58550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58550);
  }

  return result;
}

unint64_t sub_25F2D60EC()
{
  result = qword_27FD58558;
  if (!qword_27FD58558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58558);
  }

  return result;
}

unint64_t sub_25F2D6144()
{
  result = qword_27FD58560;
  if (!qword_27FD58560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58560);
  }

  return result;
}

unint64_t sub_25F2D619C()
{
  result = qword_27FD58568;
  if (!qword_27FD58568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58568);
  }

  return result;
}

unint64_t sub_25F2D61F4()
{
  result = qword_27FD58570;
  if (!qword_27FD58570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58570);
  }

  return result;
}

unint64_t sub_25F2D624C()
{
  result = qword_27FD58578;
  if (!qword_27FD58578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58578);
  }

  return result;
}

uint64_t sub_25F2D62E8(uint64_t a1)
{
  result = sub_25F2D5B80(&qword_27FD58588, type metadata accessor for CrashReport);
  *(a1 + 8) = result;
  return result;
}

void sub_25F2D6368()
{
  type metadata accessor for CrashReport.ID(319);
  if (v0 <= 0x3F)
  {
    sub_25F30462C();
    if (v1 <= 0x3F)
    {
      sub_25F2D6508();
      if (v2 <= 0x3F)
      {
        sub_25F2D656C(319, &qword_27FD585A8, &type metadata for CrashReport.Termination, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_25F2D656C(319, &qword_27FD585B0, &type metadata for CrashReport.Image, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_25F2D656C(319, &qword_27FD585B8, &type metadata for CrashReport.Frame, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_25F2D656C(319, &qword_27FD55C78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_25F2D6508()
{
  if (!qword_27FD585A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD584D0, &qword_25F314F68);
    v0 = sub_25F305C1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD585A0);
    }
  }
}

void sub_25F2D656C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25F2D65E4()
{
  result = sub_25F30467C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2D6650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_25F2D66AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashReport.Termination.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashReport.Termination.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F2D68A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25F2D68FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashReport.Frame.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CrashReport.Frame.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CrashReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F2D6C48()
{
  result = qword_27FD585D0;
  if (!qword_27FD585D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD585D0);
  }

  return result;
}

unint64_t sub_25F2D6CA0()
{
  result = qword_27FD585D8;
  if (!qword_27FD585D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD585D8);
  }

  return result;
}

unint64_t sub_25F2D6CF8()
{
  result = qword_27FD585E0;
  if (!qword_27FD585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD585E0);
  }

  return result;
}

uint64_t sub_25F2D6D4C()
{
  v0 = sub_25F3063BC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F2D6DE8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F2D8AF4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_25F30647C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D88, &qword_25F3083D0);
      v7 = sub_25F3052EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F2D8178(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25F2D6F44()
{
  type metadata accessor for AgentSymbolTableManager();
  v0 = swift_allocObject();
  v1 = sub_25F1B6E98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F0, &unk_25F315860);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  *(v0 + 24) = 0x403E000000000000;
  off_27FD585E8 = v0;
  return result;
}

uint64_t AgentSymbolTableManager.__allocating_init(invalidatedLinkerTimeout:)(double a1)
{
  v2 = swift_allocObject();
  v3 = sub_25F1B6E98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F0, &unk_25F315860);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t static AgentSymbolTableManager.shared.getter()
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }
}

uint64_t AgentSymbolTableManager.init(invalidatedLinkerTimeout:)(double a1)
{
  v3 = sub_25F1B6E98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F0, &unk_25F315860);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t AgentSymbolTableManager.createSymbolTable(forPid:with:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_25F2D8B08((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

unint64_t sub_25F2D7164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_25F1BF03C(a2, v11);
  type metadata accessor for AgentSymbolTable();
  v7 = swift_allocObject();
  sub_25F1E1C08(v11, v7 + 16);

  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v11[0] = *a1;
  result = sub_25F211628(v7, a3, isUniquelyReferenced_nonNull_native);
  *a1 = *&v11[0];
  *a4 = v7;
  return result;
}

Swift::Void __swiftcall AgentSymbolTableManager.linkerInvalidated(forPid:)(Swift::Int32 forPid)
{
  v31 = forPid;
  v33 = sub_25F30490C();
  v36 = *(v33 - 8);
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25F30494C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F30498C();
  v29 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = sub_25F30491C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1F54F4();
  (*(v16 + 104))(v19, *MEMORY[0x277D851C8], v15);
  v20 = sub_25F305ADC();
  (*(v16 + 8))(v19, v15);
  _s20PreviewsFoundationOS17DispatchSchedulerV8DeadlineV3nowAEyFZ_0();
  v21 = v30;
  v22 = *(v30 + 24);
  sub_25F30499C();
  v23 = *(v8 + 8);
  v23(v12, v7);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v31;
  aBlock[4] = sub_25F2D8B28;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_12;
  v25 = _Block_copy(aBlock);

  sub_25F30492C();
  v37 = MEMORY[0x277D84F90];
  sub_25F1D9034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  v26 = v32;
  v27 = v33;
  sub_25F305E5C();
  MEMORY[0x25F8D7C10](v14, v6, v26, v25);
  _Block_release(v25);

  (*(v36 + 8))(v26, v27);
  (*(v34 + 8))(v6, v35);
  v23(v14, v29);
}

void sub_25F2D7650(int a1, Swift::Int32 pid)
{
  if (AgentSymbolTableManager.removeSymbolTable(pid:)(pid))
  {
    if (qword_27FD52920 != -1)
    {
      swift_once();
    }

    v3 = sub_25F30479C();
    __swift_project_value_buffer(v3, qword_27FD571C0);
    oslog = sub_25F30477C();
    v4 = sub_25F305A0C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = pid;
      _os_log_impl(&dword_25F1A2000, oslog, v4, "Agent symbol table for pid %{public}d was orphaned.", v5, 8u);
      MEMORY[0x25F8D9510](v5, -1, -1);
    }
  }
}

Swift::Bool __swiftcall AgentSymbolTableManager.removeSymbolTable(pid:)(Swift::Int32 pid)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_25F2D7980((v3 + 16), pid, &v12);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v12;
  if (v12)
  {
    if (qword_27FD52920 != -1)
    {
      swift_once();
    }

    v5 = sub_25F30479C();
    __swift_project_value_buffer(v5, qword_27FD571C0);

    v6 = sub_25F30477C();
    v7 = sub_25F3059FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240448;
      *(v8 + 4) = pid;
      *(v8 + 8) = 2050;
      v9 = v4[5];
      v10 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
      *(v8 + 10) = (*(v10 + 32))(v9, v10);

      _os_log_impl(&dword_25F1A2000, v6, v7, "Cleaned up agent symbol table for pid %{public}d, mapping size: %{public}ld", v8, 0x12u);
      MEMORY[0x25F8D9510](v8, -1, -1);
    }

    else
    {
    }
  }

  return v4 != 0;
}

uint64_t AgentSymbolTableManager.symbolTable(forPid:)(unsigned int a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (*(v4 + 16) && (v5 = sub_25F21962C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));
  return v7;
}

unint64_t sub_25F2D7980@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_25F21962C(a2);
  if (v7)
  {
    v8 = result;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21F57C();
      v11 = v14;
    }

    v12 = v8;
    v13 = *(*(v11 + 56) + 8 * v8);
    result = sub_25F1BBC04(v12, v11);
    *a1 = v11;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

void sub_25F2D7A18()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  if (qword_27FD52920 != -1)
  {
    swift_once();
  }

  v3 = sub_25F30479C();
  __swift_project_value_buffer(v3, qword_27FD571C0);
  v4 = sub_25F30477C();
  v5 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F1A2000, v4, v5, "Symbol Table Mapping Sizes:", v6, 2u);
    MEMORY[0x25F8D9510](v6, -1, -1);
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = sub_25F1BAB04(*(v2 + 16), 0);
    v9 = sub_25F1BEE58(&v30, (v8 + 4), v7, v2);

    sub_25F1BF034();
    if (v9 != v7)
    {
      __break(1u);
LABEL_9:

      if (qword_27FD52920 != -1)
      {
        swift_once();
      }

      v10 = sub_25F30479C();
      __swift_project_value_buffer(v10, qword_27FD571C0);
      oslog = sub_25F30477C();
      v11 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_25F1A2000, oslog, v11, "No symbol tables tracked", v12, 2u);
        MEMORY[0x25F8D9510](v12, -1, -1);
      }

      return;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v30 = v8;
  sub_25F2D6DE8(&v30);

  v13 = *(v30 + 16);
  if (v13)
  {
    v14 = (v30 + 40);
    do
    {
      v24 = *(v14 - 2);
      v25 = *v14;

      v26 = sub_25F30477C();
      v27 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
      if (os_log_type_enabled(v26, v27))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 67240450;
        *(v15 + 4) = v24;
        *(v15 + 8) = 2082;
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_25F305FAC();

        v30 = 0x3A736C6F626D7973;
        v31 = 0xE900000000000020;
        v18 = v25[5];
        v17 = v25[6];
        __swift_project_boxed_opaque_existential_1(v25 + 2, v18);
        (*(v17 + 8))(v18, v17);
        v19 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v19);

        MEMORY[0x25F8D7130](0x203A657A6973202CLL, 0xE800000000000000);
        v20 = v25[5];
        v21 = v25[6];
        __swift_project_boxed_opaque_existential_1(v25 + 2, v20);
        (*(v21 + 32))(v20, v21);
        v22 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v22);

        v23 = sub_25F1C53AC(v30, v31, &v29);

        *(v15 + 10) = v23;
        _os_log_impl(&dword_25F1A2000, v26, v27, "    Table: pid: %{public}d, %{public}s", v15, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x25F8D9510](v16, -1, -1);
        MEMORY[0x25F8D9510](v15, -1, -1);
      }

      else
      {
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
  }
}

uint64_t AgentSymbolTableManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AgentSymbolTableManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void __PrintAgentSymbolTableMappingSizes()
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }

  sub_25F2D7A18();
}

Swift::Void __swiftcall _printAgentSymbolTableMappingSizes()()
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }

  sub_25F2D7A18();
}

char *_symbolicateAgentAddress(_:_:)(unsigned int a1, Swift::UInt64 a2)
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }

  v4 = *(off_27FD585E8 + 2);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = sub_25F21962C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    os_unfair_lock_unlock((v4 + 24));
    if (v8)
    {
      object = AgentSymbolTable.symbolName(covering:)(a2).value._object;

      if (object)
      {
        v10 = sub_25F304EAC();

        v11 = strdup((v10 + 32));

        return v11;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 24));
  }

  return 0;
}

uint64_t sub_25F2D8148@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25F2D8178(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F2D89A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25F2D8710((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = *(v23 + 1);
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F2D89B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_25F2D89B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_25F2D8710((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_25F2D8710(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 4);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_25F2D8914(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2D89A0(v3);
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

char *sub_25F2D89B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F8, &unk_25F316470);
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

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ThreadGuard.__allocating_init(value:tracker:)(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ThreadGuard.init(value:tracker:)(a1, a2);
  return v7;
}

uint64_t ThreadGuard.init(value:tracker:)(uint64_t a1, __int128 *a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = 0;
  *(v2 + *(*v2 + 104)) = 0;
  sub_25F1A42F8(a2, v2 + *(*v2 + 112));
  return v2;
}

uint64_t ThreadGuard.__allocating_init(value:requiringAccessOnThread:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v16 = sub_25F2D8DEC();
  v17 = &protocol witness table for NSThread;
  *&v15 = a2;
  (*(v6 + 8))(a1, v5);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  ThreadGuard.init(value:tracker:)(v9, &v15);
  return v12;
}

unint64_t sub_25F2D8DEC()
{
  result = qword_27FD58600[0];
  if (!qword_27FD58600[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD58600);
  }

  return result;
}

uint64_t ThreadGuard.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t ThreadGuard.__deallocating_deinit()
{
  ThreadGuard.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ThreadGuard.syncRead<A>(callsite:_:)(__int128 *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v30 = a2;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v29 - v9;
  v12 = (v3 + *(v11 + 112));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  result = (*(v14 + 8))(v13, v14);
  if (!result)
  {
    v16 = a1[1];
    v31 = *a1;
    v32 = v16;
    v33[0] = a1[2];
    *(v33 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v31);
  }

  v17 = *v3;
  if (*(v3 + *(*v3 + 104)))
  {
    v18 = a1[1];
    v31 = *a1;
    v32 = v18;
    v33[0] = a1[2];
    *(v33 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v31);
    v17 = *v3;
  }

  v19 = *(v17 + 96);
  v20 = *(v3 + v19);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v19) = v22;
    v23 = *(*v3 + 88);
    swift_beginAccess();
    (*(v7 + 16))(v10, v4 + v23, v6);
    v24 = v34;
    v30(v10);
    result = (*(v7 + 8))(v10, v6);
    v25 = *(*v4 + 96);
    v26 = *(v4 + v25);
    v21 = __OFSUB__(v26, 1);
    v27 = v26 - 1;
    v28 = v21;
    if (v24)
    {
      if (!v28)
      {
LABEL_13:
        *(v4 + v25) = v27;
        return result;
      }

      __break(1u);
    }

    if (!v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ThreadGuard.syncWrite<A>(callsite:_:)(__int128 *a1, void (*a2)(char *))
{
  v4 = v2;
  v7 = &v2[*(*v2 + 112)];
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  result = (*(v9 + 8))(v8, v9);
  if (result <= 1u)
  {
    v11 = a1[1];
    v24 = *a1;
    v25 = v11;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v24);
  }

  v12 = *v2;
  v13 = *(*v2 + 104);
  if (*&v4[v13])
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v24);
    v12 = *v4;
  }

  if (*&v4[*(v12 + 96)])
  {
    v15 = a1[1];
    v24 = *a1;
    v25 = v15;
    v26[0] = a1[2];
    *(v26 + 9) = *(a1 + 41);
    result = sub_25F213F98(&v24);
  }

  v16 = *&v4[v13];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *&v4[v13] = v18;
    v19 = *(*v4 + 88);
    swift_beginAccess();
    a2(&v4[v19]);
    result = swift_endAccess();
    v20 = *(*v4 + 104);
    v21 = *&v4[v20];
    v17 = __OFSUB__(v21, 1);
    v22 = v21 - 1;
    v23 = v17;
    if (v3)
    {
      if (!v23)
      {
LABEL_15:
        *&v4[v20] = v22;
        return result;
      }

      __break(1u);
    }

    if (!v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2D93B4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IsolatedInvalidatableCache.__allocating_init()()
{
  v0 = swift_allocObject();
  IsolatedInvalidatableCache.init()();
  return v0;
}

uint64_t IsolatedInvalidatableCache.resource(on:for:create:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 216) = a2;
  *(v7 + 224) = a3;
  *(v7 + 208) = a1;
  v8 = *v6;
  v9 = *(*v6 + 80);
  *(v7 + 264) = v9;
  v10 = v8[11];
  *(v7 + 272) = v10;
  v11 = v8[12];
  *(v7 + 280) = v11;
  v12 = v8[13];
  *(v7 + 288) = v12;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  *(v7 + 32) = v14;
  *(v7 + 16) = v13;
  v15 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  *(v7 + 296) = v15;
  v16 = *(v15 - 8);
  *(v7 + 304) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  v18 = *(v10 - 8);
  *(v7 + 320) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  v20 = *(v9 - 8);
  *(v7 + 336) = v20;
  *(v7 + 344) = *(v20 + 64);
  *(v7 + 352) = swift_task_alloc();
  v21 = sub_25F305C1C();
  *(v7 + 360) = v21;
  v22 = *(v21 - 8);
  *(v7 + 368) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  swift_getObjectType();
  v25 = sub_25F3053EC();
  *(v7 + 408) = v25;
  *(v7 + 416) = v24;

  return MEMORY[0x2822009F8](sub_25F2D9790, v25, v24);
}

uint64_t sub_25F2D9790()
{
  v1 = v0[50];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  swift_beginAccess();
  v8 = *(v6 + 16);
  sub_25F304B8C();
  swift_endAccess();
  v9 = *(v3 + 48);
  v0[53] = v9;
  v0[54] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v1, 1, v2) == 1)
  {
    v10 = v0[49];
    v11 = v0[44];
    v12 = v0[42];
    v13 = v0[37];
    v14 = v0[38];
    v16 = v0[34];
    v15 = v0[35];
    v17 = v0[33];
    v18 = v0[29];
    v19 = v0[30];
    v20 = *(v12 + 16);
    v0[55] = v20;
    v0[56] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v11, v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v0[57] = sub_25F30542C();
    *v10 = sub_25F3052DC();
    swift_storeEnumTagMultiPayload();
    v21 = *(v14 + 56);
    v0[58] = v21;
    v0[59] = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v21(v10, 0, 1, v13);
    swift_beginAccess();
    v0[60] = sub_25F304B4C();
    sub_25F304B9C();
    swift_endAccess();
    v47 = (v19 + *v19);
    v22 = v19[1];
    v23 = swift_task_alloc();
    v0[61] = v23;
    *v23 = v0;
    v23[1] = sub_25F2D9BCC;
    v24 = v0[41];
    v25 = v0[31];

    return v47(v24);
  }

  else
  {
    v27 = v0[50];
    v28 = v0[37];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v0[40] + 32))(v0[26], v27, v0[34]);
      v30 = v0[49];
      v29 = v0[50];
      v32 = v0[47];
      v31 = v0[48];
      v33 = v0[44];
      v34 = v0[41];
      v35 = v0[39];

      v36 = v0[1];

      return v36();
    }

    else
    {
      v37 = v0[32];
      v38 = v0[28];
      v39 = v0[29];
      v40 = v0[27];
      v41 = *v27;
      v0[63] = *v27;
      v42 = swift_task_alloc();
      v0[64] = v42;
      v42[2] = v37;
      v42[3] = v39;
      v42[4] = v41;
      v43 = *(MEMORY[0x277D85A40] + 4);
      v44 = swift_task_alloc();
      v0[65] = v44;
      *v44 = v0;
      v44[1] = sub_25F2DA0F0;
      v45 = v0[34];
      v46 = v0[26];

      return MEMORY[0x2822008A0](v46, v40, v38, 0xD000000000000018, 0x800000025F31B7D0, sub_25F2DC794, v42, v45);
    }
  }
}

uint64_t sub_25F2D9BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 416);
  v6 = *(v2 + 408);
  if (v0)
  {
    v7 = sub_25F2DA2C8;
  }

  else
  {
    v7 = sub_25F2D9D08;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F2D9D08()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 384);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  swift_beginAccess();
  v9 = *(v7 + 16);
  sub_25F304B8C();
  v10 = v2(v3, 1, v4);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  if (v10)
  {
    (*(v13 + 8))(*(v0 + 384), *(v0 + 360));
    swift_endAccess();
    v49 = 0;
  }

  else
  {
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = *(v0 + 296);
    (*(v15 + 16))(v14, *(v0 + 384), v16);
    (*(v13 + 8))(v11, v12);
    swift_endAccess();
    v49 = sub_25F2DBF74(v16);
    (*(v15 + 8))(v14, v16);
  }

  v42 = *(v0 + 464);
  v43 = *(v0 + 472);
  v17 = *(v0 + 440);
  v18 = *(v0 + 448);
  v19 = *(v0 + 392);
  v20 = *(v0 + 352);
  v21 = *(v0 + 328);
  v45 = *(v0 + 480);
  v46 = *(v0 + 336);
  v22 = *(v0 + 320);
  v23 = *(v0 + 296);
  v47 = *(v0 + 344);
  v48 = *(v0 + 288);
  v24 = *(v0 + 256);
  v25 = *(v0 + 264);
  v44 = *(v0 + 232);
  v50 = *(v0 + 272);
  v17(v20);
  (*(v22 + 16))(v19, v21);
  swift_storeEnumTagMultiPayload();
  v42(v19, 0, 1, v23);
  swift_beginAccess();
  sub_25F304B9C();
  swift_endAccess();
  (v17)(v20, v44, v25);
  v26 = (*(v46 + 80) + 56) & ~*(v46 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v50;
  *(v27 + 40) = v48;
  *(v27 + 48) = v24;
  (*(v46 + 32))(v27 + v26, v20, v25);

  IsolatedInvalidatable.onInvalidation(_:)(sub_25F2DD354, v27, v50, v48);

  if (v49)
  {
    v28 = *(v0 + 496);
    v29 = *(v0 + 456);
    v30 = *(v0 + 328);
    *(v0 + 200) = v49;
    v31 = swift_task_alloc();
    v32 = *(v0 + 280);
    *(v31 + 16) = *(v0 + 264);
    *(v31 + 32) = v32;
    *(v31 + 48) = v30;
    sub_25F30539C();
    swift_getWitnessTable();
    sub_25F3051BC();
  }

  (*(*(v0 + 320) + 32))(*(v0 + 208), *(v0 + 328), *(v0 + 272));
  v34 = *(v0 + 392);
  v33 = *(v0 + 400);
  v36 = *(v0 + 376);
  v35 = *(v0 + 384);
  v37 = *(v0 + 352);
  v38 = *(v0 + 328);
  v39 = *(v0 + 312);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25F2DA0F0()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v10 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = v2[51];
    v5 = v2[52];
    v6 = sub_25F2DA590;
  }

  else
  {
    v7 = v2[63];
    v8 = v2[64];

    v4 = v2[51];
    v5 = v2[52];
    v6 = sub_25F2DA214;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25F2DA214()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[39];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F2DA2C8()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 376);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  swift_beginAccess();
  v9 = *(v7 + 16);
  sub_25F304B8C();
  v10 = v2(v3, 1, v4);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v13 = *(v0 + 360);
  if (v10)
  {
    (*(v12 + 8))(*(v0 + 376), *(v0 + 360));
    swift_endAccess();
    v14 = 0;
  }

  else
  {
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v17 = *(v0 + 296);
    (*(v16 + 16))(v15, *(v0 + 376), v17);
    (*(v12 + 8))(v11, v13);
    swift_endAccess();
    v14 = sub_25F2DBF74(v17);
    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 472);
  v18 = *(v0 + 480);
  v20 = *(v0 + 464);
  v21 = *(v0 + 448);
  v22 = *(v0 + 392);
  v23 = *(v0 + 296);
  v24 = *(v0 + 256);
  (*(v0 + 440))(*(v0 + 352), *(v0 + 232), *(v0 + 264));
  v20(v22, 1, 1, v23);
  swift_beginAccess();
  sub_25F304B9C();
  swift_endAccess();
  if (v14)
  {
    v25 = *(v0 + 496);
    v26 = *(v0 + 456);
    *(v0 + 192) = v14;
    v27 = swift_task_alloc();
    v28 = *(v0 + 280);
    *(v27 + 16) = *(v0 + 264);
    *(v27 + 32) = v28;
    *(v27 + 48) = v25;
    sub_25F30539C();
    swift_getWitnessTable();
    sub_25F3051BC();
  }

  v29 = *(v0 + 496);
  swift_willThrow();
  v30 = *(v0 + 496);
  v32 = *(v0 + 392);
  v31 = *(v0 + 400);
  v34 = *(v0 + 376);
  v33 = *(v0 + 384);
  v35 = *(v0 + 352);
  v36 = *(v0 + 328);
  v37 = *(v0 + 312);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_25F2DA590()
{
  v1 = v0[63];
  v2 = v0[64];

  v3 = v0[66];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[39];

  v11 = v0[1];

  return v11();
}

uint64_t IsolatedInvalidatableCache.snapshot.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v8 = v1[13];

  type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v6 = sub_25F304ABC();

  return v6;
}

uint64_t sub_25F2DA76C(__int128 *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v41 = sub_25F305C1C();
  v56 = *(v41 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v41);
  v53 = v39 - v9;
  v10 = *(v5 + 80);
  v50 = *(v6 + 96);
  *&v58 = v10;
  *(&v58 + 1) = v7;
  v11 = v10;
  v59 = v50;
  v12 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v47 = v39 - v16;
  v17 = a1[1];
  v58 = *a1;
  v59 = v17;
  v60[0] = a1[2];
  *(v60 + 9) = *(a1 + 41);
  v51 = *a2;
  v19 = v18;
  swift_beginAccess();
  v20 = v2[2];
  v49 = v11;
  v21 = nullsub_2(v20);
  swift_beginAccess();
  sub_25F304B4C();

  sub_25F304B3C();
  swift_endAccess();
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v46 = v13 + 16;
  v45 = v13 + 32;
  v44 = v7 - 8;
  v40 = *(&v50 + 1);
  v39[1] = *(&v50 + 1) + 16;
  v39[0] = v56 + 8;
  v48 = v13;
  v43 = (v13 + 8);
  v52 = v21;

  v28 = 0;
  v54 = 0;
  *&v29 = v49;
  v56 = v7;
  *(&v29 + 1) = v7;
  v42 = v29;
  v55 = v19;
  while (v25)
  {
    v30 = v28;
    v31 = v56;
    v32 = v53;
LABEL_11:
    v33 = v48;
    v34 = v47;
    (*(v48 + 16))(v47, *(v52 + 56) + *(v48 + 72) * (__clz(__rbit64(v25)) | (v30 << 6)), v12);
    (*(v33 + 32))(v19, v34, v12);
    sub_25F2DBDCC(v12, v32);
    v35 = *(v31 - 8);
    if ((*(v35 + 48))(v32, 1, v31) == 1)
    {
      (*v39[0])(v32, v41);
    }

    else
    {
      (*(v40 + 16))(v31);
      (*(v35 + 8))(v32, v31);
      sub_25F28ACD4();
    }

    v25 &= v25 - 1;
    v19 = v55;
    v36 = sub_25F2DBF74(v12);
    if (v36)
    {
      v49 = v39;
      v57 = v36;
      MEMORY[0x28223BE20](v36);
      v37 = v50;
      *&v39[-6] = v42;
      *&v39[-4] = v37;
      v39[-2] = &v58;
      v39[-1] = v51;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30542C();
      sub_25F30539C();
      swift_getWitnessTable();
      v38 = v54;
      v19 = v55;
      sub_25F3051BC();
      v54 = v38;
    }

    result = (*v43)(v19, v12);
    v28 = v30;
  }

  v31 = v56;
  v32 = v53;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
    }

    v25 = *(v22 + 8 * v30);
    ++v28;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2DADB4(uint64_t a1, uint64_t *a2)
{
  v33 = a2;
  v34 = a1;
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 104);
  v35[0] = *(*v2 + 80);
  v35[1] = v3;
  v35[2] = v4;
  v35[3] = v5;
  v29 = v5;
  v6 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v27 - v8;
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v31 = v3;
  v14 = sub_25F305C1C();
  v28 = *(v14 - 8);
  v15 = *(v28 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v18 = *v33;
  swift_beginAccess();
  v19 = v2[2];
  v20 = v32;
  sub_25F304B8C();
  if ((*(v20 + 48))(v13, 1, v6))
  {
    (*(v10 + 8))(v13, v9);
    return swift_endAccess();
  }

  else
  {
    v34 = v14;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    (*(v20 + 16))(v30, v13, v6);
    (*(v10 + 8))(v13, v9);
    swift_endAccess();
    sub_25F2DBDCC(v6, v17);
    (*(v20 + 8))(v24, v6);
    v25 = v31;
    v26 = *(v31 - 8);
    if ((*(v26 + 48))(v17, 1, v31) == 1)
    {
      return (*(v22 + 8))(v17, v34);
    }

    else
    {
      v35[0] = v18;
      AnyInvalidatable.invalidate(file:line:column:function:trace:)("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedInvalidatableCache.swift", 138, 2, 100, 41, "invalidateResource(for:trace:)", 30, 2, v35, v25, *(v23 + 8));
      return (*(v26 + 8))(v17, v25);
    }
  }
}

uint64_t sub_25F2DB194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  v8 = *v6;
  v9 = *(*v6 + 88);
  v7[19] = v9;
  v10 = sub_25F1E6B9C();
  v7[20] = v10;
  v11 = *(v8 + 104);
  v7[21] = v11;
  v7[2] = &type metadata for Identifier;
  v7[3] = v9;
  v7[4] = v10;
  v7[5] = v11;
  v12 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v7[22] = v12;
  v7[23] = swift_getTupleTypeMetadata2();
  v13 = sub_25F305C1C();
  v7[24] = v13;
  v14 = *(v13 - 8);
  v7[25] = v14;
  v15 = *(v14 + 64) + 15;
  v7[26] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[27] = TupleTypeMetadata2;
  v17 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v18 = *(v12 - 8);
  v7[29] = v18;
  v19 = *(v18 + 64) + 15;
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  swift_getObjectType();
  v21 = sub_25F3053EC();
  v7[32] = v21;
  v7[33] = v20;

  return MEMORY[0x2822009F8](sub_25F2DB3B8, v21, v20);
}

uint64_t sub_25F2DB3B8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v52 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 120);
  swift_beginAccess();
  *(v0 + 72) = *(v6 + 16);
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v9 = swift_task_alloc();
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = sub_25F2DD8E4;
  v9[5] = v8;
  sub_25F304B4C();

  swift_getWitnessTable();
  sub_25F30516C();

  if ((*(*(v52 - 8) + 48))(v1, 1) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    if (qword_27FD52798 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 168);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 120);
    v14 = off_27FD559A0;
    v53 = *(v0 + 128);
    os_unfair_lock_lock(off_27FD559A0 + 6);
    v15 = *(v14 + 2);
    *(v14 + 2) = v15 + 1;
    os_unfair_lock_unlock(v14 + 6);
    *(v0 + 80) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58810, &qword_25F315A78);
    sub_25F2DD94C();
    v16 = sub_25F30511C();
    *(v0 + 304) = v16;
    *(v0 + 88) = v15;
    v17 = swift_task_alloc();
    *(v0 + 312) = v17;
    *(v17 + 16) = v11;
    *(v17 + 24) = v10;
    *(v17 + 32) = v53;
    *(v17 + 48) = v15;
    *(v17 + 56) = v16;
    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = sub_25F2DBB10;
    v19 = *(v0 + 144);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 96);

    return IsolatedInvalidatableCache.resource(on:for:create:)(v22, v20, v21, v0 + 88, &unk_25F315A88, v17);
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 248);
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v30 = *(v0 + 176);
    v31 = *(*(v0 + 184) + 48);
    v32 = *(v29 + 48);
    *v27 = *v28;
    v33 = *(v26 + 32);
    v33(&v27[v32], &v28[v31], v30);
    v34 = *v27;
    v33(v25, &v27[*(v29 + 48)], v30);
    (*(v26 + 16))(v24, v25, v30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(v0 + 240);
      v36 = *(v0 + 152);
      v37 = *(v0 + 96);
      (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 176));
      (*(*(v36 - 8) + 32))(v37, v35, v36);
      v39 = *(v0 + 240);
      v38 = *(v0 + 248);
      v40 = *(v0 + 224);
      v41 = *(v0 + 208);

      v42 = *(v0 + 8);

      return v42();
    }

    else
    {
      v43 = *(v0 + 144);
      v44 = *(v0 + 104);
      v45 = *(v0 + 112);
      v46 = **(v0 + 240);
      *(v0 + 272) = v46;
      v47 = swift_task_alloc();
      *(v0 + 280) = v47;
      v47[2] = v43;
      v47[3] = v34;
      v47[4] = v46;
      v48 = *(MEMORY[0x277D85A40] + 4);
      v49 = swift_task_alloc();
      *(v0 + 288) = v49;
      *v49 = v0;
      v49[1] = sub_25F2DB8F8;
      v50 = *(v0 + 152);
      v51 = *(v0 + 96);

      return MEMORY[0x2822008A0](v51, v44, v45, 0xD000000000000029, 0x800000025F31B8A0, sub_25F2DDA84, v47, v50);
    }
  }
}

uint64_t sub_25F2DB8F8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = v2[35];
  v6 = v2[34];

  v7 = v2[33];
  v8 = v2[32];
  if (v0)
  {
    v9 = sub_25F2DBD24;
  }

  else
  {
    v9 = sub_25F2DBA68;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25F2DBA68()
{
  (*(v0[29] + 8))(v0[31], v0[22]);
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F2DBB10()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    v4 = v3[32];
    v5 = v3[33];

    return MEMORY[0x2822009F8](sub_25F2DBC88, v4, v5);
  }

  else
  {
    v6 = v3[38];
    v7 = v3[39];

    v9 = v3[30];
    v8 = v3[31];
    v10 = v3[28];
    v11 = v3[26];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_25F2DBC88()
{
  v1 = v0[38];
  v2 = v0[39];

  v3 = v0[41];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F2DBD24()
{
  (*(v0[29] + 8))(v0[31], v0[22]);
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[26];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F2DBDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t sub_25F2DBF74(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  (*(*(*(a1 + 24) - 8) + 8))(v4);
  return 0;
}

void *IsolatedInvalidatableCache.init()()
{
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 96);
  v1 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  swift_getTupleTypeMetadata2();
  v2 = sub_25F3052DC();
  v3 = sub_25F1CCBBC(v2, v5, v1, v6);

  v0[2] = v3;
  return v0;
}

uint64_t sub_25F2DC14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 96);
  v16[0] = *(*a2 + 80);
  v16[1] = v4;
  v16[2] = v16[0];
  v16[3] = v4;
  v5 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v16 - v9;
  v11 = *&v16[0];
  v12 = *(*(*&v16[0] - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v14 + 16))(v16 - v13, a3, v11);
  (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F2DC314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  return sub_25F30541C();
}

uint64_t sub_25F2DC40C(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  return sub_25F30540C();
}

uint64_t sub_25F2DC488(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v7 = *(*a2 + 88);
  v25 = *(*a2 + 80);
  v6 = v25;
  v26 = v7;
  v24 = *(v5 + 96);
  v27 = v24;
  v8 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v9 = sub_25F305C1C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v24 - v12);
  v14 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v16 + 16))(&v24 - v15, a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v17 = sub_25F30542C();
  sub_25F3064EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = *(v18 + 80);
  swift_allocObject();
  sub_25F30527C();
  (*(v18 + 16))(v21, a1, v17);
  sub_25F1F7314();
  v22 = sub_25F3052BC();

  *v13 = v22;
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v13, 0, 1, v8);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t IsolatedInvalidatableCache.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9)
{
  v9 = *a9;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v11 = v9;
  return sub_25F2DA76C(&v12, &v11);
}

uint64_t sub_25F2DC7E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_25F2DD890();
  swift_allocError();
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(v8 + 41) = *(a2 + 41);
  *(v8 + 16) = v6;
  *(v8 + 32) = v5;
  *v8 = v7;
  *(v8 + 64) = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  return sub_25F30540C();
}

uint64_t IsolatedInvalidatableCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t IsolatedInvalidatableCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *IsolatedOnDemand.init(create:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for IsolatedInvalidatableCache();
  v6 = swift_allocObject();
  result = IsolatedInvalidatableCache.init()();
  *a3 = v6;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

uint64_t IsolatedOnDemand.resource(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v4[2] = 0;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_25F2DCA64;

  return IsolatedInvalidatableCache.resource(on:for:create:)(a1, a2, a3, (v4 + 2), v9, v10);
}

uint64_t sub_25F2DCA64()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];
    v5 = v3[4];
    swift_getObjectType();
    v7 = sub_25F3053EC();

    return MEMORY[0x2822009F8](sub_25F2996E4, v7, v6);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t IsolatedOnDemand.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9)
{
  v10 = *a9;
  v11 = *v9;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v13 = v10;
  return sub_25F2DA76C(&v14, &v13);
}

uint64_t IsolatedOnDemand.invalidate(callsite:trace:)(__int128 *a1, uint64_t *a2)
{
  v3 = *v2;
  v5 = *a2;
  return sub_25F2DA76C(a1, &v5);
}

uint64_t sub_25F2DCC4C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = sub_25F1E6B9C();
  v8 = *(v5 + 104);
  v25 = &type metadata for Identifier;
  v26 = v6;
  v23 = v6;
  v27 = v7;
  v28 = v8;
  v9 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v19 = *a1;
  swift_beginAccess();
  v20 = a2[2];
  v29 = v19;
  sub_25F304B8C();
  if ((*(v10 + 48))(v18, 1, v9))
  {
    (*(v15 + 8))(v18, v14);
    swift_endAccess();
    return (*(*(v23 - 8) + 56))(v24, 1, 1);
  }

  else
  {
    (*(v10 + 16))(v13, v18, v9);
    (*(v15 + 8))(v18, v14);
    swift_endAccess();
    sub_25F2DBDCC(v9, v24);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_25F2DCEF8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_25F2230B0;

  return v11(a1, v5 + 16, a5);
}

uint64_t sub_25F2DD010(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_25F1E6B9C();
  type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25F2DD0C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = sub_25F1E6B9C();
  v8 = *(v5 + 104);
  v21[2] = &type metadata for Identifier;
  v21[3] = v6;
  v21[4] = v7;
  v21[5] = v8;
  v9 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  v10 = sub_25F305C1C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (v21 - v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v14 = sub_25F30542C();
  sub_25F3064EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = *(v15 + 80);
  swift_allocObject();
  sub_25F30527C();
  (*(v15 + 16))(v18, a1, v14);
  sub_25F1F7314();
  v19 = sub_25F3052BC();

  *v13 = v19;
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  v21[1] = a3;
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F2DD330(int a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_25F2DC40C(a1, *(v1 + 48));
}

uint64_t sub_25F2DD390(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_25F2DC314(a1, v1[6], v1[2], v1[3]);
}

uint64_t sub_25F2DD3B4@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v3 = type metadata accessor for IsolatedInvalidatableCache.ResourceStatus();
  return sub_25F2DBDCC(v3, a1);
}

uint64_t sub_25F2DD49C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2DD4F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  result = sub_25F30539C();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2DD59C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
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
      if (v11 >= 2)
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

  return (v5 | v10) + 255;
}

void sub_25F2DD6B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
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

uint64_t sub_25F2DD86C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_25F2DC7E8(a1, *(v1 + 48), *(v1 + 56));
}

unint64_t sub_25F2DD890()
{
  result = qword_27FD58808;
  if (!qword_27FD58808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58808);
  }

  return result;
}

uint64_t sub_25F2DD90C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_25F2DD010(a1, *(v1 + 32)) & 1;
}

unint64_t sub_25F2DD94C()
{
  result = qword_27FD58818;
  if (!qword_27FD58818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD58810, &qword_25F315A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58818);
  }

  return result;
}

uint64_t sub_25F2DD9B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F1AFDB0;

  return sub_25F2DCEF8(a1, v6, v7, v9, v8);
}

uint64_t sub_25F2DDA90(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v37 = MEMORY[0x277D84F90];
  sub_25F1BD168(0, v5, 0);
  v6 = v37;
  v9 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v11 = v9[1];
    v12 = v9[3];
    v35 = v9[2];
    v36[0] = v12;
    *(v36 + 9) = *(v9 + 57);
    v13 = v9[1];
    v34[0] = *v9;
    v34[1] = v13;
    v14 = v9[3];
    v30 = v35;
    v31[0] = v14;
    *(v31 + 9) = *(v9 + 57);
    v28 = v34[0];
    v29 = v11;
    sub_25F1DF984(v34, &v24);
    a1(v32, &v28);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22[2] = v30;
    v23[0] = v31[0];
    *(v23 + 9) = *(v31 + 9);
    v22[0] = v28;
    v22[1] = v29;
    sub_25F1DF9E0(v22);
    *(v27 + 9) = *(v33 + 9);
    v26 = v32[2];
    v27[0] = v33[0];
    v24 = v32[0];
    v25 = v32[1];
    v37 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_25F1BD168((v15 > 1), v16 + 1, 1);
      v6 = v37;
    }

    *(v6 + 16) = v16 + 1;
    v17 = (v6 + 80 * v16);
    v17[2] = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27[0];
    *(v17 + 89) = *(v27 + 9);
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    if (!i)
    {
      return v6;
    }

    v9 += 5;
  }

  v26 = v30;
  v27[0] = v31[0];
  *(v27 + 9) = *(v31 + 9);
  v24 = v28;
  v25 = v29;
  sub_25F1DF9E0(&v24);

  __break(1u);
  return result;
}

uint64_t sub_25F2DDC58(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_25F304F2C();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v7;
  v25 = MEMORY[0x277D84F90];
  sub_25F1BD208(0, v7 & ~(v7 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v8 = v25;
    v20 = v9;
    while (!__OFADD__(v10, 1))
    {
      v22 = v10 + 1;
      v11 = a4;
      v23[0] = sub_25F30509C();
      v23[1] = v12;
      a1(v24, v23);
      if (v5)
      {
        goto LABEL_12;
      }

      v5 = 0;

      v13 = v24[0];
      v14 = v24[1];
      v25 = v8;
      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v15 >= v16 >> 1)
      {
        v19 = v24[0];
        sub_25F1BD208((v16 > 1), v15 + 1, 1);
        v13 = v19;
        v8 = v25;
      }

      *(v8 + 16) = v15 + 1;
      v17 = v8 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      a4 = v11;
      sub_25F304F3C();
      ++v10;
      if (v22 == v20)
      {
        return v8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:

  __break(1u);
  return result;
}

Swift::String __swiftcall String.prefixingEachLine(with:startingOnLine:)(Swift::String with, Swift::UInt startingOnLine)
{
  sub_25F1BF118();
  v2 = sub_25F305CEC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    v4 = sub_25F1BD008(0, v3, 0);
    v6 = 0;
    v7 = *(v2 + 16);
    v8 = (v2 + 40);
    while (v7 != v6)
    {
      countAndFlagsBits = *(v8 - 1);
      object = *v8;
      if (v6 >= startingOnLine)
      {

        MEMORY[0x25F8D7130](countAndFlagsBits, object);

        countAndFlagsBits = with._countAndFlagsBits;
        object = with._object;
      }

      else
      {
        v11 = *v8;
      }

      v13 = *(v21 + 16);
      v12 = *(v21 + 24);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_25F1BD008((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v21 + 16) = v13 + 1;
      v14 = v21 + 16 * v13;
      *(v14 + 32) = countAndFlagsBits;
      *(v14 + 40) = object;
      v8 += 2;
      if (v3 == v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110);
    v15 = sub_25F304CAC();
    v17 = v16;

    v4 = v15;
    v5 = v17;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_25F2DE000(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v1 + 32 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 56);
    v5 += 32;
    ++v2;
    if (v7 != 255)
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 16);
      sub_25F208950(*v5, v9, v10, v7 & 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2F0C4C(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_25F2F0C4C((v11 > 1), v12 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v12 + 1;
      v13 = &v4[4 * v12];
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      *(v13 + 56) = v7 & 1;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25F2DE124(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 48;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 24;
    v7 = v8;
    ++v1;
    if (v8 != 255)
    {
      v9 = *(v5 - 5);
      v10 = *(v5 - 4);
      sub_25F1D93AC(v9, v10, v7 & 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2F1164(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_25F2F1164((v11 > 1), v12 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v12 + 1;
      v13 = &v4[3 * v12];
      v13[4] = v9;
      v13[5] = v10;
      *(v13 + 48) = v7 & 1;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25F2DE23C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 2;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2EFB20(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_25F2EFB20((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_25F2DE334(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F2E1FAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_25F305F9C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_25F30605C();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

Swift::String __swiftcall String.uppercasingFirstLetter()()
{
  v2 = sub_25F2DED54(v0, v1, MEMORY[0x277D83728]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.uv_sha256.getter()
{
  v0 = sub_25F3049FC();
  v23 = *(v0 - 8);
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F3049EC();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F304E6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F304E4C();
  v12 = sub_25F304E1C();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v11, v7);
  if (v14 >> 60 == 15)
  {
    sub_25F304E5C();
    v16 = sub_25F304E1C();
    v18 = v17;
    v15(v11, v7);
    if (v18 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }

    if (v18 >> 60 == 15)
    {
      v14 = 0xC000000000000000;
    }

    else
    {
      v14 = v18;
    }
  }

  sub_25F2E3010();
  sub_25F3049CC();
  sub_25F1B70AC(v12, v14);
  sub_25F2E2974(v12, v14);
  sub_25F1D4BB0(v12, v14);
  v19 = v22;
  sub_25F3049BC();
  (*(v23 + 8))(v3, v0);
  sub_25F3049DC();
  sub_25F1D4BB0(v12, v14);
  (*(v24 + 8))(v19, v25);
  return v26;
}

Swift::String __swiftcall String.deleting(prefix:)(Swift::String prefix)
{
  v3 = sub_25F2DFD1C(prefix._countAndFlagsBits, prefix._object, v1, v2, Substring.uv_deletingLeading(prefix:));
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.init(spaced:)(uint64_t a1)
{
  sub_25F2DE23C(a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110);
  v1 = sub_25F304CAC();

  return v1;
}

uint64_t String.contains(anyCharactersFrom:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v14 = 0;
    return v14 & 1;
  }

  v6 = a3 & 0xFFFFFFFFFFFFFFLL;
  v7 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;

  for (i = 0; i < v3; i += v12)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      sub_25F305F9C();
      v12 = v11;
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v20[0] = a2;
        v20[1] = v6;
        v10 = v20 + i;
      }

      else
      {
        v9 = v7;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v9 = sub_25F30605C();
        }

        v10 = (v9 + i);
      }

      v13 = *v10;
      if ((*v10 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v15 = (__clz(v13 ^ 0xFF) - 24);
      if (v15 <= 2)
      {
        if (v15 != 1)
        {
          v16 = v10[1] & 0x3F | ((v13 & 0x1F) << 6);
          v12 = 2;
          goto LABEL_15;
        }

LABEL_14:
        v12 = 1;
        goto LABEL_15;
      }

      if (v15 == 3)
      {
        v17 = ((v13 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3Fu;
        v12 = 3;
      }

      else
      {
        v18 = ((v13 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3Fu;
        v12 = 4;
      }
    }

LABEL_15:
    v14 = sub_25F30425C();
    if (v14)
    {
      break;
    }
  }

  return v14 & 1;
}

uint64_t String.filteringCharacters(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    v19 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v20 = a3 & 0xFFFFFFFFFFFFFFLL;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    while (1)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = sub_25F305F9C();
        v13 = v12;
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v21[0] = a2;
          v21[1] = v20;
          v10 = v21 + v6;
        }

        else
        {
          v9 = v19;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v9 = sub_25F30605C();
          }

          v10 = (v9 + v6);
        }

        v11 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v15 = (__clz(v11 ^ 0xFF) - 24);
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_18;
        }

        if (v15 == 1)
        {
LABEL_17:
          v13 = 1;
        }

        else
        {
          v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_18:
      if (sub_25F30425C())
      {
        if (v11 <= 0x7F)
        {
          v7 = v11 + 1;
        }

        else
        {
          v14 = (v11 & 0x3F) << 8;
          if (v11 >= 0x800)
          {
            v16 = (v14 | (v11 >> 6) & 0x3F) << 8;
            v17 = (((v16 | (v11 >> 12) & 0x3F) << 8) | (v11 >> 18)) - 2122219023;
            v7 = (v11 >> 12) + v16 + 8487393;
            if (HIWORD(v11))
            {
              v7 = v17;
            }
          }

          else
          {
            v7 = (v11 >> 6) + v14 + 33217;
          }
        }

        v21[0] = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v7) >> 3))));
        v8 = sub_25F304EFC();
        MEMORY[0x25F8D7130](v8);
      }

      v6 += v13;
      if (v6 >= v4)
      {
        swift_bridgeObjectRelease_n();
        return v22;
      }
    }
  }

  return 0;
}

uint64_t String.replacingCharacters(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[6] = sub_25F2DDC58(sub_25F2E3068, v6, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58830, &qword_25F315A98);
  sub_25F1F72CC(&qword_27FD58838, &qword_27FD58830, &qword_25F315A98);
  return sub_25F3050AC();
}

Swift::String __swiftcall String.lowercasingFirstLetter()()
{
  v2 = sub_25F2DED54(v0, v1, MEMORY[0x277D83718]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_25F2DED54(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = sub_25F2DE334(a1, a2);
    if ((v5 & 0x100000000) == 0)
    {
      v6 = v5;

      sub_25F2E28E8(1uLL);
      if ((v6 & 0xFFFFFF80) != 0 || v6 <= 0xFF)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
LABEL_7:
    v7 = sub_25F304EFC();
    v8 = a3(v7);

    MEMORY[0x25F8D7130](a1, a2);

    return v8;
  }

  return 0;
}

BOOL sub_25F2DEF0C(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_25F30427C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = sub_25F304F3C();
  v22[0] = sub_25F3050CC();
  v22[1] = v13;
  v22[2] = v14;
  v22[3] = v15;
  a3(v22[0], v13, v14, v15);
  sub_25F2A3D58();
  v16 = sub_25F305D0C();
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v10, v6);

  result = 0;
  if ((v20 & 1) == 0 && !(v16 >> 14))
  {
    return (v18 ^ v12) < 0x4000;
  }

  return result;
}

unint64_t String.spacedTitleCase.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F30427C();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3067FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HIBYTE(a2) & 0xF;
  v45 = a1;
  v46 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v47 = 0;
  v48 = v12;

  result = sub_25F304F9C();
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_40:

    v45 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110);
    v34 = sub_25F304CAC();
    v36 = v35;

    v45 = v34;
    v46 = v36;
    v37 = v40;
    sub_25F30420C();
    sub_25F1BF118();
    v38 = sub_25F305D1C();
    (*(v41 + 8))(v37, v42);

    return v38;
  }

  v15 = result;
  v16 = v14;
  v17 = (v8 + 8);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    v19 = (v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v15 & 0xFFFFFFFFFFFFLL;
    if (!v19)
    {
      break;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v24 = sub_25F304EDC();
    }

    else
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v21 = v15;
      }

      else
      {
        if ((v15 & 0x1000000000000000) != 0)
        {
          v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v20 = sub_25F30605C();
        }

        v21 = *v20;
      }

      v22 = v21;
      v23 = (__clz(~v21) - 24) << 16;
      if (v22 < 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 65541;
      }
    }

    v25 = 4 * v19;
    if (v25 == v24 >> 14)
    {
      result = sub_25F2E1E5C(v15, v16);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_42;
      }

      sub_25F30680C();
      v26 = sub_25F3067DC();
      (*v17)(v11, v7);
      if (v26)
      {
        goto LABEL_30;
      }
    }

    if (sub_25F304C2C())
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        if (v25 != sub_25F304EDC() >> 14)
        {
          goto LABEL_28;
        }
      }

      else if (v25 != ((4 * sub_25F305F8C()) & 0x3FFFFFFFFFFFFLL))
      {
LABEL_28:
        if (sub_25F304C2C() & 1) != 0 && (sub_25F304C1C())
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      result = sub_25F2E1E5C(v15, v16);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_43;
      }

      sub_25F30680C();
      v27 = sub_25F3067EC();
      (*v17)(v11, v7);
      if ((v27 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_30:
      MEMORY[0x25F8D7130](32, 0xE100000000000000);
    }

LABEL_31:
    MEMORY[0x25F8D7130](v15, v16);

    v28 = v43;
    v29 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_25F2EFB20(0, *(v18 + 2) + 1, 1, v18);
    }

    v31 = *(v18 + 2);
    v30 = *(v18 + 3);
    if (v31 >= v30 >> 1)
    {
      v18 = sub_25F2EFB20((v30 > 1), v31 + 1, 1, v18);
    }

    *(v18 + 2) = v31 + 1;
    v32 = &v18[16 * v31];
    *(v32 + 4) = v28;
    *(v32 + 5) = v29;
    result = sub_25F304F9C();
    v15 = result;
    v16 = v33;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

Swift::String __swiftcall String.strippingTrailingNewlines()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58840, &qword_25F315AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = sub_25F3050CC();
  v10 = sub_25F2E234C(10, 0xE100000000000000, v8, v9);

  if (v10)
  {
    v11 = sub_25F3046AC();
    v12 = *(*(v11 - 8) + 56);
    while (1)
    {
      v25[2] = v3;
      v25[3] = v2;
      v25[0] = 10;
      v25[1] = 0xE100000000000000;
      v12(v7, 1, 1, v11);
      sub_25F1BF118();
      sub_25F305D3C();
      v14 = v13;
      v15 = sub_25F2E30E8(v7);
      if (v14)
      {
        break;
      }

      v17 = sub_25F3050CC();
      v19 = sub_25F2E234C(10, 0xE100000000000000, v17, v18);

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v20 = sub_25F3050CC();
    v21 = MEMORY[0x25F8D7070](v20);
    v23 = v22;

    v15 = v21;
    v16 = v23;
  }

  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall String.describingDifference(from:)(Swift::String from)
{
  v3 = v2;
  v4 = v1;
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v7 = 0x66666964206F4ELL;
  if (v1 == from._countAndFlagsBits && v2 == from._object || (v8 = sub_25F30659C(), (v8 & 1) != 0))
  {
    v9 = 0xE700000000000000;
LABEL_5:
    v10 = v7;
  }

  else
  {
    v58 = 10;
    v59 = 0xE100000000000000;
    MEMORY[0x28223BE20](v8);
    v49 = &v58;

    v12 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F1F8CB8, v48, v4, v3, v11);
    v58 = 10;
    v59 = 0xE100000000000000;
    MEMORY[0x28223BE20](v12);
    v49 = &v58;

    v13 = v12;
    v15 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F2E3430, v48, countAndFlagsBits, object, v14);
    v16 = *(v12 + 16);
    v54 = *(v15 + 16);
    v50 = v15 + 32;
    v51 = v12 + 32;

    v17 = 0;
    v18 = 0;
    v19 = 0;
    for (i = v16; ; v16 = i)
    {
      if (v19 == v16)
      {
        v55 = 0;
        v56 = 0;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        if (v19 >= *(v13 + 16))
        {
          goto LABEL_31;
        }

        v16 = v19 + 1;
        v22 = (v51 + 32 * v19);
        v20 = v22[2];
        v21 = v22[3];
        v23 = v22[1];
        v55 = *v22;
        v56 = v23;
      }

      v19 = v16;
      if (v18 == v54)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v18 = v54;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 >= *(v15 + 16))
        {
          goto LABEL_32;
        }

        v52 = v21;
        v28 = v17;
        v29 = v20;
        v30 = v13;
        v31 = v15;
        v32 = v18 + 1;
        v33 = (v50 + 32 * v18);
        v26 = v33[2];
        v27 = v33[3];
        v34 = *v33;
        v25 = v33[1];

        v24 = v34;
        v18 = v32;
        v15 = v31;
        v13 = v30;
        v20 = v29;
        v17 = v28;
        v21 = v52;
        if (!(v52 | v27))
        {
LABEL_26:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v9 = 0x800000025F31B8D0;
          v7 = 0xD000000000000058;
          goto LABEL_5;
        }
      }

      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (!v21 || !v27)
      {

        v58 = 0;
        v59 = 0xE000000000000000;
        sub_25F305FAC();
        MEMORY[0x25F8D7130](0xD00000000000004BLL, 0x800000025F31B930);
        v35 = *(v13 + 16);

        v57 = v35;
        v36 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v36);

        MEMORY[0x25F8D7130](0x20736177202CLL, 0xE600000000000000);
        v37 = *(v15 + 16);

        v57 = v37;
        v38 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v38);

        v39 = 41;
LABEL_29:
        MEMORY[0x25F8D7130](v39, 0xE100000000000000);
        v7 = v58;
        v9 = v59;
        goto LABEL_5;
      }

      v52 = v24;
      if (v20 != v26 || v21 != v27 || v55 >> 16 != v24 >> 16 || v56 >> 16 != v25 >> 16)
      {
        LOBYTE(v49) = 0;
        if ((sub_25F30648C() & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_25F305FAC();

          v58 = 0xD00000000000001CLL;
          v59 = 0x800000025F31B980;
          v57 = v17;
          v40 = sub_25F3064DC();
          MEMORY[0x25F8D7130](v40);

          MEMORY[0x25F8D7130](2951738, 0xE300000000000000);
          v41 = MEMORY[0x25F8D7070](v52, v25, v26, v27);
          v43 = v42;

          MEMORY[0x25F8D7130](v41, v43);

          MEMORY[0x25F8D7130](11018, 0xE200000000000000);
          v44 = MEMORY[0x25F8D7070](v55, v56, v20, v21);
          v46 = v45;

          MEMORY[0x25F8D7130](v44, v46);

          v39 = 10;
          goto LABEL_29;
        }
      }

      ++v17;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  result._object = v9;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall String.indentingEachLine(startingOnLine:)(Swift::UInt startingOnLine)
{
  v2._countAndFlagsBits = 2105376;
  v2._object = 0xE300000000000000;
  v5 = String.prefixingEachLine(with:startingOnLine:)(v2, startingOnLine);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall String.uv_deletingTrailing(suffix:)(Swift::String suffix)
{
  v3 = sub_25F2DFD1C(suffix._countAndFlagsBits, suffix._object, v1, v2, Substring.uv_deletingTrailing(suffix:));
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_25F2DFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_25F3050CC();
  v12 = a5(a1, a2, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x25F8D7070](v12, v14, v16, v18);

  return v19;
}

unint64_t Substring.uv_deletingTrailing(suffix:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((sub_25F2E234C(a1, a2, a3, a4) & 1) == 0)
  {

    return v4;
  }

  result = sub_25F30500C();
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    result = sub_25F305C9C();
    if (result >> 14 >= v4 >> 14)
    {
      return sub_25F305CCC();
    }
  }

  __break(1u);
  return result;
}

uint64_t Substring.uv_deletingLeading(prefix:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (sub_25F2E21DC(a1, a2, a3, a4))
  {
    sub_25F30500C();
    if (a4 >> 14 >= sub_25F305C9C() >> 14)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = a3;
  if (a4 >> 14 < a3 >> 14)
  {
    __break(1u);
    return result;
  }

LABEL_5:

  return sub_25F305CCC();
}

Swift::String __swiftcall String.unquoted()()
{
  v2 = v1;
  v3 = v0;
  if (sub_25F30509C() == 34 && v4 == 0xE100000000000000)
  {
    goto LABEL_8;
  }

  v6 = sub_25F30659C();

  if (v6)
  {
    goto LABEL_9;
  }

  if (sub_25F30509C() == 10322146 && v7 == 0xA300000000000000)
  {
LABEL_8:
  }

  else
  {
    v17 = sub_25F30659C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  sub_25F304F4C();
  if (sub_25F30509C() == 34 && v8 == 0xE100000000000000)
  {
    goto LABEL_16;
  }

  v10 = sub_25F30659C();

  if ((v10 & 1) == 0)
  {
    sub_25F304F4C();
    if (sub_25F30509C() == 10322146 && v11 == 0xA300000000000000)
    {
LABEL_16:

      goto LABEL_17;
    }

    v18 = sub_25F30659C();

    if (v18)
    {
      goto LABEL_17;
    }

LABEL_23:

    goto LABEL_19;
  }

LABEL_17:
  v12 = sub_25F304F3C();
  v13 = sub_25F304F4C();
  if (v13 >> 14 < v12 >> 14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = sub_25F3050CC();
  v3 = MEMORY[0x25F8D7070](v15);
  v2 = v16;

LABEL_19:
  v13 = v3;
  v14 = v2;
LABEL_25:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_25F2E021C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58840, &qword_25F315AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v37 - v6;
  v51 = a1;
  v52 = a2;
  v43 = 0x800000025F31B9B0;
  v39 = 0x800000025F31B9D0;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1;
  }

  v9 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v45 = v9 | (v8 << 16);
  v42 = sub_25F3046AC();
  v10 = *(v42 - 8);
  v11 = *(v10 + 56);
  v40 = v10 + 56;
  v41 = v11;

  v38 = 0;
  v44 = 15;
LABEL_6:
  v46 = a1;
  while (1)
  {
    v49 = a1;
    v50 = a2;
    v12 = v42;
    v47 = 0xD000000000000018;
    v48 = v43;
    v13 = v41;
    v41(v7, 1, 1, v42);
    sub_25F1BF118();

    v14 = sub_25F305D3C();
    v16 = v15;
    v18 = v17;
    sub_25F2E30E8(v7);

    if (v18)
    {
      return v46;
    }

    v49 = v46;
    v50 = a2;
    v47 = 0xD000000000000011;
    v48 = v39;
    v13(v7, 1, 1, v12);

    v37[1] = v16;
    sub_25F305D3C();
    v20 = v19;
    sub_25F2E30E8(v7);

    a1 = v46;
    if ((v20 & 1) == 0)
    {
      v21 = sub_25F3050CC();
      v25 = v24;
      if ((v21 ^ v22) >> 14)
      {
        v26 = v21;
        v27 = v22;
        v28 = v23;
        if ((v24 & 0x1000000000000000) != 0)
        {
          v28 = sub_25F2E18D4(v21, v22, v23, v24, 16);

          if ((v28 & 0x100000000) == 0)
          {
LABEL_16:
            if (WORD1(v28) <= 0x10u && (v28 & 0xFFFFF800) != 0xD800)
            {
              v49 = 0;
              v50 = 0xE000000000000000;
              sub_25F30681C();
              sub_25F2E31A4();
              sub_25F304ECC();

              a1 = v51;
              a2 = v52;
              v34 = HIBYTE(v52) & 0xF;
              if ((v52 & 0x2000000000000000) == 0)
              {
                v34 = v51 & 0xFFFFFFFFFFFFLL;
              }

              v35 = 7;
              if (((v52 >> 60) & ((v51 & 0x800000000000000) == 0)) != 0)
              {
                v35 = 11;
              }

              v44 = v14;
              v45 = v35 | (v34 << 16);
              if (4 * v34 < v14 >> 14)
              {
                __break(1u);
                return v46;
              }

              goto LABEL_6;
            }
          }
        }

        else
        {
          v29 = v14;
          if ((v24 & 0x2000000000000000) != 0)
          {
            v49 = v23;
            v50 = v24 & 0xFFFFFFFFFFFFFFLL;
            v30 = &v49;
          }

          else if ((v23 & 0x1000000000000000) != 0)
          {
            v30 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v30 = sub_25F30605C();
          }

          v31 = v38;
          v32 = sub_25F2E2BA4(v30, v26, v27, v28, v25, 16);
          LODWORD(v28) = v32;
          v38 = v31;
          LOBYTE(v47) = BYTE4(v32) & 1;
          v33 = BYTE4(v32) & 1;

          v14 = v29;
          if ((v33 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
      }
    }
  }
}

Swift::String __swiftcall String.unescaped()()
{
  v2 = v1;
  v3 = v0;
  v4 = off_27FD58820;
  v5 = *(off_27FD58820 + 2);

  if (v5)
  {
    v8 = 0;
    v9 = v4 + 7;
    while (v8 < v4[2])
    {
      ++v8;
      v18 = *(v9 - 3);
      v19 = *(v9 - 2);
      v16 = *(v9 - 1);
      v17 = *v9;
      sub_25F1BF118();

      v3 = sub_25F305D2C();
      v11 = v10;

      v9 += 4;
      if (v5 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = v2;
LABEL_7:

    v12 = sub_25F2E021C(v3, v11);
    v14 = v13;

    v6 = v12;
    v7 = v14;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall String.escapedAndQuotedString()()
{
  MEMORY[0x25F8D7130]();
  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  v0 = 34;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.quotedCompilerArgumentAndEscaping()()
{

  sub_25F1BF118();

  sub_25F305D2C();

  sub_25F305D2C();

  v0 = sub_25F305D2C();
  v2 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58848, &qword_25F315AA8);
  swift_arrayDestroy();
  MEMORY[0x25F8D7130](v0, v2);

  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  v3 = 34;
  v4 = 0xE100000000000000;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.PaddingPosition.hashValue.getter(char a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1 & 1);
  return sub_25F30676C();
}

uint64_t String.padded(toAtLeastLength:withPad:position:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (sub_25F304F2C() >= a1)
  {

    return a5;
  }

  result = sub_25F304F2C();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_25F304F2C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_17;
  }

  if (!(v11 % result) || !__OFADD__(v11 / result, 1))
  {

    v12 = sub_25F30507C();
    v14 = v13;
    if (a4)
    {
      v18 = a5;
      v15 = v12;

      v16 = v15;
      v17 = v14;
    }

    else
    {
      v18 = v12;

      v16 = a5;
      v17 = a6;
    }

    MEMORY[0x25F8D7130](v16, v17);

    return v18;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25F2E0BA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58870, &unk_25F315B48);
  sub_25F2E3304();
  v2 = sub_25F304CAC();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F2E0C38@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_25F3077D0;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_25F304E3C();
  *a2 = result;
  a2[1] = v8;
  return result;
}

Swift::String __swiftcall String.uv_escapingForRegex()()
{
  sub_25F2E3150();
  sub_25F2E31A4();
  sub_25F30591C();
  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  sub_25F30591C();

  v0 = v3;
  v1 = v4;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id NSString.uv_sha256.getter()
{
  v1 = sub_25F3049FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3049EC();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 dataUsingEncoding_];
  if (v10 || (v10 = [v0 dataUsingEncoding_]) != 0)
  {
    v11 = v10;
    v12 = sub_25F30453C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xC000000000000000;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
  sub_25F2E3010();
  sub_25F3049CC();
  sub_25F1B70AC(v12, v14);
  sub_25F2E2974(v12, v14);
  sub_25F1D4BB0(v12, v14);
  sub_25F3049BC();
  v16 = (*(v2 + 8))(v5, v1);
  MEMORY[0x28223BE20](v16);
  *(&v18 - 2) = v15;
  sub_25F3049DC();
  sub_25F1D4BB0(v12, v14);
  (*(v19 + 8))(v9, v20);
  return v15;
}

uint64_t sub_25F2E131C(uint64_t result, char *a2)
{
  if (result)
  {
    v3 = result;
    if (result != a2)
    {
      sub_25F1ED8D0();
      do
      {
        v4 = *v3++;
        v5 = sub_25F305B8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_25F3077D0;
        *(v6 + 56) = MEMORY[0x277D84B78];
        *(v6 + 64) = MEMORY[0x277D84BC0];
        *(v6 + 32) = v4;
        sub_25F305A2C();
      }

      while (v3 != a2);
    }
  }

  return result;
}

Swift::String __swiftcall Substring.uv_escapingForRegex()()
{
  MEMORY[0x25F8D7070]();
  v0 = String.uv_escapingForRegex()();

  countAndFlagsBits = v0._countAndFlagsBits;
  object = v0._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void *sub_25F2E1468(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD531A0, &qword_25F308A90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25F2E14DC()
{
  v0 = sub_25F3050CC();
  v4 = sub_25F2E155C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25F2E155C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25F304EFC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25F305CAC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25F2E1468(v9, 0);
  v12 = sub_25F2E16B4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25F304EFC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25F30605C();
LABEL_4:

  return sub_25F304EFC();
}