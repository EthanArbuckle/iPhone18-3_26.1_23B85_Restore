uint64_t sub_21B49D3A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21B49D414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_21B49D45C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21B49D4EC()
{
  sub_21B49D8A8(319, &qword_27CD88758, MEMORY[0x277D83B88], MEMORY[0x277CDD630]);
  if (v0 <= 0x3F)
  {
    sub_21B49D5B0(319, &qword_27CD88760, MEMORY[0x277D40290]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B49D5B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21B4C79B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B49D620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_21B49D668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21B49D6F0()
{
  sub_21B49D8A8(319, &qword_2811FD258, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B49D8A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21B49D908()
{
  result = qword_27CD88778;
  if (!qword_27CD88778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88620);
    sub_21B3F1314(&qword_27CD88688, &qword_27CD88620);
    swift_getOpaqueTypeConformance2();
    sub_21B3F1314(&qword_27CD88780, &qword_27CD88788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88778);
  }

  return result;
}

unint64_t sub_21B49DA30()
{
  result = qword_27CD887A0;
  if (!qword_27CD887A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD887A8);
    sub_21B3F1314(&qword_27CD886F0, &qword_27CD886D0);
    sub_21B3F1314(&qword_27CD886F8, &qword_27CD886C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD887A0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_21B49DCBC()
{
  sub_21B49DD6C();
  if (v0 <= 0x3F)
  {
    sub_21B49D8A8(319, &qword_27CD88738, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B49DD6C()
{
  if (!qword_27CD887C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD887D0);
    v0 = sub_21B4C79B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD887C8);
    }
  }
}

uint64_t sub_21B49DDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD887D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21B36C7AC(a1, &v5 - v3, &qword_27CD887D0);
  return sub_21B4C7B48();
}

uint64_t objectdestroy_5Tm()
{

  if (*(v0 + 48) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21B49DF04()
{
  result = qword_27CD88820;
  if (!qword_27CD88820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88820);
  }

  return result;
}

uint64_t sub_21B49DF80(uint64_t a1)
{
  v4 = sub_21B4C7558();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  v5 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v5;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 128) = sub_21B4C9A18();
  *(v2 + 136) = sub_21B4C9A08();
  v7 = swift_task_alloc();
  *(v2 + 144) = v7;
  *v7 = v2;
  v7[1] = sub_21B49E0AC;

  return sub_21B499D64(a1);
}

uint64_t sub_21B49E0AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  v5 = sub_21B4C99C8();
  if (v1)
  {
    v6 = sub_21B49E280;
  }

  else
  {
    v6 = sub_21B49E1F0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21B49E1F0()
{
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v2 = 0;
LABEL_5:

  v3 = *(v0 + 8);

  return v3(v2, v1 == 0);
}

uint64_t sub_21B49E280()
{

  sub_21B4C7518();
  v1 = sub_21B4C7538();
  v2 = sub_21B4C9CE8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21B365000, v1, v2, "Failed to calculate the number of episodes impacted, skipping confirmation.", v3, 2u);
    MEMORY[0x21CEF5710](v3, -1, -1);
  }

  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7(0, 1);
}

uint64_t sub_21B49E3A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_21B49E418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoDownloadPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B49E47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoDownloadPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B49E4E0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AutoDownloadPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21B49701C(a1, a2, v6);
}

uint64_t objectdestroy_104Tm()
{
  v1 = type metadata accessor for AutoDownloadPickerView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21B4C79F8();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  if (*(v0 + v2 + *(v1 + 28) + 8) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B49E6DC(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoDownloadPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21B4979DC(a1, v4);
}

uint64_t sub_21B49E75C()
{
  v1 = *(type metadata accessor for AutoDownloadPickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21B497A78(v2);
}

unint64_t sub_21B49E7BC()
{
  result = qword_27CD88908;
  if (!qword_27CD88908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88908);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B49E824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21B49E86C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B49E8C8()
{
  result = qword_27CD88910;
  if (!qword_27CD88910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88918);
    sub_21B3F1314(&qword_27CD887E8, &qword_27CD887D8);
    sub_21B3F1314(&qword_27CD887F0, &qword_27CD887E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88910);
  }

  return result;
}

uint64_t sub_21B49E9C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B49E9D8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21B49E9C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21B49EA1C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21B495798(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_21B49EA60()
{
  result = qword_27CD88920;
  if (!qword_27CD88920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88928);
    sub_21B3F1314(&qword_27CD88930, &qword_27CD88938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88920);
  }

  return result;
}

unint64_t sub_21B49EB40()
{
  result = qword_27CD88940;
  if (!qword_27CD88940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88940);
  }

  return result;
}

uint64_t sub_21B49EBAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  __swift_allocate_value_buffer(v0, qword_27CD88948);
  __swift_project_value_buffer(v0, qword_27CD88948);
  return sub_21B4C5718();
}

uint64_t sub_21B49EC40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  __swift_allocate_value_buffer(v0, qword_27CD88960);
  __swift_project_value_buffer(v0, qword_27CD88960);
  return sub_21B4C5718();
}

uint64_t sub_21B49ECD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_21B3F2CD8(v6, a3);
}

int64_t AMPCFStringInlineBuffer.character(at:)(int64_t result)
{
  if (result < 0 || (v2 = *(v1 + 288), v2 <= result))
  {
    v5 = 0;
    goto LABEL_6;
  }

  v3 = *(v1 + 264);
  if (v3)
  {
    v4 = *(v3 + 2 * *(v1 + 280) + 2 * result);
  }

  else
  {
    v7 = *(v1 + 272);
    if (v7)
    {
      v4 = *(v7 + *(v1 + 280) + result);
    }

    else
    {
      if (*(v1 + 304) <= result || (v8 = *(v1 + 296), v8 > result))
      {
        v9 = result - 4;
        if (result < 4)
        {
          v9 = 0;
        }

        v10 = v9 + 128;
        if (v9 + 128 >= v2)
        {
          v10 = *(v1 + 288);
        }

        *(v1 + 296) = v9;
        *(v1 + 304) = v10;
        v19.length = v10 - v9;
        v19.location = *(v1 + 280) + v9;
        v11 = result;
        CFStringGetCharacters(*(v1 + 256), v19, v1);
        result = v11;
        v8 = *(v1 + 296);
      }

      v4 = *(v1 + 2 * (result - v8));
    }
  }

  if (((v4 + 9216) >> 10) < 0x3Fu)
  {
    if (((v4 + 0x2000) >> 11) > 0x1Eu)
    {
      v5 = 0;
      v6 = 1;
      return v5 | (v6 << 32);
    }

    v5 = v4;
LABEL_6:
    v6 = 0;
    return v5 | (v6 << 32);
  }

  v12 = *(v1 + 288);
  if (!__OFSUB__(v12, 1))
  {
    if ((v12 - 1) <= result)
    {
      v5 = 0;
      v6 = 1;
      return v5 | (v6 << 32);
    }

    v13 = result + 1;
    if (v12 <= result + 1)
    {
      goto LABEL_39;
    }

    v14 = *(v1 + 264);
    if (v14)
    {
      v15 = *(v14 + 2 * *(v1 + 280) + 2 * v13);
    }

    else
    {
      v16 = *(v1 + 272);
      if (v16)
      {
        v15 = *(v16 + *(v1 + 280) + v13);
      }

      else
      {
        if (*(v1 + 304) <= v13 || (v17 = *(v1 + 296), v17 > v13))
        {
          v18 = result - 3;
          if (result < 3)
          {
            v18 = 0;
          }

          if (v18 + 128 < v12)
          {
            v12 = v18 + 128;
          }

          *(v1 + 296) = v18;
          *(v1 + 304) = v12;
          v20.length = v12 - v18;
          v20.location = *(v1 + 280) + v18;
          CFStringGetCharacters(*(v1 + 256), v20, v1);
          v17 = *(v1 + 296);
        }

        v15 = *(v1 + 2 * (v13 - v17));
      }
    }

    if (((v15 + 0x2000) >> 10) < 0x3Fu)
    {
LABEL_39:
      v5 = 0;
      v6 = 1;
      return v5 | (v6 << 32);
    }

    v5 = ((v4 + 10240) << 10) + (v15 + 9216) + 0x10000;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id NSAttributedString.baseWritingDirection(forCharacterAt:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21B4D42A0;
    *(v3 + 56) = MEMORY[0x277D837D0];
    v4 = sub_21B376BD4();
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    *(v3 + 32) = 0xD000000000000025;
    *(v3 + 40) = 0x800000021B4E2590;
    *(v3 + 96) = v5;
    *(v3 + 104) = v6;
    *(v3 + 64) = v4;
    *(v3 + 72) = a1;
    v7 = [v1 length];
    *(v3 + 136) = v5;
    *(v3 + 144) = v6;
    *(v3 + 112) = v7;
    sub_21B4C9728();
    v8 = *MEMORY[0x277CBE730];
    v9 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v10 = sub_21B4C96C8();

    v11 = [v9 initWithName:v8 reason:v10 userInfo:0];

    [v11 raise];
  }

  else
  {
    if ([v1 attribute:*MEMORY[0x277D74118] atIndex:a1 effectiveRange:0])
    {
      sub_21B4CA278();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17[0] = v15;
    v17[1] = v16;
    if (*(&v16 + 1))
    {
      sub_21B3F12CC(0, &qword_281200510);
      if (swift_dynamicCast())
      {
        v12 = [v14 baseWritingDirection];

        return v12;
      }
    }

    else
    {
      sub_21B3F9F3C(v17);
    }
  }

  return 0;
}

uint64_t NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_21B49F1E8(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  v7 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a3);
  if (a4)
  {
    *a4 = v8 & 1;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (qword_27CD86520 != -1)
  {
    swift_once();
  }

  [v1 performSelector_];
  v2 = [v1 string];
  v3 = sub_21B4C9708();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (qword_27CD86520 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD88980;
  v2 = v0;

  [v2 performSelector_];
}

void sub_21B49F384()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_21B4C96C8();
  v2 = [v0 initWithString_];

  qword_27CD88978 = v2;
}

id static NSAttributedString.empty.getter()
{
  if (qword_27CD86518 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD88978;

  return v1;
}

id sub_21B49F440()
{
  if (qword_27CD86518 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD88978;

  return v1;
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21B4D42A0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    v11 = sub_21B376BD4();
    v12 = MEMORY[0x277D83B88];
    v13 = MEMORY[0x277D83C10];
    *(v10 + 32) = 0xD000000000000032;
    *(v10 + 40) = 0x800000021B4E25C0;
    *(v10 + 96) = v12;
    *(v10 + 104) = v13;
    *(v10 + 64) = v11;
    *(v10 + 72) = a1;
    v14 = [v1 length];
    *(v10 + 136) = v12;
    *(v10 + 144) = v13;
    *(v10 + 112) = v14;
    sub_21B4C9728();
    v15 = *MEMORY[0x277CBE730];
    v16 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v17 = sub_21B4C96C8();

    v18 = [v16 initWithName:v15 reason:v17 userInfo:0];

    [v18 raise];
    return 0;
  }

  v20 = 0;
  v21 = 1;
  v3 = *MEMORY[0x277D74118];
  v4 = swift_allocObject();
  *(v4 + 16) = &v20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21B49F9F8;
  *(v5 + 24) = v4;
  v19[4] = sub_21B49FA00;
  v19[5] = v5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_21B49F8A0;
  v19[3] = &block_descriptor_11;
  v6 = _Block_copy(v19);

  [v1 enumerateAttribute:v3 inRange:0 options:a1 usingBlock:{2, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v20;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_21B49F7C8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_21B476F48(a1, v8);
  if (v9)
  {
    sub_21B3F12CC(0, &qword_281200510);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *a5 = [v7 baseWritingDirection];
        *(a5 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_21B3F9F3C(v8);
  }
}

uint64_t sub_21B49F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_21B36EE80(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_21B3F9F3C(v13);
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)(uint64_t a1)
{
  result = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a1);
  if (v2)
  {
    return -1;
  }

  return result;
}

uint64_t sub_21B49F95C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a3);
  v7 = v6;

  if (v7)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void sub_21B49F9A8()
{
  v0 = sub_21B4C96C8();
  v1 = NSSelectorFromString(v0);

  qword_27CD88980 = v1;
}

id NSParagraphStyle.withBaseWritingDirection(_:)(uint64_t a1)
{
  [v1 mutableCopy];
  sub_21B4CA278();
  swift_unknownObjectRelease();
  sub_21B3F12CC(0, &unk_2811FCC78);
  swift_dynamicCast();
  [v4 setBaseWritingDirection_];
  [v4 copy];
  sub_21B4CA278();

  swift_unknownObjectRelease();
  sub_21B3F12CC(0, &qword_281200510);
  swift_dynamicCast();
  return v4;
}

id sub_21B49FB28(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSParagraphStyle.withBaseWritingDirection(_:)(a3);

  return v5;
}

NSTextAlignment __swiftcall UIUserInterfaceLayoutDirection.textAlignment(whenLeftToRight:rightToLeft:)(NSTextAlignment whenLeftToRight, NSTextAlignment rightToLeft)
{
  if (v2 == 1)
  {
    return rightToLeft;
  }

  return whenLeftToRight;
}

uint64_t sub_21B49FB80()
{
  result = sub_21B4CA588();
  qword_27CD88988 = result;
  unk_27CD88990 = v1;
  return result;
}

uint64_t sub_21B49FBD0()
{
  result = sub_21B4CA588();
  qword_27CD88998 = result;
  unk_27CD889A0 = v1;
  return result;
}

char *WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(char *result, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_natural] = result;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight] = a2;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft] = a3;
  v4 = &result[a2];
  if (__CFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(v4, a3);
  v6 = &v4[a3];
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_total] = v6;
  v7 = result != 0;
  if (!a3)
  {
    if (a2)
    {
      ++v7;
    }

    *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v7;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = a2 != 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = 0;
    goto LABEL_12;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v8 + v7;
  v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = 1;
  if (!__CFADD__(a3, a2))
  {
    v9 = a3 / (a3 + a2);
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = v9 >= 0.4;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = v9 >= 0.15;
LABEL_12:
    v10.receiver = v3;
    v10.super_class = type metadata accessor for WritingDirectionsCounts();
    return objc_msgSendSuper2(&v10, sel_init);
  }

LABEL_15:
  __break(1u);
  return result;
}

char *WritingDirectionsCounts.__allocating_init(summing:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (!v1)
  {
LABEL_10:

    v13 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v3, v2);
  }

  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }

    result = [v6 writingDirectionsQuantities];
    v9 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
    v10 = __CFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      break;
    }

    v11 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
    v10 = __CFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

    v10 = __CFADD__(v2, v12);
    v2 += v12;
    if (v10)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_3:
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void WritingDirectionsCounts.__allocating_init(counting:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_14:
    v4 = 0;
    v3 = 0;
    v2 = 0;
LABEL_15:

    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v2, v3, v4);
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 32);
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = [v7 writingDirectionsQuantities];
    if (v9[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
    {
      break;
    }

    v10 = v9[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts];

    if (v10 == 1)
    {
      v6 = __CFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __CFADD__(v2++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_15;
    }
  }

  v6 = __CFADD__(v4++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_21B4A0104(uint64_t a1)
{
  sub_21B476F48(a1, v6);
  if (v7)
  {
    type metadata accessor for WritingDirectionsCounts();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_natural] && *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight])
      {
        v2 = *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
        v3 = *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_21B3F9F3C(v6);
  }

  return 0;
}

char *+ infix(_:_:)(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_21B4A0394()
{
  v0 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  result = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(0, 0, 0);
  qword_2811FEC40 = result;
  return result;
}

id static WritingDirectionsCounts.zero.getter()
{
  if (qword_27CD86538 != -1)
  {
    swift_once();
  }

  v1 = qword_2811FEC40;

  return v1;
}

uint64_t sub_21B4A04F4()
{
  strcpy(v16, "Natural: ");
  WORD1(v16[1]) = 0;
  HIDWORD(v16[1]) = -385875968;
  v1 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v1);

  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);
  v2 = v16[0];
  v3 = v16[1];
  strcpy(v16, "{ Counts: { ");
  MEMORY[0x21CEF2F30](v2, v3);

  sub_21B4CA338();

  v4 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v4);

  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);

  MEMORY[0x21CEF2F30](0x2D6F742D7466654CLL, 0xEF203A7468676972);

  v5 = v16[0];
  sub_21B4CA338();

  v6 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v6);

  MEMORY[0x21CEF2F30](32, 0xE100000000000000);

  MEMORY[0x21CEF2F30](0x6F742D7468676952, 0xEF203A7466656C2DLL);

  MEMORY[0x21CEF2F30](2108541, 0xE300000000000000);

  sub_21B4CA338();

  v16[0] = 0x45204C5452207349;
  v16[1] = 0xEF28206867756F6ELL;
  if (qword_27CD86528 != -1)
  {
    swift_once();
  }

  v7 = qword_27CD88988;
  v8 = unk_27CD88990;

  MEMORY[0x21CEF2F30](v7, v8);

  MEMORY[0x21CEF2F30](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x21CEF2F30](v9, v10);

  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);

  MEMORY[0x21CEF2F30](v16[0], v16[1]);

  sub_21B4CA338();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x800000021B4E27D0;
  if (qword_27CD86530 != -1)
  {
    swift_once();
  }

  v11 = qword_27CD88998;
  v12 = unk_27CD889A0;

  MEMORY[0x21CEF2F30](v11, v12);

  MEMORY[0x21CEF2F30](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x21CEF2F30](v13, v14);

  MEMORY[0x21CEF2F30](32, 0xE100000000000000);

  MEMORY[0x21CEF2F30](v16[0], v16[1]);

  MEMORY[0x21CEF2F30](125, 0xE100000000000000);

  return v5;
}

id WritingDirectionsCounts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WritingDirectionsCounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WritingDirectionsCounts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void += infix(_:_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v5 = (v3 + v4);
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v8 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

  v12 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v13 = v11 + v12;
  if (!__CFADD__(v11, v12))
  {
    v14 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    *a1 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v5, v9, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_21B4A0B7C(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Glyph.Settings.name.getter()
{
  v1 = *v0;

  return v1;
}

void *Glyph.Settings.font.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t Glyph.Settings.pointSize.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void *Glyph.Settings.symbolConfigurationOverride.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t Glyph.Settings.hashValue.getter()
{
  sub_21B4CA6E8();
  Glyph.Settings.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4A0EDC()
{
  sub_21B4CA6E8();
  Glyph.Settings.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4A0F24(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_21B3F12CC(0, &unk_2811FCAC8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CEF3AB0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x21CEF3AB0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_21B4CA098();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_21B4CA098();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21B4CA4B8();
  }

  result = sub_21B4CA4B8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void Glyph.Color.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x21CEF3E40](v4);
    sub_21B4CA0A8();
    return;
  }

  MEMORY[0x21CEF3E40](2);

  sub_21B4A78EC(a1, v3);
}

uint64_t Glyph.Color.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21B4CA6E8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CEF3E40](2);
      sub_21B4A78EC(v5, v1);
      return sub_21B4CA738();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEF3E40](v3);
  sub_21B4CA0A8();
  return sub_21B4CA738();
}

uint64_t sub_21B4A1290()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21B4CA6E8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CEF3E40](2);
      sub_21B4A78EC(v5, v1);
      return sub_21B4CA738();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEF3E40](v3);
  sub_21B4CA0A8();
  return sub_21B4CA738();
}

void sub_21B4A131C(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x21CEF3E40](v4);
    sub_21B4CA0A8();
    return;
  }

  MEMORY[0x21CEF3E40](2);

  sub_21B4A78EC(a1, v3);
}

uint64_t sub_21B4A13AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21B4CA6E8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CEF3E40](2);
      sub_21B4A78EC(v5, v1);
      return sub_21B4CA738();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEF3E40](v3);
  sub_21B4CA0A8();
  return sub_21B4CA738();
}

uint64_t Glyph.init(name:pointSize:weight:size:isCustomSymbol:isMulticolorSymbol:isSPI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, void *a9@<X8>, char a10)
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = 0;
  v13[3] = a3;
  v14 = a4 & 1;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  v20 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v13);
  *a9 = v12;
  return result;
}

uint64_t Glyph.Settings.init(name:pointSize:weight:size:isCustomSymbol:isMulticolorSymbol:isSPI:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4 & 1;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 57) = a8;
  *(a9 + 58) = a10;
  *(a9 + 64) = 0;
  return result;
}

uint64_t Glyph.init(name:font:size:isCustomSymbol:isMulticolorSymbol:isSPI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, void *a8@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v15 = a3;
  v16 = 1;
  v17 = 4;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = 0;
  v9 = qword_2811FFFF8;
  v10 = a3;
  v11 = v10;
  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  sub_21B4C7198();

  result = sub_21B3793EC(v14);
  *a8 = v13;
  return result;
}

uint64_t Glyph.init(name:symbolConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = 0uLL;
  LOBYTE(v12[0]) = 1;
  *&v12[1] = xmmword_21B4DAC00;
  v13 = 0;
  v14 = 0;
  v15 = a3;
  v5 = qword_2811FFFF8;
  v6 = a3;
  v7 = v6;
  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  sub_21B4C7198();

  result = sub_21B3793EC(v10);
  *a4 = v9;
  return result;
}

id sub_21B4A17C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 255)
  {

    return sub_21B37A78C();
  }

  v2 = *a1;
  v15 = *a1;
  sub_21B4A7FF4(*a1, v1);
  sub_21B4A7FF4(v2, v1);

  sub_21B4C71A8();

  sub_21B4A802C(v15, v1);
  v3 = v16;
  if (v16)
  {
    sub_21B4A8050(v2, v1);
    return v3;
  }

  v5 = sub_21B37A80C();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_21B3F12CC(0, &unk_2811FCAC8);
      v8 = sub_21B4C9918();
      v7 = [objc_opt_self() configurationWithPaletteColors_];

      goto LABEL_14;
    }

    v6 = [objc_opt_self() configurationWithHierarchicalColor_];
  }

  else
  {
    v6 = [objc_opt_self() configurationPreferringMonochrome];
  }

  v7 = v6;
LABEL_14:
  v9 = [v5 configurationByApplyingConfiguration_];

  v10 = v9;
  v11 = sub_21B4C96C8();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  if (!v12)
  {
    v3 = sub_21B37A78C();
    sub_21B4A8050(v2, v1);

    return v3;
  }

  if (!v1)
  {
    v13 = [v12 imageWithTintColor_];

    v12 = v13;
  }

  sub_21B4A7FF4(v2, v1);

  v14 = v12;
  sub_21B4C71B8();

  sub_21B4A8050(v2, v1);

  return v14;
}

id Glyph.image(color:)(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_21B4A17C0(&v3);
}

uint64_t Glyph.settings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 64);
  v11 = *(*v1 + 80);
  v10[2] = v4;
  v10[3] = v5;
  v10[1] = v3;
  v10[0] = v2[1];
  *(a1 + 64) = v11;
  v6 = v2[4];
  *(a1 + 32) = v2[3];
  *(a1 + 48) = v6;
  v7 = v2[2];
  *a1 = v2[1];
  *(a1 + 16) = v7;
  return sub_21B3791F0(v10, v9);
}

uint64_t Glyph.hashValue.getter()
{
  sub_21B4CA6E8();
  Glyph.Settings.hash(into:)();
  return sub_21B4CA738();
}

uint64_t Glyph.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21B4C5E08();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_21B4C5E78();
    v9 = *(a1 + *(v8 + 56));
    v10 = *(a1 + *(v8 + 60));
    v14[0] = v6;
    v14[1] = v7;
    v15 = 0uLL;
    LOBYTE(v16[0]) = 1;
    *&v16[1] = xmmword_21B4DAC00;
    v17 = v9;
    v18 = v10;
    v19 = 0;
    if (qword_2811FFFF8 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    sub_21B4C7198();
    sub_21B38F79C(a1);
    result = sub_21B3793EC(v14);
    v12 = v13;
  }

  else
  {
    result = sub_21B38F79C(a1);
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_21B4A1D54(uint64_t a1)
{
  v3[0] = 0x7269632E79616C70;
  v3[1] = 0xEB00000000656C63;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FD9E0 = v2;
  return result;
}

uint64_t sub_21B4A1EA8(uint64_t a1)
{
  v3[0] = 0x6D756E2E7473696CLL;
  v3[1] = 0xEB00000000726562;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FD9C8 = v2;
  return result;
}

uint64_t sub_21B4A1FFC(uint64_t a1)
{
  v3[0] = 0x697966696E67616DLL;
  v3[1] = 0xEF7373616C67676ELL;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD889E8 = v2;
  return result;
}

uint64_t sub_21B4A2154(uint64_t a1)
{
  v3[0] = 0xD000000000000019;
  v3[1] = 0x800000021B4E2CD0;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD889F0 = v2;
  return result;
}

uint64_t sub_21B4A22A4(uint64_t a1)
{
  v3[0] = 0x7061687372616567;
  v3[1] = 0xE900000000000065;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD889F8 = v2;
  return result;
}

uint64_t sub_21B4A23F4(uint64_t a1)
{
  v3[0] = 0xD000000000000010;
  v3[1] = 0x800000021B4E2B20;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDAE0 = v2;
  return result;
}

uint64_t sub_21B4A2544(uint64_t a1)
{
  v3[0] = 0xD000000000000014;
  v3[1] = 0x800000021B4E2C30;
  v4 = 0uLL;
  LOBYTE(v5[0]) = 1;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDB18 = v2;
  return result;
}

uint64_t sub_21B4A2700(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = 0xD000000000000014;
  v6[1] = 0x800000021B4E2BE0;
  v7 = xmmword_21B4DAC10;
  LOBYTE(v8[0]) = 0;
  *&v8[1] = xmmword_21B4DAC00;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v6);
  *a3 = v5;
  return result;
}

uint64_t sub_21B4A2848(uint64_t a1)
{
  v3[0] = 0x637269632E636F64;
  v3[1] = 0xEF6C6C69662E656CLL;
  v4 = xmmword_21B4DAC10;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A08 = v2;
  return result;
}

uint64_t sub_21B4A29A4(uint64_t a1)
{
  v3[0] = 0xD000000000000010;
  v3[1] = 0x800000021B4E2B20;
  v4 = xmmword_21B4DAC10;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A10 = v2;
  return result;
}

uint64_t sub_21B4A2BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = 0;
  *&v7[3] = a4;
  LOBYTE(v8[0]) = 0;
  *&v8[1] = xmmword_21B4DAC20;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v7);
  *a3 = v6;
  return result;
}

uint64_t sub_21B4A2CF4(uint64_t a1)
{
  strcpy(v3, "airplayaudio");
  v3[13] = 0;
  v4 = -5120;
  v5 = xmmword_21B4DAC30;
  LOBYTE(v6[0]) = 0;
  *&v6[1] = xmmword_21B4DAC40;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A20 = v2;
  return result;
}

uint64_t sub_21B4A2E4C(uint64_t a1)
{
  v3[0] = 0x73697370696C6C65;
  v3[1] = 0xE800000000000000;
  v4 = xmmword_21B4DAC30;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC40;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A28 = v2;
  return result;
}

uint64_t sub_21B4A2F9C(uint64_t a1)
{
  strcpy(v3, "moon.zzz.fill");
  v4 = -4864;
  v5 = xmmword_21B4DAC30;
  LOBYTE(v6[0]) = 0;
  *&v6[1] = xmmword_21B4DAC40;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A30 = v2;
  return result;
}

