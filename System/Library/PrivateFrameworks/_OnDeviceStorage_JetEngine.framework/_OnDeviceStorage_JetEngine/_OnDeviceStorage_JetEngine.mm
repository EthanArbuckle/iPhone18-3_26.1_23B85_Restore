uint64_t sub_29EC2CA78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_29EC5BDF4();
}

uint64_t sub_29EC2CB18()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_29EC5BE14();
}

uint64_t sub_29EC2CB64()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_29EC5BE04();
}

uint64_t sub_29EC2CBBC()
{
  sub_29EC5C804();
  v1 = *v0;
  swift_getWitnessTable();
  sub_29EC5BE04();
  return sub_29EC5C824();
}

uint64_t sub_29EC2CC58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFRunLoop(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29EC2CCAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EC2CCCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_29EC2CD08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_29EC2CD58(uint64_t (*a1)(void *, void *, uint64_t), uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 currentContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 currentThis];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 currentArguments];
      if (v9)
      {
        v10 = v9;
        v11 = sub_29EC5C4C4();

        v12 = sub_29EC2D0E8(v11);

        if (v12)
        {
          v13 = a1(v6, v8, v12);

          return v13;
        }
      }
    }
  }

  sub_29EC5C674();
  MEMORY[0x29EDADC00](0xD000000000000017, 0x800000029EC5E960);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F250, "*-");
  v16 = sub_29EC5C3F4();
  MEMORY[0x29EDADC00](v16);

  MEMORY[0x29EDADC00](0xD00000000000001DLL, 0x800000029EC5E980);
  result = sub_29EC5C714();
  __break(1u);
  return result;
}

uint64_t sub_29EC2D028()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC2D060@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  result = v7(*a1, *a2, *a3);
  if (!v5)
  {
    *a4 = result;
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

uint64_t sub_29EC2D0E8(uint64_t a1)
{
  v7 = MEMORY[0x29EDCA190];
  v2 = *(a1 + 16);
  sub_29EC5C6D4();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_29EC2D1D4(i, v6);
    sub_29EC2D230();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_29EC5C6B4();
    v4 = *(v7 + 16);
    sub_29EC5C6E4();
    sub_29EC5C6F4();
    sub_29EC5C6C4();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_29EC2D1D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29EC2D230()
{
  result = qword_2A188F258;
  if (!qword_2A188F258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A188F258);
  }

  return result;
}

uint64_t sub_29EC2D288(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_29EC2D2E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_29EC2D344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    v5 = v4;
    result = [v5 context];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result JSGlobalContextRef];

    v9 = [v5 JSValueRef];
    if (JSValueGetType(v8, v9) == kJSTypeObject)
    {
      IsFunction = JSObjectIsFunction(v8, v9);

      if (IsFunction)
      {
        sub_29EC2D818(a1, v12);
        v11 = v12[1];
        *a2 = v12[0];
        *(a2 + 16) = v11;
        *(a2 + 32) = v13;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    else
    {
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
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

id sub_29EC2D4E0(id a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (!*v3)
  {
    v18 = sub_29EC2E6A8(MEMORY[0x29EDCA190]);
    sub_29EC2D87C();
    swift_allocError();
    *v19 = 0xD00000000000001CLL;
    v19[1] = 0x800000029EC5E9A0;
    v19[2] = v18;
    swift_willThrow();
    return a1;
  }

  v4 = *v3;
  result = [v4 context];
  if (result)
  {
    v6 = result;
    v7 = sub_29EC5C4B4();
    a1 = [v4 callWithArguments_];

    if (a1)
    {
      v8 = [v6 exception];
      if (v8)
      {
        v9 = v8;
        [v6 setException_];
        v10 = v9;
        sub_29EC4E058(v10);
        v12 = v11;
        v14 = v13;
        v16 = v15;

        sub_29EC2D87C();
        swift_allocError();
        *v17 = v12;
        v17[1] = v14;
        v17[2] = v16;
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      a1 = sub_29EC2E6A8(MEMORY[0x29EDCA190]);
      sub_29EC2D87C();
      swift_allocError();
      *v20 = 0xD000000000000017;
      v20[1] = 0x800000029EC5E9C0;
      v20[2] = a1;
      swift_willThrow();
    }

    return a1;
  }

  __break(1u);
  return result;
}

BOOL sub_29EC2D700(void *a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = (v3 | v4) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_29EC2D230();
    v7 = v4;
    v8 = v3;
    v9 = sub_29EC5C5B4();

    return v9 & 1;
  }

  return result;
}

uint64_t sub_29EC2D790()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if (!*v1)
  {
    return 0x296C6C756E28;
  }

  v2 = *v1;
  v3 = [v2 description];
  v4 = sub_29EC5C3A4();

  return v4;
}

uint64_t sub_29EC2D818(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29EC2D87C()
{
  result = qword_2A188F260;
  if (!qword_2A188F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F260);
  }

  return result;
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

uint64_t sub_29EC2D8E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EC2D92C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_29EC2D984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    v5 = v4;
    result = [v5 context];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result JSGlobalContextRef];

    v9 = [v5 JSValueRef];
    if (JSValueGetType(v8, v9) == kJSTypeObject)
    {
      IsConstructor = JSObjectIsConstructor(v8, v9);

      if (IsConstructor)
      {
        sub_29EC2D818(a1, v12);
        v11 = v12[1];
        *a2 = v12[0];
        *(a2 + 16) = v11;
        *(a2 + 32) = v13;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    else
    {
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_29EC2DA90(id a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (!*v3)
  {
    v18 = sub_29EC2E6A8(MEMORY[0x29EDCA190]);
    sub_29EC2D87C();
    swift_allocError();
    *v19 = 0xD00000000000001CLL;
    v19[1] = 0x800000029EC5E9A0;
    v19[2] = v18;
    swift_willThrow();
    return a1;
  }

  v4 = *v3;
  result = [v4 context];
  if (result)
  {
    v6 = result;
    v7 = sub_29EC5C4B4();
    a1 = [v4 constructWithArguments_];

    if (a1)
    {
      v8 = [v6 exception];
      if (v8)
      {
        v9 = v8;
        [v6 setException_];
        v10 = v9;
        sub_29EC4E058(v10);
        v12 = v11;
        v14 = v13;
        v16 = v15;

        sub_29EC2D87C();
        swift_allocError();
        *v17 = v12;
        v17[1] = v14;
        v17[2] = v16;
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      a1 = sub_29EC2E6A8(MEMORY[0x29EDCA190]);
      sub_29EC2D87C();
      swift_allocError();
      *v20 = 0xD00000000000001ALL;
      v20[1] = 0x800000029EC5E9E0;
      v20[2] = a1;
      swift_willThrow();
    }

    return a1;
  }

  __break(1u);
  return result;
}

id sub_29EC2DCC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_29EC2DD10()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_2A188F268 = result;
  return result;
}

id sub_29EC2DD48()
{
  if (qword_2A188F1F8 != -1)
  {
    swift_once();
  }

  result = [qword_2A188F268 compareWithValue:0 andExchangeWithValue:1];
  if (result)
  {
    if (qword_2A188F200 != -1)
    {
      swift_once();
    }

    v1 = qword_2A18909B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F298, &unk_29EC5DB40);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29EC5D690;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A0, &unk_29EC5DE80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_29EC5D6A0;
    v4 = MEMORY[0x29EDC99B0];
    v17 = MEMORY[0x29EDC99B0];
    v14 = 0xD000000000000048;
    v15 = 0x800000029EC5EA50;
    *(v3 + 48) = 0u;
    *(v3 + 32) = 0u;
    sub_29EC2EC8C(&v14, v3 + 32);
    *(v3 + 64) = 0;
    *(v2 + 32) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29EC5D6A0;
    v17 = v4;
    v14 = 0xD00000000000004ALL;
    v15 = 0x800000029EC5EAA0;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_29EC2EC8C(&v14, v5 + 32);
    *(v5 + 64) = 0;
    *(v2 + 40) = v5;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29EC5D6A0;
    v17 = v4;
    v14 = 0xD000000000000052;
    v15 = 0x800000029EC5EAF0;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_29EC2EC8C(&v14, v6 + 32);
    *(v6 + 64) = 0;
    *(v2 + 48) = v6;
    v7 = sub_29EC5C554();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = os_variant_has_internal_content() ^ 1;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v14 = v2;
      v15 = sub_29EC2ED0C;
      v16 = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2B0, &unk_29EC5DB50);
      sub_29EC2ED14();
      v10 = sub_29EC5C374();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2D0, &qword_29EC5DB60);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_29EC5D6A0;
      *(v13 + 56) = v4;
      *(v13 + 64) = sub_29EC2EE44();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_29EC5C214();
    }
  }

  return result;
}

void sub_29EC2E098(uint64_t a1)
{
  if (qword_2A188F220 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_2A188F6C8 + 2);
  MEMORY[0x2A1C7C4A8](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_29EC2EE98((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_2A18909B0 = v2;
}

id sub_29EC2E184(id result, uint64_t a2, uint64_t a3, void (*a4)(id, _OWORD *, __int128 *))
{
  v7 = result;
  v8 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x29EDADE70](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v9 = *(a3 + 32);
  }

  *(&v27 + 1) = &type metadata for JSStrongReference;
  v28 = &off_2A2552CE8;
  *&v26 = v9;
  v10 = v9;
  result = sub_29EC2D344(&v26, &v29);
  if (!*(&v30 + 1))
  {
    sub_29EC2EBD8(&v29, &qword_2A188F290, &qword_29EC5D6C0);
    v12 = v10;
    v7 = sub_29EC4E244(v12, 0x6E6F6974636E7546, 0xE800000000000000);
    v14 = v13;
    v16 = v15;

    sub_29EC2D87C();
    swift_allocError();
    *v17 = v7;
    v17[1] = v14;
    v17[2] = v16;
    swift_willThrow();

    return v7;
  }

  v32[0] = v29;
  v32[1] = v30;
  v33 = v31;
  if (!v8)
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v11 = *(a3 + 40);
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x29EDADE70](1, a3);
LABEL_10:
  v25[3] = &type metadata for JSStrongReference;
  v25[4] = &off_2A2552CE8;
  v25[0] = v11;
  v18 = v11;
  sub_29EC2D344(v25, &v26);
  if (!*(&v27 + 1))
  {
    sub_29EC2EBD8(&v26, &qword_2A188F290, &qword_29EC5D6C0);
    v7 = v18;
    v19 = sub_29EC4E244(v7, 0x6E6F6974636E7546, 0xE800000000000000);
    v21 = v20;
    v23 = v22;

    sub_29EC2D87C();
    swift_allocError();
    *v24 = v19;
    v24[1] = v21;
    v24[2] = v23;
    swift_willThrow();

    goto LABEL_14;
  }

  v29 = v26;
  v30 = v27;
  v31 = v28;
  a4(v7, v32, &v29);
  if (v4)
  {
    sub_29EC2DD48();
    swift_willThrow();

    sub_29EC2EC38(&v29);
LABEL_14:
    sub_29EC2EC38(v32);
    return v7;
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v7 = result;

    sub_29EC2EC38(&v29);
    sub_29EC2EC38(v32);
    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_29EC2E454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F280, "6&");
    v3 = sub_29EC5C754();
    v4 = a1 + 32;

    while (1)
    {
      sub_29EC2EFE8(v4, &v13, &qword_2A188F288, &qword_29EC5D7E0);
      v5 = v13;
      v6 = v14;
      result = sub_29EC4D564(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29EC2EBC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EC2E584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F300, qword_29EC5D6D0);
    v3 = sub_29EC5C754();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_29EC4D5DC(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EC2E6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2E0, &qword_29EC5DCA0);
    v3 = sub_29EC5C754();
    v4 = a1 + 32;

    while (1)
    {
      sub_29EC2EFE8(v4, v13, &qword_2A188F2E8, &qword_29EC5D6C8);
      result = sub_29EC4D67C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_29EC2EBC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29EC2E7E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 globalObject];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = sub_29EC5C394();
  v9 = [v7 valueForProperty_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24[3] = &type metadata for JSStrongReference;
  v24[4] = &off_2A2552CE8;
  v24[0] = v9;
  v10 = v9;
  sub_29EC2D984(v24, &aBlock);
  if (!*(&v21 + 1))
  {
    sub_29EC2EBD8(&aBlock, &qword_2A188F270, &qword_29EC5D6B8);
    v18 = sub_29EC2E6A8(MEMORY[0x29EDCA190]);
    sub_29EC2D87C();
    swift_allocError();
    *v19 = 0xD000000000000031;
    v19[1] = 0x800000029EC5EA00;
    v19[2] = v18;
    swift_willThrow();

    return;
  }

  v25[0] = aBlock;
  v25[1] = v21;
  v26 = v22;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_29EC2EB38;
  *(v12 + 24) = v11;
  v22 = sub_29EC2EB54;
  v23 = v12;
  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 1107296256;
  *&v21 = sub_29EC2DCC0;
  *(&v21 + 1) = &block_descriptor;
  v13 = _Block_copy(&aBlock);

  v14 = [objc_opt_self() valueWithObject:v13 inContext:a1];
  if (v14)
  {
    v15 = v14;
    _Block_release(v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29EC5D6A0;
    *(v16 + 56) = sub_29EC2D230();
    *(v16 + 32) = v15;
    v17 = v15;
    sub_29EC2DA90(v16);
    sub_29EC2EB74(v25);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_29EC2EB00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_29EC2EBC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29EC2EBD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29EC2EC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A8, &qword_29EC5D9A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29EC2ED14()
{
  result = qword_2A188F2B8;
  if (!qword_2A188F2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F2B0, &unk_29EC5DB50);
    sub_29EC2EDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F2B8);
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

unint64_t sub_29EC2EDE0()
{
  result = qword_2A188F2C0;
  if (!qword_2A188F2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F2C8, &unk_29EC5DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F2C0);
  }

  return result;
}

unint64_t sub_29EC2EE44()
{
  result = qword_2A188F2D8;
  if (!qword_2A188F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F2D8);
  }

  return result;
}

unint64_t sub_29EC2EEB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2F0, &qword_29EC5DCC0);
    v3 = sub_29EC5C754();
    v4 = a1 + 32;

    while (1)
    {
      sub_29EC2EFE8(v4, &v15, &qword_2A188F2F8, &qword_29EC5D810);
      v5 = v15;
      v6 = v16;
      result = sub_29EC4D564(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EC2EFE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EC2F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_29EC5C614();
  if (v5 == 1 << *(a1 + 32))
  {
    result = 0;
    v7 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  else
  {
    result = sub_29EC39B94(v9, v5, *(a1 + 36), 0, a1);
    v8 = v9[1];
    *(a2 + 16) = v9[0];
    *(a2 + 32) = v8;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

void sub_29EC2F208(void *a1, const char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v42 = a4;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v6 = sub_29EC5BE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EC5C274();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Signpost();
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v35 - v20;
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_2A18909C8);
  (*(v12 + 16))(v15, v22, v11);
  sub_29EC54334(v40, v41, v42, v15, v21);
  v23 = aBlock[7];
  v24 = sub_29EC55108();
  if (v23)
  {
    sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    (*(v7 + 32))(v25, v10, v6);
    sub_29EC3A194(v21);
  }

  else
  {
    v26 = v24;
    sub_29EC3A1F0(v21, v19);
    v27 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v38;
    v29[2] = v37;
    v29[3] = v30;
    v31 = v39;
    v29[4] = v39;
    sub_29EC3A360(v19, v29 + v27);
    *(v29 + v28) = v26;
    aBlock[4] = sub_29EC3D5F0;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29EC2FBB8;
    aBlock[3] = &block_descriptor_307;
    v32 = _Block_copy(aBlock);

    v33 = v31;

    v34 = [objc_opt_self() valueWithNewPromiseInContext:v33 fromExecutor:v32];
    _Block_release(v32);
    if (v34)
    {
      sub_29EC3A194(v21);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29EC2F63C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v32 = a7;
  v30 = *(type metadata accessor for Signpost() - 8);
  v12 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v15 = &v30 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F458, &qword_29EC5DAC0);
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = MEMORY[0x29EDCA190];
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = 0;
  v20 = sub_29EC5C514();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_29EC5DAB8;
  v21[5] = v16;
  v21[6] = v17;

  sub_29EC46008(0, 0, v15, &unk_29EC5DAC8, v21);

  sub_29EC3A1F0(a6, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v31;
  *(v23 + 24) = a5;
  sub_29EC3A360(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_29EC3A1F0(a6, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a5;
  sub_29EC3A360(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v22);
  v35[3] = type metadata accessor for RunLoopWorkerThread();
  v35[4] = &off_2A2554CE8;
  v35[0] = v32;
  v33[0] = sub_29EC3D86C;
  v33[1] = v23;
  v33[2] = sub_29EC3DC10;
  v33[3] = v25;
  sub_29EC2D818(v35, v34);
  v34[40] = 0;
  v26 = a2;

  v27 = a5;
  v28 = v24;
  sub_29EC486D0(v33);

  sub_29EC2EBD8(v33, &qword_2A188F460, &qword_29EC5DAD0);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_29EC2F9D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EC3DAF4;

  return v6();
}

uint64_t sub_29EC2FAB8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29EC5D6A0;
    v6 = [objc_opt_self() valueWithBool:1 inContext:a3];
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
    *(v5 + 32) = v6;
    v7 = sub_29EC5C4B4();
  }

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

void sub_29EC2FBB8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_29EC2FC44(void *a1, const char *a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46[1] = a8;
  v47 = a6;
  v48 = a7;
  v49 = a1;
  v52 = a5;
  LODWORD(v56) = a4;
  v54 = a2;
  v55 = a3;
  v10 = sub_29EC5C004();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_29EC5BE84();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29EC5C274();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Signpost();
  v46[0] = *(v23 - 8);
  v24 = *(v46[0] + 64);
  v25 = MEMORY[0x2A1C7C4A8](v23 - 8);
  v26 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = v46 - v27;
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v18, qword_2A18909C8);
  (*(v19 + 16))(v22, v29, v18);
  sub_29EC54334(v54, v55, v56, v22, v28);
  v30 = v58;
  v31 = sub_29EC55108();
  if (v30)
  {
    sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    v32 = v53;
    swift_allocError();
    (*(v14 + 32))(v33, v17, v32);
LABEL_8:
    sub_29EC3A194(v28);
    return;
  }

  v34 = v31;
  v35 = v52;
  if (([v52 isNull] & 1) != 0 || objc_msgSend(v35, sel_isUndefined))
  {
    sub_29EC545A4(0, 0xD000000000000022, 0x800000029EC5EDD0);
    sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    *v13 = 0x74736575716572;
    v13[1] = 0xE700000000000000;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000029EC5EDB0;
    v37 = v50;
    v36 = v51;
    (*(v50 + 104))(v13, *MEMORY[0x29EDC5FE0], v51);
    sub_29EC5BE34();
    (*(v37 + 8))(v13, v36);
    swift_willThrow();

    goto LABEL_8;
  }

  v58 = a10;
  v56 = a9;
  sub_29EC3A1F0(v28, v26);
  v38 = (*(v46[0] + 80) + 56) & ~*(v46[0] + 80);
  v39 = swift_allocObject();
  v40 = v48;
  v39[2] = v47;
  v39[3] = v40;
  v39[4] = v35;
  v39[5] = v34;
  v41 = v49;
  v39[6] = v49;
  sub_29EC3A360(v26, v39 + v38);
  aBlock[4] = v56;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EC2FBB8;
  aBlock[3] = v58;
  v42 = _Block_copy(aBlock);

  v43 = v52;

  v44 = v41;

  v45 = [objc_opt_self() valueWithNewPromiseInContext:v44 fromExecutor:v42];
  _Block_release(v42);
  if (v45)
  {
    sub_29EC3A194(v28);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EC30210(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v45 = a7;
  v46 = a2;
  v12 = type metadata accessor for Signpost();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v41 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F448, &qword_29EC5DA88);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x29EDCA190];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = 0;
  v25 = sub_29EC5C514();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_29EC5DA80;
  v26[5] = v21;
  v26[6] = v22;

  v27 = a5;

  sub_29EC46008(0, 0, v20, &unk_29EC5DA90, v26);

  v28 = v43;
  sub_29EC3A1F0(v43, v16);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  *(v30 + 16) = v44;
  *(v30 + 24) = v31;
  sub_29EC3A360(v16, v30 + v29);
  v33 = v41;
  sub_29EC3A1F0(v28, v41);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  *(v34 + 24) = v31;
  sub_29EC3A360(v33, v34 + v29);
  v49[3] = type metadata accessor for RunLoopWorkerThread();
  v49[4] = &off_2A2554CE8;
  v49[0] = a6;
  v47[0] = sub_29EC3D438;
  v47[1] = v30;
  v47[2] = sub_29EC3DC10;
  v47[3] = v34;
  sub_29EC2D818(v49, v48);
  v48[40] = 0;
  v36 = v35;

  v37 = v31;

  v38 = v37;
  v39 = v32;
  sub_29EC488C8(v47);

  sub_29EC2EBD8(v47, &qword_2A188F450, &qword_29EC5DA98);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_29EC305E4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v45 = a7;
  v46 = a2;
  v12 = type metadata accessor for Signpost();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v41 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F418, &qword_29EC5D9E8);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x29EDCA190];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = 0;
  v25 = sub_29EC5C514();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_29EC5D9E0;
  v26[5] = v21;
  v26[6] = v22;

  v27 = a5;

  sub_29EC46008(0, 0, v20, &unk_29EC5D9F0, v26);

  v28 = v43;
  sub_29EC3A1F0(v43, v16);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  *(v30 + 16) = v44;
  *(v30 + 24) = v31;
  sub_29EC3A360(v16, v30 + v29);
  v33 = v41;
  sub_29EC3A1F0(v28, v41);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  *(v34 + 24) = v31;
  sub_29EC3A360(v33, v34 + v29);
  v49[3] = type metadata accessor for RunLoopWorkerThread();
  v49[4] = &off_2A2554CE8;
  v49[0] = a6;
  v47[0] = sub_29EC3C448;
  v47[1] = v30;
  v47[2] = sub_29EC3DC10;
  v47[3] = v34;
  sub_29EC2D818(v49, v48);
  v48[40] = 0;
  v36 = v35;

  v37 = v31;

  v38 = v37;
  v39 = v32;
  sub_29EC48AD4(v47);

  sub_29EC2EBD8(v47, &qword_2A188F420, &qword_29EC5D9F8);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_29EC309B8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v45 = a7;
  v46 = a2;
  v12 = type metadata accessor for Signpost();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v41 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3F8, &qword_29EC5D988);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x29EDCA190];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 56) = 0;
  v25 = sub_29EC5C514();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_29EC5D980;
  v26[5] = v21;
  v26[6] = v22;

  v27 = a5;

  sub_29EC46008(0, 0, v20, &unk_29EC5D990, v26);

  v28 = v43;
  sub_29EC3A1F0(v43, v16);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  *(v30 + 16) = v44;
  *(v30 + 24) = v31;
  sub_29EC3A360(v16, v30 + v29);
  v33 = v41;
  sub_29EC3A1F0(v28, v41);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  *(v34 + 24) = v31;
  sub_29EC3A360(v33, v34 + v29);
  v49[3] = type metadata accessor for RunLoopWorkerThread();
  v49[4] = &off_2A2554CE8;
  v49[0] = a6;
  v47[0] = sub_29EC3C090;
  v47[1] = v30;
  v47[2] = sub_29EC3DC10;
  v47[3] = v34;
  sub_29EC2D818(v49, v48);
  v48[40] = 0;
  v36 = v35;

  v37 = v31;

  v38 = v37;
  v39 = v32;
  sub_29EC48CE0(v47);

  sub_29EC2EBD8(v47, &qword_2A188F400, &qword_29EC5D998);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_29EC30D8C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v45 = a7;
  v46 = a2;
  v12 = type metadata accessor for Signpost();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v41 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3E0, &qword_29EC5D938);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x29EDCA190];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = 0;
  v25 = sub_29EC5C514();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_29EC5D930;
  v26[5] = v21;
  v26[6] = v22;

  v27 = a5;

  sub_29EC46008(0, 0, v20, &unk_29EC5D940, v26);

  v28 = v43;
  sub_29EC3A1F0(v43, v16);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  *(v30 + 16) = v44;
  *(v30 + 24) = v31;
  sub_29EC3A360(v16, v30 + v29);
  v33 = v41;
  sub_29EC3A1F0(v28, v41);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  *(v34 + 24) = v31;
  sub_29EC3A360(v33, v34 + v29);
  v49[3] = type metadata accessor for RunLoopWorkerThread();
  v49[4] = &off_2A2554CE8;
  v49[0] = a6;
  v47[0] = sub_29EC3BCF8;
  v47[1] = v30;
  v47[2] = sub_29EC3DC10;
  v47[3] = v34;
  sub_29EC2D818(v49, v48);
  v48[40] = 0;
  v36 = v35;

  v37 = v31;

  v38 = v37;
  v39 = v32;
  sub_29EC48EE0(v47);

  sub_29EC2EBD8(v47, &qword_2A188F3E8, &qword_29EC5DBF0);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_29EC31160(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v45 = a7;
  v46 = a2;
  v12 = type metadata accessor for Signpost();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v41 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3B8, &qword_29EC5D8B8);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x29EDCA190];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = 0;
  v25 = sub_29EC5C514();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_29EC5D8B0;
  v26[5] = v21;
  v26[6] = v22;

  v27 = a5;

  sub_29EC46008(0, 0, v20, &unk_29EC5D8C0, v26);

  v28 = v43;
  sub_29EC3A1F0(v43, v16);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  *(v30 + 16) = v44;
  *(v30 + 24) = v31;
  sub_29EC3A360(v16, v30 + v29);
  v33 = v41;
  sub_29EC3A1F0(v28, v41);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  *(v34 + 24) = v31;
  sub_29EC3A360(v33, v34 + v29);
  v49[3] = type metadata accessor for RunLoopWorkerThread();
  v49[4] = &off_2A2554CE8;
  v49[0] = a6;
  v47[0] = sub_29EC3B644;
  v47[1] = v30;
  v47[2] = sub_29EC3DC10;
  v47[3] = v34;
  sub_29EC2D818(v49, v48);
  v48[40] = 0;
  v36 = v35;

  v37 = v31;

  v38 = v37;
  v39 = v32;
  sub_29EC490DC(v47);

  sub_29EC2EBD8(v47, &qword_2A188F3C0, &qword_29EC5DBE0);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_29EC31534(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a1;
  v45 = a7;
  v46 = a2;
  v12 = type metadata accessor for Signpost();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v41 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3A0, &qword_29EC5D850);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x29EDCA190];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = 0;
  v25 = sub_29EC5C514();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_29EC5D848;
  v26[5] = v21;
  v26[6] = v22;

  v27 = a5;

  sub_29EC46008(0, 0, v20, &unk_29EC5D858, v26);

  v28 = v43;
  sub_29EC3A1F0(v43, v16);
  v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  *(v30 + 16) = v44;
  *(v30 + 24) = v31;
  sub_29EC3A360(v16, v30 + v29);
  v33 = v41;
  sub_29EC3A1F0(v28, v41);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  *(v34 + 24) = v31;
  sub_29EC3A360(v33, v34 + v29);
  v49[3] = type metadata accessor for RunLoopWorkerThread();
  v49[4] = &off_2A2554CE8;
  v49[0] = a6;
  v47[0] = sub_29EC3ADC0;
  v47[1] = v30;
  v47[2] = sub_29EC3ADCC;
  v47[3] = v34;
  sub_29EC2D818(v49, v48);
  v48[40] = 0;
  v36 = v35;

  v37 = v31;

  v38 = v37;
  v39 = v32;
  sub_29EC49304(v47);

  sub_29EC2EBD8(v47, &qword_2A188F3A8, &qword_29EC5D860);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_29EC31908(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_29EC31A1C;

  return v12(a1, a4, a5);
}

uint64_t sub_29EC31A1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EC31B10(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29EC5D6A0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F390, &qword_29EC5D808);
    v6 = sub_29EC5C794();
    v7 = [objc_opt_self() valueWithObject:v6 inContext:a3];
    swift_unknownObjectRelease();
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
    *(v5 + 32) = v7;
    v8 = sub_29EC5C4B4();
  }

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

uint64_t sub_29EC31C5C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29EC5D6A0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F428, qword_29EC5DA00);
    v6 = sub_29EC5C794();
    v7 = [objc_opt_self() valueWithObject:v6 inContext:a3];
    swift_unknownObjectRelease();
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
    *(v5 + 32) = v7;
    v8 = sub_29EC5C4B4();
  }

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

