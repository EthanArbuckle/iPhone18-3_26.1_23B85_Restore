uint64_t CountingMode.Display.Color.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A3444C()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A344C0()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t CountingMode.Display.NormalizedArea.Element.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 40);
  sub_261A85554();
  v6 = *(v2 + 128);
  v7 = *(v2 + 136);
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  return MEMORY[0x266716F60](v3);
}

uint64_t CountingMode.Display.NormalizedArea.Element.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_261A85C44();
  v4 = v2[4];
  v5 = v2[5];
  sub_261A85554();
  v6 = v2[16];
  v7 = v2[17];
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  MEMORY[0x266716F60](v3);
  return sub_261A85C84();
}

uint64_t sub_261A3460C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_261A85C44();
  v4 = v2[4];
  v5 = v2[5];
  sub_261A85554();
  v6 = v2[16];
  v7 = v2[17];
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  MEMORY[0x266716F60](v3);
  return sub_261A85C84();
}

uint64_t sub_261A34684()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 40);
  sub_261A85554();
  v6 = *(v2 + 128);
  v7 = *(v2 + 136);
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  return MEMORY[0x266716F60](v3);
}

uint64_t sub_261A346E4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_261A85C44();
  v4 = v2[4];
  v5 = v2[5];
  sub_261A85554();
  v6 = v2[16];
  v7 = v2[17];
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  MEMORY[0x266716F60](v3);
  return sub_261A85C84();
}

uint64_t static CountingMode.Display.NormalizedArea.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_261A3488C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_261A347A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A347FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_261A85BA4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_261A3488C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;
      if (*(v7 + 32) == *(v9 + 32) && *(v7 + 40) == *(v9 + 40))
      {
        if (v8 != v10 || v6 != v11)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_261A85BA4();
        result = 0;
        if ((v13 & 1) == 0 || v8 != v10 || v6 != v11)
        {
          return result;
        }
      }

      v4 += 24;
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t CountingMode.Display.NormalizedArea.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A358AC(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x266716F80](*&v3);
}

uint64_t CountingMode.Display.NormalizedArea.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  sub_261A358AC(v5, v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266716F80](*&v3);
  return sub_261A85C84();
}

uint64_t sub_261A34A20(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A358AC(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x266716F80](*&v3);
}

uint64_t sub_261A34A6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  sub_261A358AC(v5, v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266716F80](*&v3);
  return sub_261A85C84();
}

uint64_t sub_261A34AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_261A3488C(*a1, *a2) & (v2 == v3);
}

uint64_t CountingMode.Display.Bar.suggestedMaximum.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CountingMode.Display.Bar.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 40);
  sub_261A85554();
  v8 = *(v2 + 128);
  v9 = *(v2 + 136);
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  MEMORY[0x266716F60](v3);
  if (v5 == 1)
  {
    return sub_261A85C64();
  }

  sub_261A85C64();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x266716F80](v11);
}

uint64_t CountingMode.Display.Bar.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_261A85C44();
  CountingMode.Display.Bar.hash(into:)();
  return sub_261A85C84();
}

uint64_t sub_261A34C38()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_261A85C44();
  CountingMode.Display.Bar.hash(into:)();
  return sub_261A85C84();
}

uint64_t sub_261A34CA0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_261A85C44();
  CountingMode.Display.Bar.hash(into:)();
  return sub_261A85C84();
}

uint64_t CountingMode.Display.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 32) < 0)
  {
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    MEMORY[0x266716F60](1);
    return CountingMode.Display.Bar.hash(into:)();
  }

  else
  {
    MEMORY[0x266716F60](0);
    sub_261A358AC(a1, v3);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x266716F80](v5);
  }
}

uint64_t CountingMode.Display.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_261A85C44();
  if (v5 < 0)
  {
    MEMORY[0x266716F60](1);
    CountingMode.Display.Bar.hash(into:)();
  }

  else
  {
    MEMORY[0x266716F60](0);
    sub_261A358AC(v8, v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x266716F80](v6);
  }

  return sub_261A85C84();
}

uint64_t sub_261A34E58()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_261A85C44();
  CountingMode.Display.hash(into:)(v4);
  return sub_261A85C84();
}

uint64_t sub_261A34EB0()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_261A85C44();
  CountingMode.Display.hash(into:)(v4);
  return sub_261A85C84();
}

uint64_t sub_261A34F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6579570 && a2 == 0xE300000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x65676E61726FLL && a2 == 0xE600000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0x776F6C6C6579 && a2 == 0xE600000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 5;
  }

  else if (a1 == 0x656C70727570 && a2 == 0xE600000000000000)
  {

    v8 = 6;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 6;
    }

    else
    {
      v8 = 7;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t CountingMode.Display.Color.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CA4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v6 = sub_261A85BB4();
    v8 = v7;

    sub_261A34F04(v6, v8, v15);
    v9 = v15[0];
    if (LOBYTE(v15[0]) == 7)
    {
      v10 = sub_261A85904();
      swift_allocError();
      v12 = v11;
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_261A85C94();
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_261A858C4();

      strcpy(v15, "unknown color ");
      HIBYTE(v15[1]) = -18;
      MEMORY[0x2667168A0](v6, v8);

      sub_261A858F4();
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84168], v10);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v16);
      *a2 = v9;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CountingMode.Display.Color.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CC4();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_261A85BC4();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_261A354D8(uint64_t a1, id *a2)
{
  result = sub_261A854A4();
  *a2 = 0;
  return result;
}

uint64_t sub_261A35550(uint64_t a1, id *a2)
{
  v3 = sub_261A854B4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_261A355D0@<X0>(uint64_t *a1@<X8>)
{
  sub_261A854C4();
  v2 = sub_261A85494();

  *a1 = v2;
  return result;
}

uint64_t sub_261A35614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261A85494();

  *a2 = v5;
  return result;
}

uint64_t sub_261A3565C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_261A854C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_261A35688(uint64_t a1)
{
  v2 = sub_261A36484(&qword_27FECADD8);
  v3 = sub_261A36484(&unk_27FECADE0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_261A35720()
{
  v1 = *v0;
  v2 = sub_261A854C4();
  v3 = MEMORY[0x266716930](v2);

  return v3;
}

uint64_t sub_261A3575C()
{
  v1 = *v0;
  sub_261A854C4();
  sub_261A85554();
}

uint64_t sub_261A357B0()
{
  v1 = *v0;
  sub_261A854C4();
  sub_261A85C44();
  sub_261A85554();
  v2 = sub_261A85C84();

  return v2;
}

uint64_t sub_261A35824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_261A854C4();
  v6 = v5;
  if (v4 == sub_261A854C4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();
  }

  return v9 & 1;
}

uint64_t sub_261A358AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x266716F60](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      v9 = v6[4];
      v10 = v6[5];

      sub_261A85554();
      v11 = v6[16];
      v12 = v6[17];
      sub_261A85554();
      MEMORY[0x266716F60](v7);
      MEMORY[0x266716F60](v8);

      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s7Recount12CountingModeC7DisplayO14NormalizedAreaV7ElementV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_261A85BA4();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t _s7Recount12CountingModeC7DisplayO3BarV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    result = 0;
    if (v2 != v6)
    {
      return result;
    }

LABEL_9:
    if (v3 != v7)
    {
      return result;
    }

    if (v5)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v8)
      {
        v13 = v9;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    return 1;
  }

  v11 = sub_261A85BA4();
  result = 0;
  if ((v11 & 1) != 0 && v2 == v6)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _s7Recount12CountingModeC7DisplayO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      v24[0] = *a1;
      v24[1] = v2;
      v25 = v5;
      v26 = v4;
      v27 = v6 & 1;
      v20[0] = v8;
      v20[1] = v7;
      v21 = v10;
      v22 = v9;
      v23 = v11 & 1;
      v15 = _s7Recount12CountingModeC7DisplayO3BarV2eeoiySbAG_AGtFZ_0(v24, v20);
      v16 = v9;
      v18 = v9;
      v14 = v15;
      sub_261A36380(v8, v7, v10, v16, v11);
      sub_261A36380(v3, v2, v5, v4, v6);
      sub_261A3638C(v3, v2, v5, v4, v6);
      sub_261A3638C(v8, v7, v10, v18, v11);
      return v14 & 1;
    }

    goto LABEL_5;
  }

  if (v11 < 0)
  {
LABEL_5:
    sub_261A36380(*a2, *(a2 + 8), v10, v9, v11);
    sub_261A36380(v3, v2, v5, v4, v6);
    sub_261A3638C(v3, v2, v5, v4, v6);
    sub_261A3638C(v8, v7, v10, v9, v11);
    v14 = 0;
    return v14 & 1;
  }

  v12 = *(a1 + 8);
  v13 = *(a2 + 8);
  v19 = sub_261A3488C(*a1, *a2);
  sub_261A36380(v8, v7, v10, v9, v11);
  sub_261A36380(v3, v2, v5, v4, v6);
  sub_261A3638C(v3, v2, v5, v4, v6);
  sub_261A3638C(v8, v7, v10, v9, v11);
  v14 = v19 & (*&v2 == *&v7);
  return v14 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_261A35D70()
{
  result = qword_27FECAD90;
  if (!qword_27FECAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAD90);
  }

  return result;
}

unint64_t sub_261A35DC8()
{
  result = qword_27FECAD98;
  if (!qword_27FECAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAD98);
  }

  return result;
}

unint64_t sub_261A35E20()
{
  result = qword_27FECADA0;
  if (!qword_27FECADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECADA0);
  }

  return result;
}

unint64_t sub_261A35E78()
{
  result = qword_27FECADA8;
  if (!qword_27FECADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECADA8);
  }

  return result;
}

unint64_t sub_261A35ED0()
{
  result = qword_27FECADB0;
  if (!qword_27FECADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECADB0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261A35F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_261A35F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A35FF4(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 16) &= 7uLL;
  *(result + 32) = v2;
  return result;
}

uint64_t _s7DisplayO5ColorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7DisplayO5ColorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261A361A4(uint64_t *a1, int a2)
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

uint64_t sub_261A361EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_261A3624C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_261A36294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A362E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_261A3632C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A36380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_261A3638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27FECADB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FECADB8);
    }
  }
}