uint64_t sub_21B4A30F8(uint64_t a1)
{
  v3[0] = 0x662E656D756C6F76;
  v3[1] = 0xEB000000006C6C69;
  v4 = xmmword_21B4DAC50;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A38 = v2;
  return result;
}

uint64_t sub_21B4A3250(uint64_t a1)
{
  strcpy(v3, "volume.3.fill");
  v4 = -4864;
  v5 = xmmword_21B4DAC50;
  LOBYTE(v6[0]) = 0;
  *&v6[1] = xmmword_21B4DAC00;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A40 = v2;
  return result;
}

uint64_t static Glyph.NowPlaying.jump(interval:pointSize:)@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a3 == 0.0)
  {
    *a2 = 0;
    return result;
  }

  v5 = 0x61776B6361626F67;
  if (a3 > 0.0)
  {
    v5 = 0x726177726F666F67;
  }

  v6 = 0xEA00000000006472;
  if (a3 > 0.0)
  {
    v6 = 0xE900000000000064;
  }

  if (round(a3) != 0.0)
  {
    v8 = 3158318;
    *&v14 = v5;
    *(&v14 + 1) = v6;
    v9 = fabs(a3);
    if (v9 > 10.0)
    {
      if (v9 < 11.0 || v9 > 15.0)
      {
        if (v9 < 16.0 || v9 > 30.0)
        {
          if (v9 < 31.0 || v9 > 45.0)
          {
            if (v9 < 46.0 || v9 > 60.0)
            {
              if (v9 < 61.0 || v9 > 75.0)
              {
                if (v9 < 76.0 || v9 > 90.0)
                {
                  goto LABEL_22;
                }

                v10 = a4;
                v8 = 3160366;
              }

              else
              {
                v10 = a4;
                v8 = 3487534;
              }
            }

            else
            {
              v10 = a4;
              v8 = 3159598;
            }
          }

          else
          {
            v10 = a4;
            v8 = 3486766;
          }
        }

        else
        {
          v10 = a4;
          v8 = 3158830;
        }
      }

      else
      {
        v10 = a4;
        v8 = 3485998;
      }
    }

    else
    {
      v10 = a4;
    }

    v8 = MEMORY[0x21CEF2F30](v8, 0xE300000000000000);
    a4 = v10;
LABEL_22:
    v15 = v14;
    v16 = 0;
    v17 = a4;
    v18 = 0;
    v19 = xmmword_21B4DAC60;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (qword_2811FFFF8 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    sub_21B4C7198();
    result = sub_21B3793EC(&v15);
    v7 = v12;
    goto LABEL_25;
  }

  *&v15 = v5;
  *(&v15 + 1) = v6;
  v16 = 0;
  v17 = a4;
  v18 = 0;
  v19 = xmmword_21B4DAC60;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (qword_2811FFFF8 != -1)
  {
    result = swift_once();
  }

  MEMORY[0x28223BE20](result);
  sub_21B4C7198();
  result = sub_21B3793EC(&v15);
  v7 = v13;
LABEL_25:
  *a2 = v7;
  return result;
}

uint64_t sub_21B4A3744(uint64_t a1)
{
  v3[0] = 0x6C69662E79616C70;
  v3[1] = 0xE90000000000006CLL;
  v4 = xmmword_21B4DAC30;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC70;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_281200600 = v2;
  return result;
}

uint64_t sub_21B4A3898(uint64_t a1)
{
  v3[0] = 0x69662E6573756170;
  v3[1] = 0xEA00000000006C6CLL;
  v4 = xmmword_21B4DAC30;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC70;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A48 = v2;
  return result;
}

uint64_t sub_21B4A39EC(uint64_t a1)
{
  v3[0] = 0x6C69662E706F7473;
  v3[1] = 0xE90000000000006CLL;
  v4 = xmmword_21B4DAC30;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC70;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A50 = v2;
  return result;
}

uint64_t sub_21B4A3B7C(uint64_t a1)
{
  v3[0] = 0x6C69662E79616C70;
  v3[1] = 0xE90000000000006CLL;
  v4 = xmmword_21B4DAC90;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACA0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A58 = v2;
  return result;
}

uint64_t sub_21B4A3CD0(uint64_t a1)
{
  v3[0] = 0x69662E6573756170;
  v3[1] = 0xEA00000000006C6CLL;
  v4 = xmmword_21B4DAC90;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACA0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A60 = v2;
  return result;
}

uint64_t sub_21B4A3E24(uint64_t a1)
{
  v3[0] = 0x6C69662E706F7473;
  v3[1] = 0xE90000000000006CLL;
  v4 = xmmword_21B4DAC90;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACA0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A68 = v2;
  return result;
}

uint64_t sub_21B4A3FB4(uint64_t a1)
{
  v3[0] = 0x6C69662E79616C70;
  v3[1] = 0xE90000000000006CLL;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A70 = v2;
  return result;
}

uint64_t sub_21B4A4108(uint64_t a1)
{
  v3[0] = 0x69662E6573756170;
  v3[1] = 0xEA00000000006C6CLL;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A78 = v2;
  return result;
}

uint64_t sub_21B4A425C(uint64_t a1)
{
  v3[0] = 0x6C69662E706F7473;
  v3[1] = 0xE90000000000006CLL;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88A80 = v2;
  return result;
}

uint64_t sub_21B4A43EC@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  if (a3 == 0.0)
  {
    *a2 = 0;
    return result;
  }

  v6 = 0x61776B6361626F67;
  if (a3 > 0.0)
  {
    v6 = 0x726177726F666F67;
  }

  v7 = 0xEA00000000006472;
  if (a3 > 0.0)
  {
    v7 = 0xE900000000000064;
  }

  if (round(a3) != 0.0)
  {
    v9 = 3158318;
    *&v16 = v6;
    *(&v16 + 1) = v7;
    v10 = fabs(a3);
    v12 = a4;
    v13 = a5;
    if (v10 > 10.0)
    {
      if (v10 < 11.0 || v10 > 15.0)
      {
        if (v10 < 16.0 || v10 > 30.0)
        {
          if (v10 < 31.0 || v10 > 45.0)
          {
            if (v10 < 46.0 || v10 > 60.0)
            {
              if (v10 < 61.0 || v10 > 75.0)
              {
                if (v10 < 76.0 || v10 > 90.0)
                {
                  goto LABEL_21;
                }

                v9 = 3160366;
              }

              else
              {
                v9 = 3487534;
              }
            }

            else
            {
              v9 = 3159598;
            }
          }

          else
          {
            v9 = 3486766;
          }
        }

        else
        {
          v9 = 3158830;
        }
      }

      else
      {
        v9 = 3485998;
      }
    }

    v9 = MEMORY[0x21CEF2F30](v9, 0xE300000000000000);
    a4 = v12;
    a5 = v13;
LABEL_21:
    v17 = v16;
    v18 = a4;
    v19 = 0;
    v20 = a5;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (qword_2811FFFF8 != -1)
    {
      v9 = swift_once();
    }

    MEMORY[0x28223BE20](v9);
    sub_21B4C7198();
    result = sub_21B3793EC(&v17);
    v8 = v14;
    goto LABEL_24;
  }

  *&v17 = v6;
  *(&v17 + 1) = v7;
  v18 = a4;
  v19 = 0;
  v20 = a5;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (qword_2811FFFF8 != -1)
  {
    result = swift_once();
  }

  MEMORY[0x28223BE20](result);
  sub_21B4C7198();
  result = sub_21B3793EC(&v17);
  v8 = v15;
LABEL_24:
  *a2 = v8;
  return result;
}

uint64_t static Glyph.PlayerBar.volume(value:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  if (a3 < 0.0 || a3 > 0.02)
  {
    if (a3 < 0.02 || a3 > 0.3)
    {
      if (a3 >= 0.3 && a3 <= 0.6 || a3 < 0.6 || a3 > 1.0)
      {
        v8 = "speaker.wave.2.fill";
      }

      else
      {
        v8 = "speaker.wave.3.fill";
      }
    }

    else
    {
      v8 = "speaker.wave.1.fill";
    }

    v6 = (v8 - 32) | 0x8000000000000000;
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xEC0000006C6C6966;
    v7 = 0x2E72656B61657073;
  }

  v11[0] = v7;
  v11[1] = v6;
  v12 = xmmword_21B4DACE0;
  LOBYTE(v13[0]) = 0;
  *&v13[1] = xmmword_21B4DAC00;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v11);
  *a2 = v10;
  return result;
}

uint64_t sub_21B4A4944(uint64_t a1)
{
  v3[0] = 1937075312;
  v3[1] = 0xE400000000000000;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDB88 = v2;
  return result;
}

uint64_t sub_21B4A4A8C(uint64_t a1)
{
  v3[0] = 0x72616D6B63656863;
  v3[1] = 0xE90000000000006BLL;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDB60 = v2;
  return result;
}

uint64_t static Glyph.HeaderButtons.download.getter@<X0>(void *a1@<X8>)
{
  v2 = _UISolariumEnabled();
  if (v2)
  {
    v5 = 0x6F642E776F727261;
    v6 = 0xEA00000000006E77;
    v7 = xmmword_21B4DACF0;
    LOBYTE(v8[0]) = 0;
    *&v8[1] = xmmword_21B4DAD10;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (qword_2811FFFF8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v5 = 0x6F642E776F727261;
  v6 = 0xEA00000000006E77;
  v7 = xmmword_21B4DACF0;
  LOBYTE(v8[0]) = 0;
  *&v8[1] = xmmword_21B4DAD00;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (qword_2811FFFF8 != -1)
  {
LABEL_6:
    v2 = swift_once();
  }

LABEL_5:
  MEMORY[0x28223BE20](v2);
  sub_21B4C7198();
  result = sub_21B3793EC(&v5);
  *a1 = v4;
  return result;
}

uint64_t sub_21B4A4E30(uint64_t a1)
{
  v3[0] = 0x73697370696C6C65;
  v3[1] = 0xE800000000000000;
  v4 = xmmword_21B4DACF0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2812005D0 = v2;
  return result;
}

uint64_t sub_21B4A4F80(uint64_t a1)
{
  v3[0] = 0xD000000000000010;
  v3[1] = 0x800000021B4E2BC0;
  v4 = xmmword_21B4DACF0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDB98 = v2;
  return result;
}

uint64_t sub_21B4A5148(__n128 a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_2811FCB40 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v11[0] = 0xD000000000000011;
  v11[1] = 0x800000021B4E2BA0;
  v12 = qword_2811FCB48;
  LOBYTE(v13[0]) = 1;
  *&v13[1] = a1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v5 = qword_2811FFFF8;
  v6 = qword_2811FCB48;
  v7 = v6;
  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  sub_21B4C7198();

  result = sub_21B3793EC(v11);
  *a4 = v10;
  return result;
}

uint64_t sub_21B4A52E0()
{
  if (qword_2811FCC18 != -1)
  {
    swift_once();
  }

  v5[0] = 0xD000000000000011;
  v5[1] = 0x800000021B4E2BA0;
  v6 = qword_2811FCC20;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC40;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_2811FCC20;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_27CD88AA0 = v4;
  return result;
}

uint64_t sub_21B4A547C(uint64_t a1)
{
  strcpy(v3, "chevron.down");
  v3[13] = 0;
  v4 = -5120;
  v5 = xmmword_21B4DACD0;
  LOBYTE(v6[0]) = 0;
  *&v6[1] = xmmword_21B4DAD20;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AA8 = v2;
  return result;
}

uint64_t sub_21B4A5604(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, void *a5)
{
  v8[0] = 0xD000000000000011;
  v8[1] = 0x800000021B4E2B00;
  v9 = a2;
  LOBYTE(v10[0]) = 0;
  *&v10[1] = a3;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v8);
  *a5 = v7;
  return result;
}

uint64_t sub_21B4A573C(uint64_t a1)
{
  v3[0] = 1918989427;
  v3[1] = 0xE400000000000000;
  v4 = xmmword_21B4DACF0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD00;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDB78 = v2;
  return result;
}

uint64_t sub_21B4A5884(uint64_t a1)
{
  v3[0] = 0xD000000000000010;
  v3[1] = 0x800000021B4E2B80;
  v4 = xmmword_21B4DAC80;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD10;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AB8 = v2;
  return result;
}

uint64_t sub_21B4A59D8(uint64_t a1)
{
  v3[0] = 0x72616D6B63656863;
  v3[1] = 0xE90000000000006BLL;
  v4 = xmmword_21B4DACD0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD10;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AC0 = v2;
  return result;
}

uint64_t sub_21B4A5B2C(uint64_t a1)
{
  v3[0] = 0x6F642E776F727261;
  v3[1] = 0xEA00000000006E77;
  v4 = xmmword_21B4DACD0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD10;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AC8 = v2;
  return result;
}

uint64_t sub_21B4A5CA8(uint64_t a1, __n128 a2, uint64_t a3, void *a4)
{
  v7[0] = 0xD00000000000001DLL;
  v7[1] = 0x800000021B4E2B60;
  v8 = a2;
  LOBYTE(v9[0]) = 0;
  *&v9[1] = xmmword_21B4DAD10;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v7);
  *a4 = v6;
  return result;
}

uint64_t sub_21B4A5DE8(uint64_t a1)
{
  v3[0] = 0x73697370696C6C65;
  v3[1] = 0xE800000000000000;
  v4 = xmmword_21B4DACD0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAD10;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AD8 = v2;
  return result;
}

uint64_t sub_21B4A5F38(uint64_t a1)
{
  v3[0] = 0x6B72616D6B6F6F62;
  v3[1] = 0xE800000000000000;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDC28 = v2;
  return result;
}

uint64_t sub_21B4A6088(uint64_t a1)
{
  strcpy(v3, "bookmark.fill");
  v4 = -4864;
  v5 = xmmword_21B4DACB0;
  LOBYTE(v6[0]) = 0;
  *&v6[1] = xmmword_21B4DACC0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDC50 = v2;
  return result;
}

uint64_t sub_21B4A61E4(uint64_t a1)
{
  v3[0] = 0x6F642E776F727261;
  v3[1] = 0xEA00000000006E77;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDC18 = v2;
  return result;
}

uint64_t sub_21B4A6338(uint64_t a1)
{
  v3[0] = 0xD000000000000016;
  v3[1] = 0x800000021B4E2B40;
  v4 = xmmword_21B4DACB0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DACC0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_2811FDC40 = v2;
  return result;
}

uint64_t sub_21B4A648C(uint64_t a1)
{
  v3[0] = 0x7261646E656C6163;
  v3[1] = 0xE800000000000000;
  v4 = xmmword_21B4DACF0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC70;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AE0 = v2;
  return result;
}

uint64_t sub_21B4A65DC(uint64_t a1)
{
  v3[0] = 0x6B72616D6B6F6F62;
  v3[1] = 0xE800000000000000;
  v4 = xmmword_21B4DACF0;
  LOBYTE(v5[0]) = 0;
  *&v5[1] = xmmword_21B4DAC70;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AE8 = v2;
  return result;
}

uint64_t sub_21B4A672C(uint64_t a1)
{
  strcpy(v3, "square.stack");
  v3[13] = 0;
  v4 = -5120;
  v5 = xmmword_21B4DACF0;
  LOBYTE(v6[0]) = 0;
  *&v6[1] = xmmword_21B4DAC70;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_2811FFFF8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_21B4C7198();
  result = sub_21B3793EC(v3);
  qword_27CD88AF0 = v2;
  return result;
}

uint64_t sub_21B4A6884()
{
  if (qword_2811FCBE0 != -1)
  {
    swift_once();
  }

  v5[0] = 0x73697370696C6C65;
  v5[1] = 0xE800000000000000;
  v6 = qword_2811FCBE8;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC20;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_2811FCBE8;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDB40 = v4;
  return result;
}

uint64_t sub_21B4A6A6C()
{
  if (qword_281200450 != -1)
  {
    swift_once();
  }

  v5[0] = 0x6C6C69662E636F64;
  v5[1] = 0xE800000000000000;
  v6 = qword_281200458;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC60;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_281200458;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_27CD88B00 = v4;
  return result;
}

uint64_t sub_21B4A6C04()
{
  if (qword_281200480 != -1)
  {
    swift_once();
  }

  strcpy(v5, "bookmark.fill");
  v6 = -4864;
  v7 = qword_281200488;
  LOBYTE(v8[0]) = 1;
  *&v8[1] = xmmword_21B4DAC40;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_281200488;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDC00 = v4;
  return result;
}

uint64_t sub_21B4A6DA8()
{
  if (qword_281200480 != -1)
  {
    swift_once();
  }

  v5[0] = 0x6B72616D6B6F6F62;
  v5[1] = 0xE800000000000000;
  v6 = qword_281200488;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC40;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_281200488;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDBD8 = v4;
  return result;
}

uint64_t sub_21B4A6F40()
{
  if (qword_281200480 != -1)
  {
    swift_once();
  }

  v5[0] = 0xD000000000000016;
  v5[1] = 0x800000021B4E2B40;
  v6 = qword_281200488;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC40;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_281200488;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDBF0 = v4;
  return result;
}

uint64_t sub_21B4A70DC()
{
  if (qword_281200480 != -1)
  {
    swift_once();
  }

  v5[0] = 0x6F642E776F727261;
  v5[1] = 0xEA00000000006E77;
  v6 = qword_281200488;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC40;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_281200488;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDBC8 = v4;
  return result;
}

uint64_t sub_21B4A7278()
{
  if (qword_2811FCBE0 != -1)
  {
    swift_once();
  }

  v5[0] = 0x73697370696C6C65;
  v5[1] = 0xE800000000000000;
  v6 = qword_2811FCBE8;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC20;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_2811FCBE8;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDBB0 = v4;
  return result;
}

uint64_t sub_21B4A7410()
{
  if (qword_2811FCB40 != -1)
  {
    swift_once();
  }

  v5[0] = 0xD000000000000016;
  v5[1] = 0x800000021B4E2B40;
  v6 = qword_2811FCB48;
  LOBYTE(v7[0]) = 1;
  *&v7[1] = xmmword_21B4DAC60;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v0 = qword_2811FFFF8;
  v1 = qword_2811FCB48;
  v2 = v1;
  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_21B4C7198();

  result = sub_21B3793EC(v5);
  qword_2811FDC68 = v4;
  return result;
}

uint64_t sub_21B4A7628(__n128 a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (qword_281200450 != -1)
  {
    v10 = a3;
    v11 = a1;
    swift_once();
    a1 = v11;
    a3 = v10;
  }

  v13[0] = 0xD000000000000011;
  v13[1] = 0x800000021B4E2B00;
  v14 = qword_281200458;
  LOBYTE(v15[0]) = 1;
  *&v15[1] = a1;
  v16 = 0;
  v17 = a3;
  v18 = 0;
  v19 = 0;
  v6 = qword_2811FFFF8;
  v7 = qword_281200458;
  v8 = v7;
  if (v6 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x28223BE20](v7);
  sub_21B4C7198();

  result = sub_21B3793EC(v13);
  *a5 = v12;
  return result;
}

uint64_t sub_21B4A77CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_21B4A7830()
{
  sub_21B4CA6E8();
  Glyph.Settings.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4A7890()
{
  sub_21B4CA6E8();
  Glyph.Settings.hash(into:)();
  return sub_21B4CA738();
}

void sub_21B4A78EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_21B4CA4B8();
    MEMORY[0x21CEF3E40](v8);
    v3 = sub_21B4CA4B8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x21CEF3E40](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x21CEF3AB0](i, a2);
      sub_21B4CA0A8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_21B4CA0A8();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s10PodcastsUI5GlyphV5ColorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_21B3F12CC(0, &qword_2811FCAB8);
      sub_21B4A8008(v4, 0);
      sub_21B4A8008(v2, 0);
      v6 = sub_21B4CA098();
      LOBYTE(v3) = 0;
      LOBYTE(v5) = 0;
      goto LABEL_10;
    }

LABEL_9:
    sub_21B4A8008(*a2, *(a2 + 8));
    sub_21B4A8008(v2, v3);
    v6 = 0;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v5 == 2)
    {
      LOBYTE(v3) = 2;
      sub_21B4A8008(*a2, 2u);
      sub_21B4A8008(v2, 2u);
      v6 = sub_21B4A0F24(v2, v4);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v5 != 1)
  {
    goto LABEL_9;
  }

  sub_21B3F12CC(0, &qword_2811FCAB8);
  LOBYTE(v3) = 1;
  sub_21B4A8008(v4, 1u);
  sub_21B4A8008(v2, 1u);
  v6 = sub_21B4CA098();
  LOBYTE(v5) = 1;
LABEL_10:
  sub_21B4A802C(v2, v3);
  sub_21B4A802C(v4, v5);
  return v6 & 1;
}

unint64_t sub_21B4A7B44()
{
  result = qword_2811FD9A8;
  if (!qword_2811FD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD9A8);
  }

  return result;
}

uint64_t sub_21B4A7B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21B4A7BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B4A7C3C(uint64_t a1, unsigned int a2)
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

uint64_t sub_21B4A7C84(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B4A7DE4()
{
  result = qword_27CD88B18;
  if (!qword_27CD88B18)
  {
    type metadata accessor for GlyphInternal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88B18);
  }

  return result;
}

uint64_t sub_21B4A7E3C(double *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  if (v3)
  {
    v5 = [objc_opt_self() configurationWithFont:v3 scale:v4];
  }

  else
  {
    v6 = a1[3];
    v7 = *(a1 + 5);
    v8 = *(a1 + 32);
    v9 = objc_opt_self();
    if (v8)
    {
      v5 = [v9 unspecifiedConfiguration];
    }

    else
    {
      v5 = [v9 configurationWithPointSize:v7 weight:v4 scale:v6];
    }
  }

  v10 = v5;
  v11 = sub_21B4C96C8();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  if (v12)
  {

    return v12;
  }

  else
  {
    sub_21B4CA338();

    MEMORY[0x21CEF2F30](*&v1, v2);
    MEMORY[0x21CEF2F30](8482, 0xE200000000000000);
    result = sub_21B4CA488();
    __break(1u);
  }

  return result;
}

id sub_21B4A7FF4(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21B4A8008(result, a2);
  }

  return result;
}

id sub_21B4A8008(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_21B4A802C(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

void sub_21B4A8050(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_21B4A802C(a1, a2);
  }
}

PodcastsUI::ColumnSpan __swiftcall ColumnSpan.init(integerLiteral:)(Swift::Int integerLiteral)
{
  *v1 = integerLiteral;
  v1[1] = 1;
  result.columns = integerLiteral;
  return result;
}

void *sub_21B4A80F0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 1;
  return result;
}

BOOL static Grid.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = *(a2 + 8);
      }

      return (v4 & 1) != 0;
    }

    if (v3 == 1)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (v3 > 2)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

BOOL sub_21B4A81A4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

PodcastsUI::ColumnSpan __swiftcall Grid.columnSpan(for:horizontal:)(PodcastsUI::SizeClass a1, Swift::Bool horizontal)
{
  v4 = *v3;
  if (*(v3 + 8) != 1)
  {
    goto LABEL_23;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      if (a1 > PodcastsUI_SizeClass_four)
      {
        v17 = 4;
        if (horizontal)
        {
          v17 = 7;
        }

        v18 = 1;
        if (horizontal)
        {
          v18 = 2;
        }

        if (a1 != PodcastsUI_SizeClass_seven)
        {
          v17 = 5;
          v18 = 1;
        }

        v19 = 3;
        if (horizontal)
        {
          v19 = 5;
        }

        v20 = 1;
        if (horizontal)
        {
          v20 = 2;
        }

        if (a1 != PodcastsUI_SizeClass_five)
        {
          v19 = 3;
          v20 = 1;
        }

        if (a1 <= PodcastsUI_SizeClass_six)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (a1 <= PodcastsUI_SizeClass_six)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        *v2 = v21;
        v2[1] = v22;
      }

      else
      {
        v5 = 1;
        v6 = 3;
        if (!horizontal)
        {
          v6 = 1;
        }

        v7 = 1;
        if (horizontal)
        {
          v7 = 2;
        }

        if (a1 == PodcastsUI_SizeClass_three)
        {
          v8 = v6;
        }

        else
        {
          v8 = 2;
        }

        if (a1 == PodcastsUI_SizeClass_three)
        {
          v9 = v7;
        }

        else
        {
          v9 = 1;
        }

        if (a1 >= PodcastsUI_SizeClass_three)
        {
          v5 = v9;
        }

        else
        {
          v8 = 1;
        }

        *v2 = v8;
        v2[1] = v5;
      }

      goto LABEL_85;
    }

    v10 = a1;
    v11 = &unk_21B4DB218;
    goto LABEL_22;
  }

  if (v4 == 2)
  {
    v10 = a1;
    v11 = &unk_21B4DB258;
LABEL_22:
    v4 = v11[v10];
LABEL_23:
    *v2 = v4;
    v2[1] = 1;
    goto LABEL_85;
  }

  if (a1 > PodcastsUI_SizeClass_four)
  {
    if (a1 > PodcastsUI_SizeClass_six)
    {
      v27 = 6;
      if (horizontal)
      {
        v27 = 28;
      }

      v28 = 5;
      if (!horizontal)
      {
        v28 = 1;
      }

      v29 = 7;
      if (horizontal)
      {
        v29 = 15;
      }

      v30 = 1;
      if (horizontal)
      {
        v30 = 2;
      }

      if (a1 == PodcastsUI_SizeClass_seven)
      {
        v31 = v27;
      }

      else
      {
        v31 = v29;
      }

      if (a1 == PodcastsUI_SizeClass_seven)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      *v2 = v31;
      v2[1] = v32;
    }

    else
    {
      v23 = 1;
      v24 = 5;
      if (horizontal)
      {
        v24 = 9;
      }

      v25 = 1;
      if (horizontal)
      {
        v25 = 2;
      }

      if (a1 == PodcastsUI_SizeClass_five)
      {
        v26 = 4;
      }

      else
      {
        v26 = v24;
      }

      if (a1 != PodcastsUI_SizeClass_five)
      {
        v23 = v25;
      }

      *v2 = v26;
      v2[1] = v23;
    }
  }

  else
  {
    v12 = 1;
    v13 = 2;
    if (a1 != PodcastsUI_SizeClass_three)
    {
      v13 = 3;
    }

    v14 = 4;
    if (!horizontal)
    {
      v14 = 1;
    }

    v15 = 3;
    if (!horizontal)
    {
      v15 = 1;
    }

    if (a1)
    {
      v12 = v15;
    }

    else
    {
      v14 = 1;
    }

    if (a1 <= PodcastsUI_SizeClass_two)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (a1 > PodcastsUI_SizeClass_two)
    {
      v12 = 1;
    }

    *v2 = v16;
    v2[1] = v12;
  }

LABEL_85:
  LOBYTE(result.span) = horizontal;
  LOBYTE(result.columns) = a1;
  return result;
}

BOOL _s10PodcastsUI8PageSizeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 8);
  if (v2 > 3)
  {
    if (*(a2 + 8) > 5u)
    {
      if (v2 == 6)
      {
        result = 0;
        if (v7 != 6)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v7 != 7)
        {
          return result;
        }
      }
    }

    else if (v2 == 4)
    {
      result = 0;
      if (v7 != 4)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v7 != 5)
      {
        return result;
      }
    }
  }

  else if (*(a2 + 8) > 1u)
  {
    if (v2 == 2)
    {
      result = 0;
      if (v7 != 2)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v7 != 3)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (*(a2 + 8))
    {
      if (v7 != 1)
      {
        return result;
      }
    }

    else if (v7)
    {
      return result;
    }
  }

  if (v6 == *(a2 + 16) && v5 == *(a2 + 24) && v4 == *(a2 + 32))
  {
    return v3 == *(a2 + 40);
  }

  return result;
}