uint64_t sub_29EC31DA8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29EC5D6A0;
    sub_29EC2EFE8(a1, &v11, &qword_2A188F2A8, &qword_29EC5D9A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A8, &qword_29EC5D9A0);
    v7 = sub_29EC5C794();
    v8 = [objc_opt_self() valueWithObject:v7 inContext:a3];
    swift_unknownObjectRelease();
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
    *(v6 + 32) = v8;
    v9 = sub_29EC5C4B4();
  }

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

uint64_t sub_29EC31F0C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29EC5D6A0;
    v6 = sub_29EC5C794();
    v7 = [objc_opt_self() valueWithObject:v6 inContext:a3];
    swift_unknownObjectRelease();
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
    *(v5 + 32) = v7;
    v8 = sub_29EC5C4B4();
  }

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

uint64_t sub_29EC32044(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29EC5D6A0;
    v6 = sub_29EC5C794();
    v7 = [objc_opt_self() valueWithObject:v6 inContext:a3];
    swift_unknownObjectRelease();
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
    *(v5 + 32) = v7;
    v8 = sub_29EC5C4B4();
  }

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

uint64_t sub_29EC32178(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29EC5D6A0;
    v7 = sub_29EC4D940(a1, a3);
    *(v6 + 56) = sub_29EC3A69C(0, &qword_2A188F258, 0x29EDBB240);
    *(v6 + 32) = v7;
    v8 = sub_29EC5C4B4();
  }

  MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
  sub_29EC5C704();
  sub_29EC545A4(0, 0, 0xE000000000000000);
}

uint64_t sub_29EC322D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EC32300, 0, 0);
}

uint64_t sub_29EC32300()
{
  v1 = *(v0 + 32);
  v2 = sub_29EC3ADD0(*(v0 + 24));
  *(v0 + 56) = v3;
  v4 = v2;
  v5 = v3;
  v11 = (*(v0 + 40) + **(v0 + 40));
  v6 = *(*(v0 + 40) + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_29EC32464;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return v11(v9, v4, v5);
}

uint64_t sub_29EC32464()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EC325A0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EC325A0()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

void sub_29EC32604(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 toString];
  if (v3)
  {
    v4 = v3;
    v5 = sub_29EC5C3A4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_29EC32678(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_29EC5BE84();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC32738, 0, 0);
}

uint64_t sub_29EC32738()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v2 = *(MEMORY[0x29EDC5F88] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_29EC327E0;
  v4 = v0[5];

  return MEMORY[0x2A1C688B0](v4);
}

uint64_t sub_29EC327E0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EC32918, 0, 0);
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_29EC32918()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EC32A20(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_29EC5BE84();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC32AE0, 0, 0);
}

uint64_t sub_29EC32AE0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v2 = *(MEMORY[0x29EDC5F90] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_29EC32B88;
  v4 = v0[5];

  return MEMORY[0x2A1C688B8](v4);
}

uint64_t sub_29EC32B88()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EC3DC0C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }
}

id sub_29EC32CEC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a1;
  v12 = sub_29EC3A8D0(a4, a5, 2, a6, v10);

  return v12;
}

uint64_t sub_29EC32D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5C154();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_29EC5BE84();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC32EA8, 0, 0);
}

uint64_t sub_29EC32EA8()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v2 = *(MEMORY[0x29EDC5FB8] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_29EC32F54;
  v4 = v0[11];
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x2A1C688F0](v6, v5, v4);
}

