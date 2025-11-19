uint64_t sub_21A3C40C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C4118()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C4150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_21A3C41A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_21A3F74C8(v4, v5);
}

uint64_t sub_21A3C41F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_21A3C426C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21A3C42C0()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v2 = sub_21A451414();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_21A3C43B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21A3C43EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21A3C442C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_21A3C446C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A404854();
  *a2 = result;
  return result;
}

uint64_t sub_21A3C4498(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
}

void *sub_21A3C44DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A404940();
  *a2 = result;
  return result;
}

uint64_t sub_21A3C4508(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 72);
  *(*a2 + 72) = *a1;
}

uint64_t sub_21A3C454C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A409348();
  *a2 = result;
  return result;
}

void *sub_21A3C4578(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *result;
  *(v2 + 40) = 0;
  return result;
}

uint64_t sub_21A3C458C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A4094A0();
  *a2 = result;
  return result;
}

uint64_t sub_21A3C45B8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
}

uint64_t sub_21A3C45FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A40956C();
  *a2 = result;
  return result;
}

uint64_t sub_21A3C4628(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 72);
  *(*a2 + 72) = *a1;
}

uint64_t sub_21A3C466C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A409638();
  *a2 = result;
  return result;
}

void *sub_21A3C4698(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 80) = *result;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_21A3C48DC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21A3C4918()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C4974()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C49D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483641)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 6;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for PFLDecodableTaskParameters(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21A3C4A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483641)
  {
    *(result + 8) = (a2 + 5);
  }

  else
  {
    v7 = type metadata accessor for PFLDecodableTaskParameters(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A3C4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21A3C4BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A450D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A3C4CB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21A440DA4();
  *a2 = result;
  return result;
}

void *sub_21A3C4CDC(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 24) = *result;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_21A3C4CF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21A3C4D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21A3C4D90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_21A3C4DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21A3C4E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A450D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A3C4F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A450BE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A3C5000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A450BE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A3C50A4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21A3C50DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_21A3CE410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PFLPrivatize(float *a1, vDSP_Length __N)
{
  vDSP_vclr(a1, 1, __N);
  v2 = +[_PFLLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    PFLPrivatize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

uint64_t PFLPrivatizeCustomNorm(float *a1, vDSP_Length __N)
{
  vDSP_vclr(a1, 1, __N);
  v2 = +[_PFLLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    PFLPrivatizeCustomNorm_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

uint64_t PFLPrivatizeCustomNormWithLowerEpsilon(float *a1, vDSP_Length __N)
{
  vDSP_vclr(a1, 1, __N);
  v2 = +[_PFLLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    PFLPrivatizeCustomNormWithLowerEpsilon_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_21A3D1810(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A3D1830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 168) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21A3D18A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A3D18C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21A3D1908(uint64_t a1, id *a2)
{
  result = sub_21A451064();
  *a2 = 0;
  return result;
}

uint64_t sub_21A3D1980(uint64_t a1, id *a2)
{
  v3 = sub_21A451074();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21A3D1A00@<X0>(uint64_t *a1@<X8>)
{
  sub_21A451084();
  v2 = sub_21A451054();

  *a1 = v2;
  return result;
}

uint64_t sub_21A3D1A44()
{
  v1 = *v0;
  v2 = sub_21A451084();
  v3 = MEMORY[0x21CED9950](v2);

  return v3;
}

uint64_t sub_21A3D1A80()
{
  v1 = *v0;
  sub_21A451084();
  sub_21A451144();
}

uint64_t sub_21A3D1AD4()
{
  v1 = *v0;
  sub_21A451084();
  sub_21A451B04();
  sub_21A451144();
  v2 = sub_21A451B24();

  return v2;
}

uint64_t sub_21A3D1B48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21A451084();
  v6 = v5;
  if (v4 == sub_21A451084() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21A4519B4();
  }

  return v9 & 1;
}

uint64_t sub_21A3D1BD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21A451054();

  *a2 = v5;
  return result;
}

uint64_t sub_21A3D1C18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21A451084();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21A3D1C44(uint64_t a1)
{
  v2 = sub_21A3D1DB8(&qword_27CD282D8);
  v3 = sub_21A3D1DB8(&unk_27CD282E0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_21A3D1D04(uint64_t a1, unint64_t *a2)
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

uint64_t sub_21A3D1DB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A3D1E30()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[2];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = *(v4 + 32);

  v7 = sub_21A3DCA2C(0x6D726F4E78616DLL, 0xE700000000000000);
  if ((v8 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_21A3D3B94(*(v5 + 56) + 32 * v7, v146);

  v9 = sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v23 = sub_21A450F24();
    __swift_project_value_buffer(v23, qword_27CD28C90);

    v24 = sub_21A450F04();
    v25 = sub_21A451584();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v146[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_21A3E2554(0x6D726F4E78616DLL, 0xE700000000000000, v146);
      *(v26 + 12) = 2080;
      v28 = *(v4 + 32);

      v29 = sub_21A450F74();
      v31 = v30;

      v32 = sub_21A3E2554(v29, v31, v146);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21A3C2000, v24, v25, "cannot get %s from recipe %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v27, -1, -1);
      MEMORY[0x21CEDB220](v26, -1, -1);
    }

    goto LABEL_23;
  }

  [v145[0] doubleValue];
  v11 = v10;

  v12 = *(v4 + 32);
  if (!*(v12 + 16))
  {
    goto LABEL_25;
  }

  v13 = *(v4 + 32);

  v14 = sub_21A3DCA2C(0xD00000000000001DLL, 0x800000021A45BB60);
  if ((v15 & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_21A3D3B94(*(v12 + 56) + 32 * v14, v146);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v35 = sub_21A450F24();
    __swift_project_value_buffer(v35, qword_27CD28C90);

    v36 = sub_21A450F04();
    v37 = sub_21A451584();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_30;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v146[0] = v39;
    *v38 = 136315138;
    v40 = *(v4 + 32);

    v41 = sub_21A450F74();
    v43 = v42;

    v44 = sub_21A3E2554(v41, v43, v146);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_21A3C2000, v36, v37, "cannot get recipeLocalDPParams from recipe %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x21CEDB220](v39, -1, -1);
    goto LABEL_29;
  }

  v16 = v145[0];
  if (!*(v145[0] + 2))
  {
    goto LABEL_61;
  }

  v17 = sub_21A3DCA2C(0x73696E616863656DLL, 0xE90000000000006DLL);
  if ((v18 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_21A3D3B94(*(v145[0] + 7) + 32 * v17, v146);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  if ((v145[0] != 0x6E61697373756167 || v145[1] != 0xE800000000000000) && (sub_21A4519B4() & 1) == 0)
  {

LABEL_61:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v79 = sub_21A450F24();
    __swift_project_value_buffer(v79, qword_27CD28C90);
    v36 = sub_21A450F04();
    v55 = sub_21A451584();
    if (!os_log_type_enabled(v36, v55))
    {
      goto LABEL_30;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v56 = "Only gaussian is supported as DP mechanism";
LABEL_65:
    _os_log_impl(&dword_21A3C2000, v36, v55, v56, v38, 2u);
LABEL_29:
    MEMORY[0x21CEDB220](v38, -1, -1);
LABEL_30:

LABEL_23:
    sub_21A3D3C88();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  if (*(v145[0] + 2) && (v19 = sub_21A3DCA2C(0x6E6F6C69737065, 0xE700000000000000), (v20 & 1) != 0) && (sub_21A3D3B94(*(v145[0] + 7) + 32 * v19, v146), (swift_dynamicCast() & 1) != 0))
  {
    [v145[0] doubleValue];
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (*(v145[0] + 2) && (v45 = sub_21A3DCA2C(0x61746C6564, 0xE500000000000000), (v46 & 1) != 0) && (sub_21A3D3B94(*(v145[0] + 7) + 32 * v45, v146), (swift_dynamicCast() & 1) != 0))
  {
    [v145[0] doubleValue];
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v3[3] = v11;
  if (!v16[2] || (v49 = sub_21A3DCA2C(0xD00000000000001BLL, 0x800000021A45BB80), (v50 & 1) == 0) || (sub_21A3D3B94(v16[7] + 32 * v49, v146), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_27CD28170 == -1)
    {
LABEL_42:
      v54 = sub_21A450F24();
      __swift_project_value_buffer(v54, qword_27CD28C90);
      v36 = sub_21A450F04();
      v55 = sub_21A451584();
      if (!os_log_type_enabled(v36, v55))
      {
        goto LABEL_30;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v56 = "Moments accountant parameter is missing!";
      goto LABEL_65;
    }

LABEL_114:
    swift_once();
    goto LABEL_42;
  }

  v136 = v145[0];
  v51 = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  v52 = 6;
  v53 = &unk_282B3F818;
  while (1)
  {
    v139 = v52;
    v140 = v51;
    v59 = *(v53 - 1);
    v58 = *v53;
    v138 = v53;
    v60 = v136[2];

    v143 = v59;
    if (!v60 || (v61 = sub_21A3DCA2C(v59, v58), (v62 & 1) == 0) || (sub_21A3D3B94(v136[7] + 32 * v61, v146), (swift_dynamicCast() & 1) == 0))
    {

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v80 = sub_21A450F24();
      __swift_project_value_buffer(v80, qword_27CD28C90);

      v81 = v58;
      v82 = sub_21A450F04();
      v83 = sub_21A451584();

      if (!os_log_type_enabled(v82, v83))
      {

        goto LABEL_105;
      }

      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v146[0] = v85;
      *v84 = 136315138;
      v86 = sub_21A3E2554(v143, v81, v146);

      *(v84 + 4) = v86;
      v87 = "Moments accountant parameter %s is malformed.";
      v88 = v83;
      v89 = v82;
      v90 = v84;
      v91 = 12;
LABEL_103:
      _os_log_impl(&dword_21A3C2000, v89, v88, v87, v90, v91);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x21CEDB220](v85, -1, -1);
      v125 = v84;
LABEL_104:
      MEMORY[0x21CEDB220](v125, -1, -1);
      goto LABEL_105;
    }

    v63 = v58;
    v64 = v145[0];
    v147 = v9;
    v146[0] = v145[0];
    sub_21A3D3B38(v146, v145);
    v137 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v63;
    v67 = sub_21A3DCA2C(v59, v63);
    v68 = v140[2];
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      __break(1u);
      goto LABEL_114;
    }

    v71 = v66;
    if (v140[3] < v70)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v74 = v59;
      if ((v66 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      sub_21A3E3DD8();
      v74 = v59;
      if ((v71 & 1) == 0)
      {
LABEL_56:
        v51 = v140;
        v140[(v67 >> 6) + 8] |= 1 << v67;
        v75 = (v140[6] + 16 * v67);
        *v75 = v74;
        v75[1] = v141;
        sub_21A3D3B38(v145, (v140[7] + 32 * v67));

        v76 = v140[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          __break(1u);
          goto LABEL_116;
        }

        v140[2] = v78;
        goto LABEL_45;
      }
    }

LABEL_44:

    v51 = v140;
    v57 = (v140[7] + 32 * v67);
    __swift_destroy_boxed_opaque_existential_0(v57);
    sub_21A3D3B38(v145, v57);

LABEL_45:
    v53 = v138 + 2;
    v52 = v139 - 1;
    if (v139 == 1)
    {

      if (*(v51 + 16))
      {
        v92 = sub_21A3DCA2C(0x64724F69796E6552, 0xEA00000000007265);
        if (v93)
        {
          v94 = v51;
          sub_21A3D3B94(*(v51 + 56) + 32 * v92, v146);
          if (swift_dynamicCast())
          {
            v95 = v145[0];
            v96 = [v145[0] integerValue];

            if ((v96 - 33) >= 0xFFFFFFFFFFFFFFE1)
            {
              if (!*(v94 + 16) || (v97 = sub_21A3DCA2C(0x61726574496D754ELL, 0xED0000736E6F6974), (v98 & 1) == 0) || (sub_21A3D3B94(*(v94 + 56) + 32 * v97, v146), (swift_dynamicCast() & 1) == 0) || (v99 = v145[0], v100 = [v145[0] integerValue], v99, v100 < 1))
              {
                if (qword_27CD28170 != -1)
                {
                  swift_once();
                }

                v127 = sub_21A450F24();
                __swift_project_value_buffer(v127, qword_27CD28C90);
                v128 = sub_21A450F04();
                v129 = sub_21A451584();
                if (os_log_type_enabled(v128, v129))
                {
                  v130 = swift_slowAlloc();
                  v131 = swift_slowAlloc();
                  v146[0] = v131;
                  *v130 = 136315138;
                  *(v130 + 4) = sub_21A3E2554(0x61726574496D754ELL, 0xED0000736E6F6974, v146);
                  _os_log_impl(&dword_21A3C2000, v128, v129, "Moments accountant parameter %s must be greater than 0.", v130, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v131);
                  MEMORY[0x21CEDB220](v131, -1, -1);
                  MEMORY[0x21CEDB220](v130, -1, -1);
                }

                goto LABEL_106;
              }

              isUniquelyReferenced_nonNull_native = 0x726F686F4378614DLL;
              v71 = "atabase execute error: %s";
              if (*(v94 + 16))
              {
                v101 = sub_21A3DCA2C(0x726F686F4378614DLL, 0xED0000657A695374);
                if (v102)
                {
                  sub_21A3D3B94(*(v94 + 56) + 32 * v101, v146);
                  if (swift_dynamicCast())
                  {
                    v103 = v145[0];
                    v104 = [v145[0] integerValue];

                    if (*(v94 + 16))
                    {
                      v105 = sub_21A3DCA2C(0xD000000000000011, 0x800000021A45B8F0);
                      if (v106)
                      {
                        sub_21A3D3B94(*(v94 + 56) + 32 * v105, v146);
                        if (swift_dynamicCast())
                        {
                          v107 = v145[0];
                          v144 = [v145[0] integerValue];

                          if (*(v94 + 16))
                          {
                            v108 = sub_21A3DCA2C(0x6974616C75706F50, 0xEE00657A69536E6FLL);
                            if (v109)
                            {
                              sub_21A3D3B94(*(v94 + 56) + 32 * v108, v146);
                              if (swift_dynamicCast())
                              {
                                v110 = v145[0];
                                v142 = [v145[0] integerValue];

                                if (v104 >= 1 && v144 >= 1 && v142 >= 1 && v104 >= v144 && v142 >= v104)
                                {
                                  if (*(v94 + 16))
                                  {
                                    v111 = sub_21A3DCA2C(0x695374726F686F43, 0xEB00000000616D67);
                                    if (v112)
                                    {
                                      sub_21A3D3B94(*(v94 + 56) + 32 * v111, v146);
                                      if (swift_dynamicCast())
                                      {
                                        v113 = v145[0];
                                        [v145[0] doubleValue];
                                        v115 = v114;
                                        v116 = v114;

                                        if ((v116 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                        {
                                          v3[4] = v115;
                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
                                          v117 = swift_allocObject();
                                          *(v117 + 16) = xmmword_21A455DF0;
                                          *(v117 + 32) = 0x73696E616863654DLL;
                                          *(v117 + 40) = 0xE90000000000006DLL;
                                          *(v117 + 48) = 0xD000000000000011;
                                          *(v117 + 56) = 0x800000021A45BBA0;
                                          *(v117 + 72) = MEMORY[0x277D837D0];
                                          strcpy((v117 + 80), "OverallEpsilon");
                                          *(v117 + 95) = -18;
                                          v118 = MEMORY[0x277D839F8];
                                          *(v117 + 96) = v22;
                                          *(v117 + 120) = v118;
                                          strcpy((v117 + 128), "OverallDelta");
                                          *(v117 + 141) = 0;
                                          *(v117 + 142) = -5120;
                                          *(v117 + 144) = v48;
                                          *(v117 + 168) = v118;
                                          *(v117 + 176) = 0xD000000000000014;
                                          *(v117 + 184) = 0x800000021A45BBC0;
                                          v119 = v3[3];
                                          *(v117 + 216) = v118;
                                          *(v117 + 192) = v119;
                                          v120 = sub_21A3E4F6C(v117);
                                          swift_setDeallocating();
                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
                                          swift_arrayDestroy();
                                          swift_deallocClassInstance();

                                          v121 = swift_isUniquelyReferenced_nonNull_native();
                                          v146[0] = v120;
                                          sub_21A3D3D28(v94, sub_21A3EC9F8, 0, v121, v146);
                                          if (v2)
                                          {
                                            goto LABEL_121;
                                          }

                                          v122 = v3[5];
                                          v3[5] = v146[0];
                                        }
                                      }
                                    }
                                  }

LABEL_106:
                                  sub_21A3D3C88();
                                  swift_allocError();
                                  *v126 = 0;
                                  swift_willThrow();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_116:
              if (qword_27CD28170 != -1)
              {
                swift_once();
              }

              v132 = sub_21A450F24();
              __swift_project_value_buffer(v132, qword_27CD28C90);
              v82 = sub_21A450F04();
              v133 = sub_21A451584();
              if (os_log_type_enabled(v82, v133))
              {
                v134 = swift_slowAlloc();
                v135 = swift_slowAlloc();
                v146[0] = v135;
                *v134 = 136315650;
                *(v134 + 4) = sub_21A3E2554(0xD000000000000011, v71 | 0x8000000000000000, v146);
                *(v134 + 12) = 2080;
                *(v134 + 14) = sub_21A3E2554(isUniquelyReferenced_nonNull_native, 0xED0000657A695374, v146);
                *(v134 + 22) = 2080;
                *(v134 + 24) = sub_21A3E2554(0x6974616C75706F50, 0xEE00657A69536E6FLL, v146);
                _os_log_impl(&dword_21A3C2000, v82, v133, "Moments accountant parameters require 0 < %s <= %s <= %s", v134, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x21CEDB220](v135, -1, -1);
                v125 = v134;
                goto LABEL_104;
              }

LABEL_105:

              goto LABEL_106;
            }
          }
        }
      }

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v123 = sub_21A450F24();
      __swift_project_value_buffer(v123, qword_27CD28C90);
      v82 = sub_21A450F04();
      v124 = sub_21A451584();
      if (!os_log_type_enabled(v82, v124))
      {
        goto LABEL_105;
      }

      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v146[0] = v85;
      *v84 = 136315650;
      *(v84 + 4) = sub_21A3E2554(0x64724F69796E6552, 0xEA00000000007265, v146);
      *(v84 + 12) = 2048;
      *(v84 + 14) = 2;
      *(v84 + 22) = 2048;
      *(v84 + 24) = 32;
      v87 = "Moments accountant parameter %s must be between %ld and %ld.";
      v88 = v124;
      v89 = v82;
      v90 = v84;
      v91 = 32;
      goto LABEL_103;
    }
  }

  sub_21A3E2A88(v70, isUniquelyReferenced_nonNull_native);
  v72 = sub_21A3DCA2C(v59, v141);
  if ((v71 & 1) == (v73 & 1))
  {
    v67 = v72;
    v74 = v59;
    if ((v71 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  sub_21A451A94();
  __break(1u);
LABEL_121:

  __break(1u);
  return result;
}

unint64_t sub_21A3D31FC(uint64_t a1, double a2)
{
  v5 = v2[4];
  if (a1 != 1)
  {
    v5 = v5 * v2[3] / a2;
  }

  v6 = v2[5];
  v7 = MEMORY[0x277D839F8];
  v20 = MEMORY[0x277D839F8];
  v19[0] = v5;
  sub_21A3D3B38(v19, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v18, 0xD000000000000015, 0x800000021A45BB20, isUniquelyReferenced_nonNull_native);
  v20 = v7;
  v19[0] = a2;
  sub_21A3D3B38(v19, v18);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v18, 0x676E697070696C43, 0xED0000646E756F42, v9);
  v20 = MEMORY[0x277D83B88];
  *&v19[0] = a1;
  sub_21A3D3B38(v19, v18);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v18, 0x6B6E7568436D754ELL, 0xE900000000000073, v10);
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  v13 = *MEMORY[0x277D05410];
  *(inited + 32) = sub_21A451084();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v15 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  sub_21A3D3BF0(inited + 32, &qword_27CD28438, &unk_21A455EA0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  v19[0] = v11;
  sub_21A3D3B38(v19, v18);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v18, 0xD000000000000013, 0x800000021A45BB40, v16);
  return v15;
}

unint64_t sub_21A3D3450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
    v2 = sub_21A451874();
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_21A3D3B38(&v27, v29);
        sub_21A3D3B38(v29, v30);
        sub_21A3D3B38(v30, &v28);
        result = sub_21A3DCA2C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_21A3D3B38(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_21A3D3B38(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21A3D36A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28428, &unk_21A455E90);
    v2 = sub_21A451874();
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21A3D3B94(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_21A3D3B38(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_21A3D3B38(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_21A3D3B38(v32, v33);
    v17 = *(v2 + 40);
    result = sub_21A4516D4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_21A3D3B38(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21A3D3970()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_21A3D3A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28410, &qword_21A455E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  v1 = *MEMORY[0x277D05410];
  *(inited + 32) = sub_21A451084();
  *(inited + 40) = v2;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v3 = sub_21A3E509C(inited);
  swift_setDeallocating();
  sub_21A3D3BF0(inited + 32, &qword_27CD28418, &unk_21A455E80);
  v4 = sub_21A3D3450(v3);

  return v4;
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

_OWORD *sub_21A3D3B38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21A3D3B94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3D3BF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21A3D3C88()
{
  result = qword_27CD28448;
  if (!qword_27CD28448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28448);
  }

  return result;
}

unint64_t sub_21A3D3CDC()
{
  result = qword_27CD28450;
  if (!qword_27CD28450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28450);
  }

  return result;
}

unint64_t sub_21A3D3D28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_21A3ECAD4(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_21A3D3B38(v46, v44);
  v14 = *a5;
  result = sub_21A3DCA2C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_21A3E2A88(v20, a4 & 1);
    v22 = *a5;
    result = sub_21A3DCA2C(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_21A451A94();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_21A3E3DD8();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_21A3D3B38(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_21A3D3B38(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_21A3ECAD4(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_21A3D3B38(v46, v44);
        v33 = *a5;
        result = sub_21A3DCA2C(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_21A3E2A88(v37, 1);
          v38 = *a5;
          result = sub_21A3DCA2C(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_21A3D3B38(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_21A3D3B38(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_21A3ECAD4(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_21A3C5104();
  }

LABEL_27:
  __break(1u);
  return result;
}

float sub_21A3D40B0@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

void sub_21A3D40BC(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_21A4514B4();
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_21A3D4178(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    return a4(a3, result, 1, a2, 1);
  }

  __break(1u);
  return result;
}

double sub_21A3D41FC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

void sub_21A3D4208(void *a1@<X0>, void *a2@<X8>)
{
  sub_21A4514A4();
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_21A3D4260(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    return a6(a3, result, 1, a2, 1);
  }

  __break(1u);
  return result;
}

__int16 Float16.init(_:)@<H0>(void *a1@<X0>)
{
  [a1 floatValue];
  _S8 = v2;

  __asm { FCVT            H0, S8 }

  return result;
}

short float sub_21A3D4334@<H0>(uint64_t a1@<X0>, short float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

__int16 sub_21A3D4340@<H0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  [a1 floatValue];
  _S8 = v4;

  __asm { FCVT            H0, S8 }

  *a2 = result;
  return result;
}

uint64_t _sSf24PrivateFederatedLearningE10inplaceSubyySaySfGz_ACtFZ_0(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 31)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_21A407D80(0, v2, 0, v1);
    }

    *v3 = v1;

    return cblas_saxpy_NEWLAPACK();
  }

  return result;
}

uint64_t _sSf24PrivateFederatedLearningE10inplaceDivyySaySfGz_SftFZ_0(char **a1, float a2)
{
  v10 = *MEMORY[0x277D85DE8];
  __B = a2;
  v3 = *a1;
  v4 = *(*a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21A407D80(0, v4, 0, v3);
  }

  *a1 = v6;
  vDSP_vsdiv(v3 + 8, 1, &__B, v6 + 8, 1, v4);

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _sSd24PrivateFederatedLearningE10inplaceSubyySaySdGz_ACtFZ_0(char **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, __n128 a6)
{
  v6 = *a1;
  v7 = *(*a1 + 2);
  if (v7 >> 31)
  {
    __break(1u);
  }

  else
  {
    v8 = a2;
    v9 = a1;
    v10 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21A407E84(0, v7, 0, v6);
    }

    *v9 = v6;
    a6.n128_u64[0] = -1.0;
    a2 = v8 + 32;
    a4 = v6 + 32;
    a1 = v7;
    a3 = 1;
    a5 = 1;
  }

  return MEMORY[0x282108850](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21A3D4578(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(*a1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a3(0, v9, 0, v8);
  }

  *a1 = v11;
  a4(v8 + 32, 1, a2 + 32, 1, v11 + 32, 1, v9);
}

uint64_t _sSd24PrivateFederatedLearningE10inplaceDivyySaySdGz_SdtFZ_0(char **a1, double a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v3 = *a1;
  v4 = *(*a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21A407E84(0, v4, 0, v3);
  }

  *a1 = v6;
  vDSP_vsdivD(v3 + 4, 1, v9, v6 + 4, 1, v4);

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ss7Float16V24PrivateFederatedLearningE10inplaceSubyySayABGz_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 >= 8)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    do
    {
      v10 = v8;
      v11 = *(v4 + 16);
      v12 = v10 + 8;
      if (v11 < v10 || v11 < v12)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v9 < v12)
      {
        goto LABEL_35;
      }

      v14 = (v4 + 2 * v10);
      v28 = v14[23];
      v30 = v14[22];
      v32 = v14[21];
      v33 = v14[20];
      v34 = v14[19];
      v15 = v14[18];
      v16 = v14[17];
      v17 = v14[16];
      v18 = (a2 + 2 * v10);
      v27 = v18[23];
      v29 = v18[22];
      v31 = v18[21];
      v19 = v18[20];
      v20 = v18[19];
      v21 = v18[18];
      v22 = v18[17];
      v23 = v18[16];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21A410F7C(v4);
        v4 = result;
      }

      v24 = *(v4 + 16);
      if (v10 >= v24)
      {
        goto LABEL_36;
      }

      v25 = (v4 + 2 * v10);
      v25[16] = v17 - v23;
      if (v10 + 1 >= v24)
      {
        goto LABEL_37;
      }

      v25[17] = v16 - v22;
      if (v10 + 2 >= v24)
      {
        goto LABEL_38;
      }

      v25[18] = v15 - v21;
      if (v10 + 3 >= v24)
      {
        goto LABEL_39;
      }

      v25[19] = v34 - v20;
      if (v10 + 4 >= v24)
      {
        goto LABEL_40;
      }

      v25[20] = v33 - v19;
      if (v10 + 5 >= v24)
      {
        goto LABEL_41;
      }

      v25[21] = v32 - v31;
      if (v10 + 6 >= v24)
      {
        goto LABEL_42;
      }

      v25[22] = v30 - v29;
      if (v10 + 7 >= v24)
      {
        goto LABEL_43;
      }

      v25[23] = v28 - v27;
      if (__OFADD__(v10, 16))
      {
        goto LABEL_44;
      }

      v8 = v10 + 8;
    }

    while (v5 >= v10 + 16);
    v7 = v10 + 8;
    *v3 = v4;
    if (v10 + 8 >= v5)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    v6 = *result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_45:
      result = sub_21A410F7C(v4);
      v4 = result;
    }

    v7 = 0;
  }

  v26 = *(a2 + 16);
  if (v7 > v26)
  {
    v26 = v7;
  }

  do
  {
    if (v26 == v7)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v7 >= *(v4 + 16))
    {
      goto LABEL_33;
    }

    *(v4 + 2 * v7 + 32) = *(v4 + 2 * v7 + 32) - *(a2 + 32 + 2 * v7);
    ++v7;
  }

  while (v7 < v5);
  *v3 = v4;
  return result;
}

_OWORD *_ss7Float16V24PrivateFederatedLearningE4copy4from2to5countySPyABG_SpyABGSitFZ_0(_OWORD *result, _OWORD *a2, uint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = 0;
    v4 = result;
    v5 = a2;
    do
    {
      v3 += 8;
      *v5 = *v4;
      if (__OFADD__(v3, 8))
      {
        __break(1u);
        return result;
      }

      ++v5;
      ++v4;
    }

    while (v3 + 8 <= a3);
    if (v3 >= a3)
    {
      return result;
    }
  }

  else
  {
    if (a3 <= 0)
    {
      return result;
    }

    v3 = 0;
  }

  if (a3 <= v3 + 1)
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = v6 - v3;
  if (v7 < 4)
  {
    v9 = v3;
    goto LABEL_26;
  }

  if ((a2 - result) < 0x20)
  {
    v9 = v3;
    goto LABEL_26;
  }

  if (v7 < 0x10)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFFF0;
  v10 = 2 * v3 + 16;
  v11 = (result + v10);
  v12 = (a2 + v10);
  v13 = v7 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v14 = *v11;
    *(v12 - 1) = *(v11 - 1);
    *v12 = v14;
    v11 += 2;
    v12 += 2;
    v13 -= 16;
  }

  while (v13);
  if (v7 != v8)
  {
    if ((v7 & 0xC) == 0)
    {
      v9 = v3 + v8;
      goto LABEL_26;
    }

LABEL_21:
    v9 = v3 + (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v15 = v8 - (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = 2 * (v3 + v8);
    v17 = (result + v16);
    v18 = (a2 + v16);
    do
    {
      v19 = *v17++;
      *v18++ = v19;
      v15 += 4;
    }

    while (v15);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    do
    {
LABEL_26:
      *(a2 + v9) = *(result + v9);
      ++v9;
    }

    while (v9 < a3);
  }

  return result;
}

uint64_t _ss7Float16V24PrivateFederatedLearningE10inplaceAddyySayABGz_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 >= 8)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    do
    {
      v10 = v8;
      v11 = *(v4 + 16);
      v12 = v10 + 8;
      if (v11 < v10 || v11 < v12)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v9 < v12)
      {
        goto LABEL_35;
      }

      v14 = (v4 + 2 * v10);
      v15 = v14[16];
      v16 = v14[17];
      v17 = v14[18];
      v34 = v14[19];
      v33 = v14[20];
      v32 = v14[21];
      v30 = v14[22];
      v28 = v14[23];
      v18 = (a2 + 2 * v10);
      v19 = v18[16];
      v20 = v18[17];
      v21 = v18[18];
      v22 = v18[19];
      v23 = v18[20];
      v31 = v18[21];
      v29 = v18[22];
      v27 = v18[23];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21A410F7C(v4);
        v4 = result;
      }

      v24 = *(v4 + 16);
      if (v10 >= v24)
      {
        goto LABEL_36;
      }

      v25 = (v4 + 2 * v10);
      v25[16] = v15 + v19;
      if (v10 + 1 >= v24)
      {
        goto LABEL_37;
      }

      v25[17] = v16 + v20;
      if (v10 + 2 >= v24)
      {
        goto LABEL_38;
      }

      v25[18] = v17 + v21;
      if (v10 + 3 >= v24)
      {
        goto LABEL_39;
      }

      v25[19] = v34 + v22;
      if (v10 + 4 >= v24)
      {
        goto LABEL_40;
      }

      v25[20] = v33 + v23;
      if (v10 + 5 >= v24)
      {
        goto LABEL_41;
      }

      v25[21] = v32 + v31;
      if (v10 + 6 >= v24)
      {
        goto LABEL_42;
      }

      v25[22] = v30 + v29;
      if (v10 + 7 >= v24)
      {
        goto LABEL_43;
      }

      v25[23] = v28 + v27;
      if (__OFADD__(v10, 16))
      {
        goto LABEL_44;
      }

      v8 = v10 + 8;
    }

    while (v5 >= v10 + 16);
    v7 = v10 + 8;
    *v3 = v4;
    if (v10 + 8 >= v5)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    v6 = *result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_45:
      result = sub_21A410F7C(v4);
      v4 = result;
    }

    v7 = 0;
  }

  v26 = *(a2 + 16);
  if (v7 > v26)
  {
    v26 = v7;
  }

  do
  {
    if (v26 == v7)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v7 >= *(v4 + 16))
    {
      goto LABEL_33;
    }

    *(v4 + 2 * v7 + 32) = *(a2 + 32 + 2 * v7) + *(v4 + 2 * v7 + 32);
    ++v7;
  }

  while (v7 < v5);
  *v3 = v4;
  return result;
}

uint64_t _ss7Float16V24PrivateFederatedLearningE10inplaceDivyySayABGz_ABtFZ_0(uint64_t result, __n128 a2)
{
  v2 = *a2.n128_u16;
  v3 = result;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 < 8)
  {
    if (!v5)
    {
      return result;
    }

    v6 = *result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_24;
    }

LABEL_39:
    result = sub_21A410F7C(v4);
    v4 = result;
    goto LABEL_4;
  }

  v8 = 0;
  do
  {
    v9 = v8;
    v10 = *(v4 + 16);
    if (v10 < v9 || v10 < v9 + 8)
    {
      goto LABEL_29;
    }

    v12 = (v4 + 2 * v9);
    v13 = v12[16];
    v14 = v12[17];
    v15 = v12[18];
    v16 = v12[19];
    v17 = v12[20];
    v18 = v12[21];
    v19 = v12[22];
    v22 = v12[23];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21A410F7C(v4);
      v4 = result;
    }

    v20 = *(v4 + 16);
    if (v9 >= v20)
    {
      goto LABEL_30;
    }

    v21 = (v4 + 2 * v9);
    v21[16] = v13 / v2;
    if (v9 + 1 >= v20)
    {
      goto LABEL_31;
    }

    v21[17] = v14 / v2;
    if (v9 + 2 >= v20)
    {
      goto LABEL_32;
    }

    v21[18] = v15 / v2;
    if (v9 + 3 >= v20)
    {
      goto LABEL_33;
    }

    v21[19] = v16 / v2;
    if (v9 + 4 >= v20)
    {
      goto LABEL_34;
    }

    v21[20] = v17 / v2;
    if (v9 + 5 >= v20)
    {
      goto LABEL_35;
    }

    v21[21] = v18 / v2;
    if (v9 + 6 >= v20)
    {
      goto LABEL_36;
    }

    v21[22] = v19 / v2;
    if (v9 + 7 >= v20)
    {
      goto LABEL_37;
    }

    v21[23] = v22 / v2;
    if (__OFADD__(v9, 16))
    {
      goto LABEL_38;
    }

    v8 = v9 + 8;
  }

  while (v5 >= v9 + 16);
  v7 = v9 + 8;
  *v3 = v4;
  if (v9 + 8 >= v5)
  {
    return result;
  }

  do
  {
LABEL_24:
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v4 + 2 * v7 + 32) = *(v4 + 2 * v7 + 32) / v2;
    ++v7;
  }

  while (v7 < v5);
  *v3 = v4;
  return result;
}

uint64_t dispatch thunk of VectorArithmetic.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 40))();
}

uint64_t sub_21A3D5028()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(v4 + 32);

  v7 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21A3D3B94(*(v5 + 56) + 32 * v7, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_21A3D3C88();
    swift_allocError();
    *v28 = 17;
    return swift_willThrow();
  }

  v9 = v33;
  v10 = *MEMORY[0x277D05390];
  v11 = sub_21A451084();
  if (!*(v9 + 16))
  {
    goto LABEL_19;
  }

  v13 = sub_21A3DCA2C(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21A3D3B94(*(v9 + 56) + 32 * v13, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = v33;
  v17 = *(v4 + 32);
  v18 = *MEMORY[0x277D05398];
  v19 = sub_21A451084();
  v21 = v20;
  if (!*(v17 + 16) || (v22 = v19, v31 = v16, , v23 = sub_21A3DCA2C(v22, v21), v25 = v24, , (v25 & 1) == 0))
  {

LABEL_19:

LABEL_14:

    goto LABEL_15;
  }

  sub_21A3D3B94(*(v17 + 56) + 32 * v23, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v26 = v33;
  sub_21A3D8F38(v9);

  if (v2)
  {
  }

  else
  {
    sub_21A3D9470(v31);
    sub_21A3D70C0(v26);
    v29 = *(v3 + 48);
    *(v3 + 48) = v26;

    v30 = *(v3 + 40);
    *(v3 + 40) = v31;
  }
}

unint64_t sub_21A3D5304(uint64_t a1, double a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (!*(v6 + 16))
  {
    goto LABEL_13;
  }

  v7 = v2;

  v2 = v6;
  v8 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21A3D3B94(*(v6 + 56) + 32 * v8, &v139);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_21A3D3C88();
    swift_allocError();
    *v43 = 17;
    swift_willThrow();
    return v2;
  }

  v2 = *&v138[0];
  v11 = *MEMORY[0x277D05390];
  v12 = sub_21A451084();
  if (!*(*&v138[0] + 16))
  {

LABEL_12:

    goto LABEL_13;
  }

  v14 = sub_21A3DCA2C(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21A3D3B94(*(*&v138[0] + 56) + 32 * v14, &v139);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *&v138[0];
  v136 = *MEMORY[0x277D053A8];
  v18 = sub_21A451084();
  v20 = v19;
  v21 = *(v7 + 48);
  if (!*(v21 + 16))
  {
    v28 = v7;

    goto LABEL_20;
  }

  v22 = v18;
  v23 = *(v7 + 48);

  v24 = sub_21A3DCA2C(v22, v20);
  v26 = v25;

  if ((v26 & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_21A3D3B94(*(v21 + 56) + 32 * v24, &v139);

  v27 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v28 = v7;
LABEL_20:
    v45 = *(v28 + 32);
    if (a1 != 1)
    {
      v45 = v45 * *(v28 + 24) / a2;
    }

    v46 = *(v28 + 48);
    v134 = *MEMORY[0x277D053A0];
    v47 = sub_21A451084();
    v49 = v48;
    v50 = MEMORY[0x277D839F8];
    v140 = MEMORY[0x277D839F8];
    *&v139 = v45;
    sub_21A3D3B38(&v139, v138);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v46;
    sub_21A403008(v138, v47, v49, isUniquelyReferenced_nonNull_native);

    v52 = v141;
    v135 = *MEMORY[0x277D05340];
    v53 = sub_21A451084();
    v55 = v54;
    v140 = v50;
    *&v139 = a2;
    sub_21A3D3B38(&v139, v138);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v52;
    sub_21A403008(v138, v53, v55, v56);

    v57 = v141;
    v133 = *MEMORY[0x277D05350];
    v58 = sub_21A451084();
    v60 = v59;
    v140 = MEMORY[0x277D83B88];
    *&v139 = a1;
    sub_21A3D3B38(&v139, v138);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v57;
    sub_21A403008(v138, v58, v60, v61);

    v62 = v141;
    v63 = *MEMORY[0x277D05398];
    v64 = sub_21A451084();
    v66 = v65;
    v140 = v10;
    *&v139 = v62;
    sub_21A3D3B38(&v139, v138);

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v17;
    sub_21A403008(v138, v64, v66, v67);

    v68 = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455F10;
    v70 = *MEMORY[0x277D05378];
    *(inited + 32) = sub_21A451084();
    *(inited + 40) = v71;
    v72 = *MEMORY[0x277D053D8];
    *(inited + 48) = sub_21A451084();
    *(inited + 56) = v73;
    v74 = *MEMORY[0x277D053D0];
    *(inited + 64) = sub_21A451084();
    *(inited + 72) = v75;
    v76 = *MEMORY[0x277D053E0];
    *(inited + 80) = sub_21A451084();
    *(inited + 88) = v77;
    *(inited + 96) = sub_21A451084();
    *(inited + 104) = v78;
    v79 = sub_21A4242FC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    v81 = sub_21A3D5FE8(v80);

    LOBYTE(inited) = sub_21A3D85E8(v81, v79);

    if (inited)
    {
      v82 = swift_initStackObject();
      *(v82 + 16) = xmmword_21A455F20;
      *(v82 + 32) = sub_21A451084();
      *(v82 + 40) = v83;
      v84 = *MEMORY[0x277D053C8];
      *(v82 + 48) = sub_21A451084();
      *(v82 + 56) = v85;
      v86 = *MEMORY[0x277D053C0];
      *(v82 + 64) = sub_21A451084();
      *(v82 + 72) = v87;
      *(v82 + 80) = sub_21A451084();
      *(v82 + 88) = v88;
      v89 = *MEMORY[0x277D05370];
      *(v82 + 96) = sub_21A451084();
      *(v82 + 104) = v90;
      v91 = *MEMORY[0x277D05358];
      *(v82 + 112) = sub_21A451084();
      *(v82 + 120) = v92;
      v93 = *MEMORY[0x277D05368];
      *(v82 + 128) = sub_21A451084();
      *(v82 + 136) = v94;
      v95 = *MEMORY[0x277D05360];
      *(v82 + 144) = sub_21A451084();
      *(v82 + 152) = v96;
      v97 = *MEMORY[0x277D05348];
      *(v82 + 160) = sub_21A451084();
      *(v82 + 168) = v98;
      *(v82 + 176) = sub_21A451084();
      *(v82 + 184) = v99;
      *(v82 + 192) = sub_21A451084();
      *(v82 + 200) = v100;
      v101 = sub_21A4242FC(v82);
      swift_setDeallocating();
      v102 = MEMORY[0x277D837D0];
      swift_arrayDestroy();

      v104 = sub_21A3D5FE8(v103);

      v105 = sub_21A3D85E8(v104, v101);

      if (v105)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_21A455F00;
        v107 = *MEMORY[0x277D053E8];
        *(v106 + 32) = sub_21A451084();
        *(v106 + 72) = v102;
        *(v106 + 40) = v108;
        *(v106 + 48) = 3157554;
        *(v106 + 56) = 0xE300000000000000;
        *(v106 + 80) = sub_21A451084();
        *(v106 + 88) = v109;
        *(v106 + 120) = v10;
        *(v106 + 96) = v68;
        v2 = sub_21A3E4F6C(v106);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        return v2;
      }

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v121 = sub_21A450F24();
      v2 = __swift_project_value_buffer(v121, qword_27CD28C90);

      v111 = sub_21A450F04();
      v122 = sub_21A451584();

      if (os_log_type_enabled(v111, v122))
      {
        v2 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *&v139 = v123;
        *v2 = 136315394;

        v124 = sub_21A4514C4();
        v126 = v125;

        v127 = sub_21A3E2554(v124, v126, &v139);

        *(v2 + 4) = v127;
        *(v2 + 12) = 2080;
        v128 = sub_21A450F84();
        v130 = v129;

        v131 = sub_21A3E2554(v128, v130, &v139);

        *(v2 + 14) = v131;
        _os_log_impl(&dword_21A3C2000, v111, v122, "Required keys for DPConfig: %s, but got %s", v2, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v123, -1, -1);
        MEMORY[0x21CEDB220](v2, -1, -1);
        goto LABEL_34;
      }
    }

    else
    {

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v110 = sub_21A450F24();
      v2 = __swift_project_value_buffer(v110, qword_27CD28C90);

      v111 = sub_21A450F04();
      v112 = sub_21A451584();

      if (os_log_type_enabled(v111, v112))
      {
        v2 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v139 = v137;
        *v2 = 136315394;

        v113 = sub_21A4514C4();
        v115 = v114;

        v116 = sub_21A3E2554(v113, v115, &v139);

        *(v2 + 4) = v116;
        *(v2 + 12) = 2080;
        v117 = sub_21A450F84();
        v119 = v118;

        v120 = sub_21A3E2554(v117, v119, &v139);

        *(v2 + 14) = v120;
        _os_log_impl(&dword_21A3C2000, v111, v112, "Required keys for DPConfig: %s, but got %s", v2, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v137, -1, -1);
        MEMORY[0x21CEDB220](v2, -1, -1);
LABEL_34:

        sub_21A3D3C88();
        swift_allocError();
        *v132 = 17;
        swift_willThrow();

        return v2;
      }
    }

    goto LABEL_34;
  }

  v28 = v7;
  v29 = sub_21A3D8190(*&v138[0], *(&v138[0] + 1));

  if ((v29 & 1) == 0)
  {
    goto LABEL_20;
  }

  v141 = *(v7 + 48);
  v30 = *MEMORY[0x277D05360];
  v31 = sub_21A451084();
  v33 = v32;

  sub_21A402EB8(v31, v33, &v139);

  sub_21A3D3BF0(&v139, &qword_27CD28468, &unk_21A455FB0);
  v34 = *MEMORY[0x277D05398];
  v35 = sub_21A451084();
  v37 = v36;
  v140 = v10;
  *&v139 = v141;
  sub_21A3D3B38(&v139, v138);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v138, v35, v37, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21A455F00;
  v40 = *MEMORY[0x277D053E8];
  *(v39 + 32) = sub_21A451084();
  *(v39 + 72) = v27;
  *(v39 + 40) = v41;
  *(v39 + 48) = 3157554;
  *(v39 + 56) = 0xE300000000000000;
  *(v39 + 80) = sub_21A451084();
  *(v39 + 88) = v42;
  *(v39 + 120) = v10;
  *(v39 + 96) = v17;
  v2 = sub_21A3E4F6C(v39);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v2;
}

uint64_t sub_21A3D5FE8(uint64_t a1)
{
  result = MEMORY[0x21CED9BE0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21A3D8498(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

NSObject *sub_21A3D6104()
{
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 32);
  if (!v3[2].isa)
  {
    goto LABEL_14;
  }

  v4 = *(v2 + 32);

  v5 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_21A3D3B94(v3[7].isa + 32 * v5, v93);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_21A3D3C88();
    swift_allocError();
    *v18 = 17;
    swift_willThrow();
    return v3;
  }

  v3 = *&v92[0];
  v8 = *MEMORY[0x277D05390];
  v9 = sub_21A451084();
  if (!*(*&v92[0] + 16))
  {
    goto LABEL_12;
  }

  v11 = sub_21A3DCA2C(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_21A3D3B94(*(*&v92[0] + 56) + 32 * v11, v93);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = *&v92[0];
  if (!*(*&v92[0] + 16) || (v15 = sub_21A3DCA2C(0xD00000000000001BLL, 0x800000021A45BC60), (v16 & 1) == 0) || (sub_21A3D3B94(*(*&v92[0] + 56) + 32 * v15, v93), sub_21A3D3CDC(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_12:

LABEL_13:

    goto LABEL_14;
  }

  v17 = *&v92[0];
  sub_21A3D8F38(*&v92[0]);
  if (v1)
  {

LABEL_30:

    return v3;
  }

  v91 = *&v92[0];
  if (!*(*&v92[0] + 16) || (v20 = sub_21A3DCA2C(0xD000000000000019, 0x800000021A45BC80), (v21 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_21A3D3B94(*(*&v92[0] + 56) + 32 * v20, v93);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v90 = *MEMORY[0x277D053E0];
    v87 = sub_21A451084();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28478, &qword_21A455FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455E00;
    v39 = *MEMORY[0x277D05408];
    *(inited + 32) = sub_21A451084();
    *(inited + 40) = v40;
    [v17 doubleValue];
    *(inited + 48) = v41;
    v42 = sub_21A3E51B0(inited);
    swift_setDeallocating();
    v35 = &off_21A455000;
    sub_21A3D3BF0(inited + 32, &qword_27CD28480, &qword_21A455FD8);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28488, &unk_21A455FE0);
    v93[0] = v42;
    sub_21A3D3B38(v93, v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v14;
    sub_21A403008(v92, v87, v37, isUniquelyReferenced_nonNull_native);

    v34 = v95;
    goto LABEL_22;
  }

  v22 = *&v92[0];
  v89 = *MEMORY[0x277D053E0];
  v23 = sub_21A451084();
  v84 = v24;
  v86 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_21A455F00;
  v26 = *MEMORY[0x277D05408];
  *(v25 + 32) = sub_21A451084();
  *(v25 + 40) = v27;
  [v17 doubleValue];
  *(v25 + 72) = MEMORY[0x277D839F8];
  *(v25 + 48) = v28;
  v29 = *MEMORY[0x277D05400];
  *(v25 + 80) = sub_21A451084();
  *(v25 + 88) = v30;
  v31 = [v22 unsignedIntValue];
  *(v25 + 120) = MEMORY[0x277D84CC0];
  *(v25 + 96) = v31;
  v32 = sub_21A3E4F6C(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  v94 = v7;
  v93[0] = v32;
  sub_21A3D3B38(v93, v92);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v14;
  sub_21A403008(v92, v86, v84, v33);

  v34 = v95;
  v35 = &off_21A455000;
LABEL_22:
  v88 = *MEMORY[0x277D05398];
  v85 = sub_21A451084();
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28410, &qword_21A455E78);
  v46 = swift_initStackObject();
  *(v46 + 16) = *(v35 + 224);
  v47 = *MEMORY[0x277D053A8];
  *(v46 + 32) = sub_21A451084();
  *(v46 + 40) = v48;
  v49 = *MEMORY[0x277D053B8];
  *(v46 + 48) = sub_21A451084();
  *(v46 + 56) = v50;
  v51 = sub_21A3E509C(v46);
  swift_setDeallocating();
  sub_21A3D3BF0(v46 + 32, &qword_27CD28418, &unk_21A455E80);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28470, &qword_21A458CC0);
  v93[0] = v51;
  sub_21A3D3B38(v93, v92);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v34;
  sub_21A403008(v92, v85, v45, v52);

  v53 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_21A455F10;
  v55 = *MEMORY[0x277D05378];
  *(v54 + 32) = sub_21A451084();
  *(v54 + 40) = v56;
  v57 = *MEMORY[0x277D053D8];
  *(v54 + 48) = sub_21A451084();
  *(v54 + 56) = v58;
  v59 = *MEMORY[0x277D053D0];
  *(v54 + 64) = sub_21A451084();
  *(v54 + 72) = v60;
  *(v54 + 80) = sub_21A451084();
  *(v54 + 88) = v61;
  *(v54 + 96) = sub_21A451084();
  *(v54 + 104) = v62;
  v63 = sub_21A4242FC(v54);
  swift_setDeallocating();
  v64 = MEMORY[0x277D837D0];
  swift_arrayDestroy();

  v66 = sub_21A3D5FE8(v65);
  LOBYTE(v51) = sub_21A3D85E8(v66, v63);

  if ((v51 & 1) == 0)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v71 = sub_21A450F24();
    __swift_project_value_buffer(v71, qword_27CD28C90);

    v3 = sub_21A450F04();
    v72 = sub_21A451584();

    if (os_log_type_enabled(v3, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v93[0] = v74;
      *v73 = 136315394;
      v75 = sub_21A4514C4();
      v77 = v76;

      v78 = sub_21A3E2554(v75, v77, v93);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = sub_21A450F84();
      v81 = v80;

      v82 = sub_21A3E2554(v79, v81, v93);

      *(v73 + 14) = v82;
      _os_log_impl(&dword_21A3C2000, v3, v72, "Required keys for DPConfig: %s, but got %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v74, -1, -1);
      MEMORY[0x21CEDB220](v73, -1, -1);
    }

    else
    {
    }

    v17 = v91;
    sub_21A3D3C88();
    swift_allocError();
    *v83 = 17;
    swift_willThrow();
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_21A455F00;
  v68 = *MEMORY[0x277D053E8];
  *(v67 + 32) = sub_21A451084();
  *(v67 + 72) = v64;
  *(v67 + 40) = v69;
  *(v67 + 48) = 3157554;
  *(v67 + 56) = 0xE300000000000000;
  *(v67 + 80) = sub_21A451084();
  *(v67 + 88) = v70;
  *(v67 + 120) = v7;
  *(v67 + 96) = v53;
  v3 = sub_21A3E4F6C(v67);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();

  return v3;
}

NSObject *sub_21A3D6A68()
{
  v2 = *(v0 + 16);
  swift_beginAccess();
  isa = v2[4].isa;
  if (!*(isa + 2))
  {
    goto LABEL_11;
  }

  v4 = v2[4].isa;

  v5 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(isa + 7) + 32 * v5, v61);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_21A3D3C88();
    swift_allocError();
    *v13 = 17;
    swift_willThrow();
    return v2;
  }

  v7 = *MEMORY[0x277D05390];
  v8 = sub_21A451084();
  if (!*(*&v60[0] + 16))
  {

LABEL_10:

    goto LABEL_11;
  }

  v10 = sub_21A3DCA2C(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(*&v60[0] + 56) + 32 * v10, v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v63 = *&v60[0];
  sub_21A3D8F38(*&v60[0]);
  if (!v1)
  {

    v15 = *MEMORY[0x277D053E0];
    v16 = sub_21A451084();
    sub_21A402EB8(v16, v17, v61);

    sub_21A3D3BF0(v61, &qword_27CD28468, &unk_21A455FB0);
    v59 = *MEMORY[0x277D05398];
    v18 = sub_21A451084();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28410, &qword_21A455E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455E00;
    v22 = *MEMORY[0x277D053A8];
    *(inited + 32) = sub_21A451084();
    *(inited + 40) = v23;
    v24 = *MEMORY[0x277D053B8];
    *(inited + 48) = sub_21A451084();
    *(inited + 56) = v25;
    v26 = sub_21A3E509C(inited);
    swift_setDeallocating();
    sub_21A3D3BF0(inited + 32, &qword_27CD28418, &unk_21A455E80);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28470, &qword_21A458CC0);
    v61[0] = v26;
    sub_21A3D3B38(v61, v60);
    v27 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21A403008(v60, v18, v20, isUniquelyReferenced_nonNull_native);

    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_21A455DF0;
    v31 = *MEMORY[0x277D05378];
    *(v30 + 32) = sub_21A451084();
    *(v30 + 40) = v32;
    v33 = *MEMORY[0x277D053D8];
    *(v30 + 48) = sub_21A451084();
    *(v30 + 56) = v34;
    v35 = *MEMORY[0x277D053D0];
    *(v30 + 64) = sub_21A451084();
    *(v30 + 72) = v36;
    *(v30 + 80) = sub_21A451084();
    *(v30 + 88) = v37;
    v38 = sub_21A4242FC(v30);
    swift_setDeallocating();
    v39 = MEMORY[0x277D837D0];
    swift_arrayDestroy();

    v41 = sub_21A3D5FE8(v40);
    v42 = sub_21A3D85E8(v41, v38);

    if (v42)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_21A455F00;
      v44 = *MEMORY[0x277D053E8];
      *(v43 + 32) = sub_21A451084();
      *(v43 + 72) = v39;
      *(v43 + 40) = v45;
      *(v43 + 48) = 3157554;
      *(v43 + 56) = 0xE300000000000000;
      *(v43 + 80) = sub_21A451084();
      *(v43 + 88) = v46;
      *(v43 + 120) = v2;
      *(v43 + 96) = v29;
      v2 = sub_21A3E4F6C(v43);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
      swift_arrayDestroy();
      return v2;
    }

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v47 = sub_21A450F24();
    __swift_project_value_buffer(v47, qword_27CD28C90);

    v2 = sub_21A450F04();
    v48 = sub_21A451584();

    if (os_log_type_enabled(v2, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61[0] = v50;
      *v49 = 136315394;
      v51 = sub_21A4514C4();
      v53 = v52;

      v54 = sub_21A3E2554(v51, v53, v61);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      v55 = sub_21A450F84();
      v57 = v56;

      v58 = sub_21A3E2554(v55, v57, v61);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_21A3C2000, v2, v48, "Required keys for DPConfig: %s, but got %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v50, -1, -1);
      MEMORY[0x21CEDB220](v49, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  return v2;
}

void sub_21A3D70C0(uint64_t a1)
{
  v3 = v1;
  v5 = *MEMORY[0x277D053A8];
  v6 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_14:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v19 = sub_21A450F24();
    __swift_project_value_buffer(v19, qword_27CD28C90);
    v20 = sub_21A450F04();
    v21 = sub_21A451584();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Invalid value for Mechanism";
    goto LABEL_18;
  }

  v8 = sub_21A3DCA2C(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v8, v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_21A3D8190(v121, v122))
  {

    v11 = sub_21A451084();
    if (*(a1 + 16))
    {
      sub_21A3DCA2C(v11, v12);
      v14 = v13;

      if (v14)
      {
        sub_21A3D7FAC(a1);
        if (!v2)
        {
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v15 = sub_21A450F24();
          __swift_project_value_buffer(v15, qword_27CD28C90);
          v16 = sub_21A450F04();
          v17 = sub_21A451574();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_21A3C2000, v16, v17, "Using None Mechanism for results.", v18, 2u);
            MEMORY[0x21CEDB220](v18, -1, -1);
          }
        }

        return;
      }
    }

    else
    {
    }

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v68 = sub_21A450F24();
    __swift_project_value_buffer(v68, qword_27CD28C90);

    v69 = sub_21A450F04();
    v70 = sub_21A451584();

    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_56;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v123[0] = v72;
    *v71 = 136315394;
    v73 = sub_21A451084();
    v75 = sub_21A3E2554(v73, v74, v123);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v76 = sub_21A450F84();
    v78 = sub_21A3E2554(v76, v77, v123);

    *(v71 + 14) = v78;
    _os_log_impl(&dword_21A3C2000, v69, v70, "Required keys for DPConfig: %s, but got %s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v72, -1, -1);
    v79 = v71;
    goto LABEL_54;
  }

  v25 = *MEMORY[0x277D053B0];
  if (v121 == sub_21A451084() && v122 == v26)
  {
  }

  else
  {
    v28 = sub_21A4519B4();

    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455F30;
  *(inited + 32) = sub_21A451084();
  *(inited + 40) = v30;
  v31 = *MEMORY[0x277D053C8];
  *(inited + 48) = sub_21A451084();
  *(inited + 56) = v32;
  v33 = *MEMORY[0x277D053C0];
  *(inited + 64) = sub_21A451084();
  *(inited + 72) = v34;
  v35 = *MEMORY[0x277D053A0];
  *(inited + 80) = sub_21A451084();
  *(inited + 88) = v36;
  v120 = *MEMORY[0x277D05370];
  *(inited + 96) = sub_21A451084();
  *(inited + 104) = v37;
  v119 = *MEMORY[0x277D05358];
  *(inited + 112) = sub_21A451084();
  *(inited + 120) = v38;
  v39 = *MEMORY[0x277D05368];
  *(inited + 128) = sub_21A451084();
  *(inited + 136) = v40;
  v41 = *MEMORY[0x277D05360];
  *(inited + 144) = sub_21A451084();
  *(inited + 152) = v42;
  v43 = *MEMORY[0x277D05348];
  *(inited + 160) = sub_21A451084();
  *(inited + 168) = v44;
  v45 = sub_21A4242FC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v47 = sub_21A3D5FE8(v46);
  v48 = sub_21A3D85E8(v47, v45);

  if ((v48 & 1) == 0)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v80 = sub_21A450F24();
    __swift_project_value_buffer(v80, qword_27CD28C90);

    v69 = sub_21A450F04();
    v81 = sub_21A451584();

    if (!os_log_type_enabled(v69, v81))
    {

      goto LABEL_56;
    }

    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v123[0] = v83;
    *v82 = 136315394;
    v84 = sub_21A4514C4();
    v86 = v85;

    v87 = sub_21A3E2554(v84, v86, v123);

    *(v82 + 4) = v87;
    *(v82 + 12) = 2080;
    v88 = sub_21A450F84();
    v90 = sub_21A3E2554(v88, v89, v123);

    *(v82 + 14) = v90;
    _os_log_impl(&dword_21A3C2000, v69, v81, "Required keys for DPConfig: %s, but got %s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v83, -1, -1);
    v79 = v82;
LABEL_54:
    MEMORY[0x21CEDB220](v79, -1, -1);
LABEL_56:

    goto LABEL_20;
  }

  sub_21A3D7FAC(a1);
  if (v2)
  {
    return;
  }

  v49 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_58:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v91 = sub_21A450F24();
    __swift_project_value_buffer(v91, qword_27CD28C90);
    v20 = sub_21A450F04();
    v21 = sub_21A451584();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Invalid value for SigmaAfterNormalizing";
    goto LABEL_18;
  }

  v51 = sub_21A3DCA2C(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v51, v123);
  sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_58;
  }

  [v121 doubleValue];
  v55 = v54;
  v56 = v54;

  if ((v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  *(v3 + 32) = v55;
  v57 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_63:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v92 = sub_21A450F24();
    __swift_project_value_buffer(v92, qword_27CD28C90);
    v20 = sub_21A450F04();
    v21 = sub_21A451584();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Invalid value for MaxCohortSize";
LABEL_18:
    _os_log_impl(&dword_21A3C2000, v20, v21, v23, v22, 2u);
    MEMORY[0x21CEDB220](v22, -1, -1);
LABEL_19:

LABEL_20:
    sub_21A3D3C88();
    swift_allocError();
    *v24 = 17;
    swift_willThrow();
    return;
  }

  v59 = sub_21A3DCA2C(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v59, v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_63;
  }

  if ([v121 integerValue] < 1)
  {

    goto LABEL_63;
  }

  v62 = sub_21A451084();
  if (!*(a1 + 16))
  {

    goto LABEL_69;
  }

  v64 = sub_21A3DCA2C(v62, v63);
  v66 = v65;

  if ((v66 & 1) == 0)
  {
    goto LABEL_69;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v64, v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  if ([v121 integerValue] < 1 || (v67 = objc_msgSend(v121, sel_integerValue), objc_msgSend(v121, sel_integerValue) < v67))
  {

LABEL_69:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v93 = sub_21A450F24();
    __swift_project_value_buffer(v93, qword_27CD28C90);
    v94 = sub_21A450F04();
    v95 = sub_21A451584();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_21A3C2000, v94, v95, "Invalid value for PopulationSize", v96, 2u);
      MEMORY[0x21CEDB220](v96, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v97 = 17;
    swift_willThrow();

    return;
  }

  v98 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_84:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v108 = sub_21A450F24();
    __swift_project_value_buffer(v108, qword_27CD28C90);
    v109 = sub_21A450F04();
    v110 = sub_21A451584();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_21A3C2000, v109, v110, "Invalid value for NumIterations", v111, 2u);
      MEMORY[0x21CEDB220](v111, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v112 = 17;
    swift_willThrow();

    return;
  }

  v100 = sub_21A3DCA2C(v98, v99);
  v102 = v101;

  if ((v102 & 1) == 0)
  {
    goto LABEL_84;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v100, v123);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_84;
  }

  if ([v121 integerValue] < 1)
  {

    goto LABEL_84;
  }

  v103 = sub_21A451084();
  if (*(a1 + 16))
  {
    v105 = sub_21A3DCA2C(v103, v104);
    v107 = v106;

    if (v107)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v105, v123);
      if (swift_dynamicCast())
      {
        if ([v121 integerValue] >= 2)
        {
          v118 = [v121 integerValue];

          if (v118 <= 32)
          {

            return;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v113 = sub_21A450F24();
  __swift_project_value_buffer(v113, qword_27CD28C90);
  v114 = sub_21A450F04();
  v115 = sub_21A451584();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_21A3C2000, v114, v115, "Invalid value for RenyiOrder", v116, 2u);
    MEMORY[0x21CEDB220](v116, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v117 = 17;
  swift_willThrow();
}

void sub_21A3D7FAC(uint64_t a1)
{
  v3 = *MEMORY[0x277D05360];
  v4 = sub_21A451084();
  if (*(a1 + 16))
  {
    v6 = v1;
    v7 = sub_21A3DCA2C(v4, v5);
    v9 = v8;

    if (v9)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v19);
      sub_21A3D3CDC();
      if (swift_dynamicCast())
      {
        v10 = v20;
        [v20 doubleValue];
        v12 = v11;
        v13 = v11;

        if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          *(v6 + 24) = v12;
          return;
        }
      }
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v14 = sub_21A450F24();
  __swift_project_value_buffer(v14, qword_27CD28C90);
  v15 = sub_21A450F04();
  v16 = sub_21A451584();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21A3C2000, v15, v16, "Invalid value for OverallClippingBound", v17, 2u);
    MEMORY[0x21CEDB220](v17, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v18 = 17;
  swift_willThrow();
}

uint64_t sub_21A3D8190(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PFLTaskPreferences(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16) + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences;
  if (*(v9 + *(v5 + 24)) != 1)
  {
    goto LABEL_10;
  }

  sub_21A3D83D8(v9, v8);
  if (v8[*(v5 + 24)] != 1)
  {
    sub_21A3D843C(v8);
    goto LABEL_10;
  }

  v10 = &v8[*(v5 + 20)];
  LOBYTE(v10) = v10[*(type metadata accessor for PFLDecodableTaskParameters(0) + 44)];
  sub_21A3D843C(v8);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  v11 = *MEMORY[0x277D053B8];
  if (sub_21A451084() == a1 && v12 == a2)
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_21A4519B4();
  }

  return v14 & 1;
}

uint64_t sub_21A3D82DC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_21A3D83D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLTaskPreferences(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A3D843C(uint64_t a1)
{
  v2 = type metadata accessor for PFLTaskPreferences(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A3D8498(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21A451B04();
  sub_21A451144();
  v9 = sub_21A451B24();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21A4519B4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21A3D8A24(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A3D85E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_21A451B04();

      sub_21A451144();
      v16 = sub_21A451B24();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_21A4519B4() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_21A3D87C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  result = sub_21A4516F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21A3D8A24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_21A3D87C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A3D8BA4();
      goto LABEL_16;
    }

    sub_21A3D8D00(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21A451B04();
  sub_21A451144();
  result = sub_21A451B24();
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

      result = sub_21A4519B4();
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
  result = sub_21A451A84();
  __break(1u);
  return result;
}

void *sub_21A3D8BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  v2 = *v0;
  v3 = sub_21A4516E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_21A3D8D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  result = sub_21A4516F4();
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
      sub_21A451B04();

      sub_21A451144();
      result = sub_21A451B24();
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

uint64_t sub_21A3D8F38(uint64_t a1)
{
  v2 = *MEMORY[0x277D053E8];
  v3 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_8:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v9 = sub_21A450F24();
    __swift_project_value_buffer(v9, qword_27CD28C90);
    v10 = sub_21A450F04();
    v11 = sub_21A451584();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21A3C2000, v10, v11, "Invalid version for DediscoV2, expect 2.0", v12, 2u);
      MEMORY[0x21CEDB220](v12, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v13 = 17;
    return swift_willThrow();
  }

  v5 = sub_21A3DCA2C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v5, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v15 == 3157554 && v16 == 0xE300000000000000)
  {
  }

  v14 = sub_21A4519B4();

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_21A3D9128(uint64_t a1)
{
  v2 = *MEMORY[0x277D05408];
  v3 = sub_21A451084();
  if (*(a1 + 16))
  {
    v5 = sub_21A3DCA2C(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v5, v27);
      sub_21A3D3CDC();
      if (swift_dynamicCast())
      {
        [v26 doubleValue];
        if (v8 > 0.0)
        {
          v9 = *MEMORY[0x277D05400];
          v10 = sub_21A451084();
          if (*(a1 + 16))
          {
            v12 = sub_21A3DCA2C(v10, v11);
            v14 = v13;

            if (v14)
            {
              sub_21A3D3B94(*(a1 + 56) + 32 * v12, v27);
              if (swift_dynamicCast())
              {
                v15 = [v26 integerValue];

                if (v15 > 0)
                {
LABEL_23:

                  return;
                }
              }
            }
          }

          else
          {
          }

          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v21 = sub_21A450F24();
          __swift_project_value_buffer(v21, qword_27CD28C90);
          v22 = sub_21A450F04();
          v23 = sub_21A451584();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&dword_21A3C2000, v22, v23, "Invalid value for FractionalBitCount", v24, 2u);
            MEMORY[0x21CEDB220](v24, -1, -1);
          }

          sub_21A3D3C88();
          swift_allocError();
          *v25 = 17;
          swift_willThrow();
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v16 = sub_21A450F24();
  __swift_project_value_buffer(v16, qword_27CD28C90);
  v17 = sub_21A450F04();
  v18 = sub_21A451584();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21A3C2000, v17, v18, "Invalid value for L2NormBoundWithNoise", v19, 2u);
    MEMORY[0x21CEDB220](v19, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v20 = 17;
  swift_willThrow();
}

uint64_t sub_21A3D9470(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455DF0;
  v4 = *MEMORY[0x277D05378];
  *(inited + 32) = sub_21A451084();
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277D053D8];
  *(inited + 48) = sub_21A451084();
  *(inited + 56) = v7;
  v8 = *MEMORY[0x277D053D0];
  *(inited + 64) = sub_21A451084();
  *(inited + 72) = v9;
  v10 = *MEMORY[0x277D053E0];
  *(inited + 80) = sub_21A451084();
  *(inited + 88) = v11;
  v12 = sub_21A4242FC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v14 = sub_21A3D5FE8(v13);

  v15 = sub_21A3D85E8(v14, v12);

  if ((v15 & 1) == 0)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v44 = sub_21A450F24();
    __swift_project_value_buffer(v44, qword_27CD28C90);

    v45 = sub_21A450F04();
    v46 = sub_21A451584();

    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_17;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v84[0] = v48;
    *v47 = 136315394;

    v49 = sub_21A4514C4();
    v51 = v50;

    v52 = sub_21A3E2554(v49, v51, v84);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = sub_21A450F84();
    v55 = sub_21A3E2554(v53, v54, v84);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_21A3C2000, v45, v46, "Required keys for DPConfig: %s, but got %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v48, -1, -1);
    v56 = v47;
    goto LABEL_16;
  }

  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_21A455F00;
  v17 = *MEMORY[0x277D05388];
  *(v16 + 32) = sub_21A451084();
  *(v16 + 40) = v18;
  v19 = *MEMORY[0x277D05380];
  *(v16 + 48) = sub_21A451084();
  *(v16 + 56) = v20;
  v21 = sub_21A4242FC(v16);
  swift_setDeallocating();
  swift_arrayDestroy();

  v22 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_20:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v58 = sub_21A450F24();
    __swift_project_value_buffer(v58, qword_27CD28C90);
    v59 = sub_21A450F04();
    v60 = sub_21A451584();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v84[0] = v62;
      *v61 = 136315138;

      v63 = sub_21A4514C4();
      v65 = v64;

      v66 = sub_21A3E2554(v63, v65, v84);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_21A3C2000, v59, v60, "Invalid keys for DediscoServerConfiguration, expect %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x21CEDB220](v62, -1, -1);
      MEMORY[0x21CEDB220](v61, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v67 = 17;
    swift_willThrow();
  }

  v24 = sub_21A3DCA2C(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v24, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v27 = sub_21A3D5FE8(v85);

  v28 = sub_21A3D85E8(v27, v21);

  if ((v28 & 1) == 0)
  {
    goto LABEL_20;
  }

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_21A455F00;
  v30 = *MEMORY[0x277D05408];
  *(v29 + 32) = sub_21A451084();
  *(v29 + 40) = v31;
  v32 = *MEMORY[0x277D05400];
  *(v29 + 48) = sub_21A451084();
  *(v29 + 56) = v33;
  v34 = sub_21A4242FC(v29);
  swift_setDeallocating();
  swift_arrayDestroy();

  v35 = sub_21A451084();
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v37 = sub_21A3DCA2C(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v37, v84);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v40 = v85;

  v42 = sub_21A3D5FE8(v41);

  v43 = sub_21A3D85E8(v42, v34);

  if ((v43 & 1) == 0)
  {
LABEL_26:

LABEL_27:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v69 = sub_21A450F24();
    __swift_project_value_buffer(v69, qword_27CD28C90);
    v45 = sub_21A450F04();
    v70 = sub_21A451584();
    if (!os_log_type_enabled(v45, v70))
    {
      goto LABEL_17;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v84[0] = v72;
    *v71 = 136315138;

    v73 = sub_21A4514C4();
    v75 = v74;

    v76 = sub_21A3E2554(v73, v75, v84);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_21A3C2000, v45, v70, "Invalid keys for VDAFConfig: expect %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x21CEDB220](v72, -1, -1);
    v56 = v71;
LABEL_16:
    MEMORY[0x21CEDB220](v56, -1, -1);
LABEL_17:

LABEL_18:
    sub_21A3D3C88();
    swift_allocError();
    *v57 = 17;
    swift_willThrow();
  }

  sub_21A3D9128(v40);
  if (v1)
  {
  }

  v77 = sub_21A451084();
  if (!*(a1 + 16))
  {

    goto LABEL_18;
  }

  v79 = sub_21A3DCA2C(v77, v78);
  v81 = v80;

  if ((v81 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v79, v84);
  sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v82 = v85;
  v83 = [v85 integerValue];

  if (v83 <= 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_21A3D9D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CED9BE0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21A3D8498(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t Data.toArray<A>()()
{
  sub_21A4513B4();
  sub_21A450C44();
  return v1;
}

uint64_t sub_21A3D9E60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(*(a3 - 8) + 72);
  if (v5)
  {
    if (a2 - result != 0x8000000000000000 || v5 != -1)
    {
LABEL_5:
      sub_21A451034();
      swift_getWitnessTable();
      result = sub_21A4513C4();
      *a4 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Data.toUnsafeBufferPointer<A>()(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v4 = 0;
    if (v3 != 2)
    {
      goto LABEL_10;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v4) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_16;
  }

  v4 = v4;
LABEL_10:
  v8 = *(*(a3 - 8) + 72);
  if (v8)
  {
    if (v4 != 0x8000000000000000 || v8 != -1)
    {
      MEMORY[0x28223BE20]();
      sub_21A451034();
      sub_21A450C44();
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21A3DA070@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(*(a3 - 8) + 72);
  if (v5)
  {
    if (a2 - result != 0x8000000000000000 || v5 != -1)
    {
LABEL_5:
      sub_21A451014();
      result = sub_21A451024();
      *a4 = result;
      a4[1] = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3DA16C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    v6 = 0;
    return a3(result, v6);
  }

  v5 = *(*(a5 - 8) + 72);
  if (v5)
  {
    if (a2 - result != 0x8000000000000000 || v5 != -1)
    {
      v6 = (a2 - result) / v5;
      return a3(result, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.toData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a2;
  sub_21A3DA2A0(sub_21A3DA26C, v9, a1, a2, MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], a8);
  return v9[4];
}

uint64_t sub_21A3DA26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x21CED93A0](a1, a2, *(v3 + 16));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_21A3DA2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21A3DA4DC(v13, v16, v17, v18, v19, v20, v21, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a6);
  }

  return result;
}

uint64_t Array.toData(noCopy:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 1) == 0)
  {
    return Array.toData()(a2, a3, a2, a3, a5, a6, a7, a8);
  }

  sub_21A451304();
  return v9;
}

uint64_t sub_21A3DA3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21A450C24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CC92A8]);
    result = sub_21A439E78(a1, a2 - a1, v10);
  }

  else
  {
    result = 0;
    v12 = 0xC000000000000000;
  }

  *a3 = result;
  a3[1] = v12;
  return result;
}

uint64_t sub_21A3DA4DC(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a2;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = sub_21A3DA728(v30, v29, a3, a4, a5, a6, a7, v19);
    v17 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v28, v17, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      sub_21A411734(a3);
      v23 = sub_21A451844();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v17);
    if (v24)
    {
      return (*(v13 + 32))(v28, v17, a6);
    }
  }

  return result;
}

uint64_t sub_21A3DA728(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A3DA880(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(v16 + 2);

  v19 = v23;
  result = a1(&v16[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *sub_21A3DA880(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      sub_21A4517B4();
      swift_getWitnessTable();
      v3 = sub_21A451A54();

      objc_setAssociatedObject(v1, MEMORY[0x277D84F90], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t DType.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t sub_21A3DAA18()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t sub_21A3DAA8C()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

unint64_t sub_21A3DAAD4()
{
  result = qword_27CD28490;
  if (!qword_27CD28490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21A3DAC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0xE)
  {
    return sub_21A3DBEF8((a1 + 32), (a1 + 32 + v1));
  }

  v2 = sub_21A450A44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_21A4509E4();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  sub_21A450C34();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_21A3DAD38(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_21A3DBEF8((result + 32), (result + 32 + v2));
      }

      else
      {
        v3 = sub_21A450A44();
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        swift_allocObject();
        sub_21A4509E4();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_21A450C34();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A3DAE00(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_21A3DCA2C(0x65676E6172, 0xE500000000000000);
    if (v5)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v4, v22);
      sub_21A3D3CDC();
      if (swift_dynamicCast())
      {
        v6 = v23;
        if (*(a1 + 16))
        {
          v7 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
          if (v8)
          {
            sub_21A3D3B94(*(a1 + 56) + 32 * v7, v22);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0);
            if (swift_dynamicCast())
            {
              v9 = v23[2];

              if (v9)
              {
                *(v2 + 24) = a1;
                v10 = [v6 BOOLValue];

                *(v2 + 16) = v10;
                return v2;
              }
            }
          }
        }
      }
    }
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v11 = sub_21A450F24();
  __swift_project_value_buffer(v11, qword_27CD28C90);

  v12 = sub_21A450F04();
  v13 = sub_21A451584();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_21A3E2554(0x65676E6172, 0xE500000000000000, v22);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_21A3E2554(0x736D657469, 0xE500000000000000, v22);
    *(v14 + 22) = 2080;
    v16 = sub_21A450F74();
    v18 = v17;

    v19 = sub_21A3E2554(v16, v18, v22);

    *(v14 + 24) = v19;
    _os_log_impl(&dword_21A3C2000, v12, v13, "%s or %s not found in %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v15, -1, -1);
    MEMORY[0x21CEDB220](v14, -1, -1);
  }

  else
  {
  }

  sub_21A3D3C88();
  swift_allocError();
  *v20 = 2;
  swift_willThrow();
  type metadata accessor for DediscoCategoricalMetadataEncoder();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_21A3DB140(uint64_t a1, uint64_t a2, size_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a3)
  {
    v3 = sub_21A451344();
    *(v3 + 16) = a3;
    bzero((v3 + 32), a3);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 24);
  if (!*(v8 + 16))
  {
LABEL_12:
    if (qword_27CD28170 == -1)
    {
LABEL_13:
      v13 = sub_21A450F24();
      __swift_project_value_buffer(v13, qword_27CD28C90);
      v14 = sub_21A450F04();
      v15 = sub_21A451584();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_21A3C2000, v14, v15, "Failed to find categorical items, return all false", v16, 2u);
        MEMORY[0x21CEDB220](v16, -1, -1);
      }

      goto LABEL_16;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  v9 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
  if ((v10 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_21A3D3B94(*(v8 + 56) + 32 * v9, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = sub_21A3DBFB0(a1, a2, v18, a3);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v3 + 16))
  {
    *(v3 + v11 + 32) = 1;
LABEL_16:
    v17 = sub_21A3DAC88(v3);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3DB360(size_t a1, float a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    v7 = a2;
    v6 = MEMORY[0x277D84F90];
    if (a1)
    {
      v2 = sub_21A451344();
      *(v2 + 16) = v4;
      bzero((v2 + 32), v4);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    if ((~LODWORD(v7) & 0x7F800000) == 0 && (LODWORD(v7) & 0x7FFFFF) != 0)
    {
      goto LABEL_43;
    }

    v8 = *(v3 + 24);
    if (!*(v8 + 16))
    {
      goto LABEL_43;
    }

    v9 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
    if ((v10 & 1) == 0)
    {
      goto LABEL_42;
    }

    sub_21A3D3B94(*(v8 + 56) + 32 * v9, v35);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_43:
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v29 = sub_21A450F24();
      __swift_project_value_buffer(v29, qword_27CD28C90);
      v30 = sub_21A450F04();
      v31 = sub_21A451584();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21A3C2000, v30, v31, "Failed to find categorical items or contains NaN, return all false", v32, 2u);
        MEMORY[0x21CEDB220](v32, -1, -1);
      }

      goto LABEL_48;
    }

    v5 = v34;
    if (!(v34 >> 62))
    {
      v11 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_12;
      }

LABEL_24:

      v14 = MEMORY[0x277D84F90];
      v21 = *(MEMORY[0x277D84F90] + 16);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  v11 = sub_21A451844();
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_12:
  v35[0] = v6;
  result = sub_21A3E48BC(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    goto LABEL_51;
  }

  v13 = 0;
  v14 = v35[0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CED9EA0](v13, v5);
    }

    else
    {
      v15 = *(v5 + 8 * v13 + 32);
    }

    v16 = v15;
    [v15 floatValue];
    v18 = v17;

    v35[0] = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21A3E48BC((v19 > 1), v20 + 1, 1);
      v14 = v35[0];
    }

    ++v13;
    *(v14 + 16) = v20 + 1;
    *(v14 + 4 * v20 + 32) = v18;
  }

  while (v11 != v13);

  v21 = *(v14 + 16);
  if (v21)
  {
LABEL_25:
    v22 = 0;
    while (1)
    {
      v23 = *(v14 + 4 * v22 + 32);
      v24 = ~v23 & 0x7F800000;
      v25 = v23 & 0x7FFFFF;
      if (!v24 && v25 != 0)
      {
        break;
      }

      if (v21 == ++v22)
      {
        v27 = 0;
        while (vabds_f32(*(v14 + 32 + 4 * v27), v7) > 0.00000011921)
        {
          if (v21 == ++v27)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_36;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_35:
  v27 = -1;
LABEL_36:

  if (v27 < (v4 - 1))
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = 0;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < *(v2 + 16))
  {
    *(v2 + v28 + 32) = 1;
LABEL_48:
    v33 = sub_21A3DAC88(v2);

    return v33;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_21A3DB70C(uint64_t a1, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2)
  {
    v2 = sub_21A451344();
    *(v2 + 16) = a2;
    bzero((v2 + 32), a2);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v6 = *(v3 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
    if (v8)
    {
      sub_21A3D3B94(*(v6 + 56) + 32 * v7, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
      if (swift_dynamicCast())
      {
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_24:

          goto LABEL_30;
        }

        v10 = 0;
        v25 = a2 - 1;
        v26 = a1 + 32;
        v11 = *(v27 + 16);
        while (1)
        {
          if (v11)
          {
            v12 = 0;
            v13 = (v26 + 16 * v10);
            v14 = *v13;
            v15 = v13[1];
            v16 = (v27 + 40);
            while (1)
            {
              v17 = *(v16 - 1) == v14 && *v16 == v15;
              if (v17 || (sub_21A4519B4() & 1) != 0)
              {
                break;
              }

              ++v12;
              v16 += 2;
              if (v11 == v12)
              {
                goto LABEL_18;
              }
            }

            v18 = v12 < v25 ? v12 + 1 : 0;
          }

          else
          {
LABEL_18:
            v18 = 0;
          }

          if (v18 >= *(v2 + 16))
          {
            break;
          }

          ++v10;
          *(v2 + 32 + v18) = 1;
          if (v10 == v9)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  if (qword_27CD28170 != -1)
  {
LABEL_33:
    swift_once();
  }

  v19 = sub_21A450F24();
  __swift_project_value_buffer(v19, qword_27CD28C90);
  v20 = sub_21A450F04();
  v21 = sub_21A451584();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21A3C2000, v20, v21, "Failed to find categorical items, return all false", v22, 2u);
    MEMORY[0x21CEDB220](v22, -1, -1);
  }

LABEL_30:
  v23 = sub_21A3DAC88(v2);

  return v23;
}

char *sub_21A3DB9AC(uint64_t a1, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v4 = a2;
  v5 = a1;
  v7 = MEMORY[0x277D84F90];
  if (!a2)
  {
    v2 = MEMORY[0x277D84F90];
    v8 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_6:
    v9 = (v5 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10 & 0x7FFFFF;
      if ((~v10 & 0x7F800000) == 0 && v11 != 0)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_13;
      }
    }

LABEL_54:
    if (qword_27CD28170 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  v2 = sub_21A451344();
  *(v2 + 16) = v4;
  bzero((v2 + 32), v4);
  v8 = *(v5 + 16);
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_13:
  v13 = *(v3 + 24);
  if (!*(v13 + 16))
  {
    goto LABEL_54;
  }

  v14 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_21A3D3B94(*(v13 + 56) + 32 * v14, v44);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v6 = v43;
  if (!(v43 >> 62))
  {
    v16 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = sub_21A451844();
  if (v16)
  {
LABEL_18:
    v42 = v5;
    v44[0] = v7;
    result = sub_21A3E48BC(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v19 = v44[0];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CED9EA0](v18, v6);
      }

      else
      {
        v20 = *(v6 + 8 * v18 + 32);
      }

      v21 = v20;
      [v20 floatValue];
      v23 = v22;

      v44[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21A3E48BC((v24 > 1), v25 + 1, 1);
        v19 = v44[0];
      }

      ++v18;
      *(v19 + 16) = v25 + 1;
      *(v19 + 4 * v25 + 32) = v23;
    }

    while (v16 != v18);

    v5 = v42;
    v26 = *(v19 + 16);
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

LABEL_30:

  v19 = MEMORY[0x277D84F90];
  v26 = *(MEMORY[0x277D84F90] + 16);
  if (v26)
  {
LABEL_31:
    v27 = 32;
    v28 = v26;
    while (1)
    {
      v29 = *(v19 + v27);
      v30 = ~v29 & 0x7F800000;
      v31 = v29 & 0x7FFFFF;
      if (!v30 && v31 != 0)
      {
        break;
      }

      v27 += 4;
      if (!--v28)
      {
        goto LABEL_38;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_38:
  v33 = *(v5 + 16);
  if (!v33)
  {
LABEL_52:

    goto LABEL_58;
  }

  v34 = 0;
  while (v26)
  {
    v35 = 0;
    while (vabds_f32(*(v19 + 32 + 4 * v35), *(v5 + 32 + 4 * v34)) > 0.00000011921)
    {
      if (v26 == ++v35)
      {
        goto LABEL_44;
      }
    }

    if (v35 < (v4 - 1))
    {
      goto LABEL_47;
    }

LABEL_49:
    v36 = 0;
LABEL_50:
    if (v36 >= *(v2 + 16))
    {
      goto LABEL_60;
    }

    ++v34;
    *(v2 + 32 + v36) = 1;
    if (v34 == v33)
    {
      goto LABEL_52;
    }
  }

LABEL_44:
  if (!v4)
  {
    goto LABEL_49;
  }

  v35 = -1;
LABEL_47:
  if (v35 >= -1)
  {
    v36 = v35 + 1;
    goto LABEL_50;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_55:
  v37 = sub_21A450F24();
  __swift_project_value_buffer(v37, qword_27CD28C90);
  v38 = sub_21A450F04();
  v39 = sub_21A451584();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21A3C2000, v38, v39, "Failed to find categorical items or contains NaN, return all false", v40, 2u);
    MEMORY[0x21CEDB220](v40, -1, -1);
  }

LABEL_58:
  v41 = sub_21A3DAC88(v2);

  return v41;
}

uint64_t sub_21A3DBDBC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_21A3DBEA8(size_t a1)
{
  v1 = sub_21A413204(0, a1);
  v2 = sub_21A3DAC88(v1);

  return v2;
}

uint64_t sub_21A3DBEF8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A3DBFB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = 0;
    v9 = (a3 + 40);
    while (1)
    {
      result = *(v9 - 1);
      if (result == v7 && *v9 == a2)
      {
        break;
      }

      result = sub_21A4519B4();
      if (result)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v5 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else if (v8 < a4 - 1)
  {
    return v8 + 1;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static E5Utils.calculateModelUpdates<A>(weightNames:initialWeights:updatedWeights:weightNameSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a4;
  v70 = a5;
  v10 = a1;
  v64 = *(a6 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](a1);
  v59 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v13;
  v58 = *(v13 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56[1] = v56 - v15;
  v16 = *(v10 + 16);
  v60 = v10;
  v17 = (v10 + 40);
  v68 = v16;
  v18 = v16 + 1;
  while (--v18)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_19;
    }

    v19 = *(v17 - 1);
    v10 = *v17;

    sub_21A3DCA2C(v19, v10);
    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }

    v74 = v19;
    v75 = v10;

    MEMORY[0x21CED98B0](v69, v70);
    if (!*(a3 + 16))
    {

LABEL_18:

LABEL_19:
      sub_21A3DCAA4();
      swift_allocError();
      *v37 = 44;
      swift_willThrow();
      return v10;
    }

    v17 += 2;
    sub_21A3DCA2C(v74, v75);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v56[0] = v6;
  v65 = a6;
  v23 = sub_21A4513B4();
  v76 = sub_21A450F34();
  v10 = v68;
  v63 = v23;
  if (!v68)
  {
    v66 = 0;
LABEL_22:
    v38 = v65;
    swift_getAssociatedConformanceWitness();
    sub_21A451A64();
    v39 = v59;
    sub_21A451994();
    v10 = sub_21A3DCD0C(v39, v66, v38);
    (*(v64 + 8))(v39, v38);
    v72 = v10;
    v73 = 0;
    v40 = v56[0];
    v41 = v68;
    if (v68)
    {
      v42 = 0;
      v43 = (v60 + 40);
      while (1)
      {
        v68 = v41;
        v10 = *v43;
        v44 = v76;
        v74 = *(v43 - 1);
        v75 = v10;

        sub_21A450FA4();

        v45 = v71;
        if (!v71)
        {

          sub_21A3DCAF8();
          swift_allocError();
          *v55 = 5;
          swift_willThrow();
          goto LABEL_35;
        }

        v70 = v44;
        v46 = v65;
        v47 = sub_21A451374();
        sub_21A451324();
        v48 = v72;
        v49 = (_swift_isClassOrObjCExistentialType() & 1) != 0 ? v48 & 0xFFFFFFFFFFFFFF8 : v48;
        v50 = *(v49 + 16);
        v51 = (_swift_isClassOrObjCExistentialType() & 1) != 0 ? v48 & 0xFFFFFFFFFFFFFF8 : v48;
        v52 = v51 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v74 = v52;
        v75 = v50;
        sub_21A3DC724(&v74, v45, &v73, v47, v46, v67, &v71);
        if (v40)
        {
          break;
        }

        v40 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        sub_21A3DC9D4(&v74, v52, v50);

        v53 = __OFADD__(v42, v47);
        v42 += v47;
        if (v53)
        {
          goto LABEL_43;
        }

        v73 = v42;
        v43 += 2;
        v41 = v68 - 1;
        if (v68 == 1)
        {
          v10 = v72;
          goto LABEL_35;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
      sub_21A3DC9D4(&v74, v52, v50);
      v10 = v72;
    }

LABEL_35:

    return v10;
  }

  v66 = 0;
  v24 = (v60 + 40);
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_39;
    }

    v25 = *(v24 - 1);
    v26 = *v24;

    v27 = sub_21A3DCA2C(v25, v26);
    if ((v28 & 1) == 0)
    {
      goto LABEL_38;
    }

    v29 = *(*(a2 + 56) + 8 * v27);
    v74 = v25;
    v75 = v26;

    MEMORY[0x21CED98B0](v69, v70);
    if (!*(a3 + 16))
    {

LABEL_37:

LABEL_38:

LABEL_39:
      sub_21A3DCAF8();
      swift_allocError();
      *v54 = 5;
      swift_willThrow();
      goto LABEL_35;
    }

    v62 = v25;
    v30 = sub_21A3DCA2C(v74, v75);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_37;
    }

    v61 = v24;
    v33 = *(*(a3 + 56) + 8 * v30);

    v34 = v65;
    v35 = sub_21A4397E8();
    result = sub_21A451374();
    if (__OFADD__(v66, result))
    {
      break;
    }

    v66 += result;
    v72 = sub_21A4397E8();
    static PFLUtils.inplaceSub<A>(_:_:)(&v72, v35, v34, v67);

    v71 = v72;
    v74 = v62;
    v75 = v26;
    sub_21A450F94();
    sub_21A450FB4();

    v24 = v61 + 2;
    if (!--v10)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_21A3DC724(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = sub_21A451614();
  if (!v15)
  {
    sub_21A3DCAF8();
    v19 = swift_allocError();
    *v20 = 0;
    result = swift_willThrow();
    *a7 = v19;
    return result;
  }

  v16 = v15;
  v17 = *a3;

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    if (sub_21A451374())
    {
      sub_21A4517B4();
      swift_getWitnessTable();
      v22 = sub_21A4513C4();
      nullsub_1(v22, a5);
      swift_unknownObjectRetain();
      v18 = MEMORY[0x21CEDA060](v22, a5);

      goto LABEL_14;
    }

    v18 = 0;
  }

  else
  {

    if (_swift_isClassOrObjCExistentialType())
    {
      v18 = ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80)) + (a2 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v18 = a2 + ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80));
    }
  }

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    sub_21A411734(a2);
    swift_unknownObjectRetain();
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  _swift_isClassOrObjCExistentialType();

  if (!v18)
  {
LABEL_13:
    v18 = (~*(*(a5 - 8) + 80) | 0xFFFFFF00);
  }

LABEL_14:
  static PFLUtils.copy<A>(from:to:count:)(v18, v16 + *(*(a5 - 8) + 72) * v17, a4, a5, a6);
  return swift_unknownObjectRelease();
}

void *sub_21A3DC9D4(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        v3 = sub_21A4513B4();
        return nullsub_1(v3, v4);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21A3DCA2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21A451B04();
  sub_21A451144();
  v6 = sub_21A451B24();

  return sub_21A3DCB90(a1, a2, v6);
}

unint64_t sub_21A3DCAA4()
{
  result = qword_27CD28CB0;
  if (!qword_27CD28CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CB0);
  }

  return result;
}

unint64_t sub_21A3DCAF8()
{
  result = qword_27CD28CD0;
  if (!qword_27CD28CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CD0);
  }

  return result;
}

unint64_t sub_21A3DCB4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21A4515D4();

  return sub_21A3DCC48(a1, v5);
}

unint64_t sub_21A3DCB90(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21A4519B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21A3DCC48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21A3DCF08();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21A4515E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_21A3DCD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A451334();
  v16 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    v14 = sub_21A4513B4();
    nullsub_1(v14, v15);
    return v16;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5Utils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for E5Utils(_WORD *result, int a2, int a3)
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

unint64_t sub_21A3DCF08()
{
  result = qword_27CD284B8;
  if (!qword_27CD284B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD284B8);
  }

  return result;
}

uint64_t sub_21A3DCF54(uint64_t result)
{
  if (result)
  {
    v1 = result;
    EspressoError.init(rawValue:)(result + 9150);
    v2 = v8;
    if (v8 == 48)
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v3 = sub_21A450F24();
      __swift_project_value_buffer(v3, qword_27CD28C90);
      v4 = sub_21A450F04();
      v5 = sub_21A451584();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v1;
        _os_log_impl(&dword_21A3C2000, v4, v5, "Unknown E5 code: %u", v6, 8u);
        MEMORY[0x21CEDB220](v6, -1, -1);
      }

      v2 = 27;
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v7 = v2;
    return swift_willThrow();
  }

  return result;
}

int64_t sub_21A3DD0F4(int64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, int64_t, char *))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = MEMORY[0x277D84F90];
    if (result)
    {
      v13 = MEMORY[0x277D84F90];
      sub_21A3E48FC(0, result, 0);
      v7 = v13;
      v8 = *(v13 + 16);
      v9 = v6;
      do
      {
        v10 = *(v13 + 24);
        if (v8 >= v10 >> 1)
        {
          sub_21A3E48FC((v10 > 1), v8 + 1, 1);
        }

        *(v13 + 16) = v8 + 1;
        *(v13 + 8 * v8++ + 32) = 0;
        --v9;
      }

      while (v9);
    }

    v11 = *(a2 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21A408AA4(0, *(v7 + 2), 0, v7);
    }

    v12 = a3(v11, v6, v7 + 32);
    sub_21A3DCF54(v12);
    if (v3)
    {
    }

    return v7;
  }

  return result;
}

void *EspressoE5Trainer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v2[4] = 1;
  v2[5] = v3;
  v2[6] = v3;
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C0, &qword_21A456150);
  swift_allocObject();
  v2[3] = sub_21A3DE548(0x676E696E7261656CLL, 0xEF305F657461725FLL, 1953066601, 0xE400000000000000);
  return v2;
}

void *EspressoE5Trainer.init(_:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v1[4] = 1;
  v1[5] = v2;
  v1[6] = v2;
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C0, &qword_21A456150);
  swift_allocObject();
  v1[3] = sub_21A3DE548(0x676E696E7261656CLL, 0xEF305F657461725FLL, 1953066601, 0xE400000000000000);
  return v1;
}

uint64_t sub_21A3DD368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = v6[5];
  v6[5] = a4;

  v11 = v6[6];
  v6[6] = a5;
  v93 = a4;

  v89 = v6;
  v6[4] = v9;
  if ((v9 - 1) > 2)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(&off_278253710 + v9 - 1);
  }

  v13 = *(v12 + 16);
  v90 = a5;

  v96 = v13;
  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v14 = 0;
  v91 = v13 - 1;
  v15 = MEMORY[0x277D84F90];
  while (2)
  {
    v16 = (v12 + 40 + 16 * v14);
    v17 = v14;
    while (1)
    {
      if (v17 >= *(v12 + 16))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        result = sub_21A451A94();
        __break(1u);
        return result;
      }

      v18 = *(v16 - 1);
      v19 = *v16;
      if (v18 != 1953066601 || v19 != 0xE400000000000000)
      {
        v21 = *(v16 - 1);
        v22 = *v16;
        v13 = v96;
        if ((sub_21A4519B4() & 1) == 0)
        {
          break;
        }
      }

      ++v17;
      v16 += 2;
      if (v13 == v17)
      {
        goto LABEL_21;
      }
    }

    v23 = v15;
    v98 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21A3E48DC(0, *(v15 + 16) + 1, 1);
      v23 = v15;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v26 = v23;
    v13 = v96;
    if (v25 >= v24 >> 1)
    {
      sub_21A3E48DC((v24 > 1), v25 + 1, 1);
      v13 = v96;
      v26 = v98;
    }

    v14 = v17 + 1;
    *(v26 + 16) = v25 + 1;
    v27 = v26 + 16 * v25;
    *(v27 + 32) = v18;
    *(v27 + 40) = v19;
    v15 = v26;
    if (v91 != v17)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v95 = v12;
  v28 = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28558, &unk_21A4575A0);
  v92 = *(v15 + 16);
  if (v92)
  {
    v29 = 0;
    v30 = (v15 + 40);
    do
    {
      if (v29 >= *(v15 + 16))
      {
        goto LABEL_71;
      }

      v34 = *(v30 - 1);
      v33 = *v30;

      v35 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = sub_21A3DCA2C(v34, v33);
      v39 = v35[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_72;
      }

      v42 = v37;
      if (v35[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v35;
          if (v37)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_21A3E4410(&qword_27CD28558, &unk_21A4575A0);
          v28 = v35;
          if (v42)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_21A3E3588(v41, isUniquelyReferenced_nonNull_native, &qword_27CD28558, &unk_21A4575A0);
        v43 = sub_21A3DCA2C(v34, v33);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_78;
        }

        v38 = v43;
        v28 = v35;
        if (v42)
        {
LABEL_23:
          v31 = v28[7];
          v32 = *(v31 + 8 * v38);
          *(v31 + 8 * v38) = v93;

          goto LABEL_24;
        }
      }

      v28[(v38 >> 6) + 8] |= 1 << v38;
      v45 = (v28[6] + 16 * v38);
      *v45 = v34;
      v45[1] = v33;
      *(v28[7] + 8 * v38) = v93;
      v46 = v28[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_76;
      }

      v28[2] = v48;

LABEL_24:
      ++v29;
      v30 += 2;
    }

    while (v92 != v29);
  }

  v94 = v28;

  v49 = v96;
  if (v96)
  {
    v50 = 0;
    v51 = MEMORY[0x277D84F90];
    do
    {
      v52 = (v95 + 40 + 16 * v50);
      v53 = v50;
      while (1)
      {
        if (v53 >= *(v95 + 16))
        {
          goto LABEL_73;
        }

        v54 = *(v52 - 1);
        v55 = *v52;
        if (v54 != 1953066601 || v55 != 0xE400000000000000)
        {
          v57 = *(v52 - 1);
          v58 = *v52;
          v59 = sub_21A4519B4();
          v49 = v96;
          if ((v59 & 1) == 0)
          {
            break;
          }
        }

        ++v53;
        v52 += 2;
        if (v49 == v53)
        {
          goto LABEL_54;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3E48DC(0, v51[2] + 1, 1);
      }

      v61 = v51[2];
      v60 = v51[3];
      v49 = v96;
      if (v61 >= v60 >> 1)
      {
        sub_21A3E48DC((v60 > 1), v61 + 1, 1);
        v49 = v96;
      }

      v50 = v53 + 1;
      v51[2] = v61 + 1;
      v62 = &v51[2 * v61];
      v62[4] = v54;
      v62[5] = v55;
    }

    while (v96 - 1 != v53);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

LABEL_54:
  v63 = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28558, &unk_21A4575A0);
  v97 = v51[2];
  if (v97)
  {
    v64 = 0;
    v65 = v51 + 5;
    while (1)
    {
      if (v64 >= v51[2])
      {
        goto LABEL_74;
      }

      v69 = *(v65 - 1);
      v68 = *v65;

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v71 = sub_21A3DCA2C(v69, v68);
      v73 = v63[2];
      v74 = (v72 & 1) == 0;
      v47 = __OFADD__(v73, v74);
      v75 = v73 + v74;
      if (v47)
      {
        goto LABEL_75;
      }

      v76 = v72;
      if (v63[3] < v75)
      {
        break;
      }

      if (v70)
      {
        goto LABEL_64;
      }

      v81 = v71;
      sub_21A3E4410(&qword_27CD28558, &unk_21A4575A0);
      v71 = v81;
      if (v76)
      {
LABEL_56:
        v66 = v63[7];
        v67 = *(v66 + 8 * v71);
        *(v66 + 8 * v71) = v90;

        goto LABEL_57;
      }

LABEL_65:
      v63[(v71 >> 6) + 8] |= 1 << v71;
      v78 = (v63[6] + 16 * v71);
      *v78 = v69;
      v78[1] = v68;
      *(v63[7] + 8 * v71) = v90;
      v79 = v63[2];
      v47 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v47)
      {
        goto LABEL_77;
      }

      v63[2] = v80;

LABEL_57:
      ++v64;
      v65 += 2;
      if (v97 == v64)
      {
        goto LABEL_69;
      }
    }

    sub_21A3E3588(v75, v70, &qword_27CD28558, &unk_21A4575A0);
    v71 = sub_21A3DCA2C(v69, v68);
    if ((v76 & 1) != (v77 & 1))
    {
      goto LABEL_78;
    }

LABEL_64:
    if (v76)
    {
      goto LABEL_56;
    }

    goto LABEL_65;
  }

LABEL_69:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C8, &qword_21A456158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455F00;
  *(inited + 32) = 0x6E69617274;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a6;
  *(inited + 56) = 0x64726177726F66;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = a6;
  swift_bridgeObjectRetain_n();
  v83 = sub_21A3E56A4(inited, &qword_27CD28558, &unk_21A4575A0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284D0, &qword_21A456160);
  swift_arrayDestroy();
  v84 = v89[3];
  sub_21A3DE664(a1, a2, v95, v94, v63, v83);

  return sub_21A3E52C8(&off_282B3F978);
}

uint64_t sub_21A3DDB5C(uint64_t a1, unint64_t a2)
{
  v5 = *(*(v2 + 24) + 96);

  v7 = sub_21A3E49FC(v6);

  v8 = sub_21A3E5BA8(v7, v2, a1);

  sub_21A3DF0E4(v8, a2 | ((HIDWORD(a2) & 1) << 32));
}

uint64_t sub_21A3DDC1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = *(a1 + 40);

  v4 = sub_21A3E5594(MEMORY[0x277D84F90]);
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_16:

    *a3 = v4;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 40);
  while (v6 < *(v3 + 16))
  {
    v9 = *(v7 - 1);
    v8 = *v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_21A3DCA2C(v9, v8);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_21A3E301C(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_21A3DCA2C(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v11;
    sub_21A3E4118();
    v11 = v22;
    if (v17)
    {
LABEL_3:
      *(v4[7] + 8 * v11) = a2;

      goto LABEL_4;
    }

LABEL_12:
    v4[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v4[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    *(v4[7] + 8 * v11) = a2;
    v20 = v4[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v4[2] = v21;
LABEL_4:
    ++v6;
    v7 += 2;
    if (v5 == v6)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A3DDDE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 120);

  if (v2 == 2)
  {
    v6 = 0x6E69617274;
    v7 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x64726177726F66;
    v7 = 0xE700000000000000;
  }

  v8 = sub_21A3E647C(v6, v7, v4, v5);

  return v8;
}

uint64_t sub_21A3DDE84(uint64_t *a1)
{
  v7 = *a1;
  v2 = sub_21A3DE164(&v7);
  v3 = *(v1 + 24);
  v5 = sub_21A3DF500(v2, v4);

  return v5;
}

void *sub_21A3DE0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[4];
  if (v4)
  {
    if (v4 == 1)
    {
      v8 = 1852399981;
    }

    else
    {
      v8 = 0x64726177726F66;
    }

    if (v4 == 1)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = v3[3];
    v3 = sub_21A3E0BB4(v8, v9, a1, a2, a3);
  }

  else
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v5 = 47;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_21A3DE164(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  if ((*a1 & ~v3) == 0)
  {
    result = 0x6E69617274;
    if (v3 == v2)
    {
      if (v2 == 2)
      {
        return result;
      }

      if (v2 == 1)
      {
        return 1852399981;
      }
    }

    else
    {
      if (v2 == 2)
      {
        return result;
      }

      if (v2 == 1)
      {
        return 0x64726177726F66;
      }
    }
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v5 = 47;
  return swift_willThrow();
}

void *EspressoE5Trainer.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t EspressoE5Trainer.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_21A3DE2B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for EspressoE5Trainer();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v4[4] = 1;
  v4[5] = v5;
  v4[6] = v5;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C0, &qword_21A456150);
  swift_allocObject();
  result = sub_21A3DE548(0x676E696E7261656CLL, 0xEF305F657461725FLL, 1953066601, 0xE400000000000000);
  v4[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_21A3DE388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = 1;
  return sub_21A3DD368(a1, a2, &v7, a3, a4, MEMORY[0x277D84F90]);
}

uint64_t sub_21A3DE3C8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*(*v2 + 24) + 96);

  v8 = sub_21A3E49FC(v7);

  v9 = sub_21A3E5BA8(v8, v5, a1);

  sub_21A3DF0E4(v9, a2 | ((HIDWORD(a2) & 1) << 32));
}

uint64_t sub_21A3DE548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 60) = 1;
  v9 = MEMORY[0x277D84F90];
  *(v4 + 64) = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 72) = sub_21A3E56A4(v9, &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 80) = sub_21A3E56A4(v9, &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 88) = sub_21A3E56A4(v9, &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 96) = sub_21A3E5498(v9, &qword_27CD28520, &unk_21A456220);
  *(v4 + 104) = sub_21A3E56A4(v9, &qword_27CD28528, &qword_21A456230);
  *(v4 + 112) = 0;
  *(v4 + 120) = sub_21A3E5498(v9, &qword_27CD28CF0, &unk_21A459110);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_21A3DE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v116 = *MEMORY[0x277D85DE8];
  type metadata accessor for E5Library();
  swift_allocObject();

  result = E5Library.init(modelPath:devices:cachePath:functions:)();
  if (v7)
  {
    goto LABEL_63;
  }

  v99 = a3;
  v109 = result;
  v112 = 0;
  v14 = v6[8];
  v6[8] = a4;

  v15 = v6[9];
  v6[9] = a5;

  v16 = v6[10];
  v6[10] = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28558, &unk_21A4575A0);
  v17 = sub_21A451854();
  v18 = v17;
  v19 = 0;
  v20 = *(a6 + 64);
  v100 = a6 + 64;
  v21 = 1 << *(a6 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v103 = a6;
  v104 = v17 + 64;
  v110 = v8;
  v101 = v24;
  v102 = v17;
  if ((v22 & v20) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v19 >= v24)
    {
      break;
    }

    v27 = *(v100 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v23 = (v27 - 1) & v27;
      while (2)
      {
        v28 = v25 | (v19 << 6);
        v29 = (*(a6 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        v32 = *(*(a6 + 56) + 8 * v28);
        v33 = *(v32 + 16);
        if (v33)
        {
          v107 = *v29;
          v108 = v28;
          v111 = v23;
          v113 = MEMORY[0x277D84F90];
          v106 = v30;

          sub_21A3E48DC(0, v33, 0);
          v34 = v32;
          v35 = v113;
          v105 = v34;
          v36 = (v34 + 40);
          do
          {
            v37 = *v36;
            v114 = *(v36 - 1);
            v115 = v37;
            swift_bridgeObjectRetain_n();
            MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);

            v38 = v114;
            v113 = v35;
            v40 = *(v35 + 16);
            v39 = *(v35 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_21A3E48DC((v39 > 1), v40 + 1, 1);
              v35 = v113;
            }

            *(v35 + 16) = v40 + 1;
            v41 = v35 + 16 * v40;
            *(v41 + 32) = v38;
            *(v41 + 40) = v37;
            v36 += 2;
            --v33;
          }

          while (v33);

          v8 = v110;
          v23 = v111;
          v18 = v102;
          a6 = v103;
          v24 = v101;
          v31 = v107;
          v28 = v108;
          v42 = v106;
        }

        else
        {

          v35 = MEMORY[0x277D84F90];
        }

        *(v104 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v43 = (v18[6] + 16 * v28);
        *v43 = v31;
        v43[1] = v42;
        *(v18[7] + 8 * v28) = v35;
        v44 = v18[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (!v45)
        {
          v18[2] = v46;
          if (!v23)
          {
            goto LABEL_6;
          }

LABEL_5:
          v25 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          continue;
        }

        break;
      }

LABEL_68:
      __break(1u);
      __break(1u);
LABEL_69:
      __break(1u);
    }
  }

  v47 = v8[11];
  v8[11] = v18;

  v48 = *(v99 + 16);
  if (v48)
  {
    v49 = 0;
    v50 = v99 + 40;
    v51 = MEMORY[0x277D84F90];
    do
    {
      v52 = (v50 + 16 * v49);
      v53 = v49;
      while (1)
      {
        if (v53 >= v48)
        {
          goto LABEL_65;
        }

        v49 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_66;
        }

        v54 = *(v52 - 1);
        v55 = *v52;
        if (v54 != v8[4] || v55 != v8[5])
        {
          v57 = *(v52 - 1);
          v58 = *v52;
          if ((sub_21A4519B4() & 1) == 0)
          {
            break;
          }
        }

        ++v53;
        v52 += 2;
        if (v49 == v48)
        {
          goto LABEL_39;
        }
      }

      v114 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3E48DC(0, v51[2] + 1, 1);
        v51 = v114;
      }

      v59 = v51;
      v60 = v51[2];
      v61 = v59[3];
      if (v60 >= v61 >> 1)
      {
        sub_21A3E48DC((v61 > 1), v60 + 1, 1);
        v59 = v114;
      }

      v59[2] = v60 + 1;
      v62 = &v59[2 * v60];
      v62[4] = v54;
      v62[5] = v55;
      v51 = v59;
    }

    while (v49 != v48);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

LABEL_39:
  v63 = sub_21A3E5498(MEMORY[0x277D84F90], &qword_27CD28520, &unk_21A456220);
  v107 = v51[2];
  if (v107)
  {
    v64 = v51 + 5;
    v108 = v51;
    if (v51[2])
    {
      v65 = v51[4];
      v66 = *v64;
      type metadata accessor for E5Function();
      swift_allocObject();
      v114 = 0;

      v67 = e5rt_execution_stream_create();
      sub_21A3DCF54(v67);

      if (v112)
      {
      }

      else
      {
        sub_21A3DCAF8();
        swift_allocError();
        *v93 = 6;
        swift_willThrow();
      }

      swift_deallocPartialClassInstance();
      goto LABEL_62;
    }

LABEL_67:
    __break(1u);
    __break(1u);
    goto LABEL_68;
  }

  v68 = v8[12];
  v8[12] = v63;

  v70 = v8[5];
  v114 = v8[4];
  v115 = v70;
  MEMORY[0x28223BE20](v69);
  v98[2] = &v114;
  v71 = v112;
  if (sub_21A4412B8(sub_21A3E7614, v98, v99))
  {
    v72 = v109;
    v73 = sub_21A44BF20();
    v74 = v71;
    if (v71)
    {
LABEL_56:

      goto LABEL_63;
    }

    v75 = v8[14];
    v8[14] = v73;
  }

  else
  {
    v74 = v71;
    v72 = v109;
  }

  v76 = v8[6];
  v8[6] = v72;

  v77 = v8[14];
  if (!v77)
  {
    goto LABEL_56;
  }

  v78 = v8[14];

  v79 = sub_21A404940();
  v80 = v79;
  v112 = v79[2];
  if (v112)
  {
    v81 = 0;
    v82 = v79 + 5;
    while (1)
    {
      if (v81 >= v80[2])
      {
        goto LABEL_69;
      }

      v83 = *(v82 - 1);
      v84 = *v82;
      v114 = 0;
      v85 = *(v77 + 40);
      sub_21A4510E4();

      v86 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v86);
      if (v74)
      {

        goto LABEL_62;
      }

      v87 = v114;
      if (!v114)
      {
        break;
      }

      LOBYTE(v114) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v88 = sub_21A425138(v87, &v114);
      ++v81;
      swift_beginAccess();

      v89 = *(v77 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = *(v77 + 56);
      *(v77 + 56) = 0x8000000000000000;
      sub_21A403158(v88, v83, v84, isUniquelyReferenced_nonNull_native);

      *(v77 + 56) = v113;
      swift_endAccess();

      v82 += 2;
      if (v112 == v81)
      {
        goto LABEL_54;
      }
    }

    sub_21A3DCAF8();
    swift_allocError();
    *v96 = 6;
    swift_willThrow();
  }

  else
  {
LABEL_54:

    v91 = sub_21A3E536C(MEMORY[0x277D84F90]);
    v92 = sub_21A40765C(v91);
    if (v74)
    {
    }

    else
    {
      v94 = v92;

      v95 = v110[15];
      v110[15] = v94;
    }
  }

LABEL_62:

LABEL_63:
  v97 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A3DF0E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  *(v2 + 104) = a1;

  swift_beginAccess();
  *(v2 + 56) = a2;
  v49 = v2;
  *(v2 + 60) = BYTE4(a2) & 1;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
LABEL_5:
  while (v8)
  {
LABEL_10:
    v13 = 0;
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(*(a1 + 56) + ((v11 << 9) | (8 * v14)));
    v16 = 1 << *(v15 + 32);
    v17 = (v16 + 63) >> 6;
    v18 = 64;
    while (1)
    {
      v19 = *(v15 + v18);
      if (v19)
      {
        break;
      }

      v13 -= 64;
      v18 += 8;
      if (!--v17)
      {
        goto LABEL_5;
      }
    }

    v20 = __clz(__rbit64(v19));
    if (v20 - v16 != v13)
    {
      result = sub_21A4116E4(v20 - v13, *(v15 + 36), 0, v15);
      v21 = 0;
      if (v16 < 64)
      {
        v22 = ~(-1 << v16);
      }

      else
      {
        v22 = -1;
      }

      v23 = *(v15 + 64) & v22;
      while (v23)
      {
        v24 = v21;
LABEL_25:
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        if (*(*(v15 + 56) + ((v24 << 9) | (8 * v25))) != result)
        {
          sub_21A3DCAA4();
          swift_allocError();
          *v26 = 46;
          swift_willThrow();
        }
      }

      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v24 >= ((v16 + 63) >> 6))
        {
          goto LABEL_5;
        }

        v23 = *(v15 + 64 + 8 * v24);
        ++v21;
        if (v23)
        {
          v21 = v24;
          goto LABEL_25;
        }
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  v27 = v49;
  v28 = *(v49 + 96);
  v29 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 64);
  v33 = (v30 + 63) >> 6;
  v34 = *(v49 + 96);
  result = swift_bridgeObjectRetain_n();
  v35 = 0;
  v50 = v28;
  while (v32)
  {
    v36 = v32;
LABEL_38:
    v32 = (v36 - 1) & v36;
    v38 = *(v27 + 104);
    if (*(v38 + 16))
    {
      v51 = (v36 - 1) & v36;
      v39 = __clz(__rbit64(v36)) | (v35 << 6);
      v40 = (*(v28 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(*(v28 + 56) + 8 * v39);

      v44 = sub_21A3DCA2C(v42, v41);
      if (v45)
      {
        v46 = *(*(v38 + 56) + 8 * v44);

        v47 = sub_21A3E18F4(v43, v42, v41, v46);
        if (v52)
        {
        }

        v48 = v47;

        v28 = v50;
        if (*(v48 + 16))
        {
          sub_21A404DB4();
        }

        v27 = v49;
      }

      else
      {
        v28 = v50;
      }

      v32 = v51;
    }
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v33)
    {

      return sub_21A3E2418();
    }

    v36 = *(v29 + 8 * v37);
    ++v35;
    if (v36)
    {
      v35 = v37;
      goto LABEL_38;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_21A3DF500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21A450C24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 96);
  if (!*(v11 + 16))
  {
    return sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  }

  v12 = sub_21A3DCA2C(a1, a2);
  if ((v13 & 1) == 0)
  {

    return sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v15 = *(v3 + 72);
  if (!*(v15 + 16))
  {
LABEL_31:

    return sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  }

  v16 = *(v3 + 72);

  v17 = sub_21A3DCA2C(a1, a2);
  if ((v18 & 1) == 0)
  {

    goto LABEL_31;
  }

  v19 = *(*(v15 + 56) + 8 * v17);

  v20 = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  v21 = *(v19 + 16);
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = 0;
  v71 = (v7 + 8);
  v72 = (v7 + 104);
  v70 = *MEMORY[0x277CC92A8];
  v23 = v19 + 40;
  v68 = v21 - 1;
  v69 = v19 + 40;
  v73 = v6;
  while (2)
  {
    v24 = (v23 + 16 * v22);
    v25 = v22;
    while (1)
    {
      if (v25 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v26 = *(v24 - 1);
      v27 = *v24;
      swift_beginAccess();
      v28 = *(v14 + 56);
      if (*(v28 + 16))
      {
        break;
      }

LABEL_8:
      ++v25;
      v24 += 2;
      if (v21 == v25)
      {
        goto LABEL_28;
      }
    }

    v29 = sub_21A3DCA2C(v26, v27);
    if ((v30 & 1) == 0)
    {

      goto LABEL_8;
    }

    v31 = *(*(v28 + 56) + 8 * v29);

    v32 = *(v31 + 32);
    v34 = *(v32 + 24);
    v33 = *(v32 + 32);
    v64[3] = v31;
    v65 = v34;
    v74 = v33;
    v35 = v73;
    (*v72)(v10, v70, v73);

    v66 = v32;

    v36 = sub_21A450C14();
    v67 = v37;
    if (v74)
    {
      v64[2] = v36;
      v38 = sub_21A450A44();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      v64[1] = swift_allocObject();

      v41 = sub_21A4509D4();
      v42 = sub_21A450A34();
      *v43 |= 0x8000000000000000;
      v42(&v75, 0);
      v65 = sub_21A439D94(v41, v74);
      v74 = v44;
    }

    else
    {
      v45 = sub_21A450C14();
      v45(v65, 0);

      v65 = 0;
      v74 = 0xC000000000000000;
    }

    (*v71)(v10, v35);
    v46 = v65;
    v67 = sub_21A44D62C(v65, v74);
    sub_21A3E759C(v46, v74);

    LODWORD(v74) = swift_isUniquelyReferenced_nonNull_native();
    v75 = v20;
    v48 = sub_21A3DCA2C(v26, v27);
    v49 = v20[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20[3] >= v51)
    {
      if (v74)
      {
        v20 = v75;
        if ((v47 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LODWORD(v74) = v47;
        v58 = v48;
        sub_21A3E4410(&qword_27CD28510, &qword_21A456210);
        v48 = v58;
        v20 = v75;
        if ((v74 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v52 = v47;
      sub_21A3E3588(v51, v74, &qword_27CD28510, &qword_21A456210);
      v53 = sub_21A3DCA2C(v26, v27);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_37;
      }

      v48 = v53;
      v55 = v52;
      v20 = v75;
      if ((v55 & 1) == 0)
      {
LABEL_25:
        v20[(v48 >> 6) + 8] |= 1 << v48;
        v59 = (v20[6] + 16 * v48);
        *v59 = v26;
        v59[1] = v27;
        *(v20[7] + 8 * v48) = v67;
        v60 = v20[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (!v61)
        {
          v20[2] = v62;

          goto LABEL_27;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_21A451A94();
        __break(1u);
        return result;
      }
    }

    v56 = v20[7];
    v57 = *(v56 + 8 * v48);
    *(v56 + 8 * v48) = v67;

    swift_bridgeObjectRelease_n();

LABEL_27:
    v22 = v25 + 1;
    v23 = v69;
    if (v68 != v25)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return v20;
}

uint64_t sub_21A3DFA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, char a8)
{
  v10 = v8;
  __B[4] = *MEMORY[0x277D85DE8];
  v11 = v8[12];
  if (!*(v11 + 16))
  {
    goto LABEL_12;
  }

  v18 = sub_21A3DCA2C(a1, a2);
  if ((v19 & 1) == 0)
  {

LABEL_12:
    sub_21A3DCAA4();
    swift_allocError();
    *v36 = 18;
    result = swift_willThrow();
    goto LABEL_22;
  }

  v177 = *(*(v11 + 56) + 8 * v18);

  v20 = v10[13];
  if (!*(v20 + 16))
  {
LABEL_14:
    sub_21A3DCAA4();
    swift_allocError();
    v38 = 46;
LABEL_20:
    *v37 = v38;
    swift_willThrow();
    goto LABEL_21;
  }

  v21 = v10[13];

  v22 = sub_21A3DCA2C(a1, a2);
  if ((v23 & 1) == 0)
  {

    goto LABEL_14;
  }

  v175 = a7;
  v24 = *(*(v20 + 56) + 8 * v22);

  v25 = v10[10];
  if (!*(v25 + 16))
  {
LABEL_19:

    sub_21A3DCAA4();
    swift_allocError();
    v38 = 44;
    goto LABEL_20;
  }

  v26 = v10[10];

  v27 = sub_21A3DCA2C(a1, a2);
  if ((v28 & 1) == 0 || (v174 = v24, v29 = *(*(v25 + 56) + 8 * v27), , , v30 = v10[11], !*(v30 + 16)))
  {
LABEL_18:

    goto LABEL_19;
  }

  v173 = v29;

  v31 = sub_21A3DCA2C(a1, a2);
  if ((v32 & 1) == 0)
  {

    goto LABEL_18;
  }

  v33 = *(*(v30 + 56) + 8 * v31);

  v34 = sub_21A3E70C8(v174);
  if (v9)
  {

    goto LABEL_22;
  }

  v166 = v33;
  v40 = v34;
  result = sub_21A3E71C0(a3, a4, a5, v174, v177, v34);
  if (!v40)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
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
    goto LABEL_168;
  }

  if (a5 == 0x8000000000000000 && v40 == -1)
  {
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
    return result;
  }

  v139 = v40;
  v152 = a5 / v40;
  v41 = sub_21A4113F8(0, a5 / v40, 1);
  if (a8)
  {
    v42 = v10[10];
    v43 = v10[15];

    v150 = sub_21A3E647C(a1, a2, v42, v43);
  }

  else
  {
    v150 = MEMORY[0x277D84F90];
  }

  result = a3;
  if (!a6)
  {

    goto LABEL_137;
  }

  if (v152 < 0)
  {
    goto LABEL_169;
  }

  v44 = 0;
  v148 = MEMORY[0x277D84F90];
  while (1)
  {
    v137 = v44;
    if (a8)
    {

      v45 = *(v150 + 16);
      if (v45)
      {
        v46 = *(v150 + 16);
        v47 = sub_21A451344();
        *(v47 + 16) = v45;
        v148 = v47;
        bzero((v47 + 32), 4 * v45);
      }

      else
      {
        v148 = MEMORY[0x277D84F90];
      }

      result = a3;
    }

    if (v175)
    {
      v48 = *(v41 + 16);
      v49 = v48 - 2;
      if (v48 >= 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_21A410FA4(v41);
        }

        v50 = 0;
        v159 = v41 + 32;
        v163 = v41;
        v167 = v48 - 2;
        do
        {
          v52 = v50;
          __B[0] = 0;
          MEMORY[0x21CEDB240](__B, 8);
          v53 = (__B[0] * v48) >> 64;
          if (v48 > __B[0] * v48)
          {
            v54 = -v48 % v48;
            if (v54 > __B[0] * v48)
            {
              do
              {
                __B[0] = 0;
                MEMORY[0x21CEDB240](__B, 8);
              }

              while (v54 > __B[0] * v48);
              v53 = (__B[0] * v48) >> 64;
            }

            v49 = v167;
          }

          v55 = __OFADD__(v52, v53);
          v56 = v52 + v53;
          result = a3;
          if (v55)
          {
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
          }

          if (v52 != v56)
          {
            v57 = *(v163 + 16);
            if (v52 >= v57)
            {
              goto LABEL_153;
            }

            if (v56 >= v57)
            {
              goto LABEL_154;
            }

            v51 = *(v159 + 8 * v52);
            *(v159 + 8 * v52) = *(v159 + 8 * v56);
            *(v159 + 8 * v56) = v51;
          }

          --v48;
          v50 = v52 + 1;
        }

        while (v52 != v49);
        v41 = v163;
      }
    }

    if (v152)
    {
      v58 = 0;
      v142 = v41 + 32;
      v164 = v41;
      while (1)
      {
        v146 = v58;
        v138 = v58 + 1;
        v59 = 1 << *(result + 32);
        v60 = v59 < 64 ? ~(-1 << v59) : -1;
        v61 = v60 & *(result + 64);
        v62 = (v59 + 63) >> 6;

        v63 = 0;
        v143 = v62;
        v64 = a3 + 64;
        if (v61)
        {
          break;
        }

LABEL_63:
        v65 = a3;
        while (1)
        {
          v66 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            __break(1u);

            goto LABEL_22;
          }

          if (v66 >= v62)
          {
            break;
          }

          v61 = *(v64 + 8 * v66);
          ++v63;
          if (v61)
          {
            v63 = v66;
            goto LABEL_68;
          }
        }

        v85 = sub_21A3E536C(MEMORY[0x277D84F90]);
        v86 = sub_21A40765C(v85);

        v41 = v164;
        if (a8)
        {
          v87 = v10[11];

          v88 = sub_21A3E647C(a1, a2, v87, v86);

          v89 = *(v88 + 16);
          if (v89 >> 31)
          {
            goto LABEL_176;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_21A407D80(0, v89, 0, v88);
          }

          cblas_saxpy_NEWLAPACK();
          v169 = *(v148 + 16);

          v90 = v148;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_21A407D80(0, v169, 0, v148);
          }

          MEMORY[0x21CEDB360](v148 + 32, 1, v88 + 32, 1, v90 + 32, 1, v169);

          v148 = v90;
          v41 = v164;
        }

        else
        {
          v91 = v173;
          v144 = *(v173 + 16);
          if (v144)
          {
            v92 = 0;
            v93 = 0;
            v141 = v86;
            while (1)
            {
              if (v93 >= *(v91 + 16))
              {
                goto LABEL_164;
              }

              v94 = *(v166 + 16);
              if (v93 == v94)
              {
                goto LABEL_111;
              }

              if (v93 >= v94)
              {
                goto LABEL_165;
              }

              v157 = v93;
              if (!v86[2])
              {

                goto LABEL_150;
              }

              v154 = *(v91 + v92 + 32);
              v147 = v92;
              v95 = *(v166 + v92 + 32);
              v96 = *(v166 + v92 + 40);
              v161 = *(v91 + v92 + 40);

              v97 = sub_21A3DCA2C(v95, v96);
              v170 = v98;

              if ((v170 & 1) == 0)
              {

                goto LABEL_149;
              }

              v99 = v86[7];
              v100 = v10[15];
              v101 = *(v100 + 16);
              v171 = *(v99 + 8 * v97);

              if (!v101)
              {
                break;
              }

              v102 = sub_21A3DCA2C(v154, v161);
              v155 = v103;

              if ((v155 & 1) == 0)
              {
                break;
              }

              v104 = *(*(v100 + 56) + 8 * v102);

              v105 = *(v171 + 32);
              if (v105 >= 0)
              {
                v106 = *(v171 + 32);
              }

              if (v105 < 0xFFFFFFFDFFFFFFFDLL)
              {
                goto LABEL_166;
              }

              if (v105 > 0x1FFFFFFFFLL)
              {
                goto LABEL_167;
              }

              v107 = *(v171 + 24);
              v108 = *(v104 + 24);
              cblas_scopy_NEWLAPACK();

              v93 = v157 + 1;

              v92 = v147 + 16;
              v91 = v173;
              v41 = v164;
              v86 = v141;
              if (v144 == v157 + 1)
              {
                goto LABEL_111;
              }
            }

LABEL_149:

LABEL_150:

            sub_21A3DCAA4();
            swift_allocError();
            *v136 = 44;
            swift_willThrow();

            goto LABEL_21;
          }

LABEL_111:
        }

        v58 = v138;
        result = a3;
        if (v138 == v152)
        {
          goto LABEL_113;
        }
      }

      while (1)
      {
        v65 = a3;
LABEL_68:
        v153 = v61;
        v67 = (*(v65 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v61)))));
        v68 = *v67;
        v69 = *(v65 + 16);
        v168 = v67[1];

        if (!v69 || (v70 = sub_21A3DCA2C(v68, v168), (v71 & 1) == 0))
        {

          sub_21A3DCAA4();
          swift_allocError();
          *v132 = 10;
          swift_willThrow();

          goto LABEL_21;
        }

        v160 = v68;
        v72 = *(*(a3 + 56) + 8 * v70);
        swift_beginAccess();
        v73 = *(v177 + 48);
        v74 = *(v73 + 16);

        if (!v74)
        {
          goto LABEL_141;
        }

        v75 = sub_21A3DCA2C(v160, v168);
        if ((v76 & 1) == 0)
        {
          break;
        }

        v77 = *(*(v73 + 56) + 8 * v75);

        if (!*(a4 + 16) || (v78 = sub_21A3DCA2C(v160, v168), (v79 & 1) == 0))
        {
          sub_21A3DCAA4();
          swift_allocError();
          *v133 = 10;
          swift_willThrow();

          goto LABEL_142;
        }

        v80 = *(*(a4 + 56) + 8 * v78);
        result = v160;
        if (*(v174 + 16) && (v140 = v80, result = sub_21A3DCA2C(v160, v168), v80 = v140, (v81 & 1) != 0))
        {
          if (v146 >= *(v164 + 16))
          {
            goto LABEL_170;
          }

          v82 = *(v142 + 8 * v146);
          if ((v140 * v82) >> 64 != (v140 * v82) >> 63)
          {
            goto LABEL_171;
          }

          if ((v140 * v82 * v139) >> 64 != (v140 * v82 * v139) >> 63)
          {
            goto LABEL_172;
          }

          result = v140 * v139;
          if ((v140 * v139) >> 64 != (v140 * v139) >> 63)
          {
            goto LABEL_173;
          }

          if (result < 0xFFFFFFFF80000000)
          {
            goto LABEL_174;
          }

          if (result > 0x7FFFFFFF)
          {
            goto LABEL_175;
          }

          v83 = *(*(v77 + 32) + 24);
        }

        else
        {
          if (v146 >= *(v164 + 16))
          {
            goto LABEL_160;
          }

          if ((v80 * *(v142 + 8 * v146)) >> 64 != (v80 * *(v142 + 8 * v146)) >> 63)
          {
            goto LABEL_161;
          }

          if (v80 < 0xFFFFFFFF80000000)
          {
            goto LABEL_162;
          }

          if (v80 > 0x7FFFFFFF)
          {
            goto LABEL_163;
          }

          v84 = *(*(v77 + 32) + 24);
        }

        cblas_scopy_NEWLAPACK();
        v61 = (v153 - 1) & v153;

        v62 = v143;
        v64 = a3 + 64;
        if (!v61)
        {
          goto LABEL_63;
        }
      }

LABEL_141:
      sub_21A3DCAA4();
      swift_allocError();
      *v134 = 10;
      swift_willThrow();

LABEL_142:

LABEL_21:

      goto LABEL_22;
    }

LABEL_113:
    if (a8)
    {
      break;
    }

    v131 = v137;
LABEL_134:
    v44 = v131 + 1;
    if (v44 == a6)
    {

LABEL_137:

      goto LABEL_145;
    }
  }

  v165 = v41;
  *__B = v152;
  v109 = *(v148 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111 = v148;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v111 = sub_21A407D80(0, v109, 0, v148);
  }

  v145 = v111;
  vDSP_vsdiv((v148 + 32), 1, __B, v111 + 8, 1, v109);

  v112 = v150;
  v113 = *(v150 + 16);

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v150;
  if ((v114 & 1) == 0)
  {
    v116 = sub_21A407D80(0, v113, 0, v150);
    v115 = v150;
    v112 = v116;
  }

  MEMORY[0x21CEDB360](v115 + 32, 1, v145 + 32, 1, v112 + 32, 1, v113);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21A410F90(v112);
    v112 = result;
  }

  v117 = 0;
  v149 = v112;
  v118 = v173;
  v151 = -*(v173 + 16);
  v119 = -1;
  v172 = (v173 + 40);
  while (1)
  {
    if (v151 + v119 == -1)
    {
      v148 = v145;
      v150 = v112;
      result = a3;
      v131 = v137;
      v41 = v165;
      goto LABEL_134;
    }

    v120 = v119 + 1;
    if (v120 >= *(v118 + 16))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v158 = v120;
    v162 = v117;
    v121 = v10[15];
    if (!*(v121 + 16))
    {
      goto LABEL_144;
    }

    v122 = *(v172 - 1);
    v123 = *v172;

    v124 = sub_21A3DCA2C(v122, v123);
    v156 = v125;

    if ((v156 & 1) == 0)
    {
      break;
    }

    v126 = *(*(v121 + 56) + 8 * v124);

    v127 = *(v126 + 32);
    v128 = v127 + 3;
    if (v127 >= 0)
    {
      v128 = *(v126 + 32);
    }

    if (v127 < 0xFFFFFFFDFFFFFFFDLL)
    {
      goto LABEL_156;
    }

    if (v127 > 0x1FFFFFFFFLL)
    {
      goto LABEL_157;
    }

    v172 += 2;
    v129 = v128 >> 2;
    v130 = *(v126 + 24);
    cblas_scopy_NEWLAPACK();

    v55 = __OFADD__(v162, v129);
    v117 = v162 + v129;
    v118 = v173;
    v112 = v149;
    v119 = v158;
    if (v55)
    {
      goto LABEL_158;
    }
  }

LABEL_144:
  sub_21A3DCAA4();
  swift_allocError();
  *v135 = 44;
  swift_willThrow();

LABEL_145:

LABEL_22:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}