uint64_t sub_21B4A8524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 48))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21B4A8568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

double SizeClass.peek.getter(unsigned __int8 a1)
{
  result = 40.0;
  if (a1 < 3u)
  {
    return 36.0;
  }

  return result;
}

uint64_t sub_21B4A8638@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10PodcastsUI9SizeClassO8rawValueACSg12CoreGraphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_21B4A8664@<D0>(double *a1@<X8>)
{
  result = dbl_21B4DB5E8[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_21B4A868C()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E70](qword_21B4DB5A8[v1]);
  return sub_21B4CA738();
}

uint64_t sub_21B4A8714()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E70](qword_21B4DB5A8[v1]);
  return sub_21B4CA738();
}

uint64_t SizeClass.SizeClassCategory.hashValue.getter(unsigned __int8 a1)
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](a1);
  return sub_21B4CA738();
}

uint64_t static SizeClass.deviceCategory.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 nativeBounds];
  v2 = v1;
  v4 = v3;

  if (v2 == 320.0 && v4 == 480.0)
  {
    return 0;
  }

  if (v2 == 640.0 && (v4 == 960.0 || v4 == 1136.0))
  {
    return 0;
  }

  result = 1;
  if (v2 != 750.0 || v4 != 1334.0)
  {
    if (v4 == 1920.0 && v2 == 1080.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_21B4A894C()
{
  if (byte_27CD88D88)
  {
    v0 = 0;
  }

  else
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (v2)
    {
      v0 = 0;
    }

    else
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 bounds];
      v5 = v4;
      v7 = v6;

      v0 = v7 / v5 < 2.0;
    }
  }

  byte_2811FD740 = v0;
}

uint64_t static SizeClass.isPhone8RatioOrSmaller.getter()
{
  if (qword_2811FD738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_2811FD740;
}

uint64_t static SizeClass.isPhone8RatioOrSmaller.setter(char a1)
{
  if (qword_2811FD738 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2811FD740 = a1 & 1;
  return result;
}

uint64_t (*static SizeClass.isPhone8RatioOrSmaller.modify())()
{
  if (qword_2811FD738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21B4A8BA8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_131:
    v89 = *v89;
    if (!v89)
    {
      goto LABEL_169;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_133:
      v80 = v9 + 16;
      v81 = *(v9 + 2);
      if (v81 >= 2)
      {
        while (1)
        {
          v82 = *v5;
          if (!*v5)
          {
            goto LABEL_167;
          }

          v83 = v5;
          v84 = &v9[16 * v81];
          v85 = *v84;
          v86 = &v80[2 * v81];
          v5 = v86[1];
          sub_21B4A922C((v82 + *v84), (v82 + *v86), v5 + v82, v89);
          if (v4)
          {
          }

          if (v5 < v85)
          {
            goto LABEL_155;
          }

          if (v81 - 2 >= *v80)
          {
            goto LABEL_156;
          }

          *v84 = v85;
          *(v84 + 1) = v5;
          v87 = *v80 - v81;
          if (*v80 < v81)
          {
            goto LABEL_157;
          }

          v81 = *v80 - 1;
          result = memmove(v86, v86 + 2, 16 * v87);
          *v80 = v81;
          v5 = v83;
          if (v81 <= 1)
          {
          }
        }
      }
    }

LABEL_163:
    result = sub_21B4A95A4(v9);
    v9 = result;
    goto LABEL_133;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*v5 + v8);
      v12 = dbl_21B4DB5E8[v11];
      v13 = dbl_21B4DB5E8[*(*v5 + v10)];
      v8 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v14 = v11;
        while (1)
        {
          v15 = *(*v5 + v8);
          if (v14 > 3u)
          {
            break;
          }

          if (v14 > 1u)
          {
            if (v14 == 2)
            {
              v16 = v12 < v13;
              v18 = v15 > 1;
              goto LABEL_29;
            }

            v16 = v12 < v13;
            v19 = (v15 - 3) >= 5;
LABEL_22:
            v18 = !v19;
            goto LABEL_29;
          }

          if (v14)
          {
            v16 = v12 < v13;
            v18 = v15 != 0;
            goto LABEL_29;
          }

          if (v12 < v13)
          {
            goto LABEL_33;
          }

LABEL_30:
          v14 = *(*v5 + v8++);
          if (v6 == v8)
          {
            v8 = v6;
            goto LABEL_32;
          }
        }

        if (v14 > 5u)
        {
          if (v14 == 6)
          {
            v16 = v12 < v13;
            v17 = (v15 & 0xFFFFFFFE) == 6;
          }

          else
          {
            v16 = v12 < v13;
            v17 = v15 == 7;
          }
        }

        else
        {
          if (v14 != 4)
          {
            v16 = v12 < v13;
            v19 = (v15 - 5) >= 3;
            goto LABEL_22;
          }

          v16 = v12 < v13;
          v17 = (v15 & 0xFFFFFFFFFFFFFFFCLL) == 4;
        }

        v18 = v17;
LABEL_29:
        if (((v16 ^ v18) & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

LABEL_32:
      if (v12 < v13)
      {
LABEL_33:
        if (v8 < v10)
        {
          goto LABEL_160;
        }

        if (v10 < v8)
        {
          v20 = v8 - 1;
          v21 = v10;
          do
          {
            if (v21 != v20)
            {
              v24 = *v5;
              if (!*v5)
              {
                goto LABEL_166;
              }

              v22 = *(v24 + v21);
              *(v24 + v21) = *(v24 + v20);
              *(v24 + v20) = v22;
            }
          }

          while (++v21 < v20--);
          v6 = v5[1];
        }
      }
    }

    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_159;
      }

      if (v8 - v10 < v7)
      {
        break;
      }
    }

LABEL_80:
    if (v8 < v10)
    {
      goto LABEL_158;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B3F21F0(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_21B3F21F0((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v89;
    if (!*v89)
    {
      goto LABEL_168;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_100:
          if (v42)
          {
            goto LABEL_146;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_149;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_153;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_114:
        if (v60)
        {
          goto LABEL_148;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_151;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_121:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (!*v5)
        {
          goto LABEL_165;
        }

        v77 = *&v9[16 * v76 + 32];
        v78 = *&v9[16 * v38 + 40];
        sub_21B4A922C((*v5 + v77), (*v5 + *&v9[16 * v38 + 32]), *v5 + v78, v37);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21B4A95A4(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v79 = &v9[16 * v76];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_21B4A9518(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_144;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_145;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_147;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_150;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_154;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v6 = v5[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v10, v7))
  {
    goto LABEL_161;
  }

  if (v10 + v7 < v6)
  {
    v6 = v10 + v7;
  }

  if (v6 < v10)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  if (v8 == v6)
  {
    goto LABEL_80;
  }

  v25 = *v5;
  v26 = (*v5 + v8);
  v27 = v10 - v8;
LABEL_52:
  v28 = *(v25 + v8);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v30 - 1);
    if (v31 <= 3)
    {
      if (*(v30 - 1) <= 1u)
      {
        if (v31 == 1 && v28 == 0)
        {
          goto LABEL_75;
        }

LABEL_51:
        ++v8;
        ++v26;
        --v27;
        if (v8 == v6)
        {
          v8 = v6;
          goto LABEL_80;
        }

        goto LABEL_52;
      }

      if (v31 == 2)
      {
        if (v28 >= 2)
        {
          goto LABEL_51;
        }
      }

      else if (v28 >= 3)
      {
        goto LABEL_51;
      }
    }

    else if (*(v30 - 1) > 5u)
    {
      if (v31 == 6)
      {
        if (v28 - 8 >= 0xFFFFFFFE)
        {
          goto LABEL_51;
        }
      }

      else if (v28 == 7)
      {
        goto LABEL_51;
      }
    }

    else if (v31 == 4)
    {
      if (v28 >= 4)
      {
        goto LABEL_51;
      }
    }

    else if (v28 >= 5)
    {
      goto LABEL_51;
    }

LABEL_75:
    if (!v25)
    {
      break;
    }

    *v30 = v31;
    *--v30 = v28;
    v19 = __CFADD__(v29++, 1);
    if (v19)
    {
      goto LABEL_51;
    }
  }

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
  return result;
}

uint64_t sub_21B4A922C(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v12 > 3)
        {
          if (*v4 > 5u)
          {
            if (v12 == 6)
            {
              if (v11 - 8 < 0xFFFFFFFE)
              {
                goto LABEL_32;
              }
            }

            else if (v11 != 7)
            {
              goto LABEL_32;
            }
          }

          else if (v12 == 4)
          {
            if (v11 < 4)
            {
              goto LABEL_32;
            }
          }

          else if (v11 < 5)
          {
            goto LABEL_32;
          }
        }

        else if (*v4 > 1u)
        {
          if (v12 == 2)
          {
            if (v11 < 2)
            {
              goto LABEL_32;
            }
          }

          else if (v11 < 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (*v4)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
LABEL_32:
            v15 = v6 + 1;
            if (v7 >= v6 && v7 < v15)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        v14 = v4 + 1;
        LOBYTE(v11) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        *v7 = v11;
LABEL_35:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_83;
    }

LABEL_82:
    if (v6 >= v10)
    {
      goto LABEL_83;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_81:
    if (v6 != v4)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  do
  {
    v16 = v6 - 1;
    --v5;
    v17 = v10;
    while (1)
    {
      v19 = *--v17;
      v18 = v19;
      v20 = *v16;
      if (v20 <= 3)
      {
        break;
      }

      if (*v16 > 5u)
      {
        if (v20 == 6)
        {
          if (v18 - 8 < 0xFFFFFFFE)
          {
            goto LABEL_73;
          }
        }

        else if (v18 != 7)
        {
          goto LABEL_73;
        }
      }

      else if (v20 == 4)
      {
        if (v18 < 4)
        {
          goto LABEL_73;
        }
      }

      else if (v18 < 5)
      {
        goto LABEL_73;
      }

LABEL_70:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v18;
      }

      --v5;
      v10 = v17;
      if (v17 <= v4)
      {
        v10 = v17;
        goto LABEL_81;
      }
    }

    if (*v16 > 1u)
    {
      if (v20 == 2)
      {
        if (v18 < 2)
        {
          goto LABEL_73;
        }
      }

      else if (v18 < 3)
      {
        goto LABEL_73;
      }

      goto LABEL_70;
    }

    if (*v16)
    {
      v21 = v18 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_70;
    }

LABEL_73:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v20;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v16 > v7);
  v6 = v16;
  if (v16 == v4)
  {
    goto LABEL_82;
  }

LABEL_83:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_21B4A9518(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B4A95A4(v3);
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

uint64_t _s10PodcastsUI9SizeClassO8rawValueACSg12CoreGraphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 375.0)
  {
    return 0;
  }

  if (a1 == 501.0)
  {
    return 1;
  }

  if (a1 == 727.0)
  {
    return 2;
  }

  if (a1 == 982.0)
  {
    return 3;
  }

  if (a1 == 1195.0)
  {
    return 4;
  }

  if (a1 == 4000.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2501.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1501.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21B4A96E4()
{
  result = qword_27CD88B38;
  if (!qword_27CD88B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88B38);
  }

  return result;
}

unint64_t sub_21B4A9748()
{
  result = qword_27CD88B48;
  if (!qword_27CD88B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88B48);
  }

  return result;
}

unint64_t sub_21B4A97A0()
{
  result = qword_27CD88B50;
  if (!qword_27CD88B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SizeClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SizeClass(uint64_t result, unsigned int a2, unsigned int a3)
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

id EpisodeTextInfoDetail.summary.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *EpisodeTextInfoDetail.notes.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t EpisodeTextInfoDetail.init(summary:notes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id NowPlayingEpisodeContextItem.notes.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t NowPlayingEpisodeContextItem.plainNotes.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NowPlayingEpisodeContextItem.plainNotes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NowPlayingEpisodeContextItem.init(notes:plainNotes:description:descriptionHasHTML:isLocal:episodeShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = *(type metadata accessor for NowPlayingEpisodeContextItem(0) + 36);
  v19 = sub_21B4C5748();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;

  return sub_21B4AAE78(a8, a9 + v18);
}

uint64_t LibraryEpisodeContextItem.summary.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LibraryEpisodeContextItem.summary.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *LibraryEpisodeContextItem.cachedDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t LibraryEpisodeContextItem.description.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t LibraryEpisodeContextItem.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t LibraryEpisodeContextItem.descriptionWithoutHTML.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t LibraryEpisodeContextItem.descriptionWithoutHTML.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_21B4A9F6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 36);

  return sub_21B3F2CD8(v4, a2);
}

uint64_t sub_21B4A9FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 36);

  return sub_21B4AAE78(a1, v4);
}

uint64_t LibraryEpisodeContextItem.init(summary:cachedDescription:description:descriptionWithoutHTML:descriptionHasHTML:episodeShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *(type metadata accessor for LibraryEpisodeContextItem(0) + 36);
  v19 = sub_21B4C5748();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;

  return sub_21B4AAE78(a10, a9 + v18);
}

uint64_t EpisodeTextInfoProvider.textInfoDetailForContext(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = sub_21B4C5428();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C5748();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v82 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for LibraryEpisodeContextItem(0);
  MEMORY[0x28223BE20](v79);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NowPlayingEpisodeContextItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EpisodeTextInfoContext(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v75 - v21;
  v83 = v6;
  v84 = v5;
  (v6[7])(&v75 - v21, 1, 1, v5, v20);
  sub_21B4AAF28(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21B4AAFFC(v15, v9, type metadata accessor for LibraryEpisodeContextItem);
    v80 = v9[56];
    v23 = 24;
    if (v80)
    {
      v23 = 40;
    }

    v24 = 32;
    if (v80)
    {
      v24 = 48;
    }

    v25 = *&v9[v24];
    v26 = *&v9[v23];
    v86 = v25;
    v81 = v26;
    if (!v25)
    {
      goto LABEL_15;
    }

    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v27 && (v28 = *(v9 + 2)) != 0)
    {

      v29 = v28;
      v30 = [v29 length];
      sub_21B40C1F4(v22);
      v31 = v87;
      if (!v30)
      {

        v28 = 0;
      }
    }

    else
    {
LABEL_15:

      sub_21B40C1F4(v22);
      v28 = 0;
      v31 = v87;
    }

    v34 = *(v9 + 1);
    v85 = *v9;
    sub_21B3F2CD8(&v9[*(v79 + 36)], v22);

    sub_21B4AB064(v9, type metadata accessor for LibraryEpisodeContextItem);
    v35 = v83;
    v36 = v84;
  }

  else
  {
    sub_21B40C1F4(v22);
    sub_21B4AAFFC(v15, v12, type metadata accessor for NowPlayingEpisodeContextItem);
    if (v12[41] == 1)
    {
      v32 = *(v12 + 2);
      v81 = *(v12 + 1);
      v28 = *v12;
      v33 = *v12;
      v86 = v32;
    }

    else
    {
      v81 = 0;
      v86 = 0;
      v28 = 0;
    }

    v35 = v83;
    v36 = v84;
    v31 = v87;
    v34 = *(v12 + 4);
    if (v34)
    {
      v37 = HIBYTE(v34) & 0xF;
      v85 = *(v12 + 3);
      if ((v34 & 0x2000000000000000) == 0)
      {
        v37 = v85 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
      }

      else
      {
        v85 = 0;
        v34 = 0;
      }
    }

    else
    {
      v85 = 0;
    }

    v80 = v12[40];
    sub_21B3F2CD8(&v12[*(v10 + 36)], v22);
    sub_21B4AB064(v12, type metadata accessor for NowPlayingEpisodeContextItem);
  }

  sub_21B3F2CD8(v22, v18);
  v38 = v35[6](v18, 1, v36);
  v39 = v82;
  if (v38 == 1)
  {
    sub_21B40C1F4(v18);
    v40 = v86;
    if (v86)
    {
      goto LABEL_28;
    }

LABEL_50:
    if (!v34)
    {
      v64 = 0;
      if (v28)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    }

LABEL_51:
    v68 = sub_21B4C7588();
    sub_21B4C7578();
    sub_21B4C7568();
    v69 = objc_allocWithZone(v68);
    v64 = sub_21B4C75A8();
    if (v28)
    {
      goto LABEL_52;
    }

LABEL_54:
    result = sub_21B40C1F4(v22);
    v73 = 0;
    goto LABEL_55;
  }

  v35[4](v82, v18, v36);
  if (v28)
  {
    v59 = v28;
    v28 = _s10PodcastsUI15TimestampParserC03addC12Attributions2to10episodeURLSo18NSAttributedStringCSgAH_10Foundation0I0VtFZ_0(v59, v39);
  }

  if (v80)
  {
    v60 = &qword_2811FF000;
    v75 = v22;
    if (v86)
    {
      v88 = v81;
      v89 = v86;
      if (qword_2811FFB00 != -1)
      {
        swift_once();
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B58);
      v62 = __swift_project_value_buffer(v61, qword_2811FFB08);
      MEMORY[0x28223BE20](v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B60);
      sub_21B4AAFA8();
      sub_21B3F1278();
      sub_21B3F1314(&qword_2811FD660, &qword_27CD88B58);
      sub_21B4C9C48();

      v63 = v91;
      v81 = v90;
      v31 = v87;
      v22 = v75;
      v35 = v83;
      v36 = v84;
      v60 = &qword_2811FF000;
    }

    else
    {
      v63 = 0;
    }

    v86 = v63;
    if (v34)
    {
      v79 = 0;
      v88 = v85;
      v89 = v34;
      if (v60[352] != -1)
      {
        swift_once();
      }

      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B58);
      v66 = __swift_project_value_buffer(v65, qword_2811FFB08);
      MEMORY[0x28223BE20](v66);
      v67 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B60);
      sub_21B4AAFA8();
      sub_21B3F1278();
      sub_21B3F1314(&qword_2811FD660, &qword_27CD88B58);
      v39 = v67;
      sub_21B4C9C48();

      v34 = v91;
      v85 = v90;
      v31 = v87;
      v22 = v75;
      v35 = v83;
      v36 = v84;
    }

    else
    {
      v39 = v82;
    }
  }

  (v35[1])(v39, v36);
  v40 = v86;
  if (!v86)
  {
    goto LABEL_50;
  }

LABEL_28:
  if (!v34)
  {
    goto LABEL_40;
  }

  v83 = v28;
  v75 = v22;
  v41 = objc_allocWithZone(MEMORY[0x277CCAB50]);

  v42 = [v41 init];
  v43 = v76;
  sub_21B4C53F8();
  v44 = sub_21B4C53D8();
  v84 = v34;
  v45 = v78;
  v46 = *(v77 + 8);
  v46(v43, v78);
  [v42 formUnionWithCharacterSet_];

  sub_21B4C53E8();
  v47 = sub_21B4C53D8();
  v46(v43, v45);
  [v42 formUnionWithCharacterSet_];

  sub_21B4C5418();
  v48 = sub_21B4C53D8();
  v46(v43, v45);
  v82 = v46;
  [v42 formUnionWithCharacterSet_];

  v90 = v81;
  v91 = v40;
  sub_21B4C5408();
  sub_21B3A5DF0();
  v49 = v42;
  v50 = sub_21B4CA1E8();
  v46(v43, v45);

  v90 = v50;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800);
  sub_21B3F1314(&qword_281200560, &qword_27CD86800);
  v51 = sub_21B4C9698();
  v81 = v52;

  v90 = v85;
  v91 = v84;
  sub_21B4C5408();
  v86 = v49;

  v53 = sub_21B4CA1E8();
  (v82)(v43, v45);

  v90 = v53;
  v54 = sub_21B4C9698();
  v56 = v55;
  v57 = v81;

  v90 = v51;
  v91 = v57;
  v88 = v54;
  v89 = v56;
  if ((sub_21B4CA228() & 1) == 0)
  {

    v31 = v87;
    v22 = v75;
    v28 = v83;
    goto LABEL_51;
  }

  v90 = v51;
  v91 = v57;
  v88 = v54;
  v89 = v56;
  v58 = sub_21B4CA1F8();

  v31 = v87;
  v22 = v75;
  v28 = v83;
  if (!v58 && !v80)
  {

    v28 = 0;
    goto LABEL_51;
  }

LABEL_40:

  v64 = 0;
  if (!v28)
  {
    goto LABEL_54;
  }

LABEL_52:
  v70 = sub_21B4C7588();
  v71 = v28;
  sub_21B4C7568();
  v72 = objc_allocWithZone(v70);
  v73 = sub_21B4C7598();

  result = sub_21B40C1F4(v22);
LABEL_55:
  *v31 = v64;
  v31[1] = v73;
  return result;
}

uint64_t _s10PodcastsUI21EpisodeTextInfoDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_21B4C7588();
    v6 = v4;
    v7 = v2;
    v8 = sub_21B4CA098();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_21B4C7588();
      v9 = v5;
      v10 = v3;
      v11 = sub_21B4CA098();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21B4AAE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B4AAF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeTextInfoContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B4AAFA8()
{
  result = qword_2811FCE68;
  if (!qword_2811FCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE68);
  }

  return result;
}

uint64_t sub_21B4AAFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B4AB064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21B4AB0C4()
{
  sub_21B4AB170(319, &qword_2811FE170, type metadata accessor for NowPlayingEpisodeContextItem);
  if (v0 <= 0x3F)
  {
    sub_21B4AB170(319, qword_2811FE988, type metadata accessor for LibraryEpisodeContextItem);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21B4AB170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21B4AB1BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_21B4AB218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_21B4AB2A0()
{
  sub_21B4AB3CC(319, &unk_2811FCCC0, sub_21B4AB380);
  if (v0 <= 0x3F)
  {
    sub_21B37580C();
    if (v1 <= 0x3F)
    {
      sub_21B4AB3CC(319, &qword_2812006B8, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21B4AB380()
{
  result = qword_2812004F0;
  if (!qword_2812004F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812004F0);
  }

  return result;
}

void sub_21B4AB3CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21B4CA188();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21B4AB448()
{
  sub_21B37580C();
  if (v0 <= 0x3F)
  {
    sub_21B4AB3CC(319, &unk_2811FCCC0, sub_21B4AB380);
    if (v1 <= 0x3F)
    {
      sub_21B4AB3CC(319, &qword_2812006B8, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_21B4AB604;
}

void sub_21B4AB604(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

id PresentationSource.position.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 48);
  *(a1 + 40) = v7;
  return sub_21B4AB668(v2, v3, v4, v5, v6, v7);
}

id sub_21B4AB668(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21B4AB680(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

id sub_21B4AB680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

__n128 PresentationSource.position.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21B4AB6E4(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

void sub_21B4AB6E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_21B4AB6FC(a1, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_21B4AB6FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void static PresentationSource.topmostPresentationSource.getter(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (!v3)
  {
    goto LABEL_9;
  }

  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v4 = [v3 window];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v4 rootViewController];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 presentedViewController];
  if (v6)
  {
    do
    {
      v8 = v6;

      v6 = [v8 presentedViewController];
      v7 = v8;
      v5 = v8;
    }

    while (v6);
  }

  else
  {
    v7 = v5;
  }

LABEL_10:
  v9 = v7;
  swift_unknownObjectWeakAssign();
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 48) = -1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  swift_unknownObjectWeakAssign();

  sub_21B4AB6E4(*(a3 + 8), *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), *(a3 + 48));
  result = *a2;
  *(a3 + 24) = *(a2 + 16);
  *(a3 + 8) = result;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  return result;
}

__n128 PresentationSource.init(viewController:view:location:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, CGFloat a3@<X2>, CGFloat a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a6 + 40) = 0;
  *(a6 + 24) = 0u;
  v19 = 0u;
  *(a6 + 8) = 0u;
  *(a6 + 48) = -1;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    if (a5)
    {
      v17 = *(MEMORY[0x277CBF398] + 16);
      v19 = *MEMORY[0x277CBF398];

      v12 = 0;
    }

    else
    {
      v21.origin.x = a3;
      v21.origin.y = a4;
      v21.size.width = 0.0;
      v21.size.height = 0.0;
      v22 = CGRectInset(v21, -20.0, -20.0);
      width = v22.size.width;
      x = v22.origin.x;
      height = v22.size.height;
      y = v22.origin.y;

      v12 = 0;
      v13.n128_f64[0] = width;
      v13.n128_f64[1] = height;
      v17 = v13;
      v13.n128_f64[0] = x;
      v13.n128_f64[1] = y;
      v19 = v13;
    }
  }

  else
  {

    v12 = -1;
    v17 = 0u;
  }

  sub_21B4AB6E4(*(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32), *(a6 + 40), *(a6 + 48));
  *(a6 + 8) = a2;
  result = v19;
  *(a6 + 16) = v19;
  *(a6 + 32) = v17;
  *(a6 + 48) = v12;
  return result;
}

void PresentationSource.init(view:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 48) = -1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (a1)
  {
    v4 = a1;
    v5 = UIView.mt_viewController.getter();

    if (v5)
    {
      sub_21B4ABCB8(a2);
      swift_unknownObjectWeakInit();
      *(a2 + 40) = 0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 48) = -1;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      swift_unknownObjectWeakAssign();

      sub_21B4AB6E4(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
      v6 = MEMORY[0x277CBF398];
      *(a2 + 8) = a1;
      v7 = v6[1];
      *(a2 + 16) = *v6;
      *(a2 + 32) = v7;
      *(a2 + 48) = 0;
      return;
    }
  }

  swift_unknownObjectWeakInit();
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v17 = -1;
  v18 = 0;
  v19 = 0;
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    if ([v9 respondsToSelector_])
    {
      v10 = [v9 window];
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = [v10 rootViewController];

        if (v11)
        {
          v12 = [v11 presentedViewController];
          if (v12)
          {
            do
            {
              v9 = v12;

              v12 = [v9 presentedViewController];
              v11 = v9;
            }

            while (v12);
          }

          else
          {
            v9 = v11;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v9 = 0;
  }

LABEL_13:

  sub_21B4ABCB8(a2);
  swift_unknownObjectWeakAssign();

  sub_21B4ABCE8(v13, a2);
}

void PresentationSource.init(viewController:gestureRecognizer:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 48) = -1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  swift_unknownObjectWeakAssign();
  v6 = [a2 view];
  if (v6)
  {
    [a2 locationInView_];
    v12.size.width = 0.0;
    v12.size.height = 0.0;
    v13 = CGRectInset(v12, -20.0, -20.0);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;

    v11 = 0;
  }

  else
  {

    v11 = -1;
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
  }

  sub_21B4AB6E4(*(a3 + 8), *(a3 + 16), *(a3 + 24), *(a3 + 32), *(a3 + 40), *(a3 + 48));
  *(a3 + 8) = v6;
  *(a3 + 16) = x;
  *(a3 + 24) = y;
  *(a3 + 32) = width;
  *(a3 + 40) = height;
  *(a3 + 48) = v11;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v60 = Strong;
  if (Strong)
  {
    v14 = Strong;
    v15 = [v14 parentViewController];
    if (v15)
    {

      goto LABEL_4;
    }
  }

  v18 = [objc_opt_self() sharedApplication];
  v19 = [v18 delegate];

  if (!v19)
  {
    goto LABEL_19;
  }

  if (([v19 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return;
  }

  v20 = [v19 window];
  swift_unknownObjectRelease();
  if (!v20 || (v14 = [v20 rootViewController], v20, !v14))
  {
LABEL_19:

    return;
  }

LABEL_4:
  v16 = [v14 presentedViewController];
  if (v16)
  {
    do
    {
      v17 = v16;

      v16 = [v17 presentedViewController];
      v14 = v17;
    }

    while (v16);
  }

  else
  {
    v17 = v14;
  }

  v21 = [v17 popoverPresentationController];
  if (v21)
  {
    v60 = v21;

    goto LABEL_19;
  }

  v22 = [v17 transitionCoordinator];
  if (v22)
  {
    v23 = v22;
    sub_21B4AC830(v6, v68);
    v24 = swift_allocObject();
    sub_21B4ABCE8(v68, v24 + 16);
    *(v24 + 88) = a1;
    *(v24 + 96) = a2 & 1;
    *(v24 + 104) = a3;
    *(v24 + 112) = a4 & 1;
    *(v24 + 120) = a5;
    *(v24 + 128) = a6;
    v66 = sub_21B4AC868;
    v67 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_21B4AC6E4;
    v65 = &block_descriptor_9_0;
    v25 = _Block_copy(&aBlock);
    v26 = a1;
    sub_21B416040(a5);

    [v23 animateAlongsideTransition:0 completion:v25];
    _Block_release(v25);

    swift_unknownObjectRelease();
  }

  else
  {
    ObjectType = swift_getObjectType();
    if (ObjectType == sub_21B3F12CC(0, &unk_2811FCCE0))
    {
      sub_21B4AC830(v6, v68);
      v33 = swift_allocObject();
      sub_21B4ABCE8(v68, v33 + 16);
      *(v33 + 88) = a1;
      *(v33 + 96) = a2 & 1;
      *(v33 + 104) = a3;
      v34 = a4 & 1;
      *(v33 + 112) = v34;
      *(v33 + 120) = a5;
      *(v33 + 128) = a6;
      v66 = sub_21B4AC868;
      v67 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = sub_21B36CDB8;
      v65 = &block_descriptor_3;
      v35 = _Block_copy(&aBlock);
      v36 = a1;
      sub_21B416040(a5);

      [v17 dismissViewControllerAnimated:v34 completion:v35];
    }

    else
    {
      if (a2)
      {
        v28 = [objc_opt_self() sharedApplication];
        v29 = [v28 delegate];

        if (v29)
        {
          if ([v29 respondsToSelector_])
          {
            v30 = [v29 window];
            swift_unknownObjectRelease();
            if (v30)
            {
              v31 = [v30 traitCollection];

              v32 = [v31 horizontalSizeClass];
              if (v32 == 2 && *(v6 + 48) != 255)
              {
                [a1 setModalPresentationStyle_];
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      v37 = [a1 popoverPresentationController];
      if (v37)
      {
        v61 = *(v6 + 48);
        if (v61 == 255)
        {
        }

        else
        {
          v38 = *(v6 + 8);
          v39 = *(v6 + 16);
          v40 = *(v6 + 32);
          v59 = *(v6 + 24);
          v55 = *(v6 + 40);
          v56 = v37;
          v68[9] = &unk_282CD7578;
          v41 = swift_dynamicCastObjCProtocolConditional();
          v57 = v39;
          v58 = *&v40;
          if (v41)
          {
            v53 = v41;
            v42 = a1;
            v54 = v38;
            v43 = v38;
            v44 = v42;
            v45 = *&v39;
            v46 = *&v55;
            sub_21B4AB668(v43, v45, *&v59, v40, v55, v61);
            v47 = [v44 presentationController];
            if (v47)
            {
              v48 = v47;
              [v47 setDelegate_];
            }

            v38 = v54;
          }

          else
          {
            v49 = *&v39;
            v46 = *&v55;
            sub_21B4AB680(v38, v49, *&v59, v40, v55, v61 & 1);
          }

          [v56 setPermittedArrowDirections_];
          if (v61)
          {
            sub_21B4AB668(v38, *&v57, *&v59, *&v58, *&v46, v61);
            sub_21B4AB680(v38, *&v57, *&v59, *&v58, *&v46, 1);
            [v56 setSourceItem_];

            sub_21B4AB6E4(v38, *&v57, *&v59, *&v58, v55, v61);
            sub_21B4AB6E4(v38, *&v57, *&v59, *&v58, v55, v61);
            sub_21B4AB6FC(v38, *&v57, *&v59, *&v58, v55, 1);
          }

          else
          {
            v50 = v58;
            v51 = v46;
            [v56 setSourceView_];
            if (byte_27CD88D88)
            {
              v70.origin.x = v57;
              v70.origin.y = v59;
              v70.size.width = v58;
              v70.size.height = v46;
              if (CGRectGetWidth(v70) <= 0.0)
              {
                v71.origin.x = v57;
                v71.origin.y = v59;
                v71.size.width = v58;
                v71.size.height = v46;
                if (CGRectGetHeight(v71) <= 0.0)
                {
                  v50 = 1.0;
                  v51 = 1.0;
                }
              }
            }

            [v56 setSourceRect_];

            sub_21B4AB6E4(v38, *&v57, *&v59, *&v58, *&v46, v61);
          }
        }
      }

      v52 = *(v6 + 56);
      if (v52)
      {
        v52(a1);
      }

      if (a5)
      {
        v68[4] = a5;
        v68[5] = a6;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 1107296256;
        v68[2] = sub_21B36CDB8;
        v68[3] = &block_descriptor_12;
        v35 = _Block_copy(v68);
      }

      else
      {
        v35 = 0;
      }

      [v17 presentViewController:a1 animated:a4 & 1 completion:v35];
    }

    _Block_release(v35);
  }
}

uint64_t sub_21B4AC6E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id PresentationSource.popoverSource.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (v8 == 255)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    if (v8)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      ObjectType = sub_21B3F12CC(0, &qword_2811FCAE0);
    }

    *(a1 + 24) = ObjectType;
    *a1 = v4;
  }

  return sub_21B4AB668(v4, v3, v5, v6, v7, v8);
}

id PresentationSource.Position.view.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_10PodcastsUI18PresentationSourceV8PositionOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B4AC8D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_21B4AC934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_21B4AC9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B4AC9F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t PUITextStyle.init(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PUITextStyle();
  v5 = *(v4 + 20);
  v6 = sub_21B4C7EB8();
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v8 = a2 + *(v4 + 24);
  v9 = sub_21B4C7EE8();
  (*(*(v9 - 8) + 32))(a2, a1, v9);
  sub_21B3F2D94(a2 + v5, &qword_27CD88C30);
  result = (v7)(a2 + v5, 1, 1, v6);
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t PUITextStyle.standardLeading.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21B3A6E08(v1, a1);
  v3 = *(type metadata accessor for PUITextStyle() + 20);
  sub_21B3F2D94(a1 + v3, &qword_27CD88C30);
  v4 = sub_21B4C7EB8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t PUITextStyle.font.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_21B4C7EB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21B4C7E38();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21B4C7E98();
  sub_21B3F2D94(v10, &qword_27CD88C38);
  v12 = type metadata accessor for PUITextStyle();
  sub_21B3A72AC(v0 + *(v12 + 20), v3);
  v13 = *(v5 + 48);
  if (v13(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0A18], v4);
    v14 = v13(v3, 1, v4);

    if (v14 != 1)
    {
      sub_21B3F2D94(v3, &qword_27CD88C30);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  sub_21B4C7EC8();

  (*(v5 + 8))(v7, v4);
  if (*(v0 + *(v12 + 24) + 8))
  {
    sub_21B4C7E78();
  }

  v15 = sub_21B4C7EA8();

  return v15;
}

uint64_t PUITextStyle.hash(into:)()
{
  v1 = sub_21B4C7EB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_21B4C7EE8();
  sub_21B4ADEE0(&qword_27CD88C40, MEMORY[0x277CE0AC8]);
  sub_21B4C9638();
  v8 = type metadata accessor for PUITextStyle();
  sub_21B3A72AC(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_21B4CA708();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_21B4CA708();
    sub_21B4ADEE0(&qword_27CD88C48, MEMORY[0x277CE0A20]);
    sub_21B4C9638();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + *(v8 + 24) + 8) == 1)
  {
    return sub_21B4CA708();
  }

  sub_21B4CA708();
  return sub_21B4C7E68();
}

uint64_t PUITextStyle.hashValue.getter()
{
  sub_21B4CA6E8();
  PUITextStyle.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4AD268()
{
  sub_21B4CA6E8();
  PUITextStyle.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4AD2AC()
{
  sub_21B4CA6E8();
  PUITextStyle.hash(into:)();
  return sub_21B4CA738();
}

double sub_21B4AD304(SEL *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for PUITextStyle();
  sub_21B3A72AC(v1 + *(v6 + 20), v5);
  v7 = sub_21B4C7EB8();
  v8 = *(v7 - 8);
  v9 = 1;
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    goto LABEL_3;
  }

  v10 = (*(v8 + 88))(v5, v7);
  if (v10 == *MEMORY[0x277CE0A18])
  {
    goto LABEL_3;
  }

  if (v10 == *MEMORY[0x277CE0A10])
  {
    v9 = 0;
    v11 = 0x8000;
  }

  else
  {
    if (v10 != *MEMORY[0x277CE0A08])
    {
      (*(v8 + 8))(v5, v7);
LABEL_3:
      v11 = 0;
      goto LABEL_4;
    }

    v9 = 0;
    v11 = 0x10000;
  }

LABEL_4:
  v12 = *(v1 + *(v6 + 24) + 8);
  sub_21B4C7E58();
  if (v12 == 1)
  {
    sub_21B4C7E88();
    if (v9)
    {
LABEL_6:
      v13 = objc_opt_self();
      v14 = sub_21B3A731C();
      v15 = [v13 preferredFontForTextStyle_];
LABEL_13:
      v19 = v15;
      goto LABEL_14;
    }
  }

  else if (sub_21B4C7E48() & 1) != 0 || (sub_21B4C7E88(), (sub_21B4C7E48()))
  {
    v11 = v11 | 2;
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  v14 = sub_21B3A731C();
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];

  v18 = objc_opt_self();
  if (!v17)
  {
    v15 = [v18 preferredFontForTextStyle_];
    goto LABEL_13;
  }

  v19 = [v18 fontWithDescriptor:v17 size:0.0];

LABEL_14:
  [v19 *a1];
  v21 = v20;

  return v21;
}

double PUITextStyle.scaledValue(for:compatibleWith:)(uint64_t a1, double a2)
{
  v4 = sub_21B3A731C();
  v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];

  [v5 scaledValueForValue:a1 compatibleWithTraitCollection:a2];
  v7 = v6;

  return v7;
}

uint64_t Text.puiFont(_:)()
{
  PUITextStyle.font.getter();
  v0 = sub_21B4C7F18();

  return v0;
}

uint64_t View.puiFont(_:)()
{
  PUITextStyle.font.getter();
  sub_21B4C7FF8();
}

uint64_t ScaledMetric.init(wrappedValue:relativeTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C7EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  (*(v10 + 16))(&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v12);
  (*(v7 + 16))(v9, a2, v6);
  sub_21B4C79D8();
  sub_21B4ADC6C(a2);
  return (*(v10 + 8))(a1, a3);
}

uint64_t _s10PodcastsUI12PUITextStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C7EB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88C60);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if ((MEMORY[0x21CEF1620](a1, a2, v12) & 1) == 0)
  {
    return 0;
  }

  v23 = type metadata accessor for PUITextStyle();
  v15 = *(v23 + 20);
  v16 = *(v11 + 48);
  sub_21B3A72AC(a1 + v15, v14);
  sub_21B3A72AC(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_21B3A72AC(v14, v10);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_21B4ADEE0(&qword_2811FD240, MEMORY[0x277CE0A20]);
      v19 = sub_21B4C96B8();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_21B3F2D94(v14, &qword_27CD88C30);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21B3F2D94(v14, &qword_27CD88C60);
    return 0;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_21B3F2D94(v14, &qword_27CD88C30);
LABEL_11:
  v21 = *(v23 + 24);
  if (*(a1 + v21 + 8))
  {
    if (*(a2 + v21 + 8))
    {
      return 1;
    }
  }

  else if (*(a2 + v21 + 8) & 1) == 0 && (sub_21B4C7E48())
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21B4ADC6C(uint64_t a1)
{
  v2 = type metadata accessor for PUITextStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B4ADD38()
{
  sub_21B4C7EE8();
  if (v0 <= 0x3F)
  {
    sub_21B4ADDD4();
    if (v1 <= 0x3F)
    {
      sub_21B4ADE2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B4ADDD4()
{
  if (!qword_2811FD238)
  {
    sub_21B4C7EB8();
    v0 = sub_21B4CA188();
    if (!v1)
    {
      atomic_store(v0, &qword_2811FD238);
    }
  }
}

void sub_21B4ADE2C()
{
  if (!qword_2811FD248)
  {
    v0 = sub_21B4CA188();
    if (!v1)
    {
      atomic_store(v0, &qword_2811FD248);
    }
  }
}

unint64_t sub_21B4ADE7C()
{
  result = qword_2811FD250;
  if (!qword_2811FD250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD250);
  }

  return result;
}

uint64_t sub_21B4ADEE0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21B4ADF28()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0901960784 green:0.0901960784 blue:0.0901960784 alpha:1.0];
  qword_27CD88C68 = result;
  return result;
}

id UIColor.init(decimalRed:green:blue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

id sub_21B4AE01C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.549019608 green:0.556862745 blue:0.580392157 alpha:1.0];
  qword_27CD88C70 = result;
  return result;
}

id sub_21B4AE090()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.1];
  qword_27CD88C78 = result;
  return result;
}

id sub_21B4AE12C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.447058824 green:0.141176471 blue:0.847058824 alpha:1.0];
  qword_2811FD990 = result;
  return result;
}

id sub_21B4AE1A0()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.611764706 green:0.352941176 blue:0.949019608 alpha:1.0];
  qword_2811FD978 = result;
  return result;
}

uint64_t sub_21B4AE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_2811FD988 != -1)
  {
    swift_once();
  }

  v8 = qword_2811FD970;
  v9 = qword_2811FD990;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_2811FD978;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v19[4] = a3;
  v19[5] = v11;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_21B385440;
  v19[3] = a4;
  v13 = _Block_copy(v19);
  v14 = v10;
  v15 = v9;
  v16 = v14;
  v17 = [v12 initWithDynamicProvider_];

  _Block_release(v13);

  *a5 = v17;
  return result;
}

uint64_t sub_21B4AE4F8()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10[4] = sub_21B4B056C;
  v10[5] = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21B385440;
  v10[3] = &block_descriptor_67;
  v5 = _Block_copy(v10);
  v6 = v1;
  v7 = v2;
  v8 = [v4 initWithDynamicProvider_];

  _Block_release(v5);

  qword_27CD88CA0 = v8;
  return result;
}

uint64_t sub_21B4AE660()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.45];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.898039216 green:0.898039216 blue:0.917647059 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = sub_21B4B056C;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21B385440;
  v9[3] = &block_descriptor_60;
  v4 = _Block_copy(v9);
  v5 = v0;
  v6 = v1;
  v7 = [v3 initWithDynamicProvider_];

  _Block_release(v4);

  qword_27CD88CA8 = v7;
  return result;
}