uint64_t sub_29EC32F54(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v4 = sub_29EC3320C;
  }

  else
  {
    v4 = sub_29EC33068;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EC33068()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 56);
    v21 = MEMORY[0x29EDCA190];
    sub_29EC38E28(0, v2, 0);
    v4 = v21;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v19 = *(v3 + 56);
    v20 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 48);
      v20(v8, v6, v9);
      v10 = sub_29EC5C144();
      (*v7)(v8, v9);
      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29EC38E28((v11 > 1), v12 + 1, 1);
      }

      *(v21 + 16) = v12 + 1;
      *(v21 + 8 * v12 + 32) = v10;
      v6 += v19;
      --v2;
    }

    while (v2);
    v13 = *(v0 + 104);
  }

  else
  {
    v14 = *(v0 + 104);

    v4 = MEMORY[0x29EDCA190];
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 64);
  **(v0 + 16) = v4;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_29EC3320C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EC3342C(void *a1, void *a2)
{
  v5 = [objc_opt_self() currentContext];
  if (v5)
  {
    v6 = v5;
    v7 = sub_29EC3C4E8(v5, a1, a2, v2);

    return v7;
  }

  else
  {
    result = sub_29EC5C714();
    __break(1u);
  }

  return result;
}

void sub_29EC335D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_29EC5BE84();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = sub_29EC5BE94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_29EC5BEC4();
  v16 = *(v11 - 8);
  v12 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 isNull] & 1) != 0 || objc_msgSend(a1, sel_isUndefined))
  {
    sub_29EC5BEB4();
LABEL_4:

    return;
  }

  sub_29EC53264(0x657A695365676170, 0xE800000000000000);
  if (v2)
  {
    goto LABEL_4;
  }

  *v10 = v15;
  (*(v7 + 104))(v10, *MEMORY[0x29EDC5F70], v6);
  sub_29EC5BEA4();

  (*(v16 + 32))(v18, v14, v11);
}

void sub_29EC338C0(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for JSAsyncPageIterator();
  v5 = a1[3];
  v4 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  (*(v15 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  v16 = sub_29EC5C524();
  MEMORY[0x2A1C7C4A8](v16);
  (*(v9 + 16))(&v20 - v12, &v20 - v12, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_29EC39574(&v20 - v12, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(&v20 - v12, AssociatedTypeWitness);
  v19 = [objc_opt_self() valueWithObject:v18 inContext:v21];

  if (!v19)
  {
    __break(1u);
  }
}

uint64_t sub_29EC33B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F408, &qword_29EC5D9A8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC33C94, 0, 0);
}

uint64_t sub_29EC33C94()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v2 = *(MEMORY[0x29EDC5F98] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_29EC33D40;
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v7 = v0[4];

  return MEMORY[0x2A1C688C0](v4, v6, v7, v5);
}

uint64_t sub_29EC33D40()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_29EC33F84;
  }

  else
  {
    v3 = sub_29EC33E50;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC33E50()
{
  v1 = *(v0 + 72);
  v2 = sub_29EC5C154();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_29EC2EBD8(v1, &qword_2A188F408, &qword_29EC5D9A8);
    v4 = 0;
  }

  else
  {
    v4 = sub_29EC5C144();
    (*(v3 + 8))(v1, v2);
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  **(v0 + 16) = v4;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29EC33F84()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v4 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EC341A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_29EC5BE84();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F408, &qword_29EC5D9A8) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC342A0, 0, 0);
}

uint64_t sub_29EC342A0()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v2 = *(MEMORY[0x29EDC5F98] + 4);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_29EC3434C;
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x2A1C688C0](v4, v6, v7, v5);
}

uint64_t sub_29EC3434C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_29EC345D4;
  }

  else
  {
    v3 = sub_29EC3445C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC3445C()
{
  v1 = *(v0 + 120);
  v2 = sub_29EC5C154();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = &unk_2A188F408;
    v5 = &unk_29EC5D9A8;
    v6 = v1;
  }

  else
  {
    v7 = sub_29EC5C144();
    (*(v3 + 8))(v1, v2);
    sub_29EC2F174(v7, v0 + 16);

    if (*(v0 + 24))
    {
      v8 = *(v0 + 64);

      v9 = *(v0 + 48);
      *v8 = *(v0 + 32);
      v8[1] = v9;
      goto LABEL_7;
    }

    v4 = &unk_2A188F410;
    v5 = &unk_29EC5D9B0;
    v6 = v0 + 16;
  }

  sub_29EC2EBD8(v6, v4, v5);
  v10 = *(v0 + 64);
  *v10 = 0u;
  v10[1] = 0u;
LABEL_7:
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_29EC345D4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v4 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EC347F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3F0, &qword_29EC5D950);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC34920, 0, 0);
}

uint64_t sub_29EC34920()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);

  sub_29EC5C1C4();
  v5 = *(MEMORY[0x29EDC5FA8] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_29EC34A04;
  v7 = v0[11];
  v8 = v0[8];

  return MEMORY[0x2A1C688D8](v7, v8);
}

uint64_t sub_29EC34A04(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;

  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC3DBE8;
  }

  else
  {
    *(v5 + 104) = a1 & 1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC34B8C;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EC34B8C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EC34D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_29EC5C1A4();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC34E5C, 0, 0);
}

uint64_t sub_29EC34E5C()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);

  sub_29EC5C1B4();
  v5 = *(MEMORY[0x29EDC5FB0] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_29EC34F38;
  v7 = v0[11];
  v8 = v0[8];

  return MEMORY[0x2A1C688E0](v7, v8);
}

uint64_t sub_29EC34F38(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;

  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC3DBE8;
  }

  else
  {
    v5[13] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC3DAF8;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EC351F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_29EC5BFD4();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC35310, 0, 0);
}

uint64_t sub_29EC35310()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = sub_29EC356F8;
  v5[4] = 0;
  v6 = v3;
  sub_29EC38814(sub_29EC3B6CC, v5, v1);

  v7 = *(MEMORY[0x29EDC5FC8] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_29EC3548C;
  v9 = v0[11];
  v10 = v0[8];

  return MEMORY[0x2A1C68900](v9, v10);
}

uint64_t sub_29EC3548C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;

  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC35610;
  }

  else
  {
    v5[13] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC3DAF8;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EC35610()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_29EC35810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_29EC5C1D4();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC35930, 0, 0);
}

uint64_t sub_29EC35930()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);

  sub_29EC5C1E4();
  v5 = *(MEMORY[0x29EDC5FC0] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_29EC34F38;
  v7 = v0[11];
  v8 = v0[8];

  return MEMORY[0x2A1C688F8](v7, v8);
}

uint64_t sub_29EC35B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_29EC5C184();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC35C60, 0, 0);
}

uint64_t sub_29EC35C60()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);

  sub_29EC5C194();
  v5 = *(MEMORY[0x29EDC5FA0] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_29EC35D3C;
  v7 = v0[11];
  v8 = v0[8];

  return MEMORY[0x2A1C688D0](v7, v8);
}

uint64_t sub_29EC35D3C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;

  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC35F3C;
  }

  else
  {
    v5[13] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_29EC35EC0;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EC35EC0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EC35F3C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v3 + 32))(v5, v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29EC36160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_29EC5BE84();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EC36224, 0, 0);
}

uint64_t sub_29EC36224()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  v2 = *(MEMORY[0x29EDC5F80] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_29EC362D0;
  v4 = v0[8];
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x2A1C68898](v6, v5, v4);
}

uint64_t sub_29EC362D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_29EC36464;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_29EC363F4;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EC363F4()
{
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EC36464()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EC366DC()
{
  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    sub_29EC3683C(v1, v0);
    v4 = v3;

    return v4;
  }

  else
  {
    result = sub_29EC5C714();
    __break(1u);
  }

  return result;
}

void sub_29EC3683C(void *a1, void *a2)
{
  v34 = a2;
  v35 = a1;
  v2 = sub_29EC5BE84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EC5C274();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Signpost();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v32 - v16;
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_2A18909C8);
  (*(v8 + 16))(v11, v18, v7);
  sub_29EC54334("JSAsyncPageIterator.next", 24, 2, v11, v17);
  v19 = aBlock[7];
  v20 = sub_29EC55108();
  if (v19)
  {
    sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    (*(v3 + 32))(v21, v6, v2);
    sub_29EC3A194(v17);
  }

  else
  {
    v22 = v20;
    sub_29EC3A1F0(v17, v15);
    v23 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v27 = v34;
    v26 = v35;
    *(v25 + 16) = v34;
    *(v25 + 24) = v26;
    sub_29EC3A360(v15, v25 + v23);
    *(v25 + v24) = v22;
    aBlock[4] = sub_29EC3A3C4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29EC2FBB8;
    aBlock[3] = &block_descriptor_0;
    v28 = _Block_copy(aBlock);
    v29 = v27;
    v30 = v26;

    v31 = [objc_opt_self() valueWithNewPromiseInContext:v30 fromExecutor:v28];
    _Block_release(v28);
    if (v31)
    {
      sub_29EC3A194(v17);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29EC36C50(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a2;
  v40 = a6;
  v37 = a5;
  v38 = a1;
  v7 = type metadata accessor for Signpost();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F328, &qword_29EC5D780);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = (&v35 - v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v16 = MEMORY[0x29EDCA190];
  swift_storeEnumTagMultiPayload();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F330, &qword_29EC5D798);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v21[2] = v22;
  sub_29EC3CED4(v16, v21 + *(*v21 + 96), &qword_2A188F328, &qword_29EC5D780);
  v23 = sub_29EC5C514();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_29EC5D790;
  v24[5] = v17;
  v24[6] = v21;

  sub_29EC46008(0, 0, v12, &unk_29EC5D7A8, v24);

  v25 = v37;
  sub_29EC3A1F0(v37, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 16) = v38;
  *(v27 + 24) = a4;
  sub_29EC3A360(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_29EC3A1F0(v25, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 16) = v39;
  *(v29 + 24) = a4;
  sub_29EC3A360(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v26);
  v43[3] = type metadata accessor for RunLoopWorkerThread();
  v43[4] = &off_2A2554CE8;
  v43[0] = v40;
  v41[0] = sub_29EC3A628;
  v41[1] = v27;
  v41[2] = sub_29EC3DC10;
  v41[3] = v29;
  sub_29EC2D818(v43, v42);
  v42[40] = 0;
  v31 = v30;

  v32 = a4;
  v33 = v28;
  sub_29EC4952C(v41);

  sub_29EC2EBD8(v41, &qword_2A188F340, &unk_29EC5D7B0);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_29EC37078(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2A1C73D48](sub_29EC37098, 0, 0);
}

uint64_t sub_29EC37098()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine19JSAsyncPageIterator_iterator;
    swift_beginAccess();
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    v6 = *(MEMORY[0x29EDCA378] + 4);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_29EC37224;
    v8 = v0[8];

    return MEMORY[0x2A1C73B18](v8, v4, v5);
  }

  else
  {
    v9 = v0[8];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F358, &qword_29EC5D7D0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_29EC37224()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EC3736C, 0, 0);
  }

  else
  {
    v4 = v3[10];
    swift_endAccess();

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EC3736C()
{
  v1 = v0[10];
  swift_endAccess();

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_29EC373D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27[0] = a3;
  v27[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F358, &qword_29EC5D7D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v27 - v13;
  sub_29EC2EFE8(a1, v9, &qword_2A188F350, &qword_29EC5D7C8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F360, &qword_29EC5D7D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29EC5D6F0;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v24 = sub_29EC37838();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F380, &qword_29EC5D7F8);
    *(inited + 48) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = 1701736292;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = MEMORY[0x29EDC9A98];
    *(inited + 96) = 0;
    v18 = sub_29EC2E454(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F288, &qword_29EC5D7E0);
    swift_arrayDestroy();
    (*(v11 + 8))(v14, v10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:

    return sub_29EC545A4(1, 0, 0xE000000000000000);
  }

  sub_29EC2EBD8(v9, &qword_2A188F350, &qword_29EC5D7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F360, &qword_29EC5D7D8);
  v15 = swift_initStackObject();
  *(v15 + 32) = 0x65756C6176;
  *(v15 + 16) = xmmword_29EC5D6F0;
  *(v15 + 40) = 0xE500000000000000;
  v16 = [objc_allocWithZone(MEMORY[0x29EDB8E28]) init];
  v17 = sub_29EC3A69C(0, &qword_2A188F368, 0x29EDB8E28);
  *(v15 + 48) = v16;
  *(v15 + 72) = v17;
  *(v15 + 80) = 1701736292;
  *(v15 + 88) = 0xE400000000000000;
  *(v15 + 120) = MEMORY[0x29EDC9A98];
  *(v15 + 96) = 1;
  v18 = sub_29EC2E454(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F288, &qword_29EC5D7E0);
  swift_arrayDestroy();
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29EC5D6A0;
  v27[18] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F370, &qword_29EC5D7E8);
  v20 = sub_29EC5C794();
  v21 = [objc_opt_self() valueWithObject:v20 inContext:v27[0]];
  swift_unknownObjectRelease();
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F378, &qword_29EC5D7F0);
  *(v19 + 32) = v21;
  v22 = sub_29EC5C4B4();

  return sub_29EC545A4(1, 0, 0xE000000000000000);
}

unint64_t sub_29EC37838()
{
  v27 = sub_29EC5C154();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F388, &qword_29EC5D800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29EC5D6F0;
  *(inited + 32) = 0x657A695365676170;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F358, &qword_29EC5D7D0);
  v5 = sub_29EC5BEF4();
  v6 = MEMORY[0x29EDC9BA8];
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 1937207154;
  *(inited + 88) = 0xE400000000000000;
  v7 = sub_29EC5BEE4();
  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = inited;
    v24 = inited + 32;
    v28 = MEMORY[0x29EDCA190];
    sub_29EC38E28(0, v8, 0);
    v9 = v28;
    v11 = *(v0 + 16);
    v10 = v0 + 16;
    v26 = v11;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v22 = v7;
    v13 = v7 + v12;
    v25 = *(v10 + 56);
    v14 = (v10 - 8);
    do
    {
      v15 = v27;
      v16 = v10;
      v26(v3, v13, v27);
      v17 = sub_29EC5C144();
      (*v14)(v3, v15);
      v28 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_29EC38E28((v18 > 1), v19 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v19 + 1;
      *(v9 + 8 * v19 + 32) = v17;
      v13 += v25;
      --v8;
      v10 = v16;
    }

    while (v8);

    inited = v23;
  }

  else
  {

    v9 = MEMORY[0x29EDCA190];
  }

  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F390, &qword_29EC5D808);
  *(inited + 96) = v9;
  v20 = sub_29EC2EEB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2F8, &qword_29EC5D810);
  swift_arrayDestroy();
  return v20;
}