uint64_t sub_261A36484(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount15AwimboPMCEventsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261A36510()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A365B0()
{
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A36634()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A366D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A376E8();
  *a2 = result;
  return result;
}

void sub_261A36700(uint64_t *a1@<X8>)
{
  v2 = 0x702D6F626D697761;
  v3 = 0xE700000000000000;
  if (*v1 == 1)
  {
    v3 = 0xEA0000000000636DLL;
  }

  else
  {
    v2 = 0x65636172746170;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x702D6F626D697761;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xEA0000000000696DLL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_261A36764(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA0000000000636DLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x65636172746170;
  if (v3 == 1)
  {
    v5 = 0x702D6F626D697761;
    v4 = 0xEA0000000000636DLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x702D6F626D697761;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA0000000000696DLL;
  }

  v8 = 0x65636172746170;
  if (*a2 == 1)
  {
    v8 = 0x702D6F626D697761;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x702D6F626D697761;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEA0000000000696DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

unint64_t sub_261A36844(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return 0xD000000000000011;
    }

    sub_261A858C4();
    if (v3)
    {
      if (v3 == 1)
      {
        v6 = 0xD000000000000020;
      }

      else
      {
        v6 = 0xD000000000000012;
      }

      if (v3 == 1)
      {
        v7 = "PA Trace (patrace)";
      }

      else
      {
        v7 = "incompatible modes: ";
      }
    }

    else
    {
      v7 = "ing (awimbo-pmc)";
      v6 = 0xD000000000000020;
    }

    MEMORY[0x2667168A0](v6, v7 | 0x8000000000000000);

    MEMORY[0x2667168A0](0xD000000000000021, 0x8000000261A8DF80);
    v11 = a2;
    v12 = a3;
  }

  else
  {
    sub_261A858C4();
    if (v3)
    {
      if (v3 == 1)
      {
        v8 = 0xD000000000000020;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (v3 == 1)
      {
        v9 = "PA Trace (patrace)";
      }

      else
      {
        v9 = "incompatible modes: ";
      }
    }

    else
    {
      v9 = "ing (awimbo-pmc)";
      v8 = 0xD000000000000020;
    }

    MEMORY[0x2667168A0](v8, v9 | 0x8000000000000000);

    v11 = 0xD000000000000014;
    v12 = 0x8000000261A8DFB0;
  }

  MEMORY[0x2667168A0](v11, v12);
  return 0;
}

unint64_t sub_261A36A28(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    return 0xD00000000000005ELL;
  }

  v5 = 0x746963696C706D69;
  sub_261A858C4();
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x65636172544150;
    }

    else
    {
      v7 = MEMORY[0x2667169D0](a1, MEMORY[0x277D837D0]);
      MEMORY[0x2667168A0](v7);

      MEMORY[0x2667168A0](41, 0xE100000000000000);

      v6 = 0x28206D6F74737563;
    }
  }

  else
  {

    v6 = 0x746963696C706D69;
  }

  MEMORY[0x2667168A0](0xD000000000000028, 0x8000000261A8DE20);
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0xE700000000000000;
      v5 = 0x65636172544150;
    }

    else
    {
      v9 = MEMORY[0x2667169D0](a2, MEMORY[0x277D837D0]);
      MEMORY[0x2667168A0](v9);

      MEMORY[0x2667168A0](41, 0xE100000000000000);
      v5 = 0x28206D6F74737563;
      v8 = 0xE800000000000000;
    }
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  MEMORY[0x2667168A0](v5, v8);

  return v6;
}

BOOL sub_261A36C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_261A37600(v5, v7);
}

unint64_t sub_261A36C78()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 <= 1)
  {
    if (*(v0 + 32))
    {
      sub_261A858C4();

      v12[0] = v2;
      v12[1] = v1;
      v6 = 0x776F6E6B6E75203ALL;
      v7 = 0xEE0065646F6D206ELL;
    }

    else
    {
      sub_261A858C4();

      v12[0] = v2;
      v12[1] = v1;
      v7 = 0x8000000261A8DF60;
      v6 = 0xD000000000000010;
    }
  }

  else
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (v3 == 2)
    {
      sub_261A858C4();

      v12[0] = 0xD000000000000014;
      v12[1] = 0x8000000261A8DE70;
      v8 = sub_261A36844(v2, v1, v5);
      MEMORY[0x2667168A0](v8);

      MEMORY[0x2667168A0](0x206874697720, 0xE600000000000000);
      v9 = 0xD000000000000020;
      if (v4)
      {
        if (v4 == 1)
        {
          v10 = "PA Trace (patrace)";
        }

        else
        {
          v9 = 0xD000000000000012;
          v10 = "incompatible modes: ";
        }
      }

      else
      {
        v10 = "ing (awimbo-pmc)";
      }

      MEMORY[0x2667168A0](v9, v10 | 0x8000000000000000);

      return v12[0];
    }

    if (v3 != 3)
    {
      return 0xD00000000000004ELL;
    }

    sub_261A858C4();

    strcpy(v12, "cannot parse ");
    HIWORD(v12[1]) = -4864;
    MEMORY[0x2667168A0](v2, v1);
    MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8DE50);
    v6 = v5;
    v7 = v4;
  }

  MEMORY[0x2667168A0](v6, v7);
  return v12[0];
}

uint64_t sub_261A36EF0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_261A371C4(v5, v7) & 1;
}