uint64_t sub_21B4AE7F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.976470588 green:0.976470588 blue:0.996078431 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = sub_21B4B056C;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21B385440;
  v9[3] = &block_descriptor_53;
  v4 = _Block_copy(v9);
  v5 = v0;
  v6 = v1;
  v7 = [v3 initWithDynamicProvider_];

  _Block_release(v4);

  qword_27CD88CB0 = v7;
  return result;
}

id sub_21B4AE978()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.898039216 green:0.898039216 blue:0.917647059 alpha:1.0];
  qword_27CD88CB8 = result;
  return result;
}

uint64_t sub_21B4AEA0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.82];
  if (qword_27CD866A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD88C68;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = sub_21B4B056C;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21B385440;
  v9[3] = &block_descriptor_46;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];

  _Block_release(v4);

  qword_27CD88CC0 = v7;
  return result;
}

id sub_21B4AEB94()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.32];
  qword_27CD88CC8 = result;
  return result;
}

uint64_t sub_21B4AEBF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.67];
  v1 = [objc_opt_self() whiteColor];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = sub_21B4B056C;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21B385440;
  v9[3] = &block_descriptor_39;
  v4 = _Block_copy(v9);
  v5 = v0;
  v6 = v1;
  v7 = [v3 initWithDynamicProvider_];

  _Block_release(v4);

  qword_27CD88CD0 = v7;
  return result;
}

void sub_21B4AED64()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.15];
  v2 = *MEMORY[0x277CDA5D8];
  v3 = [v0 _colorBlendedWithColor_compositingFilter_];

  if (v3)
  {
    qword_27CD88CD8 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21B4AEE3C()
{
  if (qword_27CD86720 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD86728;
  v1 = qword_27CD88CD8;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27CD88CE0;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = sub_21B3854EC;
  v11[5] = v3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21B385440;
  v11[3] = &block_descriptor_32;
  v5 = _Block_copy(v11);
  v6 = v2;
  v7 = v1;
  v8 = v6;
  v9 = [v4 initWithDynamicProvider_];

  _Block_release(v5);

  qword_27CD88CE8 = v9;
  return result;
}

id static Theme.subtitleColor.getter()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    if (qword_27CD866F8 != -1)
    {
      swift_once();
    }

    v0 = &qword_27CD88CB0;
  }

  else
  {
    if (qword_27CD866F0 != -1)
    {
      swift_once();
    }

    v0 = &qword_27CD88CA8;
  }

  v1 = *v0;

  return v1;
}

id sub_21B4AF2BC(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

void sub_21B4AF360()
{
  v0 = [objc_opt_self() clearColor];
  v1 = _sSo7UIImageC10PodcastsUIE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v0, 0.0);

  if (v1)
  {
    qword_27CD88D38 = v1;
  }

  else
  {
    sub_21B4CA488();
    __break(1u);
  }
}

id sub_21B4AF438()
{
  result = [objc_allocWithZone(MEMORY[0x277CE6640]) init];
  qword_27CD88D40 = result;
  return result;
}

uint64_t static Theme.cloudDownloadImage(forTintColor:outlineColor:traitCollection:)(void *a1, void *a2, void *a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87210);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B4D38F0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = 0xD00000000000001ELL;
  *(v7 + 40) = 0x800000021B4E2DB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21B4DBA40;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88D48);
  *(v7 + 64) = v9;
  *(v7 + 120) = v8;
  *(v7 + 88) = v10;
  *(v7 + 96) = 0xD000000000000027;
  *(v7 + 104) = 0x800000021B4E2DD0;
  *(v7 + 152) = sub_21B3F12CC(0, &qword_27CD88D50);
  *(v7 + 128) = a3;
  sub_21B3F12CC(0, &unk_281200528);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = sub_21B4C9C88();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21B4B0498;
  *(v16 + 24) = v15;
  aBlock[4] = sub_21B4B04A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B4AFC20;
  aBlock[3] = &block_descriptor_13;
  v17 = _Block_copy(aBlock);
  v18 = v11;
  v19 = v13;

  v20 = [ObjCClassFromMetadata cachedObjectWithKey:v14 block:v17];
  _Block_release(v17);

  sub_21B4CA278();
  swift_unknownObjectRelease();
  sub_21B3F12CC(0, &qword_281200408);
  swift_dynamicCast();
  return v22;
}

void sub_21B4AF790(uint64_t a1, uint64_t a2)
{
  sub_21B3F12CC(0, &qword_281200408);
  v4 = sub_21B4CA048();
  v5 = [v4 imageAsset];

  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = [v5 imageWithTraitCollection_];

  v7 = [v6 imageWithTintColor_];
  v8 = sub_21B4CA048();
  v9 = [v8 imageAsset];

  if (v9)
  {
    v10 = [v9 imageWithTraitCollection_];

    v11 = [v10 imageWithTintColor_];
    [v7 size];
    v13 = v12;
    v15 = v14;
    [v11 size];
    if (v13 <= v16)
    {
      v13 = v16;
    }

    if (v15 <= v17)
    {
      v15 = v17;
    }

    v18 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
    [v7 scale];
    [v18 setScale_];
    v19 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v18 format:{v13, v15}];
    v27 = 0;
    v20 = swift_allocObject();
    v20[2] = v7;
    v20[3] = v11;
    v20[4] = &v27;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_21B4B04FC;
    *(v21 + 24) = v20;
    aBlock[4] = sub_21B41689C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B4AFBD4;
    aBlock[3] = &block_descriptor_16;
    v22 = _Block_copy(aBlock);
    v23 = v7;
    v24 = v11;

    v25 = [v19 imageWithActions_];

    _Block_release(v22);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if ((v23 & 1) == 0)
    {

      return;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

UIImage __swiftcall UIImage.applying(tintColor:)(UIColor tintColor)
{
  v2 = [v1 imageWithTintColor_];

  return v2;
}

uint64_t sub_21B4AFB34(void *a1, id a2, void *a3, uint64_t *a4)
{
  [a2 drawAtPoint:17 blendMode:0.0 alpha:{0.0, 1.0}];
  [a3 drawAtPoint:0 blendMode:0.0 alpha:{0.0, 1.0}];
  v7 = [a1 currentImage];
  v8 = *a4;
  *a4 = v7;

  return MEMORY[0x2821F96F8](v7, v8);
}

void sub_21B4AFBD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_21B4AFC20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v5, v2);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_21B4CA5F8();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

id Theme.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Theme.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Theme.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B4AFE28(void *a1, void *a2, double *a3, void **a4, CGFloat a5)
{
  v10 = sub_21B4C5A28();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 CGContext];
  v16 = [a2 cgColor];
  if (v16)
  {
    v17 = v16;
    CGContextSetFillColorWithColor(v15, v17);

    v18 = *a3;
    v19 = a3[1];
    if (a5 <= 0.0)
    {
      [a1 fillRect_];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = CGPathCreateWithRoundedRect(*(&v18 - 2), a5, a5, 0);
      v23 = [a1 CGContext];
      CGContextAddPath(v23, v22);

      v24 = [a1 CGContext];
      (*(v11 + 104))(v14, *MEMORY[0x277CBF258], v10);
      sub_21B4C9C78();

      (*(v11 + 8))(v14, v10);
    }

    v25 = [a1 currentImage];
    v26 = *a4;
    *a4 = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sSo7UIImageC10PodcastsUIE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(void *a1, double a2)
{
  __asm { FMOV            V0.2D, #1.0 }

  v26 = _Q0;
  v9 = 1.0;
  if (a2 > 0.0)
  {
    v9 = a2 + a2 + 1.0;
    *&v26 = v9;
    *(&v26 + 1) = v9;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  [v10 setScale_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v10 format:{v9, v9}];
  v25 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = &v26;
  *(v15 + 32) = a2;
  *(v15 + 40) = &v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21B4B0508;
  *(v16 + 24) = v15;
  aBlock[4] = sub_21B4B0568;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B4AFBD4;
  aBlock[3] = &block_descriptor_26_0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v25)
  {

    v22 = 0;
    goto LABEL_10;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 9.22337204e18)
  {
    v21 = v25;
    v22 = [v21 stretchableImageWithLeftCapWidth:a2 topCapHeight:a2];

LABEL_10:
    v23 = v25;

    return v22;
  }

LABEL_14:
  __break(1u);
  return result;
}

void _s10PodcastsUI5ThemeC22cloudDownloadImageSize3forSo6CGSizeVSo17UITraitCollectionC_tFZ_0(uint64_t a1)
{
  sub_21B3F12CC(0, &qword_281200408);
  v2 = sub_21B4CA048();
  v3 = [v2 imageAsset];

  if (v3)
  {
    v4 = [v3 imageWithTraitCollection_];

    [v4 size];
    v5 = sub_21B4CA048();
    v6 = [v5 imageAsset];

    if (v6)
    {
      v7 = [v6 imageWithTraitCollection_];

      [v7 size];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21B4B04A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(v1 + 16))();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88D58);
  a1[3] = result;
  *a1 = v3;
  return result;
}

id static UIFont.preferredFont(forTextStyle:traits:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];

  v6 = objc_opt_self();
  if (v5)
  {
    v7 = [v6 fontWithDescriptor:v5 size:0.0];

    return v7;
  }

  else
  {
    v9 = [v6 preferredFontForTextStyle_];

    return v9;
  }
}

void sub_21B4B06E8()
{
  v0 = *MEMORY[0x277D76A20];
  v1 = *MEMORY[0x277D74420];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 _preferredFontForTextStyle_weight_];
  if (!v4)
  {
    v4 = [v2 preferredFontForTextStyle_];
  }

  qword_2811FCBA0 = v4;
}

id static UIFont.puiPreferredFont(forTextStyle:weight:)(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  result = [v4 _preferredFontForTextStyle_weight_];
  if (!result)
  {
    v6 = [v4 preferredFontForTextStyle_];

    return v6;
  }

  return result;
}

id sub_21B4B0B80()
{
  result = [objc_opt_self() systemFontOfSize_];
  qword_2811FCC48 = result;
  return result;
}

id sub_21B4B0BF4(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:*MEMORY[0x277D743F8]];
  *a3 = result;
  return result;
}

id static UIFont.systemFont(ofSize:traits:weight:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize_];
  if (a3)
  {
    sub_21B40D8CC(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88D68);
    inited = swift_initStackObject();
    v22 = xmmword_21B4D2830;
    *(inited + 16) = xmmword_21B4D2830;
    v11 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88D70);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_21B4D2830;
    *(v12 + 32) = sub_21B4C9708();
    *(v12 + 40) = v13;
    *(v12 + 48) = a2;
    *(v12 + 56) = 0;
    v14 = v11;
    v15 = sub_21B40D7B8(v12);
    swift_setDeallocating();
    sub_21B3F2D94(v12 + 32, &qword_27CD88D78);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88D80);
    *(inited + 40) = v15;
    sub_21B40D8CC(inited);
    swift_setDeallocating();
    sub_21B3F2D94(inited + 32, &qword_27CD86F48);
  }

  v16 = [v9 fontDescriptor];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];

  if (v17)
  {
    type metadata accessor for AttributeName(0);
    sub_21B3918E4();
    v18 = sub_21B4C9578();

    v19 = [v17 fontDescriptorByAddingAttributes_];

    if (v19)
    {
      v20 = [v8 fontWithDescriptor:v19 size:a4];

      return v20;
    }
  }

  else
  {
  }

  return v9;
}

id UIFont.metrics.getter()
{
  v0 = UIFont.textStyle.getter();
  if (!v0)
  {
    v0 = *MEMORY[0x277D76918];
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];

  return v2;
}

BOOL static UITraitCollection.supportsPointerDevice.getter()
{
  v0 = [objc_opt_self() currentTraitCollection];
  if (byte_27CD88D88 == 1)
  {

    return 1;
  }

  else
  {
    v2 = v0;
    v3 = [v0 userInterfaceIdiom];

    return v3 == 1;
  }
}

BOOL UITraitCollection.isCompact.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 1;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return [v0 horizontalSizeClass] == 1;
  }

  return 0;
}