id sub_29EC37B80()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_29EC37BEC(void *a1, void (*a2)(void **__return_ptr, void *)))(void **__return_ptr, void *)
{
  result = [a1 context];
  if (result)
  {
    v6 = result;
    a2(&v16, a1);
    if (v2 || (a2 = v16, (v7 = [v6 exception]) == 0))
    {
    }

    else
    {
      v8 = v7;
      [v6 setException_];
      a2 = v8;
      sub_29EC4E058(a2);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      sub_29EC2D87C();
      swift_allocError();
      *v15 = v10;
      v15[1] = v12;
      v15[2] = v14;
      swift_willThrow();
    }

    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29EC37D24(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v9 = [a1 context];
  if (v9)
  {
    v10 = v9;
    a2(a1);
    if (v4 || (v11 = [v10 exception]) == 0)
    {
    }

    else
    {
      v12 = v11;
      [v10 setException_];
      v13 = v12;
      sub_29EC4E058(v13);
      v15 = v14;
      v17 = v16;
      v19 = v18;

      sub_29EC2D87C();
      swift_allocError();
      *v20 = v15;
      v20[1] = v17;
      v20[2] = v19;
      swift_willThrow();

      v21 = a3(0);
      (*(*(v21 - 8) + 8))(a4, v21);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EC37E7C(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v10);
  v3 = v10[0];
  v4 = v10[1];
  v5 = v11;
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v8 = *(a1 + 32);
  *(a1 + 32) = v5;
  sub_29EC3B1AC(v6, v7, v8);
  return sub_29EC5C5A4();
}

uint64_t sub_29EC37F00(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v20 - v15;
  v17 = swift_projectBox();
  a2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  swift_beginAccess();
  sub_29EC3CF3C(v16, v17, a5, a6);
  return sub_29EC5C5A4();
}

uint64_t sub_29EC38034(void (*a1)(void *__return_ptr, id), uint64_t a2)
{
  v4 = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(v2 + 32);
  swift_retain_n();
  [v8 lock];
  v9 = CFRunLoopGetCurrent();
  v10 = *(v2 + 40);
  if (!v9)
  {
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v11 = v9;
  if (!v10)
  {

    goto LABEL_9;
  }

  type metadata accessor for CFRunLoop(0);
  sub_29EC3CD10(&qword_2A188F3B0, type metadata accessor for CFRunLoop);
  v21[4] = a1;
  v12 = v10;
  v4 = v3;
  v13 = sub_29EC5BDF4();

  if (v13)
  {
LABEL_6:
    a1(v21, [v8 unlock]);

    if (!v4)
    {
      return v21[0];
    }

    v14 = v4;
    goto LABEL_11;
  }

LABEL_9:

  [v8 unlock];
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *(v16 + 32) = -1;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_29EC3B0D8;
  v17[4] = v7;
  v17[5] = v15;

  v18 = v15;
  sub_29EC5AE6C(sub_29EC3B190, v17);

  sub_29EC5C594();
  result = swift_beginAccess();
  v20 = *(v16 + 32);
  if (v20 != 255)
  {
    v14 = *(v16 + 16);
    sub_29EC3B19C(v14, *(v16 + 24), v20 & 1);

    if ((v20 & 1) == 0)
    {
      return v14;
    }

LABEL_11:
    swift_willThrow();
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC382EC@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F438, &qword_29EC5DA48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v47 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F440, &qword_29EC5DA50);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v42 = &v41 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v48 = (&v41 - v16);
  v17 = swift_allocObject();
  v43 = a1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *(v3 + 32);
  swift_retain_n();
  [v18 lock];
  v19 = CFRunLoopGetCurrent();
  v46 = v3;
  v20 = *(v3 + 40);
  v49 = v17;
  if (v19)
  {
    v21 = v19;
    if (v20)
    {
      type metadata accessor for CFRunLoop(0);
      sub_29EC3CD10(&qword_2A188F3B0, type metadata accessor for CFRunLoop);
      v41 = a2;
      v22 = v20;
      v23 = sub_29EC5BDF4();

      if ((v23 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v24 = [v18 unlock];
      v25 = v42;
      v26 = v50;
      v43(v24);
      v50 = v26;
      if (v26)
      {
        v27 = v48;
        *v48 = v50;
        swift_storeEnumTagMultiPayload();

        v50 = 0;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v40 = v25;
        v27 = v48;
        sub_29EC3CED4(v40, v48, &qword_2A188F440, &qword_29EC5DA50);
      }

      goto LABEL_11;
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

LABEL_9:

  [v18 unlock];
  v28 = dispatch_semaphore_create(0);
  v29 = swift_allocBox();
  v31 = v30;
  v32 = v45;
  (*(v45 + 56))(v30, 1, 1, v9);
  v33 = swift_allocObject();
  v33[2] = v29;
  v33[3] = sub_29EC3CE20;
  v33[4] = v49;
  v33[5] = v28;

  v34 = v28;
  sub_29EC5AE6C(sub_29EC3CE94, v33);

  sub_29EC5C594();
  swift_beginAccess();
  v35 = v31;
  v36 = v47;
  sub_29EC2EFE8(v35, v47, &qword_2A188F438, &qword_29EC5DA48);
  result = (*(v32 + 48))(v36, 1, v9);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v38 = v36;
  v27 = v48;
  sub_29EC3CED4(v38, v48, &qword_2A188F440, &qword_29EC5DA50);
LABEL_11:

  sub_29EC2EFE8(v27, v13, &qword_2A188F440, &qword_29EC5DA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v13;
    swift_willThrow();
    return sub_29EC2EBD8(v27, &qword_2A188F440, &qword_29EC5DA50);
  }

  else
  {
    sub_29EC2EBD8(v27, &qword_2A188F440, &qword_29EC5DA50);
    v39 = sub_29EC5BEC4();
    return (*(*(v39 - 8) + 32))(v44, v13, v39);
  }
}

uint64_t sub_29EC38814@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3C8, &qword_29EC5D8D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v47 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3D0, &qword_29EC5D8D8);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v42 = &v41 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v48 = (&v41 - v16);
  v17 = swift_allocObject();
  v43 = a1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *(v3 + 32);
  swift_retain_n();
  [v18 lock];
  v19 = CFRunLoopGetCurrent();
  v46 = v3;
  v20 = *(v3 + 40);
  v49 = v17;
  if (v19)
  {
    v21 = v19;
    if (v20)
    {
      type metadata accessor for CFRunLoop(0);
      sub_29EC3CD10(&qword_2A188F3B0, type metadata accessor for CFRunLoop);
      v41 = a2;
      v22 = v20;
      v23 = sub_29EC5BDF4();

      if ((v23 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v24 = [v18 unlock];
      v25 = v42;
      v26 = v50;
      v43(v24);
      v50 = v26;
      if (v26)
      {
        v27 = v48;
        *v48 = v50;
        swift_storeEnumTagMultiPayload();

        v50 = 0;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v40 = v25;
        v27 = v48;
        sub_29EC3CED4(v40, v48, &qword_2A188F3D0, &qword_29EC5D8D8);
      }

      goto LABEL_11;
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

LABEL_9:

  [v18 unlock];
  v28 = dispatch_semaphore_create(0);
  v29 = swift_allocBox();
  v31 = v30;
  v32 = v45;
  (*(v45 + 56))(v30, 1, 1, v9);
  v33 = swift_allocObject();
  v33[2] = v29;
  v33[3] = sub_29EC3B738;
  v33[4] = v49;
  v33[5] = v28;

  v34 = v28;
  sub_29EC5AE6C(sub_29EC3B768, v33);

  sub_29EC5C594();
  swift_beginAccess();
  v35 = v31;
  v36 = v47;
  sub_29EC2EFE8(v35, v47, &qword_2A188F3C8, &qword_29EC5D8D0);
  result = (*(v32 + 48))(v36, 1, v9);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v38 = v36;
  v27 = v48;
  sub_29EC3CED4(v38, v48, &qword_2A188F3D0, &qword_29EC5D8D8);
LABEL_11:

  sub_29EC2EFE8(v27, v13, &qword_2A188F3D0, &qword_29EC5D8D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v13;
    swift_willThrow();
    return sub_29EC2EBD8(v27, &qword_2A188F3D0, &qword_29EC5D8D8);
  }

  else
  {
    sub_29EC2EBD8(v27, &qword_2A188F3D0, &qword_29EC5D8D8);
    v39 = sub_29EC5BFD4();
    return (*(*(v39 - 8) + 32))(v44, v13, v39);
  }
}

uint64_t sub_29EC38D3C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v14 - v11;
  a1(v10);
  swift_storeEnumTagMultiPayload();
  return sub_29EC3CED4(v12, a4, a2, a3);
}

void *sub_29EC38E28(void *a1, int64_t a2, char a3)
{
  result = sub_29EC38E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EC38E48(char *a1, int64_t a2, char a3)
{
  result = sub_29EC38F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29EC38E68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F398, &qword_29EC5D818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F380, &qword_29EC5D7F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29EC38F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F3D8, &qword_29EC5D8E0);
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
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29EC390A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2A1C73D48](sub_29EC390D0, 0, 0);
}

uint64_t sub_29EC390D0()
{
  v1 = *(v0 + 40);
  v2 = sub_29EC3ADD0(*(v0 + 32));
  *(v0 + 64) = v3;
  v4 = v2;
  v5 = v3;
  v10 = (*(v0 + 48) + **(v0 + 48));
  v6 = *(*(v0 + 48) + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_29EC39234;
  v8 = *(v0 + 56);

  return v10(v0 + 16, v4, v5);
}

uint64_t sub_29EC39234()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_29EC3DB4C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_29EC3DC14;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EC39350(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_29EC39460;

  return v11(v5 + 16, a4, a5);
}

uint64_t sub_29EC39460()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC3DBE4;
  }

  else
  {
    v3 = sub_29EC3DC14;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

id sub_29EC39574(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = objc_allocWithZone(a2);
  sub_29EC2D818(v12, v8 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine19JSAsyncPageIterator_iterator);
  v11.receiver = v8;
  v11.super_class = a2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_29EC3962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2A1C73D48](sub_29EC39654, 0, 0);
}

uint64_t sub_29EC39654()
{
  v1 = *(v0 + 40);
  v2 = sub_29EC3ADD0(*(v0 + 32));
  *(v0 + 64) = v3;
  v4 = v2;
  v5 = v3;
  v10 = (*(v0 + 48) + **(v0 + 48));
  v6 = *(*(v0 + 48) + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_29EC397B8;
  v8 = *(v0 + 56);

  return v10(v0 + 16, v4, v5);
}

uint64_t sub_29EC397B8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_29EC398D4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_29EC3DC14;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EC398D4()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC39938(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_29EC39A48;

  return v11(v5 + 16, a4, a5);
}

uint64_t sub_29EC39A48()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC39B7C;
  }

  else
  {
    v3 = sub_29EC39B5C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC39B94(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    sub_29EC2EFE8(*(a5 + 56) + 32 * a2, result, &qword_2A188F2A8, &qword_29EC5D9A0);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_29EC39C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EC39C58, 0, 0);
}

uint64_t sub_29EC39C58()
{
  v1 = *(v0 + 32);
  v2 = sub_29EC3ADD0(*(v0 + 24));
  *(v0 + 56) = v3;
  v4 = v2;
  v5 = v3;
  v10 = (*(v0 + 40) + **(v0 + 40));
  v6 = *(*(v0 + 40) + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_29EC39DBC;
  v8 = *(v0 + 48);

  return v10(v0 + 80, v4, v5);
}

uint64_t sub_29EC39DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_29EC325A0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_29EC39ED8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EC39EFC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_29EC3A00C;

  return v11(v5 + 40, a4, a5);
}

uint64_t sub_29EC3A00C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_29EC3A144;
  }

  else
  {
    v3 = sub_29EC3A120;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EC3A194(uint64_t a1)
{
  v2 = type metadata accessor for Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EC3A1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC3A254()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = *(v5 + 24);

  v7 = v1[8];
  v8 = sub_29EC5C274();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v4);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29EC3A360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC3A3C4(void *a1, void *a2)
{
  v5 = *(type metadata accessor for Signpost() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29EC36C50(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EC3A48C()
{
  MEMORY[0x29EDAE820](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EC3A4C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EC3DAF4;

  return sub_29EC37078(a1, v1);
}

uint64_t sub_29EC3A560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC31A1C;

  return sub_29EC47880(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3A628(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_29EC373D8(a1, v4, v5, v6);
}

uint64_t sub_29EC3A69C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_29EC3A738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC36160(a1, a2, a3, v8);
}

uint64_t sub_29EC3A7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EC3DAF4;

  return sub_29EC390A8(a1, a2, a3, v8, v9);
}

uint64_t sub_29EC3A8D0(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() currentContext];
  if (v10)
  {
    v11 = v10;
    sub_29EC2F208(v10, a1, a2, a3, a4, a5);
    v13 = v12;

    return v13;
  }

  else
  {
    result = sub_29EC5C714();
    __break(1u);
  }

  return result;
}

uint64_t sub_29EC3AA5C(const char *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = [objc_opt_self() currentContext];
  if (v17)
  {
    v18 = v17;
    sub_29EC2FC44(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v20 = v19;

    return v20;
  }

  else
  {
    result = sub_29EC5C714();
    __break(1u);
  }

  return result;
}

uint64_t sub_29EC3AC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EC3DAF4;

  return sub_29EC39350(a1, v4, v5, v7, v6);
}

uint64_t sub_29EC3ACF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC47550(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3ADD0(void *a1)
{
  v3 = sub_29EC5C004();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isNull] & 1) != 0 || (objc_msgSend(a1, sel_isUndefined))
  {
    v8 = 0x800000029EC5EDB0;
    v9 = 0xD00000000000001CLL;
LABEL_4:
    sub_29EC5BE84();
    sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    v11 = v10;
    *v7 = 0x74736575716572;
    v7[1] = 0xE700000000000000;
    v7[2] = v9;
    v7[3] = v8;
    (*(v4 + 104))(v7, *MEMORY[0x29EDC5FE0], v3);
    sub_29EC5BE34();
    (*(v4 + 8))(v7, v3);
    swift_willThrow();
    return v11;
  }

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = sub_29EC32604;
  v13[4] = 0;
  v14 = a1;
  v11 = sub_29EC38034(sub_29EC3B0A4, v13);
  v16 = v15;

  if (!v1 && !v16)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_29EC5C674();

    v21 = 0xD00000000000002DLL;
    v22 = 0x800000029EC5EE00;
    v17 = [v14 description];
    v18 = sub_29EC5C3A4();
    v20 = v19;

    MEMORY[0x29EDADC00](v18, v20);

    v9 = v21;
    v8 = v22;
    goto LABEL_4;
  }

  return v11;
}

void (*sub_29EC3B0A4@<X0>(void (**a1)(void **__return_ptr, void *)@<X8>))(void **__return_ptr, void *)
{
  v4 = *(v1 + 32);
  result = sub_29EC37BEC(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

void *sub_29EC3B0D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(v7);
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_29EC3B138()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_29EC3B180(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2A1C733A0](v0, 33, 7);
}

void sub_29EC3B180(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29EC3B190()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_29EC37E7C(*(v0 + 16), *(v0 + 24));
}

id sub_29EC3B19C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_29EC3B1AC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_29EC3B180(a1, a2, a3 & 1);
  }
}

uint64_t sub_29EC3B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC35B40(a1, a2, a3, v8);
}

uint64_t sub_29EC3B27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC35810(a1, a2, a3, v8);
}

uint64_t sub_29EC3B334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC351F0(a1, a2, a3, v8);
}

uint64_t sub_29EC3B404(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v6 = *(type metadata accessor for Signpost() - 8);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_29EC3B4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EC3DAF4;

  return sub_29EC39350(a1, v4, v5, v7, v6);
}

uint64_t sub_29EC3B578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC47220(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3B700()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC3B7A8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EC3B7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC34D3C(a1, a2, a3, v8);
}

uint64_t sub_29EC3B898()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EC3B8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EC3DAF4;

  return sub_29EC390A8(a1, a2, a3, v8, v9);
}

uint64_t sub_29EC3B9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC347F4(a1, a2, a3, v8);
}

uint64_t sub_29EC3BA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EC3DAF4;

  return sub_29EC39C30(a1, a2, a3, v8, v9);
}

uint64_t sub_29EC3BB64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EC3DAF4;

  return sub_29EC39EFC(a1, v4, v5, v7, v6);
}

uint64_t sub_29EC3BC30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC46F18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3BCF8(unsigned __int8 *a1)
{
  v3 = *(*(type metadata accessor for Signpost() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *a1;

  return sub_29EC31F0C(v6, v4, v5);
}

uint64_t sub_29EC3BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC341A4(a1, a2, a3, v8);
}

uint64_t sub_29EC3BE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EC3DAF4;

  return sub_29EC322D8(a1, a2, a3, v8, v9);
}

uint64_t sub_29EC3BF08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EC3DAF4;

  return sub_29EC31908(a1, v4, v5, v7, v6);
}

uint64_t sub_29EC3BFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC46C24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3C090(uint64_t a1)
{
  v3 = *(*(type metadata accessor for Signpost() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_29EC31DA8(a1, v4, v5);
}

uint64_t sub_29EC3C104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC33B98(a1, a2, a3, v8);
}

uint64_t sub_29EC3C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EC3DAF4;

  return sub_29EC3962C(a1, a2, a3, v8, v9);
}

uint64_t sub_29EC3C2B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EC31A1C;

  return sub_29EC39938(a1, v4, v5, v7, v6);
}