uint64_t sub_261A36F3C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(a1 >> 62))
  {
    if (a4 >> 62)
    {
      return 0;
    }

    v16 = 0x702D6F626D697761;
    v17 = 0xEA0000000000696DLL;
    v18 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v19 = 0x702D6F626D697761;
      }

      else
      {
        v19 = 0x65636172746170;
      }

      if (v18 == 1)
      {
        v20 = 0xEA0000000000636DLL;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = a4;
      if (!a4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = 0x702D6F626D697761;
      v20 = 0xEA0000000000696DLL;
      v21 = a4;
      if (!a4)
      {
        goto LABEL_30;
      }
    }

    if (v21 == 1)
    {
      v17 = 0xEA0000000000636DLL;
    }

    else
    {
      v16 = 0x65636172746170;
      v17 = 0xE700000000000000;
    }

LABEL_30:
    if (v19 == v16 && v20 == v17)
    {

      return 1;
    }

    else
    {
      v24 = sub_261A85BA4();

      return v24 & 1;
    }
  }

  if (a1 >> 62 != 1)
  {
    return a4 >> 62 == 2 && a4 == 0x8000000000000000 && !(a6 | a5);
  }

  if (a4 >> 62 != 1)
  {
    return 0;
  }

  v6 = 0x702D6F626D697761;
  v7 = 0xEA0000000000696DLL;
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0x702D6F626D697761;
    }

    else
    {
      v9 = 0x65636172746170;
    }

    if (v8 == 1)
    {
      v10 = 0xEA0000000000636DLL;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = a4;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v9 = 0x702D6F626D697761;
  v10 = 0xEA0000000000696DLL;
  v11 = a4;
  if (a4)
  {
LABEL_12:
    if (v11 == 1)
    {
      v7 = 0xEA0000000000636DLL;
    }

    else
    {
      v6 = 0x65636172746170;
      v7 = 0xE700000000000000;
    }
  }

LABEL_15:
  if (v9 == v6 && v10 == v7)
  {
  }

  else
  {
    v23 = sub_261A85BA4();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_261A85BA4();
}

uint64_t sub_261A371C4(unint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  if (v6 <= 1)
  {
    if (*(a1 + 32))
    {
      if (a2[2].i8[0] != 1)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0])
    {
      return 0;
    }

    if (v4 != a2->i64[0] || v5 != a2->i64[1])
    {
      goto LABEL_33;
    }

    return 1;
  }

  v8 = a1[2];
  v7 = a1[3];
  if (v6 != 2)
  {
    if (v6 == 3)
    {
      if (a2[2].i8[0] == 3)
      {
        if (v9 = a2[1].i64[0], v10 = a2[1].i64[1], v4 == a2->i64[0]) && v5 == a2->i64[1] || (sub_261A85BA4())
        {
          if (v8 != v9 || v7 != v10)
          {
LABEL_33:

            return sub_261A85BA4();
          }

          return 1;
        }
      }
    }

    else if (a2[2].i8[0] == 4)
    {
      v21 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v11 = a2->i64[0];
  v12 = a2[1].u8[8];
  if (v4 >> 62)
  {
    v13 = a2->i64[1];
    v14 = a2[1].i64[0];
    v15 = v11 >> 62;
    if (v4 >> 62 == 1)
    {
      if (v15 != 1)
      {
        return 0;
      }

      v16 = 0x702D6F626D697761;
      v17 = 0xEA0000000000696DLL;
      v18 = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v19 = 0x702D6F626D697761;
        }

        else
        {
          v19 = 0x65636172746170;
        }

        if (v18 == 1)
        {
          v20 = 0xEA0000000000636DLL;
        }

        else
        {
          v20 = 0xE700000000000000;
        }
      }

      else
      {
        v19 = 0x702D6F626D697761;
        v20 = 0xEA0000000000696DLL;
      }

      if (v11)
      {
        if (v11 == 1)
        {
          v17 = 0xEA0000000000636DLL;
        }

        else
        {
          v16 = 0x65636172746170;
          v17 = 0xE700000000000000;
        }
      }

      v29 = v5;
      if (v19 == v16 && v20 == v17)
      {
      }

      else
      {
        v30 = sub_261A85BA4();

        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v29 != v13 || v8 != v14) && (sub_261A85BA4() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15 != 2)
      {
        return 0;
      }

      result = 0;
      if (v11 != 0x8000000000000000 || v14 | v13)
      {
        return result;
      }
    }
  }

  else
  {
    if (v11 >> 62)
    {
      return 0;
    }

    v24 = 0x702D6F626D697761;
    v25 = 0xEA0000000000696DLL;
    v26 = v4;
    if (v4)
    {
      if (v4 == 1)
      {
        v27 = 0x702D6F626D697761;
      }

      else
      {
        v27 = 0x65636172746170;
      }

      if (v26 == 1)
      {
        v28 = 0xEA0000000000636DLL;
      }

      else
      {
        v28 = 0xE700000000000000;
      }
    }

    else
    {
      v27 = 0x702D6F626D697761;
      v28 = 0xEA0000000000696DLL;
    }

    if (a2->i64[0])
    {
      if (a2->i64[0] == 1)
      {
        v25 = 0xEA0000000000636DLL;
      }

      else
      {
        v24 = 0x65636172746170;
        v25 = 0xE700000000000000;
      }
    }

    if (v27 == v24 && v28 == v25)
    {
    }

    else
    {
      v31 = sub_261A85BA4();

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v32 = 0xEA0000000000636DLL;
  if (v7)
  {
    if (v7 == 1)
    {
      v33 = 0x702D6F626D697761;
    }

    else
    {
      v33 = 0x65636172746170;
    }

    if (v7 == 1)
    {
      v34 = 0xEA0000000000636DLL;
    }

    else
    {
      v34 = 0xE700000000000000;
    }
  }

  else
  {
    v33 = 0x702D6F626D697761;
    v34 = 0xEA0000000000696DLL;
  }

  v35 = 0x65636172746170;
  if (v12 == 1)
  {
    v35 = 0x702D6F626D697761;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  if (v12)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0x702D6F626D697761;
  }

  if (v12)
  {
    v37 = v32;
  }

  else
  {
    v37 = 0xEA0000000000696DLL;
  }

  if (v33 == v36 && v34 == v37)
  {

    return 1;
  }

  else
  {
    v38 = sub_261A85BA4();

    return v38 & 1;
  }
}

BOOL sub_261A37600(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*a1)
  {
    if (v2 < 2)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = sub_261A347FC(*a1, *a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a2 + 24))
    {
      return 0;
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = a1;
    v13 = a2;
    v14 = sub_261A85D24();
    a2 = v13;
    v7 = v14;
    a1 = v12;
  }

  if (v7 & 1) == 0 || ((*(a1 + 25) ^ *(a2 + 25)))
  {
    return 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 32);
  if (v16)
  {
    return v17 && (sub_261A347A0(v16, v17) & 1) != 0;
  }

  return !v17;
}

uint64_t sub_261A376E8()
{
  v0 = sub_261A859E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261A37734@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  if (qword_27FECAD70 != -1)
  {
    swift_once();
  }

  v6 = sub_261A853D4();
  __swift_project_value_buffer(v6, qword_27FED7CC0);

  v7 = sub_261A853B4();
  v8 = sub_261A85734();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v138 = v10;
    *v9 = 136446210;
    v11 = sub_261A85464();
    v13 = a2;
    v14 = sub_261A3E9E8(v11, v12, &v138);

    *(v9 + 4) = v14;
    a2 = v13;
    _os_log_impl(&dword_261A33000, v7, v8, "parsing options %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266717700](v10, -1, -1);
    v15 = v9;
    v3 = v2;
    MEMORY[0x266717700](v15, -1, -1);
  }

  v125 = 0;
  v129 = 0;
  v130 = 0;
  v16 = 0;
  v17 = 0;
  v126 = 0;
  v18 = 0;
  v19 = 0;
  v131 = 0;
  v20 = 0;
  v21 = *(a1 + 64);
  v133 = a1 + 64;
  v22 = 1;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v123 = 0x8000000261A8DD40;
  v124 = 0x8000000261A8DD20;
  v121 = 0x8000000261A8DD80;
  v122 = 0x8000000261A8DD60;
  v26 = 0x8000000000000000;
  v132 = (v23 + 63) >> 6;
LABEL_8:
  v127 = v22;
  *&v128 = v18;
  *(&v128 + 1) = v19;
  while (1)
  {
    v140 = v26;
    if (!v25)
    {
      break;
    }

    v136 = v17;
    v137 = v16;
LABEL_17:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = (v20 << 10) | (16 * v29);
    v31 = (*(a1 + 48) + v30);
    v32 = *v31;
    v33 = (*(a1 + 56) + v30);
    v35 = *v33;
    v34 = v33[1];
    v36 = *v31 == 1701080941 && v31[1] == 0xE400000000000000;
    if (v36 || (v134 = v31[1], v135 = v32, (sub_261A85BA4() & 1) != 0))
    {

      v37 = sub_261A859E4();
      if (v37 >= 3)
      {
        sub_261A38A70(v131);

        sub_261A38A80(v140);
        sub_261A38A98();
        swift_allocError();
        *v101 = v35;
        *(v101 + 8) = v34;
        *(v101 + 16) = 0;
        *(v101 + 24) = 0;
        v96 = 1;
        goto LABEL_143;
      }

      v26 = v37;

      v16 = 0;
      v17 = 0;
      if ((v140 & 0x8000000000000000) == 0)
      {
        v38 = 0xEA0000000000696DLL;
        if (v140)
        {
          if (v140 == 1)
          {
            v39 = 0x702D6F626D697761;
          }

          else
          {
            v39 = 0x65636172746170;
          }

          if (v140 == 1)
          {
            v40 = 0xEA0000000000636DLL;
          }

          else
          {
            v40 = 0xE700000000000000;
          }

          v41 = v26;
          if (!v26)
          {
LABEL_36:
            if (v39 != 0x702D6F626D697761)
            {
              goto LABEL_9;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v39 = 0x702D6F626D697761;
          v40 = 0xEA0000000000696DLL;
          v41 = v26;
          if (!v26)
          {
            goto LABEL_36;
          }
        }

        if (v41 == 2)
        {
          v38 = 0xE700000000000000;
          if (v39 != 0x65636172746170)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v38 = 0xEA0000000000636DLL;
          if (v39 != 0x702D6F626D697761)
          {
            goto LABEL_9;
          }
        }

LABEL_39:
        if (v40 == v38)
        {

          goto LABEL_10;
        }

LABEL_9:
        v27 = sub_261A85BA4();

        if ((v27 & 1) == 0)
        {
          sub_261A38A70(v131);

          sub_261A38A98();
          swift_allocError();
          v99 = v136;
          v100 = v137;
          *v101 = v140;
          *(v101 + 8) = v100;
          *(v101 + 16) = v99;
          *(v101 + 24) = v26;
          goto LABEL_142;
        }

LABEL_10:
        sub_261A38A80(v140);
        v16 = 0;
        v17 = 0;
      }
    }

    else
    {
      v42 = v135 == 0x702D6F626D697761 && v134 == 0xEF656C69662D696DLL;
      if (v42 || (sub_261A85BA4() & 1) != 0)
      {

        if ((v140 & 0x8000000000000000) == 0)
        {
          if (v140)
          {
            v66 = a2;
            v67 = sub_261A85BA4();

            if ((v67 & 1) == 0)
            {
              sub_261A38A70(v131);

              sub_261A38A98();
              swift_allocError();
              v102 = v136;
              v103 = v137;
              *v101 = v140;
              *(v101 + 8) = v103;
              *(v101 + 16) = v102;
              *(v101 + 24) = 0;
              goto LABEL_142;
            }
          }

          else
          {
            v66 = a2;
          }

          sub_261A38A80(v140);
          a2 = v66;
        }

        v26 = 0x4000000000000000;
        v125 = v35;
        v130 = v34;
        v19 = *(&v128 + 1);
        v18 = v128;
LABEL_87:
        v22 = v127;
        v17 = v134;
        v16 = v135;
        goto LABEL_8;
      }

      v43 = v135 == 0xD000000000000011 && v124 == v134;
      if (v43 || (v44 = sub_261A85BA4(), v45 = v135, (v44 & 1) != 0))
      {

        v46 = sub_261A38A70(v131);
        v138 = 58;
        v139 = 0xE100000000000000;
        MEMORY[0x28223BE20](v46);
        v115 = &v138;
        v47 = sub_261A7ADE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_261A391E0, v114, v35, v34, &v116);
        v48 = *(v47 + 16);
        if (v48)
        {
          v119 = a2;
          v118 = v3;
          v120 = a1;
          v138 = MEMORY[0x277D84F90];
          sub_261A3EFB0(0, v48, 0);
          v49 = v138;
          v117 = v47;
          v50 = (v47 + 56);
          do
          {
            v52 = *(v50 - 3);
            v51 = *(v50 - 2);
            v53 = *(v50 - 1);
            v54 = *v50;

            v55 = MEMORY[0x266716840](v52, v51, v53, v54);
            v57 = v56;

            v138 = v49;
            v59 = *(v49 + 16);
            v58 = *(v49 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_261A3EFB0((v58 > 1), v59 + 1, 1);
              v49 = v138;
            }

            *(v49 + 16) = v59 + 1;
            v60 = v49 + 16 * v59;
            *(v60 + 32) = v55;
            *(v60 + 40) = v57;
            v50 += 4;
            --v48;
          }

          while (v48);
          v131 = v49;

          a1 = v120;
          v3 = v118;
          a2 = v119;
        }

        else
        {

          v131 = MEMORY[0x277D84F90];
        }

        if ((v140 & 0x8000000000000000) == 0)
        {
          if (v140)
          {
            v16 = v137;
            if (v140 == 1)
            {

              goto LABEL_64;
            }
          }

          else
          {
            v16 = v137;
          }

          v61 = sub_261A85BA4();

          if ((v61 & 1) == 0)
          {
LABEL_146:

            sub_261A38A98();
            swift_allocError();
            *v101 = v140;
            *(v101 + 8) = v16;
            goto LABEL_147;
          }

LABEL_64:
          sub_261A38A80(v140);
        }

        v26 = 0x4000000000000001;
        goto LABEL_66;
      }

      if (v135 == 0xD000000000000010 && v123 == v134)
      {
        v68 = v123;
        goto LABEL_90;
      }

      if (sub_261A85BA4())
      {
        v68 = v134;
LABEL_90:
        if ((v140 & 0x8000000000000000) != 0)
        {

          goto LABEL_108;
        }

        if (v140 && v140 == 1)
        {

          goto LABEL_107;
        }

        v85 = sub_261A85BA4();

        if ((v85 & 1) == 0)
        {
          sub_261A38A70(v131);

          sub_261A38A98();
          swift_allocError();
          v109 = v137;
          *v101 = v140;
          *(v101 + 8) = v109;
LABEL_147:
          *(v101 + 16) = v136;
          *(v101 + 24) = 1;
LABEL_142:
          v96 = 2;
LABEL_143:
          *(v101 + 32) = v96;
          swift_willThrow();
        }

LABEL_107:
        sub_261A38A80(v140);
LABEL_108:
        v126 = 1;
        v26 = 0x4000000000000001;
        v17 = v68;
        v19 = *(&v128 + 1);
        v18 = v128;
        v22 = v127;
        v16 = v135;
        goto LABEL_8;
      }

      if ((v45 != 0xD000000000000013 || v122 != v134) && (sub_261A85BA4() & 1) == 0)
      {
        v119 = a2;
        v120 = a1;

        if (v135 == 0xD000000000000012 && v121 == v134 || (sub_261A85BA4() & 1) != 0)
        {
          v138 = 58;
          v139 = 0xE100000000000000;
          (MEMORY[0x28223BE20])();
          v115 = &v138;
          v69 = sub_261A7ADE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_261A38AEC, v114, v35, v34, &v116);
          v118 = v3;
          v117 = v69;
          v116 = *(v69 + 16);
          if (v116)
          {
            v138 = MEMORY[0x277D84F90];
            result = sub_261A3EF90(0, v116, 0);
            v71 = 0;
            v129 = v138;
            v72 = (v117 + 56);
            while (v71 < *(v117 + 16))
            {
              v73 = *(v72 - 3);
              v74 = *(v72 - 2);
              v76 = *(v72 - 1);
              v75 = *v72;

              v77 = MEMORY[0x266716840](v73, v74, v76, v75);
              v79 = sub_261A41E1C(v77, v78);
              if (v80)
              {

                sub_261A38A80(v140);

                sub_261A38A70(v131);
                v105 = MEMORY[0x266716840](v73, v74, v76, v75);
                v107 = v106;
                sub_261A38A98();
                swift_allocError();
                *v108 = v105;
                *(v108 + 8) = v107;
                *(v108 + 16) = 0xD000000000000012;
                *(v108 + 24) = v121;
                *(v108 + 32) = 3;
                swift_willThrow();
              }

              v81 = v79;

              v82 = v129;
              v138 = v129;
              v84 = *(v129 + 16);
              v83 = *(v129 + 24);
              if (v84 >= v83 >> 1)
              {
                result = sub_261A3EF90((v83 > 1), v84 + 1, 1);
                v82 = v138;
              }

              ++v71;
              *(v82 + 16) = v84 + 1;
              v129 = v82;
              *(v82 + 8 * v84 + 32) = v81;
              v72 += 4;
              if (v116 == v71)
              {

                goto LABEL_110;
              }
            }

            __break(1u);
            return result;
          }

          v129 = MEMORY[0x277D84F90];
LABEL_110:
          if ((v140 & 0x8000000000000000) != 0)
          {
LABEL_116:
            v26 = 0x4000000000000001;
            a1 = v120;
            v3 = v118;
            a2 = v119;
            v19 = *(&v128 + 1);
            v18 = v128;
            goto LABEL_87;
          }

          if (v140 && v140 == 1)
          {

            goto LABEL_115;
          }

          v86 = sub_261A85BA4();

          if (v86)
          {
LABEL_115:
            sub_261A38A80(v140);
            goto LABEL_116;
          }

          sub_261A38A70(v131);

          sub_261A38A98();
          swift_allocError();
          v112 = v137;
          *v113 = v140;
          *(v113 + 8) = v112;
          *(v113 + 16) = v136;
          *(v113 + 24) = 1;
          *(v113 + 32) = 2;
        }

        else
        {
          sub_261A38A70(v131);

          sub_261A38A80(v140);

          sub_261A38A98();
          swift_allocError();
          v110 = v134;
          *v111 = v135;
          *(v111 + 8) = v110;
          *(v111 + 16) = 0;
          *(v111 + 24) = 0;
          *(v111 + 32) = 0;
        }

        swift_willThrow();
      }

      swift_bridgeObjectRetain_n();

      v62 = sub_261A41E1C(v35, v34);
      if (v63)
      {
        sub_261A38A70(v131);

        sub_261A38A80(v140);

        sub_261A38A98();
        swift_allocError();
        *v101 = v35;
        *(v101 + 8) = v34;
        *(v101 + 16) = 0xD00000000000001ALL;
        *(v101 + 24) = 0x8000000261A8DDA0;
        v96 = 3;
        goto LABEL_143;
      }

      v64 = v62;

      if ((v140 & 0x8000000000000000) == 0)
      {
        if (v140 == 1)
        {
        }

        else
        {
          v65 = sub_261A85BA4();

          if ((v65 & 1) == 0)
          {
            v104 = v137;
            sub_261A38A70(v131);

            sub_261A38A98();
            swift_allocError();
            *v101 = v140;
            *(v101 + 8) = v104;
            goto LABEL_147;
          }
        }

        sub_261A38A80(v140);
      }

      v26 = 0x4000000000000001;
      v127 = 0;
      v128 = v64 * 0xE8D4A51000uLL;
LABEL_66:
      v17 = v134;
      v16 = v135;
    }
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_146;
    }

    if (v28 >= v132)
    {
      break;
    }

    v25 = *(v133 + 8 * v28);
    ++v20;
    if (v25)
    {
      v136 = v17;
      v137 = v16;
      v20 = v28;
      goto LABEL_17;
    }
  }

  v87 = v140;
  if (!(v140 >> 62))
  {
    goto LABEL_120;
  }

  if (v140 >> 62 != 1)
  {
    sub_261A38A70(v131);

    sub_261A38A98();
    swift_allocError();
    *v93 = 0u;
    *(v93 + 16) = 0u;
    *(v93 + 32) = 4;
    return swift_willThrow();
  }

  sub_261A38A80(v140);
  v87 = v140;
LABEL_120:
  if (v87)
  {
    if (v87 == 1)
    {

      v88 = v127;
      if (v127 & ~v126)
      {
        v90 = *(&v128 + 1);
        v89 = v129;
        v91 = v131;
        v92 = v128;
        if (v129)
        {
          goto LABEL_136;
        }

        if (v131)
        {
          v90 = 0;
          v88 = 0;
          v92 = 1000000000000000;
          goto LABEL_136;
        }

        sub_261A38B0C();
        swift_allocError();
        *v98 = xmmword_261A86B30;
        return swift_willThrow();
      }

      v90 = *(&v128 + 1);
      v89 = v129;
      v91 = v131;
      v92 = v128;
LABEL_136:
      v97 = 0x8000000000000000;
      if (v126)
      {
        v97 = 0x8000000000000100;
      }

      v94 = v97 & 0xFFFFFFFFFFFFFFFELL | v88 & 1;
    }

    else
    {

      result = sub_261A38A70(v131);
      v90 = *(&v128 + 1);
      v92 = v128;
      v89 = v129;
      if ((v127 & ~v126 & (v129 == 0)) != 0)
      {
        v92 = 1000000000000000;
        v90 = 0;
      }

      v95 = 0x8000000000000000;
      if (v126)
      {
        v95 = 0x8000000000000100;
      }

      v94 = v95 | !((v127 & ~v126) & (v129 == 0)) & v127;
      v91 = 1;
    }
  }

  else
  {
    sub_261A38A70(v131);

    v90 = 0;
    v94 = 0;
    v89 = 0;
    v91 = v125;
    v92 = v130;
  }

  *a2 = v91;
  a2[1] = v92;
  a2[2] = v90;
  a2[3] = v94;
  a2[4] = v89;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_261A38A70(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_261A38A80(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_261A38A98()
{
  result = qword_27FECAEB0;
  if (!qword_27FECAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAEB0);
  }

  return result;
}

unint64_t sub_261A38B0C()
{
  result = qword_27FECAEB8;
  if (!qword_27FECAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAEB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount16AwimboPMCOptionsV10UsageErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A38B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261A38BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_261A38C38(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    v2 = a2 - 2147483646;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 + 1;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount13ModeSelectionO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_7Recount15ProviderOptionsV10UsageErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_261A38CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A38D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_261A38D48(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_261A38D78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_261A38DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 32) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModeName(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_261A38FD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_261A39020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 4 * -a2;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_261A39078(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 2) >> 2;
    result[2] = 0;
    *result = (a2 - 2) & 3 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_261A390BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_261A39118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_261A39188()
{
  result = qword_27FECAEC0;
  if (!qword_27FECAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAEC0);
  }

  return result;
}

uint64_t TraceProvider.__allocating_init(options:session:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TraceProvider.init(options:session:)(a1, a2);
  return v4;
}

uint64_t TraceProvider.init(options:session:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = sub_261A85314();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - v10;
  v12 = sub_261A85394();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261A37734(a1, v61);
  if (v2)
  {
    v18 = v72;
    type metadata accessor for TraceProvider();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v43 = v16;
    v44 = v7;
    v17 = v47;
    v45 = v61[1];
    if (((v64 | (v65 << 32)) & 0x8000000000000000) != 0)
    {
      v68[0] = v61[0];
      v68[1] = v45;
      v68[2] = v61[2];
      v69 = v62 & 1;
      v70 = v63 & 1;
      v71 = v66;
      sub_261A493DC(v68, v67);
      v18 = v72;
      v20 = type metadata accessor for AwimboPMC();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_261A39A18(v67, &v56);
      v24 = sub_261A4450C(v67);
      *(&v51 + 1) = v20;
      *&v52 = &off_287430F98;
      sub_261A39A74(v67);
      *&v50 = v24;
      v25 = &v50;
    }

    else
    {
      Silicon.init()(&v56);
      v52 = v58;
      v53 = v59;
      v54 = v60;
      v50 = v56;
      v51 = v57;
      v49[2] = v58;
      v49[3] = v59;
      v49[4] = v60;
      v49[0] = v56;
      v49[1] = v57;
      sub_261A39B98(&v50, &v48);
      v42 = sub_261A4D704(v49);
      if (v45)
      {
        v41 = v13;
        (*(v13 + 56))(v11, 1, 1, v12);
        (*(v17 + 104))(v44, *MEMORY[0x277CC91D8], v4);

        v23 = v43;
        sub_261A85374();
        v29 = sub_261A853A4();
        v31 = v30;
        v32 = v53;
        v33 = v54;
        (*(v41 + 8))(v23, v12);
        v34 = type metadata accessor for AwimboPMI();
        swift_allocObject();

        v36 = sub_261A45C30(v35, v33, v32, v29, v31);

        sub_261A39B44(v61);
        v18 = v72;
      }

      else
      {
        v26 = v53;
        v27 = v54;
        v34 = type metadata accessor for AwimboPMI();
        swift_allocObject();
        v28 = sub_261A45C30(v42, v27, v26, 0, 0xF000000000000000);
        v18 = v72;
        v36 = v28;
      }

      sub_261A39BF4(&v50);
      type metadata accessor for AwimboPMI();
      v55[3] = v34;
      v55[4] = &off_287430F70;
      v55[0] = v36;
      v25 = v55;
    }

    sub_261A39AC8(v25, v18 + 16);
    v37 = v46;
    sub_261A39AE0(v18 + 16, &v56);
    v38 = *(&v57 + 1);
    v39 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
    (*(v39 + 8))(v37, v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  return v18;
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

uint64_t sub_261A39878()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_261A398D4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_261A39930(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t TraceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_261A39AC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_261A39AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_261A39C48()
{
  result = qword_27FECAED0;
  if (!qword_27FECAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAED0);
  }

  return result;
}

uint64_t CountingMode.Violation.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t CountingMode.Violation.description.getter()
{
  v1 = *v0;
  strcpy(v5, "Violation of ");
  HIWORD(v5[1]) = -4864;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x2667168A0](v2, v3);

  return v5[0];
}

uint64_t CountingMode.Violation.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  return MEMORY[0x266716F60](v2);
}

uint64_t CountingMode.Violation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A39F5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A39FC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  return MEMORY[0x266716F60](v2);
}

uint64_t sub_261A3A018()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A3A080()
{
  v1 = *v0;
  strcpy(v5, "Violation of ");
  HIWORD(v5[1]) = -4864;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x2667168A0](v2, v3);

  return v5[0];
}

BOOL _s7Recount12CountingModeC9ViolationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[8];
  v4 = *a2;
  v5 = a2[8];
  v6 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v4[3];
  if (v6 || (sub_261A85BA4()) && (*(v2 + 104) == v4[13] ? (v7 = *(v2 + 112) == v4[14]) : (v7 = 0), v7 || (sub_261A85BA4()))
  {
    return v3 == v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_261A3A188()
{
  result = qword_27FECAED8;
  if (!qword_27FECAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAED8);
  }

  return result;
}

unint64_t sub_261A3A1E0()
{
  result = qword_27FECAEE0;
  if (!qword_27FECAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAEE0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_261A3A248(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_261A3A290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_261A3A2F0(int a1, uint64_t a2, uint64_t a3)
{
  sub_261A858C4();

  MEMORY[0x2667168A0](a2, a3);
  MEMORY[0x2667168A0](0x3A64656C69616620, 0xE900000000000020);
  result = strerror(a1);
  if (result)
  {
    v7 = sub_261A855A4();
    MEMORY[0x2667168A0](v7);

    return 543387755;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_261A3A3BC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  config_count = kpc_get_config_count();
  v9 = *(a2 + 16);
  if (v9 <= config_count)
  {
    v10 = config_count;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  if (v9 >> 60)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = swift_slowAlloc();
  v12 = v11;
  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  if (v10)
  {
    bzero(v11, 8 * v10);
  }

  if (*(a2 + 16))
  {
    memcpy(v12, (a2 + 32), 8 * v9);
  }

  if (!a3)
  {
    *(v4 + 56) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 72) = 1;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    return;
  }

  v13 = swift_slowAlloc();
  v14 = v13;
  if (v10)
  {
    bzero(v13, 8 * v10);
  }

  v15 = *(a3 + 16);
  if (v15)
  {
    if (v10 >= v15)
    {
      memcpy(v14, (a3 + 32), 8 * v15);
      v16 = 4 * v10;
      v17 = swift_slowAlloc();
LABEL_17:
      bzero(v17, v16);
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = 4 * v10;
  v17 = swift_slowAlloc();
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_18:
  v18 = *(a4 + 16);
  if (!v18)
  {
LABEL_21:
    *(v4 + 40) = v14;
    *(v4 + 48) = v10;
    *(v4 + 56) = v17;
    *(v4 + 64) = v10;
    *(v4 + 72) = 0;
    *(v4 + 80) = a3;
    *(v4 + 88) = a4;
    return;
  }

  if (v10 >= v18)
  {
    memcpy(v17, (a4 + 32), 4 * v18);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_261A3A540()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x266717700](v1, -1, -1);
  }

  if ((*(v0 + 72) & 1) == 0)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 56);
    if (v2)
    {
      MEMORY[0x266717700](v2, -1, -1);
    }

    if (v3)
    {
      MEMORY[0x266717700](v3, -1, -1);
    }
  }

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_261A3A5F4()
{
  v1 = 0xEA0000000000646FLL;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  result = kpc_set_config();
  if (result)
  {
    v1 = 0xEA00000000006769;
    v5 = 0x666E6F632D746573;
LABEL_3:
    v6 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = v1;
    return swift_willThrow();
  }

  if ((*(v0 + 72) & 1) == 0)
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    if (kpc_set_period())
    {
      v5 = 0x697265702D746573;
      goto LABEL_3;
    }

    result = kpc_set_actionid();
    if (result)
    {
      v1 = 0xEC00000064696E6FLL;
      v5 = 0x697463612D746573;
      goto LABEL_3;
    }
  }

  return result;
}

char *sub_261A3A6F0()
{
  sub_261A858C4();
  MEMORY[0x2667168A0](0x2073657373616C63, 0xE800000000000000);
  v47 = *(v0 + 16);
  v1 = sub_261A85B94();
  MEMORY[0x2667168A0](v1);

  MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8E0E0);
  v2 = *(v0 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 24);
    v48 = MEMORY[0x277D84F90];
    result = sub_261A3EFB0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v48;
    do
    {
      v6 = *v4++;
      v7 = sub_261A85B94();
      v49 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_261A3EFB0((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v3 = v49;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      --v2;
    }

    while (v2);
  }

  v14 = 1701736302;
  v15 = MEMORY[0x2667169D0](v3, MEMORY[0x277D837D0]);
  v17 = v16;

  MEMORY[0x2667168A0](v15, v17);

  MEMORY[0x2667168A0](0x646F69726570202CLL, 0xEB00000000203A73);
  v18 = *(v0 + 80);
  if (v18)
  {
    v19 = *(v18 + 16);
    if (v19)
    {
      v50 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v19, 0);
      v20 = v50;
      v21 = (v18 + 32);
      do
      {
        v22 = *v21++;
        v23 = sub_261A85B94();
        v51 = v20;
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          v46 = v23;
          v28 = v24;
          sub_261A3EFB0((v25 > 1), v26 + 1, 1);
          v24 = v28;
          v23 = v46;
          v20 = v51;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        --v19;
      }

      while (v19);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECAF60, &qword_27FECAF58, &qword_261A87428);
    v29 = sub_261A85474();
    v31 = v30;
  }

  else
  {
    v31 = 0xE400000000000000;
    v29 = 1701736302;
  }

  MEMORY[0x2667168A0](v29, v31);

  MEMORY[0x2667168A0](0x6E6F69746361202CLL, 0xEB00000000203A73);
  v32 = *(v0 + 88);
  if (v32)
  {
    v33 = *(v32 + 16);
    if (v33)
    {
      v52 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v33, 0);
      v34 = v52;
      v35 = (v32 + 32);
      do
      {
        v36 = *v35++;
        v37 = sub_261A85B94();
        v53 = v34;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          v42 = v37;
          v43 = v38;
          sub_261A3EFB0((v39 > 1), v40 + 1, 1);
          v38 = v43;
          v37 = v42;
          v34 = v53;
        }

        *(v34 + 16) = v40 + 1;
        v41 = v34 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v38;
        --v33;
      }

      while (v33);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECAF60, &qword_27FECAF58, &qword_261A87428);
    v14 = sub_261A85474();
    v45 = v44;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x2667168A0](v14, v45);

  return 0;
}

uint64_t sub_261A3ABC8(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_261A85404();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261A85424();
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261A85764();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 72) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = a1;

  v22 = dispatch_semaphore_create(0);
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4 & 1;
  v23 = *(v5 + 72);
  *(v5 + 64) = v22;
  *(v5 + 72) = 0;
  MEMORY[0x2667175A0](v23);
  if (a1 >> 62)
  {
    v24 = sub_261A85994();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 < 2)
  {
    *(v5 + 32) = 0;
  }

  else
  {
    v33 = sub_261A3BE7C();
    aBlock = MEMORY[0x277D84F90];
    sub_261A3BF30(&qword_27FECAF70, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF78, &qword_261A87430);
    sub_261A3BF78(&qword_27FECAF80, &qword_27FECAF78, &qword_261A87430);
    sub_261A85844();
    v25 = sub_261A85774();
    (*(v18 + 8))(v21, v17);
    *(v5 + 32) = v25;
    swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = v5;
    *(v26 + 24) = v25;
    v43 = sub_261A3BF08;
    v44 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v33 = &v41;
    v41 = sub_261A3B3AC;
    v42 = &block_descriptor;
    v27 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();

    v28 = v34;
    sub_261A85414();
    sub_261A3B490();
    sub_261A85784();
    _Block_release(v27);
    v37 = *(v37 + 8);
    (v37)(v13, v38);
    v29 = v36;
    v35 = *(v35 + 8);
    (v35)(v28, v36);

    v43 = sub_261A3BF28;
    v44 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_261A3B3AC;
    v42 = &block_descriptor_17;
    v30 = _Block_copy(&aBlock);

    sub_261A85414();
    sub_261A3B490();
    sub_261A85794();
    _Block_release(v30);
    swift_unknownObjectRelease();
    (v37)(v13, v38);
    (v35)(v28, v29);
  }

  return v5;
}

uint64_t sub_261A3B0DC(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (v4 < 0)
  {
    goto LABEL_7;
  }

  v1 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_8;
  }

  v2 = a1;
  *(a1 + 16) = v1;
  v3 = *(a1 + 24);
  if (v3 >> 62)
  {
    goto LABEL_9;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    *(v2 + 16) = 0;
  }

  else
  {
    while ((*(v2 + 16) & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_7:
      __break(1u);
LABEL_8:
      __break(1u);
LABEL_9:
      if (v1 >= sub_261A85994())
      {
        goto LABEL_10;
      }
    }
  }

  kdebug_trace();
  if (kpc_set_counting())
  {
    v5 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v6 = swift_allocError();
    *v7 = v5;
    *(v7 + 8) = 0xD000000000000010;
    *(v7 + 16) = 0x8000000261A8E100;
    swift_willThrow();
    goto LABEL_24;
  }

  v8 = *(v2 + 16);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v3 + 8 * v8 + 32);

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_34;
  }

  MEMORY[0x266716BE0](v8, v3);
LABEL_17:
  sub_261A3A5F4();

  v10 = *(v2 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x266716BE0](v10, v3);
    goto LABEL_22;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = *(v3 + 8 * v10 + 32);

LABEL_22:
  v12 = *(v11 + 16);
  if (kpc_set_counting())
  {
    v13 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v6 = swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0x6E756F632D746573;
    *(v14 + 16) = 0xEF6E6F20676E6974;
    swift_willThrow();

LABEL_24:
    v15 = *(v2 + 72);
    *(v2 + 72) = v6;
    v16 = v6;
    MEMORY[0x2667175A0](v15);
    swift_getObjectType();
    sub_261A857A4();

LABEL_37:
    JUMPOUT(0x2667175A0);
  }

  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  return kdebug_trace();
}

uint64_t sub_261A3B3AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_261A3B3F0(uint64_t a1)
{
  if (kpc_set_counting())
  {
    v2 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0xD000000000000010;
    *(v4 + 16) = 0x8000000261A8E100;
    swift_willThrow();
    v5 = *(a1 + 72);
    *(a1 + 72) = v3;
    MEMORY[0x2667175A0](v5);
  }

  v6 = *(a1 + 64);
  return sub_261A857D4();
}

uint64_t sub_261A3B490()
{
  sub_261A85404();
  sub_261A3BF30(&qword_27FECAF88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF90, &qword_261A87438);
  sub_261A3BF78(&qword_27FECAF98, &qword_27FECAF90, &qword_261A87438);
  return sub_261A85844();
}

uint64_t sub_261A3B57C()
{
  result = kpc_force_all_ctrs_set();
  if (result)
  {
    v3 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    swift_allocError();
    *v4 = v3;
    strcpy((v4 + 8), "force-counters");
    *(v4 + 23) = -18;
    return swift_willThrow();
  }

  v5 = *(v0 + 24);
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x266716BE0](0, *(v0 + 24));
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v6 = *(v5 + 32);
  }

  sub_261A3A5F4();

  if (v1)
  {
    return result;
  }

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 32);

      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v7 = MEMORY[0x266716BE0](0, v5);