uint64_t UserDefaultsStorage.init<A>(wrappedValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v11)
  {
    v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  }

  sub_21B4C6C68();
  (*(v8 + 16))(v10, a1, a5);
  v13 = a4;
  v16[1] = sub_21B4C6C38();
  sub_21B4C80F8();
  v14 = v16[2];

  (*(v8 + 8))(a1, a5);
  return v14;
}

uint64_t UserDefaultsStorage.init<A>(wrappedValue:key:store:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21B4CA188();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  if (!a4)
  {
    v10 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  }

  sub_21B4C6C68();
  (*(v7 + 16))(v9, a1, v6);
  v11 = a4;
  v14[1] = sub_21B4C6C28();
  sub_21B4C80F8();
  v12 = v14[2];

  (*(v7 + 8))(a1, v6);
  return v12;
}

uint64_t UserDefaultsStorage.wrappedValue.getter()
{
  sub_21B4C6C68();
  sub_21B4C8138();
  sub_21B4C8108();
  sub_21B4C6C48();
}

uint64_t UserDefaultsStorage.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B4B1998(a1, a2, a3, a4);
  v6 = *(*(a4 - 8) + 8);

  return v6(a1, a4);
}

void (*UserDefaultsStorage.wrappedValue.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = a4;
  *v9 = a2;
  v11 = *(a4 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v8)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v10[5] = v13;
  UserDefaultsStorage.wrappedValue.getter();
  return sub_21B4B163C;
}

void sub_21B4B163C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_21B4B1998(v3, v8, v7, v5);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_21B4B1998((*a1)[5], v8, v7, v5);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefaultsStorage.projectedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a3;
  v6[5] = a1;
  v6[6] = a2;
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a3;
  v7[5] = a1;
  v7[6] = a2;
  swift_retain_n();
  swift_retain_n();

  return MEMORY[0x2821339D8](sub_21B4B1A98, v6, sub_21B4B1AA8, v7, a3);
}

uint64_t sub_21B4B181C()
{
  sub_21B4C6C68();
  sub_21B4C8138();
  sub_21B4C8108();
  sub_21B4C6C48();
}

uint64_t sub_21B4B1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = v11;
  v14[3] = v12;
  sub_21B4C6C68();
  sub_21B4C8138();
  sub_21B4C8108();
  (*(v8 + 16))(v10, a1, a6);
  sub_21B4C6C58();
}

uint64_t sub_21B4B1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = v9;
  v12[3] = v10;
  sub_21B4C6C68();
  sub_21B4C8138();
  sub_21B4C8108();
  (*(v6 + 16))(v8, a1, a4);
  sub_21B4C6C58();
}

uint64_t sub_21B4B1AB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ActionDispatching.dispatch<A>(action:metrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  *(v8 + 72) = *(a5 - 8);
  *(v8 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877D8);
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 248) = *a3;
  *(v8 + 112) = sub_21B4C9A18();
  *(v8 + 120) = sub_21B4C9A08();
  v12 = sub_21B4C99C8();
  *(v8 + 128) = v12;
  *(v8 + 136) = v11;

  return MEMORY[0x2822009F8](sub_21B4B1C78, v12, v11);
}

uint64_t sub_21B4B1C78()
{
  v1 = v0[4];
  v2 = *(v0[6] + 8);
  v0[18] = v2;
  v3 = *(v2 + 8);
  v0[19] = v3;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0xAD81000000000000;
  v0[21] = v3(v1);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_21B4B1D54;
  v5 = v0[13];
  v6 = v0[11];

  return MEMORY[0x28217F228](v5, v6, v6);
}

uint64_t sub_21B4B1D54()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_21B4B23EC;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_21B4B1E70;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21B4B1E70()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[4];
  (*(v0[9] + 16))(v0[10], v0[3], v0[5]);
  v0[24] = v1(v3, v2);
  v0[25] = sub_21B4C9A08();
  v5 = sub_21B4C99C8();
  v0[26] = v5;
  v0[27] = v4;

  return MEMORY[0x2822009F8](sub_21B4B1F44, v5, v4);
}

uint64_t sub_21B4B1F44()
{
  *(v0 + 224) = sub_21B43B200(*(v0 + 80), *(v0 + 248), *(v0 + 192), *(v0 + 104), *(v0 + 40), *(v0 + 56));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877C0);
  v2 = sub_21B43B19C();
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_21B4B2030;
  v4 = *(v0 + 16);

  return MEMORY[0x282180360](v4, v1, v2);
}

uint64_t sub_21B4B2030()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_21B4B22B8;
  }

  else
  {
    v5 = sub_21B4B2188;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21B4B2188()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v4 = v0[16];
  v5 = v0[17];

  return MEMORY[0x2822009F8](sub_21B4B221C, v4, v5);
}

uint64_t sub_21B4B221C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B4B22B8()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_21B4B2324, v1, v2);
}

uint64_t sub_21B4B2324()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[5];

  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21B4B23EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IntentDispatching.dispatch<A>(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return MEMORY[0x2822009F8](sub_21B4B249C, 0, 0);
}

uint64_t sub_21B4B249C()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v0[14] = v2;
  v3 = *(v2 + 8);
  v0[15] = v3;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0xAD81000000000000;
  v0[17] = v3(v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87870);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_21B4B2590;

  return MEMORY[0x28217F228](v0 + 2, v4, v4);
}

uint64_t sub_21B4B2590()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21B4B2928;
  }

  else
  {

    v2 = sub_21B4B26AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B4B26AC()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = v1(v3, v2);
  v0[20] = v6;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_21B4B27A8;
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  return MEMORY[0x28217F4B0](v10, v11, v6, v9, v8, v4, v5);
}

uint64_t sub_21B4B27A8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21B4B298C;
  }

  else
  {

    v2 = sub_21B4B28C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B4B28C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4B2928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4B298C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4B2A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (a5(a1, a2, a3, *(a4 + 16)))
  {
    return 1;
  }

  else
  {
    return (*(*(a4 + 8) + 16))(a1, a2, a3) & 1;
  }
}

BOOL sub_21B4B2BFC(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  return !_sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(*a1, a1[1], *a2, a2[1]) || !_sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(v2, v3, v4, v5);
}

uint64_t sub_21B4B2C78()
{
  sub_21B385E00(v0 + qword_2811FFEB8);

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for AsyncOnceValue.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_21B4B2D30()
{
  sub_21B4B2C78();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21B4B2D5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_21B4B2E74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t dispatch_sync_main_queue(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_21B375E2C();
  v5 = sub_21B4C9E08();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_21B4B31B0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21B4B31D8;
  v8[3] = &block_descriptor_14;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch_to_main_queue(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_21B4C8208();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C8248();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_21B375E2C();
  v13 = sub_21B4C9E08();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_3_0;
  v14 = _Block_copy(aBlock);

  sub_21B4C8228();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t dispatch_after(_:queue:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_21B4C8208();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C8248();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B4C8268();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  sub_21B4C8258();
  sub_21B4C8278();
  v18 = *(v12 + 8);
  v18(v14, v11);
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  sub_21B4C8228();
  v26 = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3520](v17, v10, v7, v19);
  _Block_release(v19);
  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
  v18(v17, v11);
}

void dispatch_after_main_queue(_:block:)(uint64_t a1, uint64_t a2)
{
  sub_21B375E2C();
  v4 = sub_21B4C9E08();
  dispatch_after(_:queue:block:)(v4, a1, a2);
}

uint64_t sub_21B4B383C()
{
  v1 = *(v0 + 16);

  v1(v2);

  return swift_deallocClassInstance();
}

uint64_t static EpisodeUnavailableReason.Translator.episodeUnavailableReason(for:)(void *a1)
{
  v2 = sub_21B4C7558();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21B4C5D18();
  v44 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = sub_21B4C5D08();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = sub_21B4C5CF8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v50 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
  if (!swift_dynamicCast())
  {

    v50 = a1;
    v23 = a1;
    if (swift_dynamicCast())
    {
      v24 = v48;
      (*(v48 + 32))(v10, v13, v8);
      v25 = (*(v24 + 88))(v10, v8);
      if (v25 == *MEMORY[0x277D3D410])
      {
        goto LABEL_6;
      }

      if (v25 != *MEMORY[0x277D3D420])
      {
        if (v25 == *MEMORY[0x277D3D408])
        {

          return 2;
        }

        if (v25 == *MEMORY[0x277D3D418])
        {

          return 4;
        }

        (*(v24 + 8))(v10, v8);
      }

      goto LABEL_35;
    }

    v50 = a1;
    v27 = a1;
    v28 = v49;
    if (!swift_dynamicCast())
    {

      v35 = v45;
      sub_21B4C74D8();
      v36 = a1;
      v37 = sub_21B4C7538();
      v38 = sub_21B4C9CE8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = a1;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_21B365000, v37, v38, "Unhandled player error: %@", v39, 0xCu);
        sub_21B4508D4(v40);
        MEMORY[0x21CEF5710](v40, -1, -1);
        MEMORY[0x21CEF5710](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v47);
      return 5;
    }

    v30 = v43;
    v29 = v44;
    (*(v44 + 32))(v43, v7, v28);
    v31 = (*(v29 + 88))(v30, v28);
    if (v31 == *MEMORY[0x277D3D428])
    {

      return 8;
    }

    if (v31 == *MEMORY[0x277D3D438])
    {
LABEL_8:

      return 7;
    }

    if (v31 == *MEMORY[0x277D3D430])
    {

      return 9;
    }

    if (v31 != *MEMORY[0x277D3D440])
    {
      (*(v29 + 8))(v30, v28);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  (*(v15 + 32))(v17, v20, v14);
  v22 = (*(v15 + 88))(v17, v14);
  if (v22 == *MEMORY[0x277D3D3E8])
  {
    (*(v15 + 8))(v17, v14);
LABEL_6:

    return 6;
  }

  if (v22 == *MEMORY[0x277D3D3F0])
  {
    goto LABEL_8;
  }

  if (v22 != *MEMORY[0x277D3D3D8])
  {
    if (v22 == *MEMORY[0x277D3D400])
    {
      goto LABEL_35;
    }

    if (v22 == *MEMORY[0x277D3D3E0])
    {

      return 1;
    }

    if (v22 != *MEMORY[0x277D3D3F8])
    {
      (*(v15 + 8))(v17, v14);
      goto LABEL_35;
    }

LABEL_31:

    return 11;
  }

  (*(v15 + 96))(v17, v14);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E10) + 48);
  v33 = sub_21B4C6568();
  (*(*(v33 - 8) + 8))(&v17[v32], v33);
  v34 = sub_21B4C6578();
  (*(*(v34 - 8) + 8))(v17, v34);
LABEL_35:

  return 5;
}

uint64_t unrecognizedEnumValueEncountered(_:)(uint64_t a1)
{
  v2 = sub_21B4C7558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21B4C74F8();
  sub_21B36D428(a1, v23);
  sub_21B36D428(a1, v22);
  v6 = sub_21B4C7538();
  v7 = sub_21B4C9CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    swift_getDynamicType();
    v10 = sub_21B4CA7C8();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v23);
    v13 = sub_21B36CF74(v10, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    sub_21B36D428(v22, v20);
    v14 = sub_21B4C9758();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v17 = sub_21B36CF74(v14, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_21B365000, v6, v7, "Unrecognized %s encountered => %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v9, -1, -1);
    MEMORY[0x21CEF5710](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_21B4B42D8()
{
  result = [objc_allocWithZone(type metadata accessor for MediaLibraryStorageController()) init];
  qword_2811FDF68 = result;
  return result;
}

id static MediaLibraryStorageController.shared.getter()
{
  if (qword_2811FDF60 != -1)
  {
    swift_once();
  }

  v1 = qword_2811FDF68;

  return v1;
}

uint64_t sub_21B4B43C4()
{
  v7 = sub_21B4C9DF8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B4C9DC8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21B4C8248();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_21B375E2C();
  sub_21B4C8238();
  v8 = MEMORY[0x277D84F90];
  sub_21B4B7678(&qword_2811FCCF8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E50);
  sub_21B3F1314(&unk_2811FCDE0, &qword_27CD88E50);
  sub_21B4CA298();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_21B4C9E28();
  qword_2811FDF50 = result;
  return result;
}

uint64_t MediaLibraryStorageController.shouldDisplayStorageCleanupTip.getter()
{
  swift_beginAccess();

  sub_21B4C7918();

  return v1;
}

uint64_t sub_21B4B47CC@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();

  sub_21B4C7918();

  *a1 = v3;
  return result;
}

uint64_t sub_21B4B4848()
{
  swift_beginAccess();

  sub_21B4C7918();

  sub_21B4C7928();

  return sub_21B4B48FC(v1);
}

uint64_t sub_21B4B48FC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();

  sub_21B4C7918();

  if (v5 != v2)
  {

    sub_21B4C7918();

    sub_21B4B4A08(v5);

    sub_21B4C7918();

    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;
    return sub_21B4C7778();
  }

  return result;
}

uint64_t sub_21B4B4A08(char a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  sub_21B4C61A8();

  v2 = sub_21B4C69E8();

  v4 = *(v2 + 16);
  if (!v4)
  {
  }

  v5 = 0;
  v6 = a1 & 1;
  v7 = v2 + 40;
  while (v5 < *(v2 + 16))
  {
    ++v5;
    v8 = *(v7 - 8);
    v9 = v6;

    v8(&v9);

    v7 += 16;
    if (v4 == v5)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t MediaLibraryStorageController.$shouldDisplayStorageCleanupTip.getter()
{
  swift_beginAccess();

  sub_21B4C7938();

  return v1;
}

uint64_t MediaLibraryStorageController.shouldDisplayStorageCleanupTipPublisher.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B4C7768();

  return v1;
}

uint64_t sub_21B4B4BDC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21B4C7768();

  *a1 = v3;
  return result;
}

uint64_t sub_21B4B4C5C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_21B4C7778();
}

uint64_t MediaLibraryStorageController.$shouldDisplayStorageCleanupTipPublisher.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448);
  sub_21B4C7738();
  return swift_endAccess();
}

uint64_t sub_21B4B4D40()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448);
  sub_21B4C7738();
  return swift_endAccess();
}

uint64_t sub_21B4B4DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88708);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448);
  sub_21B4C7748();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

char *sub_21B4B4F3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_21B4C9E78();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD88448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR___PUIMediaLibraryStorageController__storageCleanupObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  swift_allocObject();
  v37 = sub_21B4C6A08();
  *&v0[v9] = sub_21B4C6198();
  v10 = OBJC_IVAR___PUIMediaLibraryStorageController__globalAutomaticDownloadLimit;
  sub_21B4C9EA8();
  sub_21B4C9F38();
  v31 = *MEMORY[0x277D3DD58];
  sub_21B4C9708();
  v11 = objc_opt_self();
  v12 = [v11 _applePodcastsFoundationSettingsUserDefaults];
  *&v1[v10] = sub_21B4C7908();
  *&v1[OBJC_IVAR___PUIMediaLibraryStorageController_activeObserver] = 0;
  *&v1[OBJC_IVAR___PUIMediaLibraryStorageController_globalDownloadLimitObserver] = 0;
  *&v1[OBJC_IVAR___PUIMediaLibraryStorageController_downloadedAssetsAsPercentageOfTotalSpace] = 0;
  *&v1[OBJC_IVAR___PUIMediaLibraryStorageController_totalConsumedSpace] = 0;
  v13 = OBJC_IVAR___PUIMediaLibraryStorageController__ignoredAssetsAsPercentageOfTotalSpace;
  sub_21B4C9708();
  v14 = [v11 _applePodcastsFoundationSharedUserDefaults];
  *&v1[v13] = sub_21B4C7948();
  v15 = OBJC_IVAR___PUIMediaLibraryStorageController__ignoredConsumedSpaceQuantity;
  sub_21B4C9708();
  v16 = [v11 _applePodcastsFoundationSharedUserDefaults];
  *&v1[v15] = sub_21B4C7958();
  v17 = OBJC_IVAR___PUIMediaLibraryStorageController__shouldDisplayStorageCleanupTip;
  sub_21B4C9708();
  v18 = [v11 _applePodcastsFoundationSharedUserDefaults];
  *&v1[v17] = sub_21B4C78F8();
  v19 = OBJC_IVAR___PUIMediaLibraryStorageController__shouldDisplayStorageCleanupTipPublisher;
  LOBYTE(v37) = 0;
  sub_21B4C7728();
  (*(v6 + 32))(&v1[v19], v8, v5);
  swift_beginAccess();

  sub_21B4C9708();
  v20 = [v11 _applePodcastsFoundationSharedUserDefaults];
  *&v1[v17] = sub_21B4C78F8();
  swift_endAccess();
  v36.receiver = v1;
  v36.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v36, sel_init);
  v22 = [v11 _applePodcastsFoundationSettingsUserDefaults];
  sub_21B4C9708();
  v23 = sub_21B4C9D38();

  v37 = v23;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E40);
  sub_21B3F1314(&qword_2811FD290, &qword_27CD88E40);
  v24 = sub_21B4C78E8();

  *&v21[OBJC_IVAR___PUIMediaLibraryStorageController_globalDownloadLimitObserver] = v24;

  v25 = [objc_opt_self() defaultCenter];
  v26 = *MEMORY[0x277D76758];
  v27 = v33;
  sub_21B4C9E68();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21B4B7678(&qword_2811FCCA8, MEMORY[0x277CC9DB0]);
  v28 = v34;
  v29 = sub_21B4C78E8();

  (*(v35 + 8))(v27, v28);
  *&v21[OBJC_IVAR___PUIMediaLibraryStorageController_activeObserver] = v29;

  MediaLibraryStorageController.refreshDownloadedAssets()();
  sub_21B4B5698(sub_21B4B735C, &block_descriptor_19);

  return v21;
}

void sub_21B4B5554(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_21B4C7918();

    if (v4 != v1)
    {
      sub_21B4B5698(sub_21B4B735C, &block_descriptor_19);
    }
  }
}

void sub_21B4B5608()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21B4B5698(sub_21B4B735C, &block_descriptor_19);
  }
}

uint64_t sub_21B4B5698(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C8208();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B4C8248();
  v15 = *(v7 - 8);
  v16 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811FDF48 != -1)
  {
    swift_once();
  }

  v10 = qword_2811FDF50;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  sub_21B4C8228();
  v18 = MEMORY[0x277D84F90];
  sub_21B4B7678(&qword_2811FD230, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B3F1314(&qword_2811FCE10, &qword_27CD86BB0);
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v9, v6, v12);
  _Block_release(v12);

  (*(v17 + 8))(v6, v4);
  (*(v15 + 8))(v9, v16);
}

id MediaLibraryStorageController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR___PUIMediaLibraryStorageController_globalDownloadLimitObserver])
  {

    sub_21B4C7698();
  }

  if (*&v0[OBJC_IVAR___PUIMediaLibraryStorageController_activeObserver])
  {

    sub_21B4C7698();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  sub_21B4C61B8();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t MediaLibraryStorageController.observeStorageCleanupChange(_:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  sub_21B4C61B8();

  return 0;
}

uint64_t sub_21B4B5C78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_21B4C69C8();

  *a2 = v8;
  return result;
}

Swift::Void __swiftcall MediaLibraryStorageController.removeStorageCleanupChangeObserver(with:)(Swift::Int64 with)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  sub_21B4C61B8();
}

void sub_21B4B5F94()
{
  v0 = sub_21B4C5748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() defaultMediaLibrary];
    v7 = [v6 databasePath];
    if (v7)
    {
      v8 = v7;
      sub_21B4C9708();

      sub_21B4C5668();

      v9 = _sSo14MPMediaLibraryC10PodcastsUIE05totalC14AssetsFileSizeSivg_0();
      v10 = sub_21B4C5618();
      v12 = v11;
      (*(v1 + 8))(v3, v0);
      v13 = 0.0;
      if ((v12 & 1) == 0)
      {
        v13 = v9 / v10;
      }

      *&v5[OBJC_IVAR___PUIMediaLibraryStorageController_downloadedAssetsAsPercentageOfTotalSpace] = v13;
      v14 = _sSo14MPMediaLibraryC10PodcastsUIE05totalC14AssetsFileSizeSivg_0();

      *&v5[OBJC_IVAR___PUIMediaLibraryStorageController_totalConsumedSpace] = v14;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21B4B61CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_21B4C7558();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR___PUIMediaLibraryStorageController_downloadedAssetsAsPercentageOfTotalSpace);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_21B4C7918();

    if (v41[0])
    {
      swift_beginAccess();

      return;
    }

    v11 = sub_21B4C9EA8();
    v39 = [objc_opt_self() defaultMediaLibrary];
    v12 = swift_allocObject();
    *(v12 + 16) = sub_21B4B7464;
    *(v12 + 24) = v10;
    *(v12 + 32) = v11;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    *(v12 + 56) = 0;
    *(v12 + 64) = 1;
    swift_retain_n();
    v13 = v8;
    sub_21B4C7528();
    v14 = sub_21B4C7538();
    v15 = sub_21B4C9CC8();
    v16 = os_log_type_enabled(v14, v15);
    v38 = v11;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v36 = v4;
      v18 = v17;
      v34 = v17;
      v35 = swift_slowAlloc();
      v40 = v11;
      v41[0] = v35;
      *v18 = 136315138;
      type metadata accessor for MTPodcastEpisodeLimit(0);
      v19 = sub_21B4C9758();
      v37 = v2;
      v21 = v13;
      v22 = sub_21B36CF74(v19, v20, v41);
      v2 = v37;

      v23 = v34;
      *(v34 + 4) = v22;
      v13 = v21;
      v24 = v15;
      v25 = v23;
      _os_log_impl(&dword_21B365000, v14, v24, "Checking the size of episodes to be deleted for episode limit: %s", v23, 0xCu);
      v26 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CEF5710](v26, -1, -1);
      MEMORY[0x21CEF5710](v25, -1, -1);

      (*(v36 + 8))(v6, v3);
      if ((sub_21B451C08() & 1) == 0)
      {
LABEL_6:
        v27 = swift_allocObject();
        *(v27 + 16) = 0;
        sub_21B4B6E84(sub_21B4B7464, v10, v27);
LABEL_9:

        return;
      }
    }

    else
    {

      (*(v4 + 8))(v6, v3);
      if ((sub_21B451C08() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_21B4C9A38();
    v28 = sub_21B4C9A58();
    (*(*(v28 - 8) + 56))(v2, 0, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v38;
    v31 = v39;
    v29[4] = v39;
    v29[5] = v30;
    v29[6] = sub_21B4B746C;
    v29[7] = v12;
    v32 = v31;

    sub_21B43614C(0, 0, v2, &unk_21B4D5D30, v29);
    goto LABEL_9;
  }
}

void sub_21B4B6690(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      swift_beginAccess();

      sub_21B4C7918();

      if ((v4 & 1) == 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E48);
        sub_21B4C7928();

        sub_21B4C7918();

        sub_21B4C7928();

        sub_21B4B48FC(0);
      }
    }
  }
}

void sub_21B4B67E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_21B4C7558();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR___PUIMediaLibraryStorageController_downloadedAssetsAsPercentageOfTotalSpace);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E48);
    sub_21B4C7918();

    v10 = v45;
    v11 = v46;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_21B4C7918();

    if (v45)
    {
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        swift_beginAccess();

        sub_21B4C7918();

        if (v43)
        {

          sub_21B4C7918();

          v15 = v43;
          v43 = 0;

          sub_21B4C7928();

          sub_21B4B48FC(v15);
        }
      }
    }

    else
    {
      v42 = v4;
      v16 = sub_21B4C9EA8();
      v41 = [objc_opt_self() defaultMediaLibrary];
      v17 = swift_allocObject();
      *(v17 + 16) = sub_21B4B75A4;
      *(v17 + 24) = v12;
      v40 = v16;
      *(v17 + 32) = v16;
      *(v17 + 40) = v8;
      *(v17 + 48) = v9;
      *(v17 + 56) = v10;
      *(v17 + 64) = v11;
      swift_retain_n();
      v18 = v8;
      sub_21B4C7528();
      v19 = sub_21B4C7538();
      v20 = sub_21B4C9CC8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v39 = v2;
        v22 = v21;
        v23 = swift_slowAlloc();
        v38 = v18;
        v24 = v23;
        v45 = v23;
        *v22 = 136315138;
        v44 = v40;
        type metadata accessor for MTPodcastEpisodeLimit(0);
        v25 = sub_21B4C9758();
        v27 = sub_21B36CF74(v25, v26, &v45);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_21B365000, v19, v20, "Checking the size of episodes to be deleted for episode limit: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v28 = v24;
        v18 = v38;
        MEMORY[0x21CEF5710](v28, -1, -1);
        v29 = v22;
        v2 = v39;
        MEMORY[0x21CEF5710](v29, -1, -1);
      }

      (*(v42 + 8))(v6, v3);
      v30 = sub_21B451C08();
      v31 = v41;
      if (v30)
      {
        sub_21B4C9A38();
        v32 = sub_21B4C9A58();
        (*(*(v32 - 8) + 56))(v2, 0, 1, v32);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v34 = v40;
        v33[4] = v31;
        v33[5] = v34;
        v33[6] = sub_21B4B76E0;
        v33[7] = v17;
        v35 = v31;

        sub_21B43614C(0, 0, v2, &unk_21B4DBE60, v33);
      }

      else
      {
        v36 = swift_allocObject();
        *(v36 + 16) = 0;
        sub_21B4B6E84(sub_21B4B75A4, v12, v36);
      }
    }
  }
}

void sub_21B4B6D74(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();

    sub_21B4C7918();

    if (v4 != (a1 & 1))
    {

      sub_21B4C7918();

      sub_21B4C7928();

      sub_21B4B48FC(v4);
    }
  }
}

uint64_t sub_21B4B6E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C8208();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B4C8248();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B375E2C();
  v12 = sub_21B4C9E08();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_21B4B7544;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_36;
  v14 = _Block_copy(aBlock);

  sub_21B4C8228();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B4B7678(&qword_2811FD230, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B3F1314(&qword_2811FCE10, &qword_27CD86BB0);
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v11, v8, v14);
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_21B4B7180()
{
  sub_21B4C9708();
  result = sub_21B4C65C8();
  qword_27CD88E18 = result;
  unk_27CD88E20 = v1;
  return result;
}

uint64_t static UserDefaultsKey<>.shouldPromptStorageCleanupKey.getter()
{
  if (qword_27CD867A0 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD88E18;

  return v0;
}

uint64_t type metadata accessor for MediaLibraryStorageController()
{
  result = qword_2811FDF30;
  if (!qword_2811FDF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B4B7280()
{
  sub_21B36C648();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21B4B7364(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  if (a1 >= 500000001 && sub_21B4C9EE8() >= 1)
  {
    if (a7)
    {
      if (a4 >= 0.15)
      {
LABEL_5:
        v14 = 1;
        goto LABEL_8;
      }
    }

    else if (*&a6 + 0.15 <= a4)
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_8:
  *(v13 + 16) = v14;
  sub_21B4B6E84(a2, a3, v13);
}

uint64_t sub_21B4B7470(uint64_t a1)
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
  v10[1] = sub_21B40AB58;

  return sub_21B450EE8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21B4B7544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  return v1(*(v2 + 16));
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B4B7678(unint64_t *a1, void (*a2)(uint64_t))
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

double static ApplicationStateMonitor.remainingBackgroundTime()()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 backgroundTimeRemaining];
  v2 = v1;

  return v2;
}

double sub_21B4B7764()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 backgroundTimeRemaining];
  v2 = v1;

  return v2;
}

uint64_t PodcastsIntentDispatcher.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C8FE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_21B4C8E08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87870);
  sub_21B4C8808();
  (*(v9 + 104))(v11, *MEMORY[0x277D220E8], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D22260], v4);
  sub_21B3F821C(v16, a2);
  v12 = type metadata accessor for PodcastsIntentDispatcher();
  (*(v9 + 16))(a2 + *(v12 + 28), v11, v8);
  (*(v5 + 16))(a2 + *(v12 + 32), v7, v4);
  *(a2 + 48) = a1;
  sub_21B4C8DF8();
  swift_retain_n();
  sub_21B4C8878();
  sub_21B4C8DD8();

  v13 = sub_21B4C8DC8();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *(a2 + 40) = v13;
  return result;
}