uint64_t sub_29EC3C380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC46914(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3C460(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Signpost() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *a1;
  v8 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(v7, v5, v6, v8);
}

void *sub_29EC3C4E8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v47 = a4;
  v48 = a1;
  v55 = a3;
  v6 = sub_29EC5BEC4();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EC5BE84();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EC5C274();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Signpost();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, qword_2A18909C8);
  (*(v15 + 16))(v18, v23, v14);
  sub_29EC54334("selectPaginated", 15, 2, v18, v22);
  sub_29EC55108();
  if (v4)
  {
    sub_29EC3CD10(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    (*(v10 + 32))(v24, v13, v9);
LABEL_11:
    sub_29EC545A4(1, 0, 0xE000000000000000);
    sub_29EC3A194(v22);
    return v9;
  }

  v25 = sub_29EC3ADD0(a2);
  v26 = swift_allocObject();
  v27 = v55;
  v26[2] = v55;
  v26[3] = sub_29EC3359C;
  v26[4] = 0;
  v28 = v27;
  v29 = v51;
  sub_29EC382EC(sub_29EC3CCDC, v26, v51);
  v55 = v25;

  v46 = objc_opt_self();
  v30 = v48;
  v31 = [v46 valueWithNewObjectInContext_];
  if (!v31)
  {

    v40 = sub_29EC5C004();
    sub_29EC3CD10(&qword_2A188F430, MEMORY[0x29EDC5FF0]);
    swift_allocError();
    *v41 = 0xD000000000000028;
    v41[1] = 0x800000029EC5EE90;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x29EDC5FE8], v40);
    swift_willThrow();
LABEL_10:

    (*(v49 + 8))(v29, v50);
    goto LABEL_11;
  }

  v9 = v31;
  v32 = sub_29EC5C394();
  v33 = [v30 evaluateScript_];

  v45 = v33;
  if (!v33)
  {

    v42 = sub_29EC5C004();
    sub_29EC3CD10(&qword_2A188F430, MEMORY[0x29EDC5FF0]);
    swift_allocError();
    *v43 = 0xD000000000000035;
    v43[1] = 0x800000029EC5EEE0;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x29EDC5FE8], v42);
    swift_willThrow();

    goto LABEL_10;
  }

  v34 = *(v47 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection);
  sub_29EC5BF74();

  sub_29EC2D818(v54, v53);
  v35 = swift_allocObject();
  sub_29EC3CD98(v53, v35 + 16);
  *(v35 + 56) = v30;
  aBlock[4] = sub_29EC3CDB0;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EC2DCC0;
  aBlock[3] = &block_descriptor_256;
  v36 = _Block_copy(aBlock);
  v37 = v30;

  v38 = [v46 valueWithObject:v36 inContext:v37];
  v39 = v45;
  [v9 setObject:v38 forKeyedSubscript:v39];

  _Block_release(v36);
  __swift_destroy_boxed_opaque_existential_1(v54);
  (*(v49 + 8))(v29, v50);
  sub_29EC545A4(1, 0, 0xE000000000000000);
  sub_29EC3A194(v22);
  return v9;
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EC3CD10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EC3CD58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29EC3CD98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29EC3CED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EC3CF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EC3CFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC32D88(a1, a2, a3, v8);
}

uint64_t sub_29EC3D05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EC3DAF4;

  return sub_29EC390A8(a1, a2, a3, v8, v9);
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = sub_29EC5C274();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29EC3D2A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EC3DAF4;

  return sub_29EC39350(a1, v4, v5, v7, v6);
}

uint64_t sub_29EC3D370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC46604(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3D450()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EC3DAF4;

  return sub_29EC32A20(v2);
}

uint64_t sub_29EC3D4E4()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = *(v6 + 24);

  v8 = v1[8];
  v9 = sub_29EC5C274();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v0 + v4);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29EC3D5F0(void *a1, void *a2)
{
  v5 = *(type metadata accessor for Signpost() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29EC2F63C(a1, a2, v7, v8, v9, v2 + v6, v10);
}

uint64_t sub_29EC3D6A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EC3DAF4;

  return sub_29EC2F9D0(a1, v5);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29EC3D7A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC3DAF4;

  return sub_29EC46308(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC3D86C(uint64_t a1)
{
  v3 = *(*(type metadata accessor for Signpost() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_29EC2FAB8(a1, v4, v5);
}

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 24);

  v6 = v1[8];
  v7 = sub_29EC5C274();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29EC3DA40()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EC3DAF4;

  return sub_29EC32678(v2);
}

void sub_29EC3DC18()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 32) == 3)
  {
    os_unfair_lock_unlock(v1 + 4);
  }

  else if (*(v0 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    os_unfair_lock_unlock(v1 + 4);
    v11 = v2;
    v3 = v2[2];
    if (v3)
    {
      v4 = (v2 + 4);
      do
      {
        sub_29EC2EFE8(v4, v18, &qword_2A188F460, &qword_29EC5DAD0);
        sub_29EC2EFE8(v18, v15, &qword_2A188F460, &qword_29EC5DAD0);
        v5 = v15[0];
        if (v17)
        {
          swift_continuation_throwingResume();
          sub_29EC2EBD8(v18, &qword_2A188F460, &qword_29EC5DAD0);
        }

        else
        {
          v6 = v15[1];

          sub_29EC3CD98(&v16, v12);
          v8 = v13;
          v7 = v14;
          __swift_project_boxed_opaque_existential_1(v12, v13);
          v9 = swift_allocObject();
          *(v9 + 16) = v5;
          *(v9 + 24) = v6;
          v10 = *(v7 + 8);

          v10(sub_29EC4B1B8, v9, v8, v7);

          sub_29EC2EBD8(v18, &qword_2A188F460, &qword_29EC5DAD0);
          __swift_destroy_boxed_opaque_existential_1(v12);
        }

        v4 += 80;
        --v3;
      }

      while (v3);
    }

    sub_29EC4AF18(v11, 0);
  }
}

void sub_29EC3DE50(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v14 = v3;
    v4 = v3[2];
    if (v4)
    {
      v5 = (v3 + 4);
      v6 = &qword_2A188F450;
      do
      {
        sub_29EC2EFE8(v5, v22, v6, &qword_29EC5DA98);
        sub_29EC2EFE8(v22, v19, v6, &qword_29EC5DA98);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_29EC2EBD8(v22, v6, &qword_29EC5DA98);
        }

        else
        {
          v8 = v19[1];

          sub_29EC3CD98(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_29EC4B16C, v11, v10, v9);
          v6 = v12;

          sub_29EC2EBD8(v22, v12, &qword_29EC5DA98);
          __swift_destroy_boxed_opaque_existential_1(v16);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
    }

    sub_29EC4B04C(v14, 0);
  }
}

void sub_29EC3E0C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v14 = v3;
    v4 = v3[2];
    if (v4)
    {
      v5 = (v3 + 4);
      v6 = &qword_2A188F420;
      do
      {
        sub_29EC2EFE8(v5, v22, v6, &qword_29EC5D9F8);
        sub_29EC2EFE8(v22, v19, v6, &qword_29EC5D9F8);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_29EC2EBD8(v22, v6, &qword_29EC5D9F8);
        }

        else
        {
          v8 = v19[1];

          sub_29EC3CD98(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_29EC4B16C, v11, v10, v9);
          v6 = v12;

          sub_29EC2EBD8(v22, v12, &qword_29EC5D9F8);
          __swift_destroy_boxed_opaque_existential_1(v16);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
    }

    sub_29EC4B04C(v14, 0);
  }
}