LABEL_11:
  v8 = *(v7 + 16);
  if (kpc_set_counting())
  {
    v9 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0x6E756F632D746573;
    *(v10 + 16) = 0xEF6E6F20676E6974;
    swift_willThrow();
  }
}

uint64_t sub_261A3B704(char a1)
{
  v3 = v2;
  v5 = sub_261A85454();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = v34 - v10;
  v11 = sub_261A853F4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v14);
  v19 = (v34 - v18);
  if ((a1 & 1) == 0)
  {
    v20 = *(v1 + 24);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x266716BE0](0);
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_16;
      }

      v21 = *(v20 + 32);
    }

    v22 = *(v21 + 16);
    if (kpc_set_counting())
    {
      v23 = MEMORY[0x2667166F0]();
      sub_261A3BDE0();
      swift_allocError();
      *v24 = v23;
      *(v24 + 8) = 0x6E756F632D746573;
      *(v24 + 16) = 0xEF6E6F20676E6974;
      swift_willThrow();
    }
  }

  if ((*(v1 + 56) & 1) == 0)
  {
    v25 = *(v1 + 32);
    if (v25)
    {
      v27 = *(v1 + 40);
      v26 = *(v1 + 48);
      swift_unknownObjectRetain();
      result = sub_261A85CF4();
      v29 = 1000000000 * result;
      if ((result * 1000000000) >> 64 == (1000000000 * result) >> 63)
      {
        v38 = v3;
        v39 = v5;
        v30 = __OFADD__(v29, v28 / 1000000000);
        v31 = v29 + v28 / 1000000000;
        if (!v30)
        {
          *v19 = v31;
          v36 = *MEMORY[0x277D85168];
          v35 = v12[13];
          v35(v19);
          ObjectType = swift_getObjectType();
          sub_261A85434();
          v34[1] = v25;
          v32 = v40;
          sub_261A85444();
          v41 = *(v41 + 8);
          (v41)(v9, v39);
          *v16 = 0;
          (v35)(v16, v36, v11);
          MEMORY[0x266716AF0](v32, v19, v16, ObjectType);
          v33 = v12[1];
          v33(v16, v11);
          (v41)(v32, v39);
          sub_261A857B4();
          swift_unknownObjectRelease();
          return v33(v19, v11);
        }

LABEL_17:
        __break(1u);
        return result;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

char *sub_261A3BAC0()
{
  v1 = v0;
  sub_261A858C4();

  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v22 = *(v0 + 24);
    }

    v3 = sub_261A85994();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    result = sub_261A3EFB0(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = v0;
    v6 = 0;
    v4 = v24;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266716BE0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = sub_261A3A6F0();
      v10 = v9;

      v12 = *(v24 + 16);
      v11 = *(v24 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_261A3EFB0((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v24 + 16) = v12 + 1;
      v13 = v24 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v3 != v6);
    v1 = v23;
  }

  v14 = MEMORY[0x2667169D0](v4, MEMORY[0x277D837D0]);
  v16 = v15;

  MEMORY[0x2667168A0](v14, v16);

  MEMORY[0x2667168A0](0xD000000000000016, 0x8000000261A8E0C0);
  if (*(v1 + 56))
  {
    v17 = 0xE400000000000000;
    v18 = 1701736302;
  }

  else
  {
    v19 = *(v1 + 40);
    v20 = *(v1 + 48);
    v18 = sub_261A85CE4();
    v17 = v21;
  }

  MEMORY[0x2667168A0](v18, v17);

  return 0x2073746573;
}

uint64_t sub_261A3BCD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  MEMORY[0x2667175A0](*(v0 + 72));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_261A3BD44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A3BD8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261A3BDE0()
{
  result = qword_27FECAF50;
  if (!qword_27FECAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAF50);
  }

  return result;
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

unint64_t sub_261A3BE7C()
{
  result = qword_27FECAF68;
  if (!qword_27FECAF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FECAF68);
  }

  return result;
}

uint64_t sub_261A3BEC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261A3BF30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261A3BF78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *sub_261A3BFC8(int a1, uint64_t a2, uint64_t a3)
{
  sub_261A858C4();

  MEMORY[0x2667168A0](a2, a3);
  MEMORY[0x2667168A0](0x3A64656C69616620, 0xE900000000000020);
  result = strerror(a1);
  if (result)
  {
    v7 = sub_261A855A4();
    MEMORY[0x2667168A0](v7);

    return 0x20667265706BLL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_261A3C098()
{
  sub_261A858C4();

  v0 = sub_261A85B94();
  MEMORY[0x2667168A0](v0);

  MEMORY[0x2667168A0](0x6E6920736920736ELL, 0xED000064696C6176);
  return 0xD000000000000010;
}

unint64_t sub_261A3C15C()
{
  v1 = *v0;
  if (kperf_timer_action_set())
  {
    v2 = "timer-action-set";
LABEL_3:
    v3 = (v2 - 32) | 0x8000000000000000;
    v4 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0xD000000000000010;
    *(v5 + 16) = v3;
    return swift_willThrow();
  }

  result = sub_261A85CF4();
  if (!is_mul_ok(result, 0xF4240uLL))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (((result | v7) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = 1000000 * result + v7 / 0x3B9ACA00;
  if (__CFADD__(1000000 * result, v7 / 0x3B9ACA00))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (!kperf_ns_to_ticks())
  {
    sub_261A3C640();
    swift_allocError();
    *v9 = v8;
    return swift_willThrow();
  }

  result = kperf_timer_period_set();
  if (result)
  {
    v2 = "timer-period-set";
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_261A3C29C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = (result + 32);
  while (v1)
  {
    v3 = *v2++;
    result = kperf_kdebug_filter_add_debugid();
    --v1;
    if (result)
    {
      v4 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v5 = v4;
      *(v5 + 8) = 0xD000000000000019;
      *(v5 + 16) = 0x8000000261A8E160;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_261A3C33C()
{
  if (kperf_kdebug_filter_set())
  {
    v0 = "kdebug-filter-set";
  }

  else
  {
    result = kperf_kdebug_action_set();
    if (!result)
    {
      return result;
    }

    v0 = "kdebug-action-set";
  }

  v2 = (v0 - 32) | 0x8000000000000000;
  v3 = MEMORY[0x2667166F0]();
  sub_261A3C3DC();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0xD000000000000011;
  *(v4 + 16) = v2;
  return swift_willThrow();
}

unint64_t sub_261A3C3DC()
{
  result = qword_27FECAFA0;
  if (!qword_27FECAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAFA0);
  }

  return result;
}

uint64_t sub_261A3C430()
{
  v4 = *MEMORY[0x277D85DE8];
  result = kperf_kdebug_filter_get();
  if (result || (result = kperf_kdebug_filter_create()) != 0)
  {
    v1 = result;
    if (kperf_kdebug_action_get())
    {
      v1 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v2 = v1;
      *(v2 + 8) = 0xD000000000000011;
      *(v2 + 16) = 0x8000000261A8E180;
      swift_willThrow();
    }

    v3 = *MEMORY[0x277D85DE8];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261A3C514()
{
  v5 = *MEMORY[0x277D85DE8];
  if (kperf_kdebug_filter_get_n_filters())
  {
    if (kperf_kdebug_filter_get_filter())
    {
      v1 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v2 = v1;
      *(v2 + 8) = 0x746C69662D746567;
      *(v2 + 16) = 0xEA00000000007265;
      swift_willThrow();
    }

    else
    {
      v0 = 1;
    }
  }

  else
  {
    v0 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v0 & 1;
}

unint64_t sub_261A3C640()
{
  result = qword_27FECAFA8;
  if (!qword_27FECAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAFA8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for KPerfTimer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KPCSettings.ApplyOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t CountingMode.Remark.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t CountingMode.Remark.description.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  MEMORY[0x2667168A0](v1, v2);

  return 0x6F206B72616D6552;
}

uint64_t CountingMode.Remark.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  return MEMORY[0x266716F60](v2);
}

uint64_t CountingMode.Remark.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  v3 = v1[2];
  v4 = v1[3];
  sub_261A85554();
  v5 = v1[13];
  v6 = v1[14];
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A3C908()
{
  sub_261A85C44();
  v1 = *v0;
  v2 = v0[8];
  v3 = *(*v0 + 16);
  v4 = *(*v0 + 24);
  sub_261A85554();
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A3C970()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  MEMORY[0x2667168A0](v1, v2);

  return 0x6F206B72616D6552;
}

unint64_t sub_261A3C9E8()
{
  result = qword_27FECAFB0;
  if (!qword_27FECAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAFB0);
  }

  return result;
}

unint64_t sub_261A3CA40()
{
  result = qword_27FECAFB8;
  if (!qword_27FECAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAFB8);
  }

  return result;
}

uint64_t sub_261A3CAF8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_261A853D4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_261A853C4();
}

uint64_t sub_261A3CB70()
{
  v0 = sub_261A853D4();
  __swift_allocate_value_buffer(v0, qword_27FED7CC0);
  __swift_project_value_buffer(v0, qword_27FED7CC0);
  return sub_261A853C4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t ModeLine.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ModeLine.synopsis.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ModeLine.documentation.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ModeLine.fromThresholdDisplayName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ModeLine.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_261A3CD64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261A67B00(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_261A3CDEC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261A67B94(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_261A3CE94(__int128 *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a6;
  v40 = a3;
  v42 = a5;
  LODWORD(v41) = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFF0, &qword_261A87838);
  v16 = *(v19 - 8);
  v10 = *(v16 + 64);
  MEMORY[0x28223BE20](v19);
  v12 = &v39 - v11;
  v13 = *(a1 + 10);
  v44 = a2;
  *&v54[0] = sub_261A3D4D0(v13, a2);
  swift_getKeyPath();
  sub_261A85284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFF8, &qword_261A87860);
  sub_261A3BF78(&qword_27FECB000, &qword_27FECAFF8, &qword_261A87860);
  sub_261A3BF78(&qword_27FECB008, &qword_27FECAFF0, &qword_261A87838);
  v14 = sub_261A85664();
  (*(v16 + 8))(v12, v19);
  v15 = v39;

  v43 = *(v14 + 16);
  LOBYTE(v16) = v43 == 0;
  v17 = *a1;
  v52 = a1[1];
  v53 = v17;
  v46 = v17;
  v47 = v52;
  v18 = a1[2];
  v50 = a1[3];
  v51 = v18;
  v48 = v18;
  v49 = v50;
  LOBYTE(v19) = *(*(a1 + 11) + 16) != 0;
  LOBYTE(v20) = v41 & 1;
  v41 = v7;
  v21 = *v7;
  sub_261A3DF5C(&v53, v54);
  sub_261A3DF5C(&v52, v54);
  sub_261A3DF5C(&v51, v54);
  sub_261A3DFB8(&v50, v54);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_261A665CC((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[96 * v23];
    v25 = v46;
    v26 = v47;
    v27 = v49;
    *(v24 + 4) = v48;
    *(v24 + 5) = v27;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v28 = v40;
    *(v24 + 12) = v40;
    v24[104] = v19;
    v24[105] = v16;
    v24[106] = v20;
    v29 = v56;
    *(v24 + 107) = v55;
    v24[111] = v29;
    *(v24 + 14) = v42;
    *(v24 + 15) = v15;
    *v41 = v21;
    if (!v43)
    {
    }

    v30 = 0;
    v42 = v14 + 32;
    v39 = v28 + 1;
    v31 = __OFADD__(v28, 1);
    LODWORD(v40) = v31;
    while (v30 < *(v14 + 16))
    {
      v16 = *(*v44 + 16);
      if (v16)
      {
        v21 = 0;
        v32 = (v42 + 32 * v30);
        v15 = *v32;
        v33 = v32[1];
        v19 = v32[2];
        v20 = v32[3];
        v34 = (*v44 + 40);
        while (1)
        {
          v35 = *(v34 - 1) == v15 && *v34 == v33;
          if (v35 || (sub_261A85BA4() & 1) != 0)
          {
            break;
          }

          ++v21;
          v34 += 12;
          if (v16 == v21)
          {
            goto LABEL_9;
          }
        }

        v36 = v21;
        v21 = v44;
        sub_261A3CDEC(v36, v45);
        v54[2] = v45[2];
        v54[3] = v45[3];
        v54[4] = v45[4];
        v54[5] = v45[5];
        v54[0] = v45[0];
        v54[1] = v45[1];
        if (v40)
        {
          goto LABEL_24;
        }

        v37 = v21;
        v21 = v41;
        sub_261A3CE94(v54, v37, v39, v30 == *(v14 + 16) - 1, v19, v20);

        sub_261A3DF08(v54);
      }

LABEL_9:
      if (++v30 == v43)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v21 = sub_261A665CC(0, *(v21 + 2) + 1, 1, v21);
  }
}

uint64_t ModeLine.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = *(v0 + 72);
  v14 = *(v0 + 73);
  v15 = *(v0 + 74);
  v11 = v0[11];
  v13 = v0[10];
  sub_261A85554();
  sub_261A85554();
  sub_261A85554();
  sub_261A85C64();
  if (v8)
  {
    sub_261A85554();
  }

  MEMORY[0x266716F60](v9);
  sub_261A85C64();
  sub_261A85C64();
  sub_261A85C64();
  if (!v11)
  {
    return sub_261A85C64();
  }

  sub_261A85C64();

  return sub_261A85554();
}

uint64_t ModeLine.hashValue.getter()
{
  sub_261A85C44();
  ModeLine.hash(into:)();
  return sub_261A85C84();
}

uint64_t sub_261A3D444()
{
  sub_261A85C44();
  ModeLine.hash(into:)();
  return sub_261A85C84();
}

uint64_t sub_261A3D488()
{
  sub_261A85C44();
  ModeLine.hash(into:)();
  return sub_261A85C84();
}

uint64_t sub_261A3D4C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_261A3D4D0(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = (v7 + 80 * v5);
  while (1)
  {
    if (v6 == v5)
    {
      return v8;
    }

    if (v5 >= v6)
    {
      break;
    }

    v22 = v9[2];
    v23 = v9[3];
    v24 = v9[4];
    v20 = *v9;
    v21 = v9[1];
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = sub_261A4F87C(*a2);
    ++v5;
    v9 += 5;
    if (v11)
    {
      v19 = v7;
      v25 = v3;
      v12 = result;
      v13 = v11;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_261A666EC(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_261A666EC((v14 > 1), v15 + 1, 1, v8);
        v16 = v13;
        v8 = result;
      }

      else
      {
        v16 = v13;
      }

      v17 = v12;
      v3 = v25;
      v8[2] = v15 + 1;
      v18 = &v8[4 * v15];
      v18[4] = v17;
      v18[5] = v16;
      v7 = v19;
      *(v18 + 3) = v21;
      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s7Recount8ModeLineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v19 = *(a1 + 48);
  v6 = *(a1 + 56);
  v27 = *(a1 + 64);
  v25 = *(a1 + 72);
  v21 = *(a1 + 74);
  v17 = *(a1 + 88);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  v18 = *(a2 + 48);
  v26 = *(a2 + 64);
  v23 = *(a1 + 73);
  v24 = *(a2 + 72);
  v22 = *(a2 + 73);
  v20 = *(a2 + 74);
  v14 = *(a2 + 80);
  v15 = *(a1 + 80);
  v16 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_261A85BA4() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_261A85BA4() & 1) == 0 || (v4 != v9 || v5 != v10) && (sub_261A85BA4() & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    return 0;
  }

  if (v19 == v18 && v6 == v11)
  {
    result = 0;
  }

  else
  {
    v13 = sub_261A85BA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

LABEL_18:
  if (v27 == v26 && ((v25 ^ v24) & 1) == 0 && ((v23 ^ v22) & 1) == 0 && ((v21 ^ v20) & 1) == 0)
  {
    if (v17)
    {
      if (v16 && (v15 == v14 && v17 == v16 || (sub_261A85BA4() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_261A3D834()
{
  result = qword_27FECAFC0;
  if (!qword_27FECAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAFC0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_261A3D8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A3D8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A3D960(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFC8, "Z|");
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  result = MEMORY[0x28223BE20](v4);
  v47 = &v43 - v7;
  v8 = *(a1 + 48);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v46 = a1;
    v11 = 0;
    v44 = v8;
    v12 = v8 + 32;
    v13 = MEMORY[0x277D84F90];
    v45 = v12;
    do
    {
      v50 = v13;
      v14 = (v12 + 96 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= v9)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        v16 = v14[1];
        v56 = *v14;
        v57 = v16;
        v17 = v14[2];
        v18 = v14[3];
        v19 = v14[5];
        v60 = v14[4];
        v61 = v19;
        v58 = v17;
        v59 = v18;
        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_37;
        }

        v53[0] = v56;
        MEMORY[0x28223BE20](result);
        *(&v43 - 2) = v53;
        sub_261A3DEAC(&v56, v55);

        v20 = sub_261A779E4(sub_261A38AEC, (&v43 - 4), v51);

        if (v20)
        {
          break;
        }

        result = sub_261A3DF08(&v56);
        ++v15;
        v14 += 6;
        if (v11 == v9)
        {
          v13 = v50;
          goto LABEL_14;
        }
      }

      v13 = v50;
      result = swift_isUniquelyReferenced_nonNull_native();
      v54 = v13;
      if ((result & 1) == 0)
      {
        result = sub_261A3F310(0, *(v13 + 16) + 1, 1);
        v13 = v54;
      }

      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_261A3F310((v21 > 1), v22 + 1, 1);
        v13 = v54;
      }

      *(v13 + 16) = v22 + 1;
      v23 = (v13 + 96 * v22);
      v24 = v57;
      v23[2] = v56;
      v23[3] = v24;
      v25 = v58;
      v26 = v59;
      v27 = v61;
      v23[6] = v60;
      v23[7] = v27;
      v23[4] = v25;
      v23[5] = v26;
      v12 = v45;
    }

    while (v11 != v9);
LABEL_14:
    v54 = v13;
    v28 = *(v46 + 40);
    v10 = MEMORY[0x277D84F90];
    if (v28)
    {
      v3 = 0;
      v29 = *(v46 + 32);
      v30 = (v44 + 40);
      while (1)
      {
        v31 = *(v30 - 1) == v29 && v28 == *v30;
        if (v31 || (sub_261A85BA4() & 1) != 0)
        {
          goto LABEL_23;
        }

        ++v3;
        v30 += 12;
        if (v9 == v3)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_25:
    if (!*(v13 + 16))
    {

      return MEMORY[0x277D84F90];
    }

    v32 = 0;
    goto LABEL_27;
  }

  v54 = MEMORY[0x277D84F90];
  v33 = *(a1 + 40);
  v13 = MEMORY[0x277D84F90];
  if (!v33)
  {
    goto LABEL_25;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v32 = v3;
LABEL_27:
  sub_261A3CDEC(v32, &v56);
  v53[0] = v56;
  v53[1] = v57;
  v53[2] = v58;
  v53[3] = v59;
  v53[4] = v60;
  v53[5] = v61;
  v52 = v10;
  sub_261A3CE94(&v56, &v54, 0, 1, 0, 0);
  sub_261A3DF08(v53);
  swift_getKeyPath();
  v34 = v47;
  sub_261A85284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFD0, &qword_261A89450);
  sub_261A3BF78(&qword_27FECAFD8, &qword_27FECAFD0, &qword_261A89450);
  sub_261A3BF78(&qword_27FECAFE0, &qword_27FECAFD0, &qword_261A89450);
  sub_261A3BF78(&qword_27FECAFE8, &qword_27FECAFC8, "Z|");
  v35 = v49;
  sub_261A85484();
  (*(v48 + 8))(v34, v35);
  v36 = v54;
  if (!*(v54 + 16))
  {
    goto LABEL_34;
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v37 = *(v36 + 2);
    if (!v37)
    {
      goto LABEL_33;
    }

LABEL_30:
    v38 = &v36[96 * v37];
    v39 = *(v38 - 4);
    v55[1] = *(v38 - 3);
    v40 = *(v38 - 2);
    v41 = *(v38 - 1);
    v42 = v38[1];
    v55[4] = *v38;
    v55[5] = v42;
    v55[2] = v40;
    v55[3] = v41;
    v55[0] = v39;
    *(v36 + 2) = v37 - 1;
    v54 = v36;
    sub_261A3CE94(v55, &v54, 0, 1, 0, 0);
    sub_261A3DF08(v55);
    v36 = v54;
    if (!*(v54 + 16))
    {
      goto LABEL_34;
    }
  }

  v36 = sub_261A67B94(v36);
  v37 = *(v36 + 2);
  if (v37)
  {
    goto LABEL_30;
  }

LABEL_33:
  __break(1u);
LABEL_34:

  return v52;
}

uint64_t sub_261A3DFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB010, &unk_261A8D2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CountingMode.evaluate(sample:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(v1 + 192);
  LOBYTE(v19) = v4;
  sub_261A705A8(&v19);
  if (v2)
  {
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v7 = sub_261A853D4();
    __swift_project_value_buffer(v7, qword_27FED7C90);

    v8 = v2;
    v9 = sub_261A853B4();
    v10 = sub_261A85744();

    MEMORY[0x2667175A0](v2);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446466;
      v19 = v3;
      v20 = v4;
      v21 = v5;
      v13 = sub_261A7E834();
      v15 = sub_261A3E9E8(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v16 = sub_261A85BF4();
      v18 = sub_261A3E9E8(v16, v17, &v22);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_261A33000, v9, v10, "failed to evaluate %{public}s %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v12, -1, -1);
      MEMORY[0x266717700](v11, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t sub_261A3E958(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_261A3E9E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261A3EAB4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_261A40FBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_261A3EAB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_261A3EBC0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_261A85914();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_261A3EBC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_261A3EC0C(a1, a2);
  sub_261A3ED3C(&unk_28742F940);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_261A3EC0C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_261A3EE28(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_261A85914();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_261A855C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261A3EE28(v10, 0);
        result = sub_261A858A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261A3ED3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_261A3EE9C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_261A3EE28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB138, &qword_261A879A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_261A3EE9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB138, &qword_261A879A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_261A3EF90(char *a1, int64_t a2, char a3)
{
  result = sub_261A3F4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3EFB0(char *a1, int64_t a2, char a3)
{
  result = sub_261A3F5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_261A3EFE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_261A3F02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_261A3F080(void *a1, int64_t a2, char a3)
{
  result = sub_261A3FA78(a1, a2, a3, *v3, &qword_27FECB158, &qword_261A879C0, &qword_27FECB160, &qword_261A879C8);
  *v3 = result;
  return result;
}

char *sub_261A3F0C0(char *a1, int64_t a2, char a3)
{
  result = sub_261A3F6F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F0E0(void *a1, int64_t a2, char a3)
{
  result = sub_261A3F820(a1, a2, a3, *v3, &qword_27FECB168, &qword_261A879D0, &qword_27FECB170, &qword_261A879D8);
  *v3 = result;
  return result;
}

void *sub_261A3F120(void *a1, int64_t a2, char a3)
{
  result = sub_261A3F820(a1, a2, a3, *v3, &qword_27FECB178, &qword_261A879E0, &qword_27FECB180, &qword_261A879E8);
  *v3 = result;
  return result;
}

char *sub_261A3F160(char *a1, int64_t a2, char a3)
{
  result = sub_261A3F954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F180(void *a1, int64_t a2, char a3)
{
  result = sub_261A40B7C(a1, a2, a3, *v3, &qword_27FECB080, &qword_261A87908, &qword_27FECB088, &unk_261A87D30);
  *v3 = result;
  return result;
}

void *sub_261A3F1C0(void *a1, int64_t a2, char a3)
{
  result = sub_261A3FA78(a1, a2, a3, *v3, &qword_27FECB140, &qword_261A879A8, &qword_27FECB148, &qword_261A879B0);
  *v3 = result;
  return result;
}

char *sub_261A3F200(char *a1, int64_t a2, char a3)
{
  result = sub_261A40198(a1, a2, a3, *v3, &qword_27FECB050, &qword_261A878E0);
  *v3 = result;
  return result;
}

void *sub_261A3F230(void *a1, int64_t a2, char a3)
{
  result = sub_261A3FBAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F250(void *a1, int64_t a2, char a3)
{
  result = sub_261A3FD14(a1, a2, a3, *v3, &qword_27FECB0D0, &qword_261A87948, &qword_27FECB0D8, &qword_261A87950);
  *v3 = result;
  return result;
}

void *sub_261A3F290(void *a1, int64_t a2, char a3)
{
  result = sub_261A3FD14(a1, a2, a3, *v3, &qword_27FECB0E0, &qword_261A87958, &qword_27FECB0E8, &qword_261A87960);
  *v3 = result;
  return result;
}

char *sub_261A3F2D0(char *a1, int64_t a2, char a3)
{
  result = sub_261A3FE58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F2F0(char *a1, int64_t a2, char a3)
{
  result = sub_261A3FF74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F310(char *a1, int64_t a2, char a3)
{
  result = sub_261A40078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F330(char *a1, int64_t a2, char a3)
{
  result = sub_261A40198(a1, a2, a3, *v3, &qword_27FECB128, &qword_261A87990);
  *v3 = result;
  return result;
}

char *sub_261A3F360(char *a1, int64_t a2, char a3)
{
  result = sub_261A40294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F380(char *a1, int64_t a2, char a3)
{
  result = sub_261A403A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F3A0(char *a1, int64_t a2, char a3)
{
  result = sub_261A40498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F3C0(char *a1, int64_t a2, char a3)
{
  result = sub_261A40598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F3E0(char *a1, int64_t a2, char a3)
{
  result = sub_261A4069C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F400(void *a1, int64_t a2, char a3)
{
  result = sub_261A407A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F420(void *a1, int64_t a2, char a3)
{
  result = sub_261A408F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F440(void *a1, int64_t a2, char a3)
{
  result = sub_261A40A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F460(void *a1, int64_t a2, char a3)
{
  result = sub_261A40B7C(a1, a2, a3, *v3, &qword_27FECB0F8, &qword_261A87970, &qword_27FECB100, &qword_261A87978);
  *v3 = result;
  return result;
}

char *sub_261A3F4A0(char *a1, int64_t a2, char a3)
{
  result = sub_261A40CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_261A3F4C0(size_t a1, int64_t a2, char a3)
{
  result = sub_261A40DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F4E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261A3F5E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB118, &qword_261A8D2D0);
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

char *sub_261A3F6F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB150, &qword_261A879B8);
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

void *sub_261A3F820(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A3F954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB188, &qword_261A879F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A3FA78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_261A3FBAC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0C0, &qword_261A87938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0C8, &qword_261A87940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A3FD14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A3FE58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0F0, &qword_261A87968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A3FF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB058, &qword_261A878E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261A40078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB110, &qword_261A87988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A40198(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_261A40294(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB048, "@|");
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

char *sub_261A403A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB068, &qword_261A878F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_261A40498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB070, &qword_261A878F8);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_261A40598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB060, &unk_261A8D2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_261A4069C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB078, &qword_261A87900);
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

void *sub_261A407A8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB090, &qword_261A87910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB098, &qword_261A87918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A408F0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0A0, &qword_261A87920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0A8, &qword_261A87928);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A40A38(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B0, &qword_261A87930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A40B7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A40CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB108, &qword_261A87980);
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

size_t sub_261A40DE4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB120, &qword_261A8D2E0);
  v10 = *(sub_261A85394() - 8);
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
  v15 = *(sub_261A85394() - 8);
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

uint64_t sub_261A40FBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261A41018()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4115C()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A41238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1818846563;
  v6 = 0x646E756F72;
  if (a1 != 4)
  {
    v6 = 0x636E757274;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7889261;
  if (a1 != 1)
  {
    v8 = 0x726F6F6C66;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 7235949;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1818846563)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (a2 == 4)
      {
        if (v9 != 0x646E756F72)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 0x636E757274)
      {
LABEL_34:
        v12 = sub_261A85BA4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7889261)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x726F6F6C66)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 7235949)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_261A413D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "L1D_TLB_MISS_NONSPEC";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "FixedCounterPMIs";
      v5 = 0xD000000000000021;
    }

    else
    {
      v6 = "tersPeriodSeconds";
      v5 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v6 = "ConfiguredCounterGroupPMIs";
    }

    else
    {
      v6 = "L1D_TLB_MISS_NONSPEC";
    }
  }

  if (a2 > 1u)
  {
    v3 = "FixedCounterPMIs";
    v7 = 0xD000000000000021;
    v8 = "tersPeriodSeconds";
    v2 = 0xD000000000000016;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
    v8 = "ConfiguredCounterGroupPMIs";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_261A85BA4();
  }

  return v12 & 1;
}

uint64_t sub_261A414FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073656C70;
  v3 = 0x6D615372656D6954;
  v4 = a1;
  v5 = 0xD000000000000017;
  if (a1 == 5)
  {
    v5 = 0x6C706D6153494D50;
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0x8000000261A8DC60;
  }

  v7 = 0x8000000261A8DC20;
  if (a1 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (v4 != 3)
  {
    v7 = 0x8000000261A8DC40;
  }

  if (v4 <= 4)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 4)
  {
    v6 = v7;
  }

  v10 = 0x8000000261A8DC00;
  v11 = 0x65646F435F43504BLL;
  if (v4 == 1)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v10 = 0xE900000000000073;
  }

  if (!v4)
  {
    v11 = 0x6D615372656D6954;
    v10 = 0xEC00000073656C70;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v11 = v9;
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xE900000000000073;
        if (v11 != 0x65646F435F43504BLL)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0x8000000261A8DC00;
      goto LABEL_29;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007365;
        if (v11 != 0x6C706D6153494D50)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x8000000261A8DC60;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000261A8DC20;
LABEL_29:
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0x8000000261A8DC40;
    v3 = 0xD000000000000010;
  }

  if (v11 != v3)
  {
LABEL_41:
    v13 = sub_261A85BA4();
    goto LABEL_42;
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_261A416F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00737265746E75;
  v3 = 0x6F635F6465786966;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73657361696C61;
    }

    else
    {
      v5 = 0x73746E657665;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x635F6769666E6F63;
    }

    else
    {
      v5 = 0x6F635F6465786966;
    }

    if (v4)
    {
      v6 = 0xEF737265746E756FLL;
    }

    else
    {
      v6 = 0xEE00737265746E75;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x73657361696C61;
  if (a2 != 2)
  {
    v8 = 0x73746E657665;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x635F6769666E6F63;
    v2 = 0xEF737265746E756FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A41854(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x63697274656DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 1684957547;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000261A8DCE0;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x726F6C6F63;
    }

    else
    {
      v4 = 0x63697274656DLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x8000000261A8DCE0;
  if (a2 != 2)
  {
    v7 = 1684957547;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x726F6C6F63;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A4197C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73746E656D656C65;
    }

    else
    {
      v5 = 1684957547;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x63697274656DLL;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x8000000261A8DCE0;
    }

    if (a1 == 2)
    {
      v5 = 0x616E696D6F6E6564;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xEB00000000726F74;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73746E656D656C65;
    }

    else
    {
      v11 = 1684957547;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x63697274656DLL;
    v8 = 0x8000000261A8DCE0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x616E696D6F6E6564;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000726F74;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_261A85BA4();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

unint64_t sub_261A41B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v43 = MEMORY[0x277D84F90];
  sub_261A3F1C0(0, v1, 0);
  v2 = v43;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_261A85854();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB208, &qword_261A87D48);
  v38 = v3;
  v9 = 0;
  v34 = v3 + 72;
  v35 = v1;
  v36 = v7;
  v37 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_25;
    }

    v39 = v9;
    v12 = v2;
    v13 = (*(v3 + 48) + 16 * v6);
    v14 = v13[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v40 = *v13;
    v41 = v14;
    v42 = v15;
    v16 = sub_261A859C4();
    swift_bridgeObjectRetain_n();

    v18 = v40;
    v17 = v41;
    v19 = v42;

    result = sub_261A5BD84(v18, v17);
    if (v20)
    {
      goto LABEL_26;
    }

    v16[(result >> 6) + 8] |= 1 << result;
    v21 = (v16[6] + 16 * result);
    *v21 = v18;
    v21[1] = v17;
    *(v16[7] + 8 * result) = v19;
    v22 = v16[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_27;
    }

    v16[2] = v24;

    sub_261A497E4(&v40);

    v2 = v12;
    v43 = v12;
    v26 = *(v12 + 16);
    v25 = *(v12 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_261A3F1C0((v25 > 1), v26 + 1, 1);
      v2 = v43;
    }

    *(v2 + 16) = v26 + 1;
    *(v2 + 8 * v26 + 32) = v16;
    v3 = v38;
    v10 = 1 << *(v38 + 32);
    if (v6 >= v10)
    {
      goto LABEL_28;
    }

    v4 = v37;
    v27 = *(v37 + 8 * v11);
    if ((v27 & (1 << v6)) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v7) = v36;
    if (v36 != *(v38 + 36))
    {
      goto LABEL_30;
    }

    v28 = v27 & (-2 << (v6 & 0x3F));
    if (v28)
    {
      v10 = __clz(__rbit64(v28)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v11 << 6;
      v30 = v11 + 1;
      v31 = (v34 + 8 * v11);
      while (v30 < (v10 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_261A4984C(v6, v36, 0);
          v10 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_261A4984C(v6, v36, 0);
    }

LABEL_4:
    v9 = v39 + 1;
    v6 = v10;
    if (v39 + 1 == v35)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}