uint64_t PodcastsIntentDispatcher.dispatch<A>(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21B4B7A90, 0, 0);
}

uint64_t sub_21B4B7A90()
{
  v1 = *(v0[6] + 40);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_21B494FD0;
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_21B4B7B38(v6, v4, v1, v5, v3);
}

uint64_t sub_21B4B7B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = sub_21B4C7408();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_21B4C7388();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v9 = sub_21B4C73F8();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v10 = sub_21B4C7558();
  v6[39] = v10;
  v6[40] = *(v10 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4B7D74, 0, 0);
}

uint64_t sub_21B4B7D74()
{
  v38 = v0;
  sub_21B4C74C8();
  v1 = sub_21B4C7538();
  v2 = sub_21B4C9CD8();
  if (os_log_type_enabled(v1, v2))
  {
    v36 = v0[43];
    v3 = v0[39];
    v4 = v0[40];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136315138;
    sub_21B4C85B8();
    v7 = sub_21B36CF74(v0[15], v0[16], &v37);

    *(v5 + 4) = v7;
    _os_log_impl(&dword_21B365000, v1, v2, "Attempting to route intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CEF5710](v6, -1, -1);
    MEMORY[0x21CEF5710](v5, -1, -1);

    v8 = *(v4 + 8);
    v8(v36, v3);
  }

  else
  {
    v9 = v0[43];
    v10 = v0[39];
    v11 = v0[40];

    v8 = *(v11 + 8);
    v8(v9, v10);
  }

  v0[44] = v8;
  sub_21B4C7398();
  sub_21B4C7378();
  v12 = sub_21B4C73C8();
  v13 = sub_21B4C9E58();
  if (sub_21B4CA148())
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315138;
    sub_21B4C85B8();
    v16 = sub_21B36CF74(v0[13], v0[14], &v37);

    *(v14 + 4) = v16;
    v17 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v12, v13, v17, "IntentDispatch", "[kind=%{name=kind}s]", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CEF5710](v15, -1, -1);
    MEMORY[0x21CEF5710](v14, -1, -1);
  }

  v18 = v0[38];
  v19 = v0[34];
  v20 = v0[35];
  v21 = v0[33];
  v22 = v0[28];
  v23 = v0[29];
  v24 = v0[23];
  (*(v23 + 16))(v0[32], v21, v22);
  sub_21B4C7458();
  swift_allocObject();
  v0[45] = sub_21B4C7448();
  v25 = *(v23 + 8);
  v0[46] = v25;
  v0[47] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v22);
  v26 = *(v20 + 8);
  v0[48] = v26;
  v0[49] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v18, v19);
  v27 = v24[3];
  v28 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v27);
  v29 = swift_task_alloc();
  v0[50] = v29;
  *v29 = v0;
  v29[1] = sub_21B4B8128;
  v30 = v0[21];
  v31 = v0[22];
  v32 = v0[19];
  v33 = v0[20];
  v34 = v0[18];

  return MEMORY[0x28217F4B0](v34, v32, v33, v30, v31, v27, v28);
}

uint64_t sub_21B4B8128()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_21B4B86A8;
  }

  else
  {
    v2 = sub_21B4B823C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B4B823C()
{
  v38 = v0;
  sub_21B4C7398();
  v1 = sub_21B4C73C8();
  sub_21B4C7438();
  v2 = sub_21B4C9E48();
  if (sub_21B4CA148())
  {
    v3 = v0[27];
    v4 = v0[24];
    v5 = v0[25];

    sub_21B4C7468();

    if ((*(v5 + 88))(v3, v4) == *MEMORY[0x277D85B00])
    {
      v6 = 0;
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[25] + 8))(v0[27], v0[24]);
      v7 = "[kind=%{name=kind}s], [outcome=%{name=outcome}s])";
      v6 = 2;
    }

    v34 = v0[48];
    v31 = v0[46];
    v32 = v0[34];
    v33 = v0[37];
    v14 = v0[31];
    v30 = v0[28];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = v6;
    *(v15 + 1) = v6;
    *(v15 + 2) = 2080;
    sub_21B4C85B8();
    v17 = sub_21B36CF74(v0[11], v0[12], &v37);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_21B36CF74(0x53534543435553, 0xE700000000000000, &v37);
    v18 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v1, v2, v18, "IntentDispatch", v7, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v16, -1, -1);
    MEMORY[0x21CEF5710](v15, -1, -1);

    v31(v14, v30);
    v34(v33, v32);
  }

  else
  {
    v8 = v0[48];
    v9 = v0[46];
    v10 = v0[37];
    v11 = v0[34];
    v12 = v0[31];
    v13 = v0[28];

    v9(v12, v13);
    v8(v10, v11);
  }

  sub_21B4C74C8();
  v19 = sub_21B4C7538();
  v20 = sub_21B4C9CD8();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[44];
  v23 = v0[42];
  v24 = v0[39];
  if (v21)
  {
    v36 = v0[44];
    v35 = v0[42];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;
    sub_21B4C85B8();
    v27 = sub_21B36CF74(v0[9], v0[10], &v37);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_21B365000, v19, v20, "Intent %s succeeded.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CEF5710](v26, -1, -1);
    MEMORY[0x21CEF5710](v25, -1, -1);

    v36(v35, v24);
  }

  else
  {

    v22(v23, v24);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_21B4B86A8()
{
  v43 = v0;
  v1 = v0[51];
  sub_21B4C74C8();
  v2 = v1;
  v3 = sub_21B4C7538();
  v4 = sub_21B4C9CE8();

  if (os_log_type_enabled(v3, v4))
  {
    v39 = v0[41];
    v41 = v0[44];
    v5 = v0[39];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315394;
    sub_21B4C85B8();
    v8 = sub_21B36CF74(v0[7], v0[8], v42);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_21B4CA698();
    v11 = sub_21B36CF74(v9, v10, v42);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_21B365000, v3, v4, "Failed to route intent: %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v7, -1, -1);
    MEMORY[0x21CEF5710](v6, -1, -1);

    v41(v39, v5);
  }

  else
  {
    v12 = v0[44];
    v13 = v0[41];
    v14 = v0[39];

    v12(v13, v14);
  }

  sub_21B4C7398();
  v15 = sub_21B4C73C8();
  sub_21B4C7438();
  v16 = sub_21B4C9E48();
  if (sub_21B4CA148())
  {
    v18 = v0[25];
    v17 = v0[26];
    v19 = v0[24];

    sub_21B4C7468();

    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[25] + 8))(v0[26], v0[24]);
      v21 = "[kind=%{name=kind}s], [outcome=%{name=outcome}s])";
      v20 = 2;
    }

    v40 = v0[48];
    v36 = v0[46];
    v37 = v0[34];
    v38 = v0[36];
    v28 = v0[30];
    v35 = v0[28];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42[0] = v30;
    *v29 = v20;
    *(v29 + 1) = v20;
    *(v29 + 2) = 2080;
    sub_21B4C85B8();
    v31 = sub_21B36CF74(v0[5], v0[6], v42);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_21B36CF74(0x4552554C494146, 0xE700000000000000, v42);
    v32 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v15, v16, v32, "IntentDispatch", v21, v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v30, -1, -1);
    MEMORY[0x21CEF5710](v29, -1, -1);

    v36(v28, v35);
    v40(v38, v37);
  }

  else
  {
    v22 = v0[48];
    v23 = v0[46];
    v24 = v0[36];
    v25 = v0[34];
    v26 = v0[30];
    v27 = v0[28];

    v23(v26, v27);
    v22(v24, v25);
  }

  swift_willThrow();

  v33 = v0[1];

  return v33();
}

uint64_t sub_21B4B8BC0()
{
  sub_21B4C8DF8();

  sub_21B4C8878();
  type metadata accessor for PodcastsIntentDispatcher();
  sub_21B4C8DD8();

  v1 = sub_21B4C8DC8();
  v0[8] = v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_21B4B8CD4;
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return sub_21B4B7B38(v5, v6, v1, v4, v3);
}

uint64_t sub_21B4B8CD4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21B3AB5E4;
  }

  else
  {
    v2 = sub_21B3A083C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B4B8DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_21B40998C;

  return MEMORY[0x28217F4B8](a1, a2, a3, a7, a4, a5, a8, a6);
}

uint64_t Preparable.artworkData(for:imageProvider:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21B4C7558();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870F8);
  v2[7] = swift_task_alloc();
  v4 = sub_21B4C6368();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_21B4C64F8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_21B4C6F38();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  v2[21] = swift_task_alloc();
  v7 = sub_21B4C5E78();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4B91EC, 0, 0);
}

uint64_t sub_21B4B91EC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_21B4B9D8C(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21B3F2D94(v0[21], &qword_27CD86D70);

    v4 = v0[1];

    return v4(0, 0xF000000000000000);
  }

  else
  {
    v6 = v0[16];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[11];
    v10 = v0[12];
    sub_21B4B9DFC(v0[21], v0[24], MEMORY[0x277D3D488]);
    sub_21B4C6F08();
    ArtworkModel.preferredRequest.getter(v7);
    sub_21B4C6408();
    v11 = *(v10 + 8);
    v0[25] = v11;
    v0[26] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    sub_21B4C6448();
    v11(v8, v9);
    sub_21B4C6458();
    v11(v6, v9);
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_21B4B9474;
    v13 = v0[17];
    v14 = v0[7];

    return MEMORY[0x28219DF80](v14, v13);
  }
}

uint64_t sub_21B4B9474()
{

  if (v0)
  {

    v1 = sub_21B4B9738;
  }

  else
  {
    v1 = sub_21B4B958C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_21B4B958C()
{
  v1 = v0[25];
  v2 = v0[19];
  v13 = v0[20];
  v14 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
  (*(v0[9] + 56))(v7, 0, 1, v0[8]);
  v8 = MEMORY[0x277D3D5D0];
  sub_21B4B9DFC(v7, v6, MEMORY[0x277D3D5D0]);
  v9 = ArtworkContent.imageData()();
  v15 = v10;
  v16 = v9;
  sub_21B387428(v6, v8);
  v1(v4, v5);
  (*(v2 + 8))(v13, v3);
  sub_21B387428(v14, MEMORY[0x277D3D488]);

  v11 = v0[1];

  return v11(v16, v15);
}

uint64_t sub_21B4B9738()
{
  v1 = v0[7];
  v2 = v0[3];
  (*(v0[9] + 56))(v1, 1, 1, v0[8]);
  sub_21B3F2D94(v1, &qword_27CD870F8);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_21B4C6388();
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_21B4B9850;

  return ImageProvider.placeholderData(with:)(v3, v4, v6, v8);
}

uint64_t sub_21B4B9850(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_21B4B9AD0;
  }

  else
  {
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v7 = sub_21B4B9988;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21B4B9988()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);
  (*(v0 + 200))(*(v0 + 136), *(v0 + 88));
  (*(v3 + 8))(v2, v4);
  sub_21B387428(v1, MEMORY[0x277D3D488]);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);

  v5 = *(v0 + 8);

  return v5(v8, v7);
}

uint64_t sub_21B4B9AD0()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  sub_21B4C7478();
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_21B4C7538();
  v28 = sub_21B4C9CE8();
  v6 = os_log_type_enabled(v5, v28);
  v7 = v0[25];
  v8 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[13];
  v31 = v0[11];
  v14 = v0[5];
  v29 = v0[4];
  v30 = v0[6];
  if (v6)
  {
    v27 = v0[24];
    v15 = swift_slowAlloc();
    v26 = v9;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v25 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v7;
    v20 = _s10PodcastsUI22PreparedArtworkRequestV3keySo8NSStringCvg_0();
    v19(v13, v31);
    *(v15 + 4) = v20;
    *v16 = v20;
    v7 = v19;
    v12 = v18;
    v11 = v17;
    v10 = v25;
    _os_log_impl(&dword_21B365000, v5, v28, "Episode entity was unable to prepare artwork or placeholder for %@.", v15, 0xCu);
    sub_21B3F2D94(v16, &qword_27CD86B50);
    v21 = v16;
    v9 = v26;
    MEMORY[0x21CEF5710](v21, -1, -1);
    v22 = v15;
    v8 = v27;
    MEMORY[0x21CEF5710](v22, -1, -1);
  }

  else
  {

    v7(v13, v31);
  }

  (*(v14 + 8))(v30, v29);
  v7(v11, v31);
  (*(v10 + 8))(v9, v12);
  sub_21B387428(v8, MEMORY[0x277D3D488]);

  v23 = v0[1];

  return v23(0, 0xF000000000000000);
}

uint64_t sub_21B4B9D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B4B9DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of Preparable.prepare(asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B40998C;

  return v9(a1, a2, a3);
}

unint64_t RestrictionsController.RestrictionsIntent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_21B4B9FB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t RestrictionsController.presentAlertIfNeeded(_:presentationCompletion:actionCompletion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  result = sub_21B4C6C18();
  if (result > 1)
  {
    v50 = a4;
    if (result == 2)
    {
      v15 = a3;
      v16 = sub_21B4C6778();
      v48 = v17;
      v49 = v16;
      v18 = sub_21B4C6778();
      v46 = v19;
      v47 = v18;
      v20 = 0;
      v21 = 0;
LABEL_9:
      v45 = 0;
      v27 = 0;
LABEL_16:
      v33 = sub_21B4C9A58();
      (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
      sub_21B4C9A18();
      v34 = v5;
      sub_21B371F28(a2);
      v35 = v50;
      sub_21B371F28(v50);
      v36 = sub_21B4C9A08();
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      v37[2] = v36;
      v37[3] = v38;
      v40 = v48;
      v39 = v49;
      v37[4] = v34;
      v37[5] = v39;
      v41 = v45;
      v37[6] = v40;
      v37[7] = v41;
      v42 = v46;
      v43 = v47;
      v37[8] = v27;
      v37[9] = v43;
      v37[10] = v42;
      v37[11] = v20;
      v37[12] = v21;
      v37[13] = a2;
      v37[14] = v15;
      v37[15] = v35;
      v37[16] = a5;
      sub_21B43614C(0, 0, v13, &unk_21B4DBFA0, v37);
    }

    if (result == 3)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          v51 = a1;
          goto LABEL_20;
        }

        v15 = a3;
      }

      else
      {
        v15 = a3;
      }

      v28 = sub_21B4C6778();
      v48 = v29;
      v49 = v28;
      v45 = sub_21B4C6778();
      v27 = v30;
      v31 = sub_21B4C6778();
      v46 = v32;
      v47 = v31;
      v20 = 0;
      v21 = 0;
      goto LABEL_16;
    }

LABEL_18:
    v51 = result;
LABEL_20:
    result = sub_21B4CA648();
    __break(1u);
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      v50 = a4;
      v15 = a3;
      v22 = sub_21B4C6778();
      v48 = v23;
      v49 = v22;
      v24 = sub_21B4C6778();
      v46 = v25;
      v47 = v24;
      v20 = sub_21B4C6778();
      v21 = v26;
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_21B4BA35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v17;
  *(v8 + 208) = v18;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v9 = sub_21B4C7558();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  sub_21B4C9A18();
  *(v8 + 240) = sub_21B4C9A08();
  v11 = sub_21B4C99C8();

  return MEMORY[0x2822009F8](sub_21B4BA478, v11, v10);
}

uint64_t sub_21B4BA478()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[18];
  v6 = v0[14];

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v37 = v7;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v2;
  v36 = v8;
  v8[4] = v1;
  v9 = v6;
  sub_21B371F28(v4);
  sub_21B371F28(v2);
  v10 = sub_21B4C96C8();
  if (v5)
  {
    v11 = sub_21B4C96C8();
  }

  else
  {
    v11 = 0;
  }

  v12 = v0[22];
  v13 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v14 = swift_allocObject();
  *(v14 + 16) = sub_21B4BB1D8;
  *(v14 + 24) = v37;

  v15 = sub_21B4C96C8();
  v0[6] = sub_21B4BB354;
  v0[7] = v14;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21B4BB218;
  v0[5] = &block_descriptor_16;
  v16 = _Block_copy(v0 + 2);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:1 handler:v16];
  _Block_release(v16);

  [v13 addAction_];
  if (v12)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_21B4BB20C;
    *(v19 + 24) = v36;

    v20 = sub_21B4C96C8();
    v0[12] = sub_21B4B31B0;
    v0[13] = v19;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_21B4BB218;
    v0[11] = &block_descriptor_22_0;
    v21 = _Block_copy(v0 + 8);

    v22 = [v17 actionWithTitle:v20 style:0 handler:v21];
    _Block_release(v21);

    [v13 addAction_];
    [v13 setPreferredAction_];
  }

  else
  {
    [v13 setPreferredAction_];
  }

  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 delegate];

  if (!v24)
  {
    goto LABEL_13;
  }

  if (([v24 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v25 = [v24 window];
  swift_unknownObjectRelease();
  if (!v25 || (v26 = [v25 rootViewController], v25, !v26))
  {
LABEL_13:
    sub_21B4C74A8();
    v27 = sub_21B4C7538();
    v28 = sub_21B4C9CE8();
    v29 = os_log_type_enabled(v27, v28);
    v31 = v0[28];
    v30 = v0[29];
    v32 = v0[27];
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21B365000, v27, v28, "Failed to present restrictions alert due to missing root view controller", v33, 2u);
      MEMORY[0x21CEF5710](v33, -1, -1);
    }

    else
    {
    }

    (*(v31 + 8))(v30, v32);
    goto LABEL_17;
  }

  [v26 presentViewController:v13 animated:1 completion:0];

LABEL_17:

  v34 = v0[1];

  return v34();
}

uint64_t sub_21B4BA9D8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21B40998C;

  return sub_21B4BA35C(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_21B4BAAFC()
{
  result = qword_27CD88E58;
  if (!qword_27CD88E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88E58);
  }

  return result;
}

uint64_t sub_21B4BAB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  sub_21B4C9A28();
  v8 = sub_21B4C9A58();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21B4C9A18();

  sub_21B371F28(a2);
  v10 = sub_21B4C9A08();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a2;
  v11[6] = a3;

  sub_21B43614C(0, 0, v7, &unk_21B4DC080, v11);
}

uint64_t sub_21B4BACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_21B4C9A18();
  v6[8] = sub_21B4C9A08();
  v8 = sub_21B4C99C8();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_21B4BAD78, v8, v7);
}

uint64_t sub_21B4BAD78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = sub_21B4C6C18();
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_21B4BAE74;

    return MEMORY[0x28219DDD0]();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_21B4BAE74(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21B4BAF9C, v4, v3);
}

uint64_t sub_21B4BAF9C()
{
  v1 = *(v0 + 48);

  if (v1)
  {

    v2 = sub_21B4C6BF8();
    if (v2 == sub_21B4C6BF8())
    {
      v3 = *(v0 + 48);

      sub_21B36F6F4(v3);
    }

    else
    {
      v4 = *(v0 + 88);
      v5 = *(v0 + 48);
      v5(*(v0 + 112));
      sub_21B36F6F4(v5);
    }
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_21B4BB088(void *a1, int a2, uint64_t a3, void *aBlock, const void *a5)
{
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_21B4BB1C0;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_21B4BB1AC;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = a1;
  RestrictionsController.presentAlertIfNeeded(_:presentationCompletion:actionCompletion:)(a3, v8, v11, v10, v12);
  sub_21B36F6F4(v10);
  sub_21B36F6F4(v8);
}

uint64_t sub_21B4BB1D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

void sub_21B4BB218(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21B4BB280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21B40AB58;

  return sub_21B4BACDC(a1, v4, v5, v6, v7, v8);
}

double sub_21B4BB358()
{
  [*v0 displayScale];

  return CGFloat.safeDisplayScale.getter(v1);
}

double Optional<A>.safeDisplayScale.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v13, a1, v10);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    (*(v4 + 8))(v6, a1);
    v14 = [objc_opt_self() mainScreen];
    [v14 scale];
    v16 = v15;
  }

  else
  {
    (*(v9 + 32))(v12, v6, v8);
    v16 = (*(a2 + 8))(v8, a2);
    (*(v9 + 8))(v12, v8);
  }

  return v16;
}

uint64_t sub_21B4BB66C()
{
  v0 = swift_allocObject();
  swift_weakInit();

  sub_21B4BCB48(sub_21B4BB994, v0);
}

void sub_21B4BB6DC(char a1, uint64_t a2)
{
  v4 = sub_21B4C8208();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C8248();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_21B3F12CC(0, &qword_281200500);
    v12 = sub_21B4C9E08();
    aBlock[4] = sub_21B4BD1F4;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B36CDB8;
    aBlock[3] = &block_descriptor_43;
    v13 = _Block_copy(aBlock);

    sub_21B4C8228();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21B36C9F4(&qword_2811FD230, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
    sub_21B428450();
    sub_21B4CA298();
    MEMORY[0x21CEF3560](0, v11, v7, v13);
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_21B4BB99C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = 1;
  }

  return result;
}

void sub_21B4BB9F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v64 - v5;
  v7 = [a1 tabBarController];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 viewControllers];

  if (!v9)
  {
    return;
  }

  v68 = sub_21B3F12CC(0, &unk_2811FCD10);
  v10 = sub_21B4C9928();

  v11 = [a1 view];
  if (!v11)
  {
    goto LABEL_98;
  }

  v12 = v11;
  v13 = [v11 window];

  if (!v13)
  {
    goto LABEL_92;
  }

  v67 = [v13 windowScene];

  if (!v67)
  {
    goto LABEL_92;
  }

  if ((*(v1 + 24) & 1) == 0)
  {

LABEL_36:
    v28 = v67;
LABEL_37:

    return;
  }

  v14 = [a1 splitViewController];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (([v14 isCollapsed] & 1) == 0)
  {

    v66 = [v15 detailViewController];
    if (!v66)
    {
LABEL_82:

      goto LABEL_36;
    }

    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {

      v28 = v66;
      goto LABEL_37;
    }

    v30 = [v29 viewControllers];

    v10 = sub_21B4C9928();
    if (v10 >> 62)
    {
LABEL_90:
      if (sub_21B4CA4B8())
      {
        goto LABEL_46;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_46:
      if ((v10 & 0xC000000000000001) != 0)
      {
LABEL_96:
        v31 = v1;
        v32 = MEMORY[0x21CEF3AB0](0, v10);
LABEL_49:
        v33 = v32;

        v34 = a1;
        v35 = sub_21B4CA098();

        if (v35)
        {
          v36 = sub_21B4C9A58();
          (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
          v37 = swift_allocObject();
          v37[2] = 0;
          v37[3] = 0;
          v38 = v67;
          v37[4] = v67;
          v39 = v38;
          sub_21B43614C(0, 0, v6, &unk_21B4DC108, v37);

          v40 = [objc_opt_self() sharedInstance];
          v41 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];

          [v41 didAttemptPromptReview];
LABEL_79:
          *(v31 + 24) = 0;
          return;
        }

        goto LABEL_82;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = v1;
        v32 = *(v10 + 32);
        goto LABEL_49;
      }

      __break(1u);
LABEL_98:
      __break(1u);
      return;
    }

LABEL_92:

    return;
  }

LABEL_10:
  v64 = v6;
  v69 = MEMORY[0x277D84F90];
  v6 = (v10 & 0xFFFFFFFFFFFFFF8);
  if (v10 >> 62)
  {
    goto LABEL_88;
  }

  v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v66 = a1;
  v16 = v10 & 0xC000000000000001;
  v17 = MEMORY[0x277D84F90];
  if (v15)
  {
    a1 = 0;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v65 = v18;
      v19 = a1;
      while (1)
      {
        if (v16)
        {
          v20 = MEMORY[0x21CEF3AB0](v19, v10);
        }

        else
        {
          if (v19 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v20 = *(v10 + 8 * v19 + 32);
        }

        v21 = v20;
        a1 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          break;
        }

LABEL_16:
        ++v19;
        if (a1 == v15)
        {
          v17 = MEMORY[0x277D84F90];
          v18 = v65;
          goto LABEL_41;
        }
      }

      v23 = [v22 viewControllers];
      v24 = sub_21B4C9928();

      if (!(v24 >> 62))
      {
        break;
      }

      if (!sub_21B4CA4B8())
      {
        goto LABEL_24;
      }

LABEL_27:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = v1;
        MEMORY[0x21CEF3AB0](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_90;
        }

        v25 = v1;
        v26 = *(v24 + 32);
      }

      MEMORY[0x21CEF3050](v27);
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      sub_21B4C9988();
      v18 = v69;
      v1 = v25;
      v17 = MEMORY[0x277D84F90];
      if (a1 == v15)
      {
LABEL_41:
        v69 = v17;
        v70 = v18;
        a1 = 0;
LABEL_52:
        v65 = v17;
        v42 = a1;
        while (1)
        {
          if (v16)
          {
            v43 = MEMORY[0x21CEF3AB0](v42, v10);
          }

          else
          {
            if (v42 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_87;
            }

            v43 = *(v10 + 8 * v42 + 32);
          }

          v44 = v43;
          a1 = (v42 + 1);
          if (__OFADD__(v42, 1))
          {
            break;
          }

          objc_opt_self();
          v45 = swift_dynamicCastObjCClass();
          if (v45 && (v46 = [v45 masterViewController]) != 0)
          {
            v47 = v46;
            objc_opt_self();
            v48 = swift_dynamicCastObjCClass();
            if (v48)
            {
              v49 = [v48 viewControllers];

              v50 = sub_21B4C9928();
              if (v50 >> 62)
              {
                if (sub_21B4CA4B8())
                {
LABEL_68:
                  if ((v50 & 0xC000000000000001) != 0)
                  {
                    v51 = v1;
                    MEMORY[0x21CEF3AB0](0, v50);
                  }

                  else
                  {
                    if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_96;
                    }

                    v51 = v1;
                    v52 = *(v50 + 32);
                  }

                  MEMORY[0x21CEF3050](v53);
                  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_21B4C9948();
                  }

                  sub_21B4C9988();
                  v17 = v69;
                  v1 = v51;
                  if (a1 != v15)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_77;
                }
              }

              else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_68;
              }
            }

            else
            {
            }
          }

          else
          {
          }

          ++v42;
          if (a1 == v15)
          {
            v17 = v65;
            goto LABEL_77;
          }
        }

LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        v15 = sub_21B4CA4B8();
        goto LABEL_12;
      }
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_24:

    goto LABEL_16;
  }

  v69 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