void sub_29EC3E338(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_29EC2EFE8(v1 + 24, v25, &qword_2A188F4D0, &unk_29EC5DC00);
  if (v26 == 3)
  {
    sub_29EC2EBD8(v25, &qword_2A188F4D0, &unk_29EC5DC00);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v26)
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v4 = v25[0];
    sub_29EC2EFE8(a1, v24, &qword_2A188F2A8, &qword_29EC5D9A0);
    v24[32] = 1;
    swift_beginAccess();
    sub_29EC3CF3C(v24, v1 + 24, &qword_2A188F4D0, &unk_29EC5DC00);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      do
      {
        sub_29EC2EFE8(v6, v24, &qword_2A188F400, &qword_29EC5D998);
        sub_29EC2EFE8(v24, v21, &qword_2A188F400, &qword_29EC5D998);
        v9 = v21[0];
        if (v23)
        {
          sub_29EC2EFE8(a1, &v18, &qword_2A188F2A8, &qword_29EC5D9A0);
          v7 = *(*(v9 + 64) + 40);
          v8 = v19;
          *v7 = v18;
          v7[1] = v8;
          swift_continuation_throwingResume();
          sub_29EC2EBD8(v24, &qword_2A188F400, &qword_29EC5D998);
        }

        else
        {
          v10 = v21[1];

          sub_29EC3CD98(&v22, &v18);
          v11 = *(&v19 + 1);
          v12 = v20;
          __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
          sub_29EC2EFE8(a1, v17, &qword_2A188F2A8, &qword_29EC5D9A0);
          v13 = swift_allocObject();
          *(v13 + 16) = v9;
          *(v13 + 24) = v10;
          v14 = v17[1];
          *(v13 + 32) = v17[0];
          *(v13 + 48) = v14;
          v15 = a1;
          v16 = *(v12 + 8);

          v16(sub_29EC4B0DC, v13, v11, v12);
          a1 = v15;

          sub_29EC2EBD8(v24, &qword_2A188F400, &qword_29EC5D998);
          __swift_destroy_boxed_opaque_existential_1(&v18);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_29EC3E670(char a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      v7 = a1 & 1;
      do
      {
        sub_29EC2EFE8(v6, v21, &qword_2A188F3E8, &qword_29EC5DBF0);
        sub_29EC2EFE8(v21, v18, &qword_2A188F3E8, &qword_29EC5DBF0);
        v8 = v18[0];
        if (v20)
        {
          **(*(v18[0] + 64) + 40) = v7;
          swift_continuation_throwingResume();
          sub_29EC2EBD8(v21, &qword_2A188F3E8, &qword_29EC5DBF0);
        }

        else
        {
          v9 = v18[1];

          sub_29EC3CD98(&v19, v15);
          v11 = v16;
          v10 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          *(v12 + 24) = v9;
          *(v12 + 32) = v7;
          v13 = *(v10 + 8);

          v13(sub_29EC4B180, v12, v11, v10);

          sub_29EC2EBD8(v21, &qword_2A188F3E8, &qword_29EC5DBF0);
          __swift_destroy_boxed_opaque_existential_1(v15);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_29EC4AF18(v14, 0);
  }
}

void sub_29EC3E8D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v10 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;
    os_unfair_lock_unlock(v9 + 4);
    v21 = v10;
    v11 = v10[2];
    if (v11)
    {
      v12 = v21 + 32;
      v22 = a2;
      v23 = a3;
      do
      {
        sub_29EC2EFE8(v12, v31, a2, a3);
        sub_29EC2EFE8(v31, v28, a2, a3);
        v13 = v28[0];
        if (v30)
        {
          **(*(v28[0] + 64) + 40) = a1;
          swift_continuation_throwingResume();
          sub_29EC2EBD8(v31, a2, a3);
        }

        else
        {
          v14 = v28[1];

          sub_29EC3CD98(&v29, v25);
          v16 = v26;
          v15 = v27;
          __swift_project_boxed_opaque_existential_1(v25, v26);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v18 = a1;
          v19 = *(v15 + 8);

          v20 = v15;
          a2 = v22;
          v19(a5, v17, v16, v20);
          a1 = v18;

          a3 = v23;

          sub_29EC2EBD8(v31, v22, v23);
          __swift_destroy_boxed_opaque_existential_1(v25);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_29EC4AF18(v21, 0);
  }
}

void sub_29EC3EB18(uint64_t a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8);
  v29 = *(v2 - 8);
  v28[2] = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v31 = v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F328, &qword_29EC5D780);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = (v28 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_29EC2EFE8(v1 + v12, v10, &qword_2A188F328, &qword_29EC5D780);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_29EC2EBD8(v10, &qword_2A188F328, &qword_29EC5D780);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_29EC2EFE8(v32, v8, &qword_2A188F350, &qword_29EC5D7C8);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_29EC3CF3C(v8, v1 + v12, &qword_2A188F328, &qword_29EC5D780);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v28[1] = v14;
      v16 = v14 + 32;
      v17 = &qword_2A188F350;
      do
      {
        sub_29EC2EFE8(v16, v39, &qword_2A188F340, &unk_29EC5D7B0);
        sub_29EC2EFE8(v39, v36, &qword_2A188F340, &unk_29EC5D7B0);
        v19 = v36[0];
        if (v38)
        {
          v18 = v31;
          sub_29EC2EFE8(v32, v31, v17, &qword_29EC5D7C8);
          sub_29EC4AC84(v18, *(*(v19 + 64) + 40));
          swift_continuation_throwingResume();
          sub_29EC2EBD8(v39, &qword_2A188F340, &unk_29EC5D7B0);
        }

        else
        {
          v20 = v36[1];

          sub_29EC3CD98(&v37, v33);
          v21 = v34;
          v22 = v35;
          v30 = __swift_project_boxed_opaque_existential_1(v33, v34);
          v23 = v31;
          sub_29EC2EFE8(v32, v31, v17, &qword_29EC5D7C8);
          v24 = v17;
          v25 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          v26 = swift_allocObject();
          *(v26 + 16) = v19;
          *(v26 + 24) = v20;
          sub_29EC4AC84(v23, v26 + v25);
          v27 = *(v22 + 8);

          v27(sub_29EC4B160, v26, v21, v22);
          v17 = v24;

          sub_29EC2EBD8(v39, &qword_2A188F340, &unk_29EC5D7B0);
          __swift_destroy_boxed_opaque_existential_1(v33);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_29EC3EFD8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_29EC2EFE8(v12, v33, a2, a3);
        sub_29EC2EFE8(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_29EC2EBD8(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_29EC3CD98(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_29EC2EBD8(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_1(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_29EC4B04C(v23, 0);
  }
}

void sub_29EC3F248(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_29EC2EFE8(v1 + 24, v25, &qword_2A188F4D0, &unk_29EC5DC00);
  if (v26 == 3)
  {
    sub_29EC2EBD8(v25, &qword_2A188F4D0, &unk_29EC5DC00);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_29EC3CF3C(v23, v1 + 24, &qword_2A188F4D0, &unk_29EC5DC00);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_29EC2EFE8(v6, v23, &qword_2A188F400, &qword_29EC5D998);
        sub_29EC2EFE8(v23, v20, &qword_2A188F400, &qword_29EC5D998);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_29EC2EBD8(v23, &qword_2A188F400, &qword_29EC5D998);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_29EC3CD98(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_29EC4B1C8, v13, v11, v12);

          sub_29EC2EBD8(v23, &qword_2A188F400, &qword_29EC5D998);
          __swift_destroy_boxed_opaque_existential_1(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_29EC3F538(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_29EC2EFE8(v12, v33, a2, a3);
        sub_29EC2EFE8(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_29EC2EBD8(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_29EC3CD98(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_29EC2EBD8(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_1(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_29EC4AF18(v23, 0);
  }
}

void sub_29EC3F7A8(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F328, &qword_29EC5D780);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (v28 - v7);
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  sub_29EC2EFE8(v1 + v10, v8, &qword_2A188F328, &qword_29EC5D780);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_29EC2EBD8(v8, &qword_2A188F328, &qword_29EC5D780);
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_29EC5C714();
    __break(1u);
  }

  else
  {
    v12 = *v8;
    v13 = v29;
    *v6 = v29;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v14 = v13;
    sub_29EC3CF3C(v6, v1 + v10, &qword_2A188F328, &qword_29EC5D780);
    swift_endAccess();
    os_unfair_lock_unlock(v9 + 4);
    v15 = *(v12 + 16);
    if (v15)
    {
      v28[1] = v12;
      v16 = v12 + 32;
      do
      {
        sub_29EC2EFE8(v16, v38, &qword_2A188F340, &unk_29EC5D7B0);
        sub_29EC2EFE8(v38, v33, &qword_2A188F340, &unk_29EC5D7B0);
        if (v37)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
          swift_allocError();
          v17 = v29;
          *v18 = v29;
          v19 = v17;
          swift_continuation_throwingResumeWithError();
          sub_29EC2EBD8(v38, &qword_2A188F340, &unk_29EC5D7B0);
        }

        else
        {

          v20 = v34;
          v21 = v35;
          sub_29EC3CD98(&v36, v30);
          v22 = v31;
          v23 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v24 = swift_allocObject();
          v24[2] = v20;
          v24[3] = v21;
          v25 = v29;
          v24[4] = v29;
          v26 = *(v23 + 8);
          v27 = v25;

          v26(sub_29EC4B1C8, v24, v22, v23);

          sub_29EC2EBD8(v38, &qword_2A188F340, &unk_29EC5D7B0);
          __swift_destroy_boxed_opaque_existential_1(v30);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

id JSStorageObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSStorageObject.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory];
  *v2 = sub_29EC3FBF4;
  v2[1] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_29EC3FBF4(uint64_t a1, uint64_t a2, char a3)
{
  sub_29EC5BFC4();
  sub_29EC4B0D0();

  if (a3)
  {
    return sub_29EC5BF34();
  }

  else
  {
    return sub_29EC5BFB4();
  }
}

void *sub_29EC3FD1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = a4;
  v35 = a3;
  v6 = sub_29EC5C004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_29EC5C274();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Signpost();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_2A18909C8);
  (*(v12 + 16))(v15, v20, v11);
  sub_29EC54334("createConnectionWithToken", 25, 2, v15, v19);
  if ([a2 isString] && (v21 = objc_msgSend(a2, sel_toString)) != 0)
  {
    v10 = v21;
    v22 = sub_29EC5C3A4();
    v24 = v23;

    v25 = v38;
    sub_29EC40104(v22, v24, 1, v34, a1, v19);
    if (!v25)
    {
      v10 = v26;
    }

    sub_29EC3A194(v19);
  }

  else
  {
    sub_29EC545A4(0, 0xD00000000000001ELL, 0x800000029EC5F3A0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_29EC5C674();

    v36 = 0xD000000000000023;
    v37 = 0x800000029EC5F3C0;
    v27 = [a2 description];
    v28 = sub_29EC5C3A4();
    v30 = v29;

    MEMORY[0x29EDADC00](v28, v30);

    v31 = v36;
    v32 = v37;
    sub_29EC5BE84();
    sub_29EC45FB0();
    swift_allocError();
    *v10 = 0x6E656B6F74;
    v10[1] = 0xE500000000000000;
    v10[2] = v31;
    v10[3] = v32;
    (*(v7 + 104))(v10, *MEMORY[0x29EDC5FE0], v6);
    sub_29EC5BE34();
    (*(v7 + 8))(v10, v6);
    swift_willThrow();
    sub_29EC3A194(v19);
  }

  return v10;
}

void sub_29EC40104(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v38 = a5;
  v11 = sub_29EC5C004();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![a4 isString] || (v16 = objc_msgSend(a4, sel_toString)) == 0)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_29EC5C674();

    v42 = 0xD000000000000025;
    v43 = 0x800000029EC5F180;
    v26 = [a4 description];
    v27 = sub_29EC5C3A4();
    v29 = v28;

    MEMORY[0x29EDADC00](v27, v29);

    v30 = v42;
    v31 = v43;
    sub_29EC5BE84();
    sub_29EC45FB0();
    v25 = swift_allocError();
    *v15 = 0x644972657375;
    v15[1] = 0xE600000000000000;
    v15[2] = v30;
    v15[3] = v31;
    (*(v12 + 104))(v15, *MEMORY[0x29EDC5FE0], v11);
    sub_29EC5BE34();
    (*(v12 + 8))(v15, v11);
    swift_willThrow();
    goto LABEL_6;
  }

  v17 = v16;
  v18 = sub_29EC5C3A4();
  v20 = v19;

  v21 = *(v6 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory);
  v22 = *(v6 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory + 8);
  v23 = v39;
  v24 = v21(a1, a2, a3 & 1, v18, v20);
  v25 = v23;
  if (v23)
  {

LABEL_6:
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
    v44 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
    sub_29EC5C704();
    sub_29EC545A4(0, v42, v43);

    swift_willThrow();
    return;
  }

  v32 = v24;
  v33 = type metadata accessor for JSConnectionObject();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection] = v32;
  v41.receiver = v34;
  v41.super_class = v33;

  v35 = objc_msgSendSuper2(&v41, sel_init);
  v36 = [objc_opt_self() valueWithNewPromiseResolvedWithResult:v35 inContext:v38];

  if (v36)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EC40510(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v8 = [objc_opt_self() currentContext];
  if (v8)
  {
    v9 = v8;
    v10 = a3(v8, a1, v5, a2);

    return v10;
  }

  else
  {
    result = sub_29EC5C714();
    __break(1u);
  }

  return result;
}

void *sub_29EC40694(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = a4;
  v35 = a3;
  v6 = sub_29EC5C004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_29EC5C274();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Signpost();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_2A18909C8);
  (*(v12 + 16))(v15, v20, v11);
  sub_29EC54334("createConnectionWithRequestId", 29, 2, v15, v19);
  if ([a2 isString] && (v21 = objc_msgSend(a2, sel_toString)) != 0)
  {
    v10 = v21;
    v22 = sub_29EC5C3A4();
    v24 = v23;

    v25 = v38;
    sub_29EC40104(v22, v24, 0, v34, a1, v19);
    if (!v25)
    {
      v10 = v26;
    }

    sub_29EC3A194(v19);
  }

  else
  {
    sub_29EC545A4(0, 0xD000000000000023, 0x800000029EC5F120);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_29EC5C674();

    v36 = 0xD000000000000028;
    v37 = 0x800000029EC5F150;
    v27 = [a2 description];
    v28 = sub_29EC5C3A4();
    v30 = v29;

    MEMORY[0x29EDADC00](v28, v30);

    v31 = v36;
    v32 = v37;
    sub_29EC5BE84();
    sub_29EC45FB0();
    swift_allocError();
    *v10 = 0x4974736575716572;
    v10[1] = 0xE900000000000064;
    v10[2] = v31;
    v10[3] = v32;
    (*(v7 + 104))(v10, *MEMORY[0x29EDC5FE0], v6);
    sub_29EC5BE34();
    (*(v7 + 8))(v10, v6);
    swift_willThrow();
    sub_29EC3A194(v19);
  }

  return v10;
}

uint64_t sub_29EC40B0C(void *a1, void *a2, void *a3)
{
  v87 = a3;
  v88 = sub_29EC5BE84();
  v85 = *(v88 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v88);
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EC5C004();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = (&v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_29EC5C274();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Signpost();
  v82 = *(v17 - 8);
  v18 = *(v82 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v83 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v89 = &v80 - v20;
  v21 = [objc_opt_self() currentContext];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v21;
  if (qword_2A188F218 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v12, qword_2A18909C8);
  (*(v13 + 16))(v16, v23, v12);
  sub_29EC54334("withOpenConnectionForToken", 26, 2, v16, v89);
  if (![a1 isString] || (v24 = objc_msgSend(a1, sel_toString)) == 0)
  {
    v38 = v89;
    sub_29EC545A4(0, 0xD00000000000001ELL, 0x800000029EC5F3A0);
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_29EC5C674();

    v92 = 0xD000000000000023;
    v93 = 0x800000029EC5F3C0;
    v39 = [a1 description];
    v40 = sub_29EC5C3A4();
    v42 = v41;

    MEMORY[0x29EDADC00](v40, v42);

    v43 = v92;
    v44 = v93;
    sub_29EC45FB0();
    v45 = swift_allocError();
    *v11 = 0x6E656B6F74;
    v11[1] = 0xE500000000000000;
    v11[2] = v43;
    v11[3] = v44;
    (*(v8 + 104))(v11, *MEMORY[0x29EDC5FE0], v7);
    sub_29EC5BE34();
    (*(v8 + 8))(v11, v7);
LABEL_19:
    swift_willThrow();
    sub_29EC3A194(v38);
    v58 = v45;
    v59 = [v22 exceptionHandler];
    if (v59)
    {
      v60 = v59;
      v61 = sub_29EC4D940(v45, v22);
      (v60)[2](v60, v22, v61);
      _Block_release(v60);
    }

    v62 = [objc_opt_self() valueWithUndefinedInContext_];
    if (v62)
    {
      v79 = v62;

      return v79;
    }

    __break(1u);
    goto LABEL_25;
  }

  v25 = v24;
  v81 = sub_29EC5C3A4();
  v27 = v26;

  if (![a2 isString] || (v28 = objc_msgSend(a2, sel_toString)) == 0)
  {

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_29EC5C674();

    v92 = 0xD000000000000025;
    v93 = 0x800000029EC5F180;
    v46 = [a2 description];
    v47 = sub_29EC5C3A4();
    v49 = v48;

    MEMORY[0x29EDADC00](v47, v49);

    v50 = v92;
    v51 = v93;
    sub_29EC45FB0();
    v45 = swift_allocError();
    v52 = 0x644972657375;
    v53 = 0xE600000000000000;
LABEL_18:
    *v11 = v52;
    v11[1] = v53;
    v11[2] = v50;
    v11[3] = v51;
    (*(v8 + 104))(v11, *MEMORY[0x29EDC5FE0], v7);
    sub_29EC5BE34();
    (*(v8 + 8))(v11, v7);
    swift_willThrow();
    v38 = v89;
    v92 = 0;
    v93 = 0xE000000000000000;
    MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
    v91 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
    sub_29EC5C704();
    sub_29EC545A4(0, v92, v93);

    goto LABEL_19;
  }

  v29 = v28;
  v80 = sub_29EC5C3A4();
  v31 = v30;

  v32 = v87;
  if (([v87 isNull] & 1) != 0 || (objc_msgSend(v32, sel_isUndefined) & 1) != 0 || !objc_msgSend(v32, sel_isObject))
  {
LABEL_17:

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_29EC5C674();
    MEMORY[0x29EDADC00](0xD000000000000031, 0x800000029EC5F1B0);
    v54 = [v32 description];
    v55 = sub_29EC5C3A4();
    v57 = v56;

    MEMORY[0x29EDADC00](v55, v57);

    v50 = v92;
    v51 = v93;
    sub_29EC45FB0();
    v45 = swift_allocError();
    v52 = 7239026;
    v53 = 0xE300000000000000;
    goto LABEL_18;
  }

  v33 = [v32 context];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 JSGlobalContextRef];

    v36 = [v32 JSValueRef];
    if (JSValueGetType(v35, v36) == kJSTypeObject && JSObjectIsFunction(v35, v36))
    {
      v37 = v89;
      v64 = sub_29EC55108();
      v65 = *(v84 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory + 8);
      v66 = (*(v84 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory))(v81, v27, 1, v80, v31);

      v67 = type metadata accessor for JSConnectionObject();
      v68 = objc_allocWithZone(v67);
      *&v68[OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection] = v66;
      v90.receiver = v68;
      v90.super_class = v67;

      v69 = objc_msgSendSuper2(&v90, sel_init);
      v70 = v37;
      v71 = v83;
      sub_29EC3A1F0(v70, v83);
      v72 = v32;
      v73 = (*(v82 + 80) + 48) & ~*(v82 + 80);
      v74 = swift_allocObject();
      v74[2] = v66;
      v74[3] = v72;
      v74[4] = v69;
      v74[5] = v64;
      sub_29EC3A360(v71, v74 + v73);

      v75 = v22;
      v76 = v72;
      v77 = v69;

      sub_29EC2E7E4(v75, sub_29EC4B104, v74);
      v79 = v78;

      sub_29EC3A194(v89);
      return v79;
    }

    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_29EC5C714();
  __break(1u);
  return result;
}

uint64_t *sub_29EC415E0(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v70 = a7;
  v63 = a6;
  v66 = a3;
  v67 = a2;
  v65 = a1;
  v9 = sub_29EC5C004();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Signpost();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29EC5BE84();
  v68 = *(v16 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a4 isString] || (v20 = objc_msgSend(a4, sel_toString)) == 0)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_29EC5C674();

    v72 = 0xD000000000000025;
    v73 = 0x800000029EC5F180;
    v33 = [a4 description];
    v34 = sub_29EC5C3A4();
    v36 = v35;

    MEMORY[0x29EDADC00](v34, v36);

    v37 = v72;
    v38 = v73;
    sub_29EC45FB0();
    v31 = swift_allocError();
    v39 = 0x644972657375;
    v40 = 0xE600000000000000;
LABEL_13:
    *v13 = v39;
    v13[1] = v40;
    v13[2] = v37;
    v13[3] = v38;
    (*(v10 + 104))(v13, *MEMORY[0x29EDC5FE0], v9);
    sub_29EC5BE34();
    (*(v10 + 8))(v13, v9);
    swift_willThrow();
    goto LABEL_14;
  }

  v21 = v20;
  v59 = sub_29EC5C3A4();
  v60 = v22;

  v23 = a5;
  if (([a5 isNull] & 1) != 0 || (objc_msgSend(a5, sel_isUndefined) & 1) != 0 || !objc_msgSend(a5, sel_isObject))
  {
LABEL_12:

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_29EC5C674();
    MEMORY[0x29EDADC00](0xD000000000000031, 0x800000029EC5F1B0);
    v41 = [v23 description];
    v42 = sub_29EC5C3A4();
    v44 = v43;

    MEMORY[0x29EDADC00](v42, v44);

    v37 = v72;
    v38 = v73;
    sub_29EC45FB0();
    v31 = swift_allocError();
    v39 = 7239026;
    v40 = 0xE300000000000000;
    goto LABEL_13;
  }

  result = [a5 context];
  if (result)
  {
    v25 = result;
    v26 = [result JSGlobalContextRef];

    v27 = [v23 JSValueRef];
    if (JSValueGetType(v26, v27) == kJSTypeObject && JSObjectIsFunction(v26, v27))
    {
      v28 = v69;
      v29 = v70;
      v30 = sub_29EC55108();
      if (!v28)
      {
        v45 = v30;
        v46 = *(v64 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory + 8);
        v47 = (*(v64 + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory))(v65, v67, v66 & 1, v59, v60);

        v48 = type metadata accessor for JSConnectionObject();
        v49 = objc_allocWithZone(v48);
        *&v49[OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine18JSConnectionObject_connection] = v47;
        v71.receiver = v49;
        v71.super_class = v48;

        v50 = objc_msgSendSuper2(&v71, sel_init);
        v51 = v62;
        sub_29EC3A1F0(v29, v62);
        v52 = (*(v61 + 80) + 48) & ~*(v61 + 80);
        v53 = v23;
        v54 = swift_allocObject();
        v54[2] = v47;
        v54[3] = v53;
        v54[4] = v50;
        v54[5] = v45;
        sub_29EC3A360(v51, v54 + v52);

        v55 = v63;
        v56 = v53;
        v57 = v50;

        sub_29EC2E7E4(v55, sub_29EC49A24, v54);
        v13 = v58;

        return v13;
      }

      sub_29EC45FB0();
      v31 = swift_allocError();
      (*(v68 + 32))(v32, v19, v16);
LABEL_14:
      v72 = 0;
      v73 = 0xE000000000000000;
      MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
      v74 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
      sub_29EC5C704();
      sub_29EC545A4(0, v72, v73);

      swift_willThrow();
      return v13;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC41CE0(void *a1, void *a2, void *a3)
{
  v42 = a3;
  v5 = sub_29EC5C004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_29EC5C274();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Signpost();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() currentContext];
  if (v19)
  {
    v20 = v19;
    if (qword_2A188F218 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v10, qword_2A18909C8);
    (*(v11 + 16))(v14, v21, v10);
    sub_29EC54334("withOpenConnectionForRequestId", 30, 2, v14, v18);
    if ([a1 isString])
    {
      v22 = [a1 toString];
      if (v22)
      {
        v23 = v22;
        v24 = sub_29EC5C3A4();
        v26 = v25;

        v40 = sub_29EC415E0(v24, v26, 0, a2, v42, v20, v18);

        sub_29EC3A194(v18);
        return v40;
      }
    }

    sub_29EC545A4(0, 0xD000000000000023, 0x800000029EC5F120);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_29EC5C674();

    v43 = 0xD000000000000028;
    v44 = 0x800000029EC5F150;
    v27 = [a1 description];
    v28 = sub_29EC5C3A4();
    v30 = v29;

    MEMORY[0x29EDADC00](v28, v30);

    v31 = v43;
    v32 = v44;
    sub_29EC5BE84();
    sub_29EC45FB0();
    v33 = swift_allocError();
    *v9 = 0x4974736575716572;
    v9[1] = 0xE900000000000064;
    v9[2] = v31;
    v9[3] = v32;
    (*(v6 + 104))(v9, *MEMORY[0x29EDC5FE0], v5);
    sub_29EC5BE34();
    (*(v6 + 8))(v9, v5);
    swift_willThrow();
    sub_29EC3A194(v18);
    v34 = v33;
    v35 = [v20 exceptionHandler];
    if (v35)
    {
      v36 = v35;
      v37 = sub_29EC4D940(v33, v20);
      (v36)[2](v36, v20, v37);
      _Block_release(v36);
    }

    v38 = [objc_opt_self() valueWithUndefinedInContext_];
    if (v38)
    {
      v40 = v38;

      return v40;
    }

    __break(1u);
  }

  result = sub_29EC5C714();
  __break(1u);
  return result;
}

id sub_29EC42208(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v10, v11, v12);

  return v14;
}

uint64_t sub_29EC422A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v48 = a7;
  v59 = a6;
  v50 = a5;
  v44 = a3;
  v49 = a1;
  v12 = type metadata accessor for Signpost();
  v13 = *(v12 - 8);
  v47 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v43 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F458, &qword_29EC5DAC0);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = MEMORY[0x29EDCA190];
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = 0;
  v23 = sub_29EC5C514();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_29EC5DB28;
  v24[5] = a4;
  v24[6] = v20;
  swift_retain_n();

  sub_29EC46008(0, 0, v19, &unk_29EC5DAC8, v24);
  v46 = a4;

  sub_29EC49AD8(a3, &v51);
  sub_29EC3A1F0(a8, v15);
  sub_29EC49AD8(a2, &v56);
  v25 = *(v13 + 80);
  v26 = (v25 + 96) & ~v25;
  v27 = (v47 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 16) = v50;
  *(v28 + 24) = v29;
  *(v28 + 32) = a4;
  v30 = v48;
  *(v28 + 40) = v48;
  v31 = v52;
  *(v28 + 48) = v51;
  *(v28 + 64) = v31;
  v32 = v49;
  *(v28 + 80) = v53[0];
  *(v28 + 88) = v32;
  sub_29EC3A360(v15, v28 + v26);
  v33 = v28 + v27;
  v34 = v57;
  *v33 = v56;
  *(v33 + 16) = v34;
  *(v33 + 32) = v58;
  sub_29EC49AD8(v44, &v56);
  sub_29EC3A1F0(v45, v15);
  v35 = (v25 + 64) & ~v25;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 16) = v56;
  *(v36 + 32) = v37;
  *(v36 + 48) = v58;
  *(v36 + 56) = v32;
  sub_29EC3A360(v15, v36 + v35);
  v55[3] = type metadata accessor for RunLoopWorkerThread();
  v55[4] = &off_2A2554CE8;
  v55[0] = v30;
  *&v51 = sub_29EC49C60;
  *(&v51 + 1) = v28;
  *&v52 = sub_29EC49D10;
  *(&v52 + 1) = v36;
  sub_29EC2D818(v55, v53);
  v54 = 0;
  swift_retain_n();
  v38 = v32;

  v39 = v38;
  v40 = v50;
  v41 = v59;

  sub_29EC486D0(&v51);

  sub_29EC2EBD8(&v51, &qword_2A188F460, &qword_29EC5DAD0);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_29EC4270C()
{
  v1 = sub_29EC5BE84();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = *(MEMORY[0x29EDC5F88] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_29EC42804;

  return MEMORY[0x2A1C688B0](v4);
}

uint64_t sub_29EC42804()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EC4293C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_29EC4293C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_29EC45FB0();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

void sub_29EC429E8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v100 = a8;
  v99 = a7;
  v103 = a6;
  v98 = a5;
  v102 = a4;
  v93 = sub_29EC5C004();
  v11 = *(v93 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v93);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_29EC5BE84();
  v94 = *(v96 - 8);
  v15 = *(v94 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v96);
  v95 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v104 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = &v90 - v20;
  v22 = type metadata accessor for Signpost();
  v97 = *(v22 - 8);
  v23 = *(v97 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v91 = &v90 - v28;
  v101 = v29;
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v90 - v30;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
  v32 = swift_allocObject();
  v92 = xmmword_29EC5D6A0;
  *(v32 + 16) = xmmword_29EC5D6A0;
  *(v32 + 56) = type metadata accessor for JSConnectionObject();
  *(v32 + 32) = a3;
  v33 = a3;
  v34 = sub_29EC5C4B4();

  v35 = [a2 callWithArguments_];

  if (!v35)
  {
    goto LABEL_5;
  }

  if ([v35 isNull] & 1) != 0 || (objc_msgSend(v35, sel_isUndefined))
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F458, &qword_29EC5DAC0);
    v36 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = MEMORY[0x29EDCA190];
    *(v36 + 16) = v37;
    *(v36 + 24) = v38;
    *(v36 + 32) = 0;
    v39 = sub_29EC5C514();
    (*(*(v39 - 8) + 56))(v21, 1, 1, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v41 = v102;
    v40[4] = &unk_29EC5DB70;
    v40[5] = v41;
    v40[6] = v36;
    swift_retain_n();

    sub_29EC46008(0, 0, v21, &unk_29EC5DB78, v40);

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_29EC5C674();
    MEMORY[0x29EDADC00](0xD000000000000049, 0x800000029EC5F260);
    v42 = [a2 description];
    v43 = sub_29EC5C3A4();
    v45 = v44;

    MEMORY[0x29EDADC00](v43, v45);

    v46 = aBlock;
    *v14 = 7239026;
    *(v14 + 1) = 0xE300000000000000;
    *(v14 + 1) = v46;
    v47 = v93;
    (*(v11 + 104))(v14, *MEMORY[0x29EDC5FE0], v93);
    v48 = v104;
    sub_29EC5BE34();
    (*(v11 + 8))(v14, v47);
    *(&v113 + 1) = type metadata accessor for RunLoopWorkerThread();
    v114 = &off_2A2554CE8;
    *&v112 = v98;
    sub_29EC49AD8(v103, &aBlock);
    v49 = v94;
    v50 = v95;
    v51 = v96;
    (*(v94 + 16))(v95, v48, v96);
    sub_29EC3A1F0(v100, v26);
    v52 = (*(v49 + 80) + 56) & ~*(v49 + 80);
    v53 = (v15 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v97 + 80) + v53 + 8) & ~*(v97 + 80);
    v55 = swift_allocObject();
    v56 = v108;
    *(v55 + 16) = aBlock;
    *(v55 + 32) = v56;
    *(v55 + 48) = v109;
    (*(v49 + 32))(v55 + v52, v50, v51);
    v57 = v99;
    *(v55 + v53) = v99;
    sub_29EC3A360(v26, v55 + v54);
    v58 = swift_allocObject();
    v58[2] = sub_29EC4A05C;
    v58[3] = v55;
    v58[4] = v36;
    v59 = swift_allocObject();
    v59[2] = sub_29EC4A05C;
    v59[3] = v55;
    v59[4] = v36;
    *&aBlock = sub_29EC4A15C;
    *(&aBlock + 1) = v58;
    *&v108 = sub_29EC4A15C;
    *(&v108 + 1) = v59;
    sub_29EC2D818(&v112, &v109);
    v111 = 0;
    swift_retain_n();
    swift_retain_n();

    v60 = v57;

    sub_29EC486D0(&aBlock);

    sub_29EC2EBD8(&aBlock, &qword_2A188F460, &qword_29EC5DAD0);
    (*(v49 + 8))(v104, v51);
    __swift_destroy_boxed_opaque_existential_1(&v112);
    return;
  }

  v104 = v35;
  sub_29EC49AD8(a9, &v112);
  v61 = v100;
  sub_29EC3A1F0(v100, v31);
  sub_29EC49AD8(v103, v105);
  v62 = *(v97 + 80);
  v63 = (v62 + 64) & ~v62;
  v64 = (v101 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v102;
  v66 = v113;
  *(v65 + 24) = v112;
  *(v65 + 40) = v66;
  *(v65 + 56) = v114;
  sub_29EC3A360(v31, v65 + v63);
  v67 = v65 + v64;
  v68 = v105[1];
  *v67 = v105[0];
  *(v67 + 16) = v68;
  *(v67 + 32) = v106;
  v69 = v98;
  *(v65 + ((v64 + 47) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_29EC4A2A8;
  *(v70 + 24) = v65;
  v109 = sub_29EC2EB54;
  v110 = v70;
  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 1107296256;
  *&v108 = sub_29EC2DCC0;
  *(&v108 + 1) = &block_descriptor_1;
  v71 = _Block_copy(&aBlock);

  v72 = objc_opt_self();
  v73 = v99;
  v74 = [v72 valueWithObject:v71 inContext:v99];
  if (v74)
  {
    v75 = v74;
    _Block_release(v71);

    sub_29EC49AD8(v103, &v112);
    v76 = v61;
    v77 = v91;
    sub_29EC3A1F0(v76, v91);
    v78 = swift_allocObject();
    *(v78 + 16) = v102;
    *(v78 + 24) = v69;
    v79 = v113;
    *(v78 + 32) = v112;
    *(v78 + 48) = v79;
    *(v78 + 64) = v114;
    sub_29EC3A360(v77, v78 + ((v62 + 72) & ~v62));
    v80 = swift_allocObject();
    *(v80 + 16) = sub_29EC4A484;
    *(v80 + 24) = v78;
    v109 = sub_29EC4B1B4;
    v110 = v80;
    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_29EC2DCC0;
    *(&v108 + 1) = &block_descriptor_54;
    v81 = _Block_copy(&aBlock);

    v82 = [v72 valueWithObject:v81 inContext:v73];
    if (v82)
    {
      v83 = v82;
      _Block_release(v81);

      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_29EC5D6F0;
      v85 = sub_29EC2D230();
      *(v84 + 32) = v75;
      *(v84 + 88) = v85;
      *(v84 + 56) = v85;
      *(v84 + 64) = v83;
      v86 = v75;
      v87 = v83;
      v88 = v104;
      v89 = sub_29EC5A014(1852139636, 0xE400000000000000);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29EC43BF4()
{
  v1 = sub_29EC5BE84();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = *(MEMORY[0x29EDC5F90] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_29EC43CEC;

  return MEMORY[0x2A1C688B8](v4);
}

uint64_t sub_29EC43CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EC4B1C4, 0, 0);
  }

  else
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }
}

void sub_29EC43E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_29EC5BE84();
  sub_29EC45FB0();
  v7 = swift_allocError();
  (*(*(v6 - 8) + 16))(v8, a3, v6);
  v9 = sub_29EC4D940(v7, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29EC5D6A0;
  *(v10 + 56) = sub_29EC2D230();
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_29EC2D4E0(v10);

  v13 = v11;
  sub_29EC4E058(v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_29EC2D87C();
  v20 = swift_allocError();
  *v21 = v15;
  v21[1] = v17;
  v21[2] = v19;
  MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
  sub_29EC5C704();
  sub_29EC545A4(0, 0, 0xE000000000000000);
}

id sub_29EC444D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v35 = a7;
  v34 = a3;
  v12 = type metadata accessor for Signpost();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F458, &qword_29EC5DAC0);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = MEMORY[0x29EDCA190];
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = 0;
  v22 = sub_29EC5C514();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_29EC5DBA0;
  v23[5] = a4;
  v23[6] = v19;
  swift_retain_n();

  sub_29EC46008(0, 0, v18, &unk_29EC5DBA8, v23);

  sub_29EC49AD8(a5, &v36);
  sub_29EC3A1F0(a6, &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v34;
  *(v25 + 24) = a1;
  v26 = v37;
  *(v25 + 32) = v36;
  *(v25 + 48) = v26;
  *(v25 + 64) = v38[0];
  sub_29EC3A360(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + ((v24 + 72) & ~v24));
  sub_29EC49AD8(v35, v41);
  sub_29EC3A1F0(a6, &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (v24 + 64) & ~v24;
  v28 = swift_allocObject();
  v29 = v41[1];
  *(v28 + 16) = v41[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v42;
  *(v28 + 56) = a1;
  sub_29EC3A360(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v40[3] = type metadata accessor for RunLoopWorkerThread();
  v40[4] = &off_2A2554CE8;
  v40[0] = v43;
  *&v36 = sub_29EC4A7C4;
  *(&v36 + 1) = v25;
  *&v37 = sub_29EC4A934;
  *(&v37 + 1) = v28;
  sub_29EC2D818(v40, v38);
  v39 = 0;
  v30 = a1;

  sub_29EC486D0(&v36);

  sub_29EC2EBD8(&v36, &qword_2A188F460, &qword_29EC5DAD0);
  __swift_destroy_boxed_opaque_existential_1(v40);
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v32 = result;

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29EC448D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
    v5 = a2;
    v6 = sub_29EC5C724();
    a2 = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = sub_29EC5C394();
    v4 = [objc_opt_self() valueWithNewErrorFromMessage:v7 inContext:a3];

    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29EDADE70](0);
    goto LABEL_8;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(a2 + 32);
LABEL_8:
    v10[3] = sub_29EC2D230();
    v10[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v8 = swift_allocObject();
    v8[1] = xmmword_29EC5D6A0;
    sub_29EC2D1D4(v10, (v8 + 2));
    v9 = sub_29EC2D4E0(v8);

    sub_29EC545A4(1, 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id sub_29EC44E0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v38 = a7;
  v11 = type metadata accessor for Signpost();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v31 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F458, &qword_29EC5DAC0);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F338, &qword_29EC5D7A0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = MEMORY[0x29EDCA190];
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = 0;
  v21 = sub_29EC5C514();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_29EC5DB88;
  v22[5] = a4;
  v22[6] = v18;
  swift_retain_n();

  sub_29EC46008(0, 0, v17, &unk_29EC5DB90, v22);

  v37[3] = type metadata accessor for RunLoopWorkerThread();
  v37[4] = &off_2A2554CE8;
  v37[0] = a5;
  sub_29EC49AD8(v32, &v33);
  sub_29EC3A1F0(v38, &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a1;
  v25 = v34;
  *(v24 + 32) = v33;
  *(v24 + 48) = v25;
  *(v24 + 64) = v35[0];
  sub_29EC3A360(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v26 = swift_allocObject();
  v26[2] = sub_29EC4A5B0;
  v26[3] = v24;
  v26[4] = v18;
  v27 = swift_allocObject();
  v27[2] = sub_29EC4A5B0;
  v27[3] = v24;
  v27[4] = v18;
  *&v33 = sub_29EC4B1BC;
  *(&v33 + 1) = v26;
  *&v34 = sub_29EC4B1BC;
  *(&v34 + 1) = v27;
  sub_29EC2D818(v37, v35);
  v36 = 0;
  swift_retain_n();
  swift_retain_n();

  v28 = a1;

  sub_29EC486D0(&v33);

  sub_29EC2EBD8(&v33, &qword_2A188F460, &qword_29EC5DAD0);
  __swift_destroy_boxed_opaque_existential_1(v37);
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v30 = result;

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29EC45208(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
    v5 = a2;
    v6 = sub_29EC5C724();
    a2 = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = sub_29EC5C394();
    v4 = [objc_opt_self() valueWithNewErrorFromMessage:v7 inContext:a3];

    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29EDADE70](0);
    goto LABEL_8;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(a2 + 32);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29EC5D6A0;
    *(v8 + 56) = sub_29EC2D230();
    *(v8 + 32) = v4;
    v9 = v4;
    v10 = sub_29EC2D4E0(v8);

    v11 = v9;
    sub_29EC4E058(v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    sub_29EC2D87C();
    v18 = swift_allocError();
    *v19 = v13;
    v19[1] = v15;
    v19[2] = v17;
    MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
    sub_29EC5C704();
    sub_29EC545A4(0, 0, 0xE000000000000000);

    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_29EC458FC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29EC4D940(a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29EC5D6A0;
  *(v4 + 56) = sub_29EC2D230();
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = sub_29EC2D4E0(v4);

  v7 = v5;
  sub_29EC4E058(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_29EC2D87C();
  v14 = swift_allocError();
  *v15 = v9;
  v15[1] = v11;
  v15[2] = v13;
  MEMORY[0x29EDADC00](0x3D726F727265, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
  sub_29EC5C704();
  sub_29EC545A4(0, 0, 0xE000000000000000);
}

id JSStorageObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29EC45FB0()
{
  result = qword_2A188F318;
  if (!qword_2A188F318)
  {
    sub_29EC5BE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F318);
  }

  return result;
}

uint64_t sub_29EC46008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F320, &qword_29EC5D778) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = v26 - v10;
  sub_29EC2EFE8(a3, v26 - v10, &qword_2A188F320, &qword_29EC5D778);
  v12 = sub_29EC5C514();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29EC2EBD8(v11, &qword_2A188F320, &qword_29EC5D778);
  }

  else
  {
    sub_29EC5C504();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29EC5C4E4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29EC5C404() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_29EC2EBD8(a3, &qword_2A188F320, &qword_29EC5D778);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29EC2EBD8(a3, &qword_2A188F320, &qword_29EC5D778);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_29EC46308(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_29EC463F4;

  return v10();
}

uint64_t sub_29EC463F4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_29EC46568;
  }

  else
  {
    v3 = sub_29EC46508;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC46508()
{
  v1 = *(v0 + 16);
  sub_29EC3DC18();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EC46568()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_29EC3F538(v1, &qword_2A188F460, &qword_29EC5DAD0, &unk_2A2554000, sub_29EC4B1C8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC46604(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_29EC466F8;

  return v10(v6 + 16);
}

uint64_t sub_29EC466F8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC46878;
  }

  else
  {
    v3 = sub_29EC4680C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC4680C()
{
  v1 = v0[3];
  sub_29EC3DE50(v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29EC46878()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_29EC3EFD8(v1, &qword_2A188F450, &qword_29EC5DA98, &unk_2A2554488, sub_29EC4B1C8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC46914(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_29EC46A08;

  return v10(v6 + 16);
}

uint64_t sub_29EC46A08()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC46B88;
  }

  else
  {
    v3 = sub_29EC46B1C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC46B1C()
{
  v1 = v0[3];
  sub_29EC3E0C4(v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29EC46B88()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_29EC3EFD8(v1, &qword_2A188F420, &qword_29EC5D9F8, &unk_2A25543E8, sub_29EC4B1C8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC46C24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_29EC46D18;

  return v10(v6 + 16);
}

uint64_t sub_29EC46D18()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_29EC46EA8;
  }

  else
  {
    v3 = sub_29EC46E2C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC46E2C()
{
  v1 = *(v0 + 48);
  sub_29EC3E338(v0 + 16);
  sub_29EC2EBD8(v0 + 16, &qword_2A188F2A8, &qword_29EC5D9A0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EC46EA8()
{
  v1 = v0[8];
  v2 = v0[6];
  sub_29EC3F248(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC46F18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_29EC4700C;

  return v10(v6 + 40);
}

uint64_t sub_29EC4700C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_29EC47184;
  }

  else
  {
    v3 = sub_29EC47120;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC47120()
{
  v1 = *(v0 + 16);
  sub_29EC3E670(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EC47184()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_29EC3F538(v1, &qword_2A188F3E8, &qword_29EC5DBF0, &unk_2A25542A8, sub_29EC4B1C8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC47220(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_29EC47314;

  return v10(v6 + 16);
}

uint64_t sub_29EC47314()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC474B4;
  }

  else
  {
    v3 = sub_29EC47428;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC47428()
{
  v1 = v0[3];
  sub_29EC3E8D4(v0[2], &qword_2A188F3C0, &qword_29EC5DBE0, &unk_2A25541E0, sub_29EC4B16C);
  v2 = v0[1];

  return v2();
}

uint64_t sub_29EC474B4()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_29EC3F538(v1, &qword_2A188F3C0, &qword_29EC5DBE0, &unk_2A2554208, sub_29EC4B1C8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC47550(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_29EC47644;

  return v10(v6 + 16);
}

uint64_t sub_29EC47644()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC477E4;
  }

  else
  {
    v3 = sub_29EC47758;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC47758()
{
  v1 = v0[3];
  sub_29EC3E8D4(v0[2], &qword_2A188F3A8, &qword_29EC5D860, &unk_2A2554140, sub_29EC4B16C);
  v2 = v0[1];

  return v2();
}

uint64_t sub_29EC477E4()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_29EC3F538(v1, &qword_2A188F3A8, &qword_29EC5D860, &unk_2A2554168, sub_29EC4B1C8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29EC47880(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v6[3] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v6[4] = v11;
  *v11 = v6;
  v11[1] = sub_29EC479BC;

  return v13(v9);
}

uint64_t sub_29EC479BC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EC47B54;
  }

  else
  {
    v3 = sub_29EC47AD0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EC47AD0()
{
  v1 = *(v0 + 24);
  sub_29EC3EB18(v1);
  sub_29EC2EBD8(v1, &qword_2A188F350, &qword_29EC5D7C8);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EC47B54()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_29EC3F7A8(v1);

  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29EC47BCC()
{
  sub_29EC2EFE8(v0, v11, &qword_2A188F460, &qword_29EC5DAD0);
  v1 = v11[0];
  if (v13)
  {
    return swift_continuation_throwingResume();
  }

  v3 = v11[1];

  sub_29EC3CD98(&v12, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = *(v5 + 8);

  v7(sub_29EC49D30, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_29EC47CDC(uint64_t a1)
{
  sub_29EC2EFE8(v1, v13, &qword_2A188F450, &qword_29EC5DA98);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_29EC3CD98(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_29EC4AED4, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_29EC47E2C(uint64_t a1)
{
  sub_29EC2EFE8(v1, v13, &qword_2A188F420, &qword_29EC5D9F8);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_29EC3CD98(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_29EC4AED4, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_29EC47F7C(uint64_t a1)
{
  sub_29EC2EFE8(v1, v17, &qword_2A188F400, &qword_29EC5D998);
  v3 = v17[0];
  if (v19)
  {
    sub_29EC2EFE8(a1, &v14, &qword_2A188F2A8, &qword_29EC5D9A0);
    v4 = *(*(v3 + 64) + 40);
    v5 = v15;
    *v4 = v14;
    v4[1] = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v7 = v17[1];

    sub_29EC3CD98(&v18, &v14);
    v8 = *(&v15 + 1);
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    sub_29EC2EFE8(a1, v13, &qword_2A188F2A8, &qword_29EC5D9A0);
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v7;
    v11 = v13[1];
    *(v10 + 32) = v13[0];
    *(v10 + 48) = v11;
    v12 = *(v9 + 8);

    v12(sub_29EC4AFBC, v10, v8, v9);

    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }
}

uint64_t sub_29EC480FC(char a1)
{
  v2 = v1;
  sub_29EC2EFE8(v2, v14, &qword_2A188F3E8, &qword_29EC5DBF0);
  v4 = v14[0];
  if (v16)
  {
    **(*(v14[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v6 = v14[1];

    sub_29EC3CD98(&v15, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v6;
    *(v9 + 32) = a1 & 1;
    v10 = *(v8 + 8);

    v10(sub_29EC4AF74, v9, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }
}

uint64_t sub_29EC48240(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_29EC2EFE8(v7, v19, a2, a3);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_29EC3CD98(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_29EC48370(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v8 = &v18[-1] - v7;
  sub_29EC2EFE8(v2, v21, &qword_2A188F340, &unk_29EC5D7B0);
  v9 = v21[0];
  if (v23)
  {
    sub_29EC2EFE8(a1, v8, &qword_2A188F350, &qword_29EC5D7C8);
    sub_29EC4AC84(v8, *(*(v9 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v21[1];

    sub_29EC3CD98(&v22, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_29EC2EFE8(a1, v8, &qword_2A188F350, &qword_29EC5D7C8);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v11;
    sub_29EC4AC84(v8, v15 + v14);
    v16 = *(v13 + 8);

    v16(sub_29EC4ACF8, v15, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }
}

uint64_t sub_29EC48580(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_29EC2EFE8(v5, v21, a2, a3);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
    swift_allocError();
    *v8 = a1;
    v9 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_29EC3CD98(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }
}

void sub_29EC486D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F460, &qword_29EC5DAD0, &unk_2A2553BC8, sub_29EC49D58);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F460, &qword_29EC5DAD0, &unk_2A2553BC8, sub_29EC49D58);
      v16 = v4;
      v17 = 3;
    }

    sub_29EC4AF18(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_29EC47BCC();
  }

  else
  {
    sub_29EC2EFE8(a1, v22, &qword_2A188F460, &qword_29EC5DAD0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_29EC57620(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_29EC57620((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_29EC4AF18(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_29EC488C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F450, &qword_29EC5DA98, &unk_2A2554438, sub_29EC4B1C8);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F450, &qword_29EC5DA98, &unk_2A2554438, sub_29EC4B1C8);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_29EC47CDC(v4);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_29EC4B04C(v16, v17);
    return;
  }

  sub_29EC2EFE8(a1, v23, &qword_2A188F450, &qword_29EC5DA98);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_29EC57644(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_29EC57644((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_29EC4B04C(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_29EC48AD4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F420, &qword_29EC5D9F8, &unk_2A2554398, sub_29EC4B1C8);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F420, &qword_29EC5D9F8, &unk_2A2554398, sub_29EC4B1C8);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_29EC47E2C(v4);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_29EC4B04C(v16, v17);
    return;
  }

  sub_29EC2EFE8(a1, v23, &qword_2A188F420, &qword_29EC5D9F8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_29EC57668(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_29EC57668((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_29EC4B04C(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_29EC48CE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_29EC2EFE8(v1 + 24, v20, &qword_2A188F4D0, &unk_29EC5DC00);
  if (v21 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_29EC48580(v12, &qword_2A188F400, &qword_29EC5D998, &unk_2A25542F8, sub_29EC4B1C8);
  }

  else if (v21)
  {
    v16 = v20[0];
    v17 = v20[1];
    os_unfair_lock_unlock(v3 + 4);
    sub_29EC47F7C(&v16);
    sub_29EC2EBD8(&v16, &qword_2A188F2A8, &qword_29EC5D9A0);
  }

  else
  {
    v4 = *&v20[0];
    sub_29EC2EFE8(a1, &v16, &qword_2A188F400, &qword_29EC5D998);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_29EC5768C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_29EC5768C((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    LOBYTE(v18) = 0;
    swift_beginAccess();
    sub_29EC3CF3C(&v16, v1 + 24, &qword_2A188F4D0, &unk_29EC5DC00);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_29EC48EE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F3E8, &qword_29EC5DBF0, &unk_2A2554258, sub_29EC4B1C8);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F3E8, &qword_29EC5DBF0, &unk_2A2554258, sub_29EC4B1C8);
      v16 = v4;
      v17 = 3;
    }

    sub_29EC4AF18(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_29EC480FC(v4 & 1);
  }

  else
  {
    sub_29EC2EFE8(a1, v22, &qword_2A188F3E8, &qword_29EC5DBF0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_29EC576B0(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_29EC576B0((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_29EC4AF18(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_29EC490DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F3C0, &qword_29EC5DBE0, &unk_2A25541B8, sub_29EC4B1C8);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F3C0, &qword_29EC5DBE0, &unk_2A25541B8, sub_29EC4B1C8);
      v16 = v4;
      v17 = 3;
    }

    sub_29EC4AF18(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_29EC48240(v4, &qword_2A188F3C0, &qword_29EC5DBE0, &unk_2A2554190, sub_29EC4B16C);
  }

  else
  {
    sub_29EC2EFE8(a1, v22, &qword_2A188F3C0, &qword_29EC5DBE0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_29EC576D4(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_29EC576D4((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_29EC4AF18(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_29EC49304(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F3A8, &qword_29EC5D860, &unk_2A2554118, sub_29EC4B1C8);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_29EC48580(v4, &qword_2A188F3A8, &qword_29EC5D860, &unk_2A2554118, sub_29EC4B1C8);
      v16 = v4;
      v17 = 3;
    }

    sub_29EC4AF18(v16, v17);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_29EC48240(v4, &qword_2A188F3A8, &qword_29EC5D860, &unk_2A25540F0, sub_29EC4AED4);
  }

  else
  {
    sub_29EC2EFE8(a1, v22, &qword_2A188F3A8, &qword_29EC5D860);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_29EC57890(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v19 = v4;
      v20 = v4[2];
      v21 = sub_29EC57890((v6 > 1), v5 + 1, 1, v19);
      v5 = v20;
      v4 = v21;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v22[0];
    v9 = v22[1];
    v10 = v22[2];
    v11 = v23[0];
    *(v8 + 89) = *(v23 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_29EC4AF18(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_29EC4952C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F328, &qword_29EC5D780);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v9);
  v13 = (&v25 - v12);
  v14 = v1[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  sub_29EC2EFE8(v1 + v15, v13, &qword_2A188F328, &qword_29EC5D780);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v24 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    sub_29EC48580(v24, &qword_2A188F340, &unk_29EC5D7B0, &unk_2A2554078, sub_29EC4B1C8);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_29EC4AC84(v13, v6);
    os_unfair_lock_unlock(v14 + 4);
    sub_29EC48370(v6);
    sub_29EC2EBD8(v6, &qword_2A188F350, &qword_29EC5D7C8);
  }

  else
  {
    v17 = *v13;
    sub_29EC2EFE8(a1, v26, &qword_2A188F340, &unk_29EC5D7B0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_29EC578B4(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_29EC578B4((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[10 * v19];
    v20[2] = v26[0];
    v21 = v26[1];
    v22 = v26[2];
    v23 = v27[0];
    *(v20 + 89) = *(v27 + 9);
    v20[4] = v22;
    v20[5] = v23;
    v20[3] = v21;
    *v11 = v17;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_29EC3CF3C(v11, v1 + v15, &qword_2A188F328, &qword_29EC5D780);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

uint64_t sub_29EC49830(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EC49928;

  return v7(a1);
}

uint64_t sub_29EC49928()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EC49A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29EC31A1C;

  return sub_29EC4270C();
}

uint64_t sub_29EC49B34()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v0 + 32);

  v6 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  v7 = v0 + v3;
  v8 = *(v7 + 24);

  v9 = v1[8];
  v10 = sub_29EC5C274();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return MEMORY[0x2A1C733A0](v0, v4 + 40, v2 | 7);
}

void sub_29EC49C60(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  sub_29EC429E8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + 48, *(v1 + 88), v1 + v4, v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_29EC49D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29EC49D64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29EC3DAF4;

  return sub_29EC43BF4();
}

uint64_t sub_29EC49E04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EC31A1C;

  return sub_29EC46308(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29EC49ECC()
{
  v1 = sub_29EC5BE84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for Signpost() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  v11 = *(v0 + v8 + 24);

  v12 = v6[8];
  v13 = sub_29EC5C274();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return MEMORY[0x2A1C733A0](v0, v8 + v9, v10 | 7);
}

void sub_29EC4A05C(uint64_t a1)
{
  v3 = *(sub_29EC5BE84() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Signpost() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_29EC43E24(a1, v1 + 16, v1 + v4, v7);
}

uint64_t sub_29EC4A18C()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v7 = v0 + v3;
  v8 = *(v7 + 24);

  v9 = v1[8];
  v10 = sub_29EC5C274();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  v11 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v2 | 7);
}

id sub_29EC4A2A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Signpost() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29EC444D4(a1, a2, a3, *(v3 + 16), v3 + 24, v3 + v8, v3 + v9, *(v3 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EC4A384()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0[2];

  v6 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = sub_29EC5C274();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29EC4A510()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29EC3DAF4;

  return sub_29EC43BF4();
}

void sub_29EC4A5B0(uint64_t a1)
{
  v3 = *(*(type metadata accessor for Signpost() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_29EC45208(a1, v4, v5);
}

uint64_t sub_29EC4A628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29EC3DAF4;

  return sub_29EC43BF4();
}

uint64_t objectdestroy_66Tm()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = sub_29EC5C274();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

void sub_29EC4A7C4(uint64_t a1)
{
  v3 = *(*(type metadata accessor for Signpost() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_29EC448D8(a1, v4, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v5 = *(v0 + v3 + 24);

  v6 = v1[8];
  v7 = sub_29EC5C274();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29EC4A9E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC4AA20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EC3DAF4;

  return sub_29EC49830(a1, v5);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = sub_29EC5C274();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29EC4AC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_136Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F358, &qword_29EC5D7D0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29EC4AE28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F350, &qword_29EC5D7C8) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_29EC4AE9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EC4AED8()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  return v2(&v4);
}

void sub_29EC4AF18(void *a1, char a2)
{
  if (a2 == 3 || a2 == 2)
  {
  }

  else if (!a2)
  {
  }
}