LABEL_77:
  v31 = v1;

  v54 = sub_21B4764D8(v17);
  v55 = v70;
  v69 = v66;
  MEMORY[0x28223BE20](v54);
  *(&v64 - 2) = &v69;
  v56 = sub_21B4BCA20(sub_21B4BCCBC, (&v64 - 4), v55);

  if (v56)
  {
    v57 = sub_21B4C9A58();
    v58 = v64;
    (*(*(v57 - 8) + 56))(v64, 1, 1, v57);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v60 = v67;
    v59[4] = v67;
    v61 = v60;
    sub_21B43614C(0, 0, v58, &unk_21B4DC100, v59);

    v62 = [objc_opt_self() sharedInstance];
    v63 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];

    [v63 didAttemptPromptReview];
    goto LABEL_79;
  }
}

uint64_t sub_21B4BC3C4()
{
  sub_21B4C9A18();
  *(v0 + 24) = sub_21B4C9A08();
  v2 = sub_21B4C99C8();

  return MEMORY[0x2822009F8](sub_21B4BC458, v2, v1);
}

uint64_t sub_21B4BC458()
{

  sub_21B4C8288();
  v1 = *(v0 + 8);

  return v1();
}

void sub_21B4BC4C0(char a1, void (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];

    v7 = [v6 shouldAttemptReview];
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v10[4] = sub_21B4BD1EC;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_21B3F4AC4;
    v10[3] = &block_descriptor_40;
    v9 = _Block_copy(v10);

    [v7 addFinishBlock_];
    _Block_release(v9);
  }

  else
  {
    a2(0);
  }
}

void sub_21B4BC628(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    sub_21B3F12CC(0, qword_2812003E0);
    v7 = a1;
    v5 = sub_21B4CA088();
    v6 = sub_21B4CA098();

    a3(v6 & 1);
  }
}

uint64_t sub_21B4BC6D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C8208();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21B4C8248();
  v9 = *(v19 - 8);
  v10 = MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 countOfSubscribedAndNotHiddenPodcasts];
  v14 = sub_21B4BCF00();
  sub_21B3F12CC(0, &qword_281200500);
  v15 = sub_21B4C9E08();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v13;
  v16[5] = v14;
  aBlock[4] = sub_21B4BD1B0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_34;
  v17 = _Block_copy(aBlock);

  sub_21B4C8228();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B36C9F4(&qword_2811FD230, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v12, v8, v17);
  _Block_release(v17);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v12, v19);
}

uint64_t StoreReviewPromptController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21B4BCA20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x21CEF3AB0](v5, a3);
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
      v13 = sub_21B4CA4B8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_21B4BCB48(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = sub_21B4BCEEC;
  v8[4] = v4;
  v11[4] = sub_21B4BCEF4;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21B36CDB8;
  v11[3] = &block_descriptor_17;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 performBlock_];
  _Block_release(v9);
}

uint64_t sub_21B4BCD24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40AB58;

  return sub_21B4BC3A4(a1, v4, v5, v6);
}

uint64_t sub_21B4BCDD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40998C;

  return sub_21B4BC3A4(a1, v4, v5, v6);
}

uint64_t sub_21B4BCF00()
{
  v0 = sub_21B4C7558();
  MEMORY[0x28223BE20](v0);
  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForPreviouslyPlayedHidingFutureTimestamps];
  [v1 setPredicate_];

  sub_21B3F12CC(0, &qword_2811FCAA0);
  v3 = sub_21B4C9F98();

  return v3;
}

uint64_t sub_21B4BD218()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B58);
  __swift_allocate_value_buffer(v0, qword_2811FFB08);
  __swift_project_value_buffer(v0, qword_2811FFB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B60);
  sub_21B3F1314(&qword_2811FD660, &qword_27CD88B58);
  return sub_21B4C5C18();
}

uint64_t sub_21B4BD2F0@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E80);
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v90 = v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v5 = *(v4 - 8);
  v109 = v4;
  v110 = v5;
  MEMORY[0x28223BE20](v4);
  v87 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = v81 - v8;
  MEMORY[0x28223BE20](v9);
  v102 = v81 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C80);
  v114 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v88 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = v81 - v13;
  MEMORY[0x28223BE20](v14);
  v108 = v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C78);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v81 - v21;
  MEMORY[0x28223BE20](v23);
  v96 = v81 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E88);
  v89 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v26 = v81 - v25;
  v97 = sub_21B4C5BA8();
  v113 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v28 = v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v81 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E90);
  v105 = *(v32 - 8);
  v106 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v112 = v81 - v36;
  v37 = sub_21B4C5BF8();
  (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
  sub_21B4C5A98();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C88);
  v100 = MEMORY[0x277D85AC0];
  v38 = sub_21B3F1314(&qword_2811FD648, &qword_27CD86C78);
  sub_21B4C5C18();
  MEMORY[0x21CEEF1B0](v19, v16, v38);
  v39 = *(v17 + 8);
  v39(v19, v16);
  v40 = v96;
  sub_21B4C5A78();
  v39(v22, v16);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E98);
  v98 = v26;
  sub_21B4C5B98();
  v39(v40, v16);
  v42 = *(v113 + 8);
  v113 += 8;
  v104 = v42;
  v43 = v97;
  v42(v28, v97);
  sub_21B3F2D94(v31, &qword_27CD86C60);
  MEMORY[0x21CEEF1D0](v26, v41);
  v85 = sub_21B3F1314(&qword_2811FD718, &qword_27CD88E90);
  v44 = v106;
  MEMORY[0x21CEEF1B0](v34, v106, v85);
  v45 = *(v105 + 8);
  v105 += 8;
  v86 = v45;
  v45(v34, v44);
  sub_21B4C5A98();
  v46 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v47 = v87;
  v48 = v109;
  sub_21B4C5C18();
  v49 = v101;
  MEMORY[0x21CEEF1B0](v47, v48, v46);
  v51 = v110 + 8;
  v50 = *(v110 + 8);
  v50(v47, v48);
  v52 = v102;
  sub_21B4C5A78();
  v50(v49, v48);
  v53 = v96;
  v54 = v84;
  sub_21B4C5B78();
  v50(v52, v48);
  v104(v28, v43);
  v55 = v107;
  v56 = v53;
  v57 = v53;
  v58 = v54;
  MEMORY[0x21CEEF220](v56, v54);
  v95 = sub_21B3F1314(&qword_2811FD6D8, &qword_27CD86C80);
  v59 = v111;
  MEMORY[0x21CEEF1B0](v55, v111, v95);
  v99 = *(v114 + 8);
  v114 += 8;
  v99(v55, v59);
  v115 = 58;
  v116 = 0xE100000000000000;
  v83 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v117, &v115, MEMORY[0x277D837D0], v83);
  sub_21B4C5A98();
  v60 = v109;
  sub_21B4C5C18();
  v61 = v101;
  v81[1] = v46;
  MEMORY[0x21CEEF1B0](v47, v60, v46);
  v50(v47, v60);
  sub_21B4C5A78();
  v50(v61, v60);
  v82 = v50;
  v110 = v51;
  sub_21B4C5B78();
  v50(v52, v60);
  v62 = v97;
  v63 = v104;
  v104(v28, v97);
  v64 = v88;
  MEMORY[0x21CEEF220](v57, v58);
  v65 = v111;
  MEMORY[0x21CEEF1B0](v64, v111, v95);
  v99(v64, v65);
  sub_21B4C5A78();
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88EA0);
  sub_21B3F1314(&qword_2811FD650, &qword_27CD88E88);
  v66 = v90;
  sub_21B4C5B38();
  v63(v28, v62);
  v68 = v117[0];
  v67 = v117[1];
  sub_21B4C5A98();
  v115 = v68;
  v116 = v67;
  v69 = v102;
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD658, &qword_27CD88E80);
  v70 = v91;
  v71 = v66;
  v72 = v92;
  v73 = v109;
  sub_21B4C5B38();
  v82(v69, v73);
  v74 = v62;
  v75 = v104;
  v104(v28, v62);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B60);
  v76 = v107;
  v77 = v111;
  sub_21B4C5B38();
  v75(v28, v74);
  v78 = *(v94 + 8);
  v78(v70, v72);
  v78(v71, v72);
  (*(v89 + 8))(v98, v103);
  v79 = v99;
  v99(v76, v77);
  v79(v108, v77);
  return v86(v112, v106);
}

uint64_t sub_21B4BE040@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C78);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v15 = sub_21B4C5BA8();
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C80);
  v49 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v46 = v36 - v22;
  sub_21B4C5A98();
  v42 = MEMORY[0x277D85AC0];
  v23 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  sub_21B4C5C18();
  MEMORY[0x21CEEF1B0](v4, v1, v23);
  v24 = *(v2 + 8);
  v24(v4, v1);
  v36[0] = v10;
  sub_21B4C5A78();
  v39 = v24;
  v24(v7, v1);
  v40 = v2 + 8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C88);
  v36[1] = v25;
  sub_21B4C5B78();
  v24(v10, v1);
  v26 = *(v48 + 8);
  v48 += 8;
  v38 = v26;
  v26(v18, v47);
  MEMORY[0x21CEEF220](v14, v25);
  v27 = sub_21B3F1314(&qword_2811FD6D8, &qword_27CD86C80);
  v28 = v41;
  MEMORY[0x21CEEF1B0](v20, v41, v27);
  v29 = *(v49 + 8);
  v49 += 8;
  v37 = v29;
  v29(v20, v28);
  v50 = 58;
  v51 = 0xE100000000000000;
  v30 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v52, &v50, MEMORY[0x277D837D0], v30);
  sub_21B4C5A78();
  v31 = v52[0];
  v32 = v52[1];
  sub_21B4C5A98();
  v50 = v31;
  v51 = v32;
  v33 = v36[0];
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD648, &qword_27CD86C78);
  v34 = v43;
  sub_21B4C5B38();
  v39(v33, v1);
  v38(v18, v47);
  (*(v44 + 8))(v14, v34);
  return v37(v46, v28);
}

uint64_t sub_21B4BE5D0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x28223BE20](v1);
  v52 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v42 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v58 = sub_21B4C5BA8();
  v9 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_21B4C5AA8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88EA8);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v56 = &v42 - v24;
  sub_21B4C5AC8();
  v25 = sub_21B4C5BF8();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  sub_21B4C5A98();
  v44 = sub_21B39BAB0();
  v26 = MEMORY[0x277D83E40];
  v42 = v15;
  v43 = v8;
  sub_21B4C5B98();
  v27 = *(v9 + 8);
  v48 = v9 + 8;
  v49 = v27;
  v27(v11, v58);
  sub_21B3F2D94(v14, &qword_27CD86C60);
  v28 = *(v16 + 8);
  v28(v20, v15);
  v45 = v28;
  v46 = v16 + 8;
  MEMORY[0x21CEEF1D0](v8, v26);
  v29 = sub_21B3F1314(&qword_2811FD730, &qword_27CD88EA8);
  v30 = v57;
  MEMORY[0x21CEEF1B0](v22, v57, v29);
  v31 = *(v59 + 8);
  v59 += 8;
  v47 = v31;
  v31(v22, v30);
  v32 = v50;
  sub_21B4C5AC8();
  v33 = v42;
  MEMORY[0x21CEEF1B0](v32, v42, v44);
  v34 = v32;
  v35 = v33;
  v28(v34, v33);
  v36 = v43;
  sub_21B4C5A78();
  sub_21B4C5A98();
  sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v37 = v51;
  v38 = v53;
  sub_21B4C5B58();
  v39 = v52;
  sub_21B4C5B58();
  sub_21B4C5B38();
  v40 = *(v54 + 8);
  v40(v39, v38);
  v40(v37, v38);
  v49(v11, v58);
  v40(v36, v38);
  v45(v20, v35);
  return v47(v56, v57);
}

uint64_t sub_21B4BEBDC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_21B4C5BA8();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - v7;
  MEMORY[0x28223BE20](v8);
  v33 = &v26 - v9;
  v10 = sub_21B4C5AA8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_21B4C5AC8();
  v20 = sub_21B39BAB0();
  v26 = v19;
  MEMORY[0x21CEEF1B0](v16, v10, v20);
  v21 = *(v11 + 8);
  v21(v16, v10);
  sub_21B4C5AC8();
  MEMORY[0x21CEEF1B0](v13, v10, v20);
  v21(v13, v10);
  sub_21B4C5A78();
  sub_21B4C5A98();
  sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v22 = v27;
  sub_21B4C5B58();
  v23 = v28;
  sub_21B4C5B58();
  sub_21B4C5B38();
  v24 = *(v29 + 8);
  v24(v23, v4);
  v24(v22, v4);
  (*(v31 + 8))(v3, v32);
  v24(v33, v4);
  v21(v16, v10);
  return (v21)(v26, v10);
}

uint64_t sub_21B4BEFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_21B4C54A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_21B4C5468();
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E78);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v60 - v24;
  v74 = a1;
  sub_21B4C5488();
  v72 = v4;
  v27 = v4 + 48;
  v26 = *(v4 + 48);
  v28 = v26(v25, 1, v3);
  v76 = v27;
  if (v28)
  {
LABEL_46:
    v48 = v26;
    if (!v26(v25, 1, v3))
    {
      v29 = v3;
      v13 = sub_21B4C5478();
      if (*v49)
      {
        v30 = v49;
        v81 = 0;
        v82 = 0xE000000000000000;
        sub_21B4C9B28();
        sub_21B4C5448();

        v19 = *v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v30 = v19;
        v70 = v48;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_49:
          v52 = *(v19 + 2);
          v51 = *(v19 + 3);
          if (v52 >= v51 >> 1)
          {
            v19 = sub_21B3F2998(v51 > 1, v52 + 1, 1, v19);
            *v30 = v19;
          }

          v3 = v29;
          *(v19 + 2) = v52 + 1;
          (*(v78 + 32))(&v19[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v52], v73, v9);
          (v13)(v83, 0);
          v53 = v70(v25, 1, v29);
LABEL_54:
          if (v53)
          {
            v54 = sub_21B4C5748();
            (*(*(v54 - 8) + 56))(v8, 1, 1, v54);
          }

          else
          {
            v56 = v71;
            v55 = v72;
            (*(v72 + 16))(v71, v25, v3);
            sub_21B4C5498();
            (*(v55 + 8))(v56, v3);
            v54 = sub_21B4C5748();
            v57 = *(v54 - 8);
            if ((*(v57 + 48))(v8, 1, v54) != 1)
            {
              (*(v57 + 32))(v75, v8, v54);
              return sub_21B3F2D94(v25, &qword_27CD88E78);
            }
          }

          v58 = v75;
          sub_21B4C5748();
          v59 = *(v54 - 8);
          (*(v59 + 16))(v58, v74, v54);
          if ((*(v59 + 48))(v8, 1, v54) != 1)
          {
            sub_21B3F2D94(v8, &qword_27CD86E60);
          }

          return sub_21B3F2D94(v25, &qword_27CD88E78);
        }

LABEL_63:
        v19 = sub_21B3F2998(0, *(v19 + 2) + 1, 1, v19);
        *v30 = v19;
        goto LABEL_49;
      }

      (v13)(v83, 0);
    }

    v53 = v48(v25, 1, v3);
    goto LABEL_54;
  }

  v65 = v16;
  v64 = v13;
  v70 = v26;
  v66 = v3;
  v29 = v83;
  v67 = v25;
  v30 = v25;
  v31 = sub_21B4C5478();
  v79 = v32;
  v25 = *v32;
  if (!*v32)
  {
    v31(v83, 0);
    v25 = v67;
LABEL_45:
    v3 = v66;
    v26 = v70;
    goto LABEL_46;
  }

  v62 = v31;
  v63 = v8;
  v68 = *(v25 + 2);
  v8 = 0;
  if (!v68)
  {
    v40 = 0;
LABEL_16:
    v25 = v67;
LABEL_44:
    sub_21B4BFE3C(v8, v40);
    v62(v83, 0);
    v8 = v63;
    goto LABEL_45;
  }

  v80 = (v78 + 8);
  v77 = v78 + 16;
  while (1)
  {
    if (v8 >= *(v25 + 2))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v69 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v33 = *(v78 + 72);
    v34 = *(v78 + 16);
    v34(v22, &v25[v69 + v33 * v8], v9);
    v35 = sub_21B4C5458();
    v30 = v36;
    if (v35 == 116 && v36 == 0xE100000000000000)
    {
      break;
    }

    v37 = sub_21B4CA608();

    if (v37)
    {
      goto LABEL_18;
    }

    v38 = sub_21B4C5458();
    v30 = v39;
    if (v38 == 114 && v39 == 0xE100000000000000)
    {
      break;
    }

    v29 = sub_21B4CA608();

    v13 = *v80;
    (*v80)(v22, v9);
    if (v29)
    {
      goto LABEL_19;
    }

    if (v68 == ++v8)
    {
      v8 = *(*v79 + 16);
      v40 = v8;
      goto LABEL_16;
    }
  }

LABEL_18:
  v13 = *v80;
  (*v80)(v22, v9);
LABEL_19:
  v40 = v8 + 1;
  v41 = *v79;
  v42 = *(*v79 + 16);
  if (v42 - 1 == v8)
  {
    v25 = v67;
    goto LABEL_44;
  }

  v29 = v77;
  v68 = (v78 + 40);
  v25 = (v69 + v33 * v40);
  while (2)
  {
    if (v40 >= v42)
    {
      __break(1u);
      goto LABEL_62;
    }

    v34(v19, &v25[v41], v9);
    v30 = v19;
    if (sub_21B4C5458() == 116 && v44 == 0xE100000000000000)
    {
      goto LABEL_22;
    }

    v30 = sub_21B4CA608();
    v29 = v77;

    if (v30)
    {
      goto LABEL_23;
    }

    v30 = v19;
    if (sub_21B4C5458() == 114 && v45 == 0xE100000000000000)
    {
LABEL_22:

LABEL_23:
      result = (v13)(v19, v9);
      goto LABEL_24;
    }

    v30 = sub_21B4CA608();

    result = (v13)(v19, v9);
    if (v30)
    {
      v29 = v77;
    }

    else
    {
      v29 = v77;
      if (v40 != v8)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        v46 = *v79;
        v61 = *(*v79 + 16);
        result = v65;
        if (v8 >= v61)
        {
          goto LABEL_66;
        }

        v60 = v8 * v33;
        v29 = v77;
        result = (v34)(v65, v46 + v69 + v8 * v33, v9);
        if (v40 >= v61)
        {
          goto LABEL_67;
        }

        v34(v64, &v25[v46], v9);
        result = swift_isUniquelyReferenced_nonNull_native();
        *v79 = v46;
        if ((result & 1) == 0)
        {
          result = sub_21B4BFE28(v46);
          v46 = result;
          *v79 = result;
        }

        if (v8 >= *(v46 + 16))
        {
          goto LABEL_68;
        }

        v47 = (v46 + v69 + v60);
        v30 = v68;
        v61 = *v68;
        result = v61(v47, v64, v9);
        if (v40 >= *(*v79 + 16))
        {
          goto LABEL_69;
        }

        result = v61(&v25[*v79], v65, v9);
      }

      ++v8;
    }

LABEL_24:
    ++v40;
    v41 = *v79;
    v42 = *(*v79 + 16);
    v25 += v33;
    if (v40 != v42)
    {
      continue;
    }

    break;
  }

  v25 = v67;
  if (v40 >= v8)
  {
    goto LABEL_44;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_21B4BFABC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v15 = a1;
  v2 = sub_21B4C5748();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v20 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[6] = type metadata accessor for TimestampParser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E60);
  sub_21B4C5C58();
  v4 = v29;
  v5 = v33;
  v6 = v37;
  v17 = v27;
  v18 = v26;
  v42[0] = v26;
  v42[1] = v27;
  v16 = v28;
  v42[2] = v28;
  v42[3] = v29;
  v42[4] = v30;
  v42[5] = v31;
  v42[6] = v32;
  v42[7] = v33;
  v14[1] = v35;
  v14[2] = v34;
  v42[8] = v34;
  v42[9] = v35;
  v42[10] = v36;
  v42[11] = v37;
  v14[4] = v39;
  v14[5] = v38;
  v42[12] = v38;
  v42[13] = v39;
  v14[3] = v40;
  v42[14] = v40;
  v42[15] = v41;
  sub_21B4C0514(v42, &v24);

  v19 = v6;

  if (v5)
  {
    sub_21B4C9B38();
  }

  sub_21B4C0514(v42, &v24);

  sub_21B4C9B38();
  sub_21B4C0514(v42, &v24);

  sub_21B4C9B38();
  v7 = v20;
  sub_21B4BEFE0(v15, v20);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_21B4CA338();

  v24 = 0x3D6665726820613CLL;
  v25 = 0xE900000000000022;
  v8 = sub_21B4C5658();
  MEMORY[0x21CEF2F30](v8);

  MEMORY[0x21CEF2F30](15906, 0xE200000000000000);
  v9 = MEMORY[0x21CEF2ED0](v18, v17, v16, v4);
  MEMORY[0x21CEF2F30](v9);

  MEMORY[0x21CEF2F30](1046556476, 0xE400000000000000);

  v10 = v24;
  v11 = v25;
  result = (*(v21 + 8))(v7, v22);
  v13 = v23;
  *v23 = v10;
  v13[1] = v11;
  return result;
}

unint64_t sub_21B4BFE3C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_21B3F2998(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_21B429F50(v6, a2, 0);
  *v2 = v4;
  return result;
}

id _s10PodcastsUI15TimestampParserC03addC12Attributions2to10episodeURLSo18NSAttributedStringCSgAH_10Foundation0I0VtFZ_0(void *a1, uint64_t a2)
{
  v44 = a2;
  v42 = sub_21B4C5748();
  v51 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = v32 - v6;
  v45 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v43 = a1;
  v7 = [a1 string];
  v8 = sub_21B4C9708();
  v10 = v9;

  *&v69 = v8;
  *(&v69 + 1) = v10;
  if (qword_2811FFB00 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B58);
  __swift_project_value_buffer(v11, qword_2811FFB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B60);
  sub_21B381210();
  sub_21B3F1314(&qword_2811FD660, &qword_27CD88B58);
  v12 = sub_21B4C9678();

  v13 = *(v12 + 16);
  if (v13)
  {
    v38 = type metadata accessor for TimestampParser();
    v14 = *MEMORY[0x277D740E8];
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v36 = v16;
    v37 = v14;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    v32[1] = v12;
    v33 = v18;
    v39 = v15;
    v40 = v4;
    v34 = (v15 - 8);
    v35 = (v51 + 8);
    v51 = v13 - 1;
    while (1)
    {
      v46 = v17;
      v36(v52);
      sub_21B4C5C58();
      v19 = v60;
      v69 = v54;
      v70 = v55;
      v71 = v56;
      v72 = v57;
      v73 = v58;
      v74 = v59;
      v75 = v60;
      v76 = v61;
      v77 = v62;
      v47 = v62;
      v48 = v67;
      v78 = v63;
      v79 = v64;
      v49 = v66;
      v50 = v65;
      v80 = v65;
      v81 = v66;
      v82 = v67;
      v83 = v68;
      sub_21B4C0514(&v69, v53);

      if (v19)
      {
        sub_21B4C9B38();
      }

      sub_21B4C0514(&v69, v53);

      sub_21B4C9B38();
      sub_21B4C0514(&v69, v53);

      sub_21B4C9B38();

      v20 = v41;
      sub_21B4BEFE0(v44, v41);
      v21 = sub_21B4C5688();
      (*v35)(v20, v42);
      v22 = v40;
      v23 = v52;
      *&v54 = sub_21B4C5C48();
      *(&v54 + 1) = v24;
      v25 = [v43 string];
      v26 = sub_21B4C9708();
      v28 = v27;

      v53[0] = v26;
      v53[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E68);
      sub_21B3F1314(&qword_27CD88E70, &qword_27CD88E68);
      sub_21B3A5DF0();
      v29 = sub_21B4CA0B8();
      [v45 addAttribute:v37 value:v21 range:{v29, v30}];

      (*v34)(v23, v22);
      if (!v51)
      {
        break;
      }

      --v51;
      v17 = v46 + v33;
    }
  }

  return v45;
}

uint64_t sub_21B4C0514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall UIApplication.failExtendedLaunchTest(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v3 = [v1 _launchTestName];
  v4 = object;
  v5 = v3;
  if (v4)
  {
    v6 = sub_21B4C96C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v1 failedTest:v5 withFailure:?];
}

Swift::Void __swiftcall UIApplication.completeExtendedLaunchTest(tabName:)(Swift::String tabName)
{
  object = tabName._object;
  countAndFlagsBits = tabName._countAndFlagsBits;
  v4 = [v1 _launchTestName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B4D2830;
  v6 = MEMORY[0x277D837D0];
  sub_21B4CA2E8();
  *(inited + 96) = v6;
  *(inited + 72) = countAndFlagsBits;
  *(inited + 80) = object;

  sub_21B371730(inited);
  swift_setDeallocating();
  sub_21B371978(inited + 32);
  v7 = sub_21B4C9578();

  [v1 finishedTest:v4 extraResults:v7];
}

id sub_21B4C075C()
{
  v0 = [objc_opt_self() _applicationIconImageForBundleIdentifier_format_];

  return v0;
}

id static UIImage.podcastsAppIcon.getter()
{
  v0 = [objc_opt_self() _applicationIconImageForBundleIdentifier_format_];

  return v0;
}

id UITraitCollection.suggestedTextBlendModeFilter.getter()
{
  v1 = [v0 userInterfaceStyle];
  v2 = MEMORY[0x277CDA5E8];
  if (v1 != 2)
  {
    v2 = MEMORY[0x277CDA5D8];
  }

  v3 = *v2;
  v4 = objc_allocWithZone(MEMORY[0x277CD9EA0]);

  return [v4 initWithType_];
}

void sub_21B4C0874(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4) && (v5 = objc_msgSend(v4, sel_statusBarManager), v4, v5))
  {
    [v5 statusBarFrame];
  }

  else
  {
  }
}

double UIView.mt_statusBarFrame.getter()
{
  v1 = [v0 window];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 windowScene];

    if (v4)
    {
      v5 = [v4 statusBarManager];

      if (v5)
      {
        [v5 statusBarFrame];
        v2 = v6;
      }
    }
  }

  return v2;
}

uint64_t EpisodeUpsellBannerView.EpisodeUpsellBannerType.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

id sub_21B4C0B34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_21B4C1840(v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = (*(v2 + 128))(v1, v2);
  [v0 setFont_];

  __swift_destroy_boxed_opaque_existential_1(v6);
  [v0 setNumberOfLines_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_21B4C0C74(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_21B4C0CD8(uint64_t a1)
{
  sub_21B4C1840(v33);
  v2 = v34;
  v3 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v4 = -(*(v3 + 72))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_21B4C1840(v33);
  v5 = v34;
  v6 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v7 = -(*(v6 + 80))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_21B4C1840(v33);
  v8 = v34;
  v9 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v10 = -(*(v9 + 80))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_21B4C1840(v33);
  v11 = v34;
  v12 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v13 = -(*(v12 + 80))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v14 = type metadata accessor for CloseButton();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC10PodcastsUIP33_7356E91B5F9CFCB46676D7EB93CF2B4411CloseButton_touchInsets];
  *v16 = v4;
  v16[1] = v7;
  v16[2] = v10;
  v16[3] = v13;
  v32.receiver = v15;
  v32.super_class = v14;
  v17 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_21B4C1840(v33);
  v18 = v34;
  v19 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v20 = (*(v19 + 48))(v18, v19);
  v21 = [objc_opt_self() configurationWithFont_];

  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_21B4C1840(v33);
  v22 = v34;
  v23 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v23 + 56))(v22, v23);
  v24 = v21;
  v25 = sub_21B4C96C8();

  v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

  __swift_destroy_boxed_opaque_existential_1(v33);
  v27 = v17;
  [v27 setImage:v26 forState:0];
  sub_21B4C1840(v33);
  v28 = v34;
  v29 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v30 = (*(v29 + 64))(v28, v29);
  [v27 setTintColor_];

  __swift_destroy_boxed_opaque_existential_1(v33);
  [v27 addTarget:a1 action:sel_closeButtonTapped forControlEvents:64];

  return v27;
}

id sub_21B4C1054()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___tapBannerGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___tapBannerGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___tapBannerGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_cellTapped];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_21B4C10F0(char *result, uint64_t a2, void *a3)
{
  v3 = *&result[*a3];
  if (v3)
  {
    v4 = result;
    v5 = sub_21B416040(v3);
    v3(v5);

    return sub_21B36F6F4(v3);
  }

  return result;
}

id sub_21B4C1170()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout;
  v2 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21B4C11E4()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleLabelCenterYConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleLabelCenterYConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleLabelCenterYConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel) centerYAnchor];
    v5 = sub_21B4C1170();
    v6 = [v5 centerYAnchor];

    v7 = [v4 constraintEqualToAnchor_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_21B4C12B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleTopAnchorConstraint;
  v3 = *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleTopAnchorConstraint);
  v4 = v3;
  if (v3 == 1)
  {
    sub_21B4C1840(v16);
    v5 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v7 = (*(v6 + 152))(v5, v6);
    if (v8)
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      v4 = 0;
    }

    else
    {
      v9 = *&v7;
      __swift_destroy_boxed_opaque_existential_1(v16);
      v10 = sub_21B4C0B14();
      v11 = [v10 topAnchor];

      v12 = [*(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel) bottomAnchor];
      v4 = [v11 constraintEqualToAnchor:v12 constant:v9];
    }

    v13 = *(v1 + v2);
    *(v1 + v2) = v4;
    v14 = v4;
    sub_21B4C4CE0(v13);
  }

  sub_21B4C4CF0(v3);
  return v4;
}

id sub_21B4C1420(uint64_t a1)
{
  sub_21B4C1840(v19);
  v2 = v20;
  v3 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v4 = (*(v3 + 176))(v2, v3);
  if ((v5 & 1) == 0)
  {
    v11 = *&v4;
    __swift_destroy_boxed_opaque_existential_1(v19);
    v12 = sub_21B4C0B14();
    v13 = [v12 firstBaselineAnchor];

    v14 = [*(a1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView) bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:v11];
LABEL_6:
    v10 = v15;

    return v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_21B4C1840(v19);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v8 = (*(v7 + 184))(v6, v7);
  if ((v9 & 1) == 0)
  {
    v16 = *&v8;
    __swift_destroy_boxed_opaque_existential_1(v19);
    v17 = sub_21B4C0B14();
    v13 = [v17 bottomAnchor];

    v14 = [*(a1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView) bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:v16];
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return 0;
}

void *sub_21B4C160C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    v7 = v5;
    sub_21B4C4CE0(v6);
  }

  sub_21B4C4CF0(v4);
  return v5;
}

id sub_21B4C167C(uint64_t a1)
{
  sub_21B4C1840(v17);
  v2 = v18;
  v3 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v4 = (*(v3 + 160))(v2, v3);
  if ((v5 & 1) == 0)
  {
    v11 = *&v4;
    __swift_destroy_boxed_opaque_existential_1(v17);
    v12 = [*(a1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel) firstBaselineAnchor];
    v13 = [*(a1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView) topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:v11];
LABEL_6:
    v10 = v14;

    return v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_21B4C1840(v17);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v8 = (*(v7 + 168))(v6, v7);
  if ((v9 & 1) == 0)
  {
    v15 = *&v8;
    __swift_destroy_boxed_opaque_existential_1(v17);
    v12 = [*(a1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel) topAnchor];
    v13 = [*(a1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView) topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:v15];
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return 0;
}

uint64_t sub_21B4C1840@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___config;
  swift_beginAccess();
  sub_21B4C4D68(v1 + v3, &v16);
  if (*(&v17 + 1))
  {
    return sub_21B36D484(&v16, a1);
  }

  sub_21B4C4D00(&v16);
  if (*(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_bannerType))
  {
    if (*(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_bannerType) == 1)
    {
      sub_21B4C4548(&v16);
      v5 = &off_282CBAD60;
      v6 = &type metadata for iOSEpisodeUpsellConfiguration;
    }

    else
    {
      sub_21B4C4760(&v16);
      v5 = &off_282CBAE20;
      v6 = &type metadata for iOSNowPlayingEpisodeUpsellConfiguration;
    }
  }

  else
  {
    sub_21B4C420C(&v16);
    v5 = &off_282CBACA0;
    v6 = &type metadata for MacEpisodeUpsellConfiguration;
  }

  a1[3] = v6;
  a1[4] = v5;
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = v29[0];
  v7[13] = v28;
  v7[14] = v8;
  *(v7 + 233) = *(v29 + 9);
  v9 = v25;
  v7[9] = v24;
  v7[10] = v9;
  v10 = v27;
  v7[11] = v26;
  v7[12] = v10;
  v11 = v21;
  v7[5] = v20;
  v7[6] = v11;
  v12 = v23;
  v7[7] = v22;
  v7[8] = v12;
  v13 = v17;
  v7[1] = v16;
  v7[2] = v13;
  v14 = v19;
  v7[3] = v18;
  v7[4] = v14;
  sub_21B3F821C(a1, v15);
  swift_beginAccess();
  sub_21B4C4DD8(v15, v1 + v3);
  return swift_endAccess();
}

void EpisodeUpsellBannerView.init(frame:bannerType:)(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = *a1;
  v11 = &v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapBannerBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapCloseButtonBlock];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_artworkContainerView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = [v14 layer];
  [v15 setMasksToBounds_];

  *&v5[v13] = v14;
  v16 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = [objc_opt_self() labelColor];
  [v17 setTextColor_];

  [v17 setAdjustsFontForContentSizeCategory_];
  *&v5[v16] = v17;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___dismissButton] = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___tapBannerGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout] = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleLabelCenterYConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleTopAnchorConstraint] = 1;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleBottomConstraint] = 1;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleTopConstraint] = 1;
  v19 = &v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___config];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_hoverRecognizer] = 0;
  v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering] = 0;
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_objectGraph] = 0;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView] = v20;
  v5[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_bannerType] = v10;
  v161.receiver = v5;
  v161.super_class = type metadata accessor for EpisodeUpsellBannerView();
  v21 = objc_msgSendSuper2(&v161, sel_initWithFrame_, a2, a3, a4, a5);
  v22 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView;
  v23 = *&v21[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView];
  v24 = v21;
  [v24 addSubview_];
  v25 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_artworkContainerView;
  [v24 addSubview_];
  v26 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel;
  [*&v21[v22] addSubview_];
  v27 = *&v21[v22];
  v28 = sub_21B4C0B14();
  [v27 addSubview_];

  v29 = *&v21[v22];
  v30 = sub_21B4C0C54();
  [v29 addSubview_];

  v31 = *&v21[v22];
  v32 = sub_21B4C1170();
  [v31 addLayoutGuide_];

  v33 = v21;
  [*&v21[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = v25;
  [*&v24[v25] setTranslatesAutoresizingMaskIntoConstraints_];
  v155 = v26;
  [*&v24[v26] setTranslatesAutoresizingMaskIntoConstraints_];
  v153 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleLabel;
  [*&v24[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v157 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___dismissButton;
  [*&v24[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___dismissButton] setTranslatesAutoresizingMaskIntoConstraints_];
  if (isMac())
  {
    [*&v24[v157] setHidden_];
  }

  v154 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21B4DC260;
  v36 = v33;
  v37 = [*&v33[v22] leadingAnchor];
  v38 = [v24 &selRef_tintColorDidChange + 1];

  v39 = [v37 constraintEqualToAnchor_];
  *(v35 + 32) = v39;
  v40 = [*&v33[v22] trailingAnchor];
  v41 = [v24 &selRef_artworkTemplateURL + 4];

  v42 = [v40 &selRef:v41 configurationWithFont:? scale:? + 5];
  *(v35 + 40) = v42;
  v43 = [*&v33[v22] topAnchor];
  v44 = [v24 &selRef_setPodcastDisplayType_];

  v45 = [v43 &selRef:v44 configurationWithFont:? scale:? + 5];
  *(v35 + 48) = v45;
  v46 = [*&v33[v22] bottomAnchor];
  v47 = [v24 &selRef_setDateTemplate_ + 5];

  v48 = [v46 &selRef:v47 configurationWithFont:? scale:? + 5];
  *(v35 + 56) = v48;
  v49 = [*&v24[v25] &selRef_tintColorDidChange + 1];
  v50 = [*&v33[v22] &selRef_tintColorDidChange + 1];
  sub_21B4C1840(v158);
  v51 = v22;
  v52 = v159;
  v53 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v53 + 8))(v52, v53);
  v54 = [v49 constraintEqualToAnchor:v50 constant:?];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 64) = v54;
  v55 = [*&v24[v34] centerYAnchor];
  v156 = v51;
  v56 = [*&v36[v51] &selRef_diskCache];
  v57 = [v55 constraintEqualToAnchor_];

  *(v35 + 72) = v57;
  v58 = [*&v24[v34] topAnchor];
  v59 = [*&v36[v51] topAnchor];
  sub_21B4C1840(v158);
  v60 = v159;
  v61 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v61 + 16))(v60, v61);
  v62 = [v58 constraintEqualToAnchor:v59 constant:?];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 80) = v62;
  v63 = [v24 bottomAnchor];

  v64 = [*&v24[v34] bottomAnchor];
  sub_21B4C1840(v158);
  v65 = v159;
  v66 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v66 + 16))(v65, v66);
  v67 = [v63 constraintGreaterThanOrEqualToAnchor:v64 constant:?];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 88) = v67;
  v68 = [*&v24[v34] heightAnchor];
  sub_21B4C1840(v158);
  v69 = v159;
  v70 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v70 + 32))(v69, v70);
  v72 = [v68 constraintEqualToConstant_];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 96) = v72;
  v73 = [*&v24[v34] widthAnchor];
  sub_21B4C1840(v158);
  v74 = v159;
  v75 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v75 + 32))(v74, v75);
  v76 = [v73 constraintEqualToConstant_];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 104) = v76;
  v77 = [*&v24[v157] trailingAnchor];
  v78 = [*&v36[v51] trailingAnchor];
  sub_21B4C1840(v158);
  v79 = v159;
  v80 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v81 = -(*(v80 + 80))(v79, v80);
  __swift_destroy_boxed_opaque_existential_1(v158);
  v82 = [v77 constraintEqualToAnchor:v78 constant:v81];

  *(v35 + 112) = v82;
  v83 = [*&v24[v157] topAnchor];
  v84 = [*&v36[v51] topAnchor];
  sub_21B4C1840(v158);
  v85 = v159;
  v86 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v86 + 72))(v85, v86);
  v87 = [v83 constraintEqualToAnchor:v84 constant:?];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 120) = v87;
  v88 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout;
  v89 = [*&v24[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout] leadingAnchor];
  v90 = [*&v24[v34] trailingAnchor];
  sub_21B4C1840(v158);
  v91 = v159;
  v92 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v92 + 24))(v91, v92);
  v93 = [v89 constraintEqualToAnchor:v90 constant:?];

  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v35 + 128) = v93;
  v94 = [*&v24[v88] trailingAnchor];
  v95 = [*&v24[v157] leadingAnchor];
  sub_21B4C1840(v158);
  v96 = v159;
  v97 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v98 = -(*(v97 + 88))(v96, v97);
  __swift_destroy_boxed_opaque_existential_1(v158);
  v99 = [v94 constraintEqualToAnchor:v95 constant:v98];

  *(v35 + 136) = v99;
  v100 = [*&v24[v88] topAnchor];
  v101 = [*&v36[v156] topAnchor];
  v102 = [v100 constraintGreaterThanOrEqualToAnchor_];

  *(v35 + 144) = v102;
  v103 = [v24 bottomAnchor];

  v104 = [*&v24[v88] bottomAnchor];
  v105 = [v103 constraintGreaterThanOrEqualToAnchor_];

  *(v35 + 152) = v105;
  v106 = [*&v24[v88] centerYAnchor];
  v107 = [*&v24[v34] centerYAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  *(v35 + 160) = v108;
  v109 = [*&v24[v155] leadingAnchor];
  v110 = [*&v24[v88] leadingAnchor];
  v111 = [v109 constraintEqualToAnchor_];

  *(v35 + 168) = v111;
  v112 = [*&v24[v155] trailingAnchor];
  v113 = [*&v24[v88] trailingAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v35 + 176) = v114;
  v115 = [*&v24[v155] topAnchor];
  v116 = [*&v24[v88] topAnchor];
  v117 = [v115 constraintEqualToAnchor_];

  *(v35 + 184) = v117;
  v118 = [*&v24[v153] leadingAnchor];
  v119 = [*&v24[v88] leadingAnchor];
  v120 = [v118 constraintEqualToAnchor_];

  *(v35 + 192) = v120;
  v121 = [*&v24[v153] trailingAnchor];
  v122 = [*&v24[v88] trailingAnchor];
  v123 = [v121 constraintEqualToAnchor_];

  *(v35 + 200) = v123;
  v124 = [*&v24[v153] bottomAnchor];
  v125 = [*&v24[v88] bottomAnchor];
  v126 = [v124 constraintEqualToAnchor_];

  *(v35 + 208) = v126;
  sub_21B3F12CC(0, &qword_2811FCCB8);
  v127 = sub_21B4C9918();

  [v154 activateConstraints_];

  LODWORD(v128) = 1132068864;
  [*&v24[v155] setContentHuggingPriority:0 forAxis:v128];
  LODWORD(v129) = 1144750080;
  [*&v24[v157] setContentHuggingPriority:0 forAxis:v129];
  v130 = v36;
  v131 = [*&v36[v156] layer];
  sub_21B4C1840(v158);
  v132 = v159;
  v133 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v133 + 120))(v132, v133);
  [v131 setCornerRadius_];

  __swift_destroy_boxed_opaque_existential_1(v158);
  v134 = [*&v130[v156] layer];
  [v134 setMasksToBounds_];

  v135 = [*&v130[v156] layer];
  v136 = [v24 traitCollection];

  v137 = [v136 userInterfaceStyle];
  v138 = MEMORY[0x277CDA5E8];
  if (v137 != 2)
  {
    v138 = MEMORY[0x277CDA5D8];
  }

  v139 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];

  [v135 setCompositingFilter_];
  v140 = [v24 layer];

  [v140 setAllowsGroupBlending_];
  v141 = *&v130[v156];
  sub_21B4C1840(v158);
  v142 = v159;
  v143 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v144 = (*(v143 + 104))(v142, v143);
  [v141 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v158);
  sub_21B4C1840(v158);
  v145 = v159;
  v146 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v147 = (*(v146 + 112))(v145, v146);
  [v24 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v158);
  sub_21B4C1840(v158);
  v148 = v159;
  v149 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  LOBYTE(v147) = (*(v149 + 96))(v148, v149);
  __swift_destroy_boxed_opaque_existential_1(v158);
  if (v147)
  {
    sub_21B4C358C();
  }

  v150 = [objc_allocWithZone(MEMORY[0x277D755A0]) initWithTarget:v24 action:sel_didHover_];
  v151 = *&v24[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_hoverRecognizer];
  *&v24[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_hoverRecognizer] = v150;
  v152 = v150;

  if (v152)
  {
    [v24 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id EpisodeUpsellBannerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_21B4C2DA8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for EpisodeUpsellBannerView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_artworkContainerView] layer];
  sub_21B4C1840(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 40))(v2, v3);
  [v1 setCornerRadius_];

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_21B4C2F40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = a2;
  if (a4)
  {
    v13 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel;
    v14 = *&v8[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel];
    if (a2)
    {
      v15 = v14;
      v12 = sub_21B4C96C8();
    }

    else
    {
      v20 = v14;
    }

    [v14 setText_];

    [*&v9[v13] setNumberOfLines_];
    v21 = *&v9[v13];
    sub_21B4C1840(v40);
    v23 = v41;
    v22 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v24 = (*(v22 + 136))(v23, v22);
    [v21 setFont_];

    __swift_destroy_boxed_opaque_existential_1(v40);
    v25 = sub_21B4C0B14();
    v26 = sub_21B4C96C8();
    [v25 setText_];

    sub_21B4C3ABC();
  }

  else
  {
    v16 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel;
    v17 = *&v8[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel];
    if (a2)
    {
      v18 = v17;
      v19 = sub_21B4C96C8();
    }

    else
    {
      v27 = v17;
      v19 = 0;
    }

    [v17 setText_];

    v28 = *&v9[v16];
    sub_21B4C1840(v40);
    v29 = v41;
    v30 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v31 = (*(v30 + 144))(v29, v30);
    [v28 setFont_];

    __swift_destroy_boxed_opaque_existential_1(v40);
    [*&v9[v16] setNumberOfLines_];
    v32 = sub_21B4C0B14();
    [v32 setText_];

    sub_21B4C3224();
  }

  v33 = &v9[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapBannerBlock];
  v34 = *&v9[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapBannerBlock];
  *v33 = a5;
  *(v33 + 1) = a6;

  sub_21B36F6F4(v34);
  v35 = &v9[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapCloseButtonBlock];
  v36 = *&v9[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapCloseButtonBlock];
  *v35 = a7;
  *(v35 + 1) = a8;

  sub_21B36F6F4(v36);
  v37 = sub_21B4C1054();
  [v9 addGestureRecognizer_];
}

void sub_21B4C3224()
{
  v0 = sub_21B4C11E4();
  [v0 setActive_];

  v8[4] = sub_21B4C12B4();
  v8[5] = sub_21B4C15EC();
  v1 = 0;
  v8[6] = sub_21B4C1400();
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  while (1)
  {
    if (v1 == 3)
    {
      v5 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88F58);
      swift_arrayDestroy();
      sub_21B3F12CC(0, &qword_2811FCCB8);
      v6 = sub_21B4C9918();

      [v5 deactivateConstraints_];

      return;
    }

    if (v2 == v1)
    {
      break;
    }

    v3 = v8[v1++ + 4];
    if (v3)
    {
      v4 = v3;
      MEMORY[0x21CEF3050]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      sub_21B4C9988();
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_21B4C33AC()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21B4D3B00;
  *(v1 + 32) = sub_21B4C11E4();
  sub_21B3F12CC(0, &qword_2811FCCB8);
  v2 = sub_21B4C9918();

  [v0 deactivateConstraints_];

  v9[4] = sub_21B4C12B4();
  v9[5] = sub_21B4C15EC();
  v3 = 0;
  v9[6] = sub_21B4C1400();
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  while (1)
  {
    if (v3 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88F58);
      swift_arrayDestroy();
      v7 = sub_21B4C9918();

      [v0 activateConstraints_];

      return;
    }

    if (v4 == v3)
    {
      break;
    }

    v5 = v9[v3++ + 4];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x21CEF3050]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      sub_21B4C9988();
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_21B4C358C()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView;
  v2 = [*(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView) layer];
  [v2 setShadowRadius_];

  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v3 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v19[4] = sub_21B3854EC;
  v19[5] = v8;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_21B385440;
  v19[3] = &block_descriptor_18;
  v10 = _Block_copy(v19);
  v11 = v5;
  v12 = v7;
  v13 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  v14 = [*(v0 + v1) layer];
  v15 = [v13 CGColor];
  [v14 setShadowColor_];

  v16 = [*(v0 + v1) layer];
  LODWORD(v17) = 1.0;
  [v16 setShadowOpacity_];

  v18 = [*(v0 + v1) layer];
  [v18 setShadowOffset_];
}

void sub_21B4C3804(id a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = [a1 preferredContentSizeCategory];
    v5 = sub_21B4C9F48();

    v6 = v5 & 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = sub_21B4C9F48();
  if (v6 == 2 || ((v9 ^ v6) & 1) != 0)
  {
    sub_21B4C3ABC();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = [a1 userInterfaceStyle];
LABEL_10:
  v11 = [v2 traitCollection];
  v12 = [v11 userInterfaceStyle];

  if (!a1 || v10 != v12)
  {
    v13 = [*&v2[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_contentView] layer];
    v14 = [v2 traitCollection];
    v15 = [v14 userInterfaceStyle];

    v16 = MEMORY[0x277CDA5D8];
    if (v15 == 2)
    {
      v16 = MEMORY[0x277CDA5E8];
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v13 setCompositingFilter_];

    sub_21B4C1840(v21);
    v18 = v22;
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v20 = (*(v19 + 96))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v20)
    {
      sub_21B4C358C();
    }
  }
}

void sub_21B4C3ABC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_21B4C9F48();
  v5 = sub_21B4C0B14();
  v6 = v5;
  if (v4)
  {
    v7 = [v5 text];

    if (v7)
    {
      v8 = sub_21B4C9708();
      v10 = v9;

      v11 = v8;
      sub_21B3F1278();
      LOBYTE(v8) = sub_21B4C9BD8();

      if (v8)
      {
        [*&v1[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleLabel] setHidden_];
        sub_21B4C33AC();
      }
    }
  }

  else
  {
    [v5 setHidden_];

    sub_21B4C3224();
  }
}

void sub_21B4C3C14(void *a1)
{
  v2 = [a1 state];
  if ((v2 - 3) < 2)
  {
    v3 = (v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering);
    v5 = *(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering);
    *(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering) = 0;
    if (v5 != 1 || !isMac())
    {
      return;
    }
  }

  else
  {
    if ((v2 - 1) > 1)
    {
      return;
    }

    v3 = (v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering);
    v4 = *(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering);
    *(v1 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering) = 1;
    if ((v4 & 1) != 0 || (isMac() & 1) == 0)
    {
      return;
    }
  }

  v6 = sub_21B4C0C54();
  [v6 setHidden_];
}

uint64_t sub_21B4C3D98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_objectGraph;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_21B4C3E48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id EpisodeUpsellBannerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_21B4C41D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21B4C420C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811FCC08 != -1)
  {
    swift_once();
  }

  v2 = qword_2811FCC10;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 secondaryLabelColor];
  sub_21B3F12CC(0, &unk_2811FCAC8);
  v6 = UIColor.init(hexString:alpha:)(0x354635463546, 0xE600000000000000, 1.0);
  if (!v6)
  {
    v6 = [v3 systemBackgroundColor];
  }

  v7 = v6;
  v8 = UIColor.init(hexString:alpha:)(0x383038303830, 0xE600000000000000, 1.0);
  if (!v8)
  {
    v8 = [v3 systemBackgroundColor];
  }

  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D75348]);
  v21[4] = sub_21B4B056C;
  v21[5] = v10;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_21B385440;
  v21[3] = &block_descriptor_65;
  v12 = _Block_copy(v21);
  v13 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  v14 = [v3 systemBackgroundColor];
  if (qword_281200430 != -1)
  {
    swift_once();
  }

  v15 = qword_2811FCB40;
  v16 = qword_281200438;
  if (v15 != -1)
  {
    v20 = v16;
    swift_once();
    v16 = v20;
  }

  v17 = qword_2811FCB48;
  LOBYTE(v21[0]) = 0;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  *a1 = xmmword_21B4DC270;
  *(a1 + 16) = xmmword_21B4DC280;
  *(a1 + 32) = xmmword_21B4DC290;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0x6B72616D78;
  *(a1 + 64) = 0xE500000000000000;
  *(a1 + 72) = v5;
  *(a1 + 80) = xmmword_21B4DC2A0;
  *(a1 + 96) = 0x4018000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = v13;
  *(a1 + 120) = v14;
  *(a1 + 128) = 0x4024000000000000;
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = v17;
  *(a1 + 160) = 0x3FF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;
  v18 = v17;

  return v18;
}

id sub_21B4C4548@<X0>(uint64_t a1@<X8>)
{
  if (qword_281200430 != -1)
  {
    swift_once();
  }

  v2 = qword_281200438;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGray4Color];
  v6 = [v3 systemBackgroundColor];
  v7 = [v3 systemBackgroundColor];
  if (qword_2811FCB50 != -1)
  {
    swift_once();
  }

  v8 = qword_281200498;
  v9 = qword_2811FCB58;
  if (v8 != -1)
  {
    v17 = v9;
    swift_once();
    v9 = v17;
  }

  v10 = qword_2812004A0;
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_21B4DC2B0;
  *(a1 + 32) = xmmword_21B4DC2C0;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0xD000000000000011;
  *(a1 + 64) = 0x800000021B4E2BA0;
  *(a1 + 72) = v5;
  *(a1 + 80) = xmmword_21B4DC2D0;
  *(a1 + 96) = 0x401C000000000000;
  *(a1 + 104) = 1;
  *(a1 + 112) = v6;
  *(a1 + 120) = v7;
  *(a1 + 128) = 0x4024000000000000;
  *(a1 + 136) = v9;
  *(a1 + 144) = v10;
  *(a1 + 152) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0x403B000000000000;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0xC031000000000000;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1;

  return v10;
}

id sub_21B4C4760@<X0>(uint64_t a1@<X8>)
{
  if (qword_281200498 != -1)
  {
    swift_once();
  }

  v2 = qword_2812004A0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v2;
  v5 = [v3 initWithWhite:1.0 alpha:0.7];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.08];
  v7 = [objc_opt_self() clearColor];
  if (qword_2811FCB50 != -1)
  {
    v16 = v7;
    swift_once();
    v7 = v16;
  }

  v8 = qword_2811FCB58;
  __asm { FMOV            V0.2D, #12.0 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_21B4DC2E0;
  *(a1 + 32) = xmmword_21B4DC2F0;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0xD000000000000011;
  *(a1 + 64) = 0x800000021B4E2BA0;
  *(a1 + 72) = v5;
  *(a1 + 80) = xmmword_21B4DC300;
  *(a1 + 96) = 0x4020000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = v6;
  *(a1 + 120) = v7;
  *(a1 + 128) = 0x4030000000000000;
  *(a1 + 136) = v8;
  *(a1 + 144) = v4;
  *(a1 + 152) = v8;
  *(a1 + 160) = 0x4000000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0x402C000000000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0xC028000000000000;
  *(a1 + 232) = 0;
  v14 = v8;

  return v14;
}

void _s10PodcastsUI23EpisodeUpsellBannerViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapBannerBlock);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_tapCloseButtonBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_artworkContainerView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = [v4 layer];
  [v5 setMasksToBounds_];

  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = [objc_opt_self() labelColor];
  [v7 setTextColor_];

  [v7 setAdjustsFontForContentSizeCategory_];
  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___dismissButton) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___tapBannerGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___textLayout) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleLabelCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleTopAnchorConstraint) = 1;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___subtitleBottomConstraint) = 1;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___titleTopConstraint) = 1;
  v9 = v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView____lazy_storage___config;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_hoverRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_isHovering) = 0;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_objectGraph) = 0;
  sub_21B4CA488();
  __break(1u);
}

unint64_t sub_21B4C4B5C()
{
  result = qword_27CD88F48;
  if (!qword_27CD88F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88F48);
  }

  return result;
}

void sub_21B4C4CE0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_21B4C4CF0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21B4C4D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B4C4D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B4C4DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_51Tm()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_21B4C4F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B4C4F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}