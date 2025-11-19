uint64_t sub_26C69D6CC()
{
  v1 = *v0;
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C69D768()
{
  *v0;
  *v0;
  sub_26C6D8A38();
}

uint64_t sub_26C69D7F0()
{
  v1 = *v0;
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

void sub_26C69D894(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "SessionDisconnect";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000001DLL;
    v3 = "ignoreOnSessionDisconnect";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000021;
    v4 = "prescriptionRecords";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_26C69D8F0()
{
  result = qword_2804A8990;
  if (!qword_2804A8990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8990);
  }

  return result;
}

unint64_t sub_26C69D940()
{
  result = qword_2804A8CB8;
  if (!qword_2804A8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CB8);
  }

  return result;
}

unint64_t sub_26C69D998()
{
  result = qword_2804A8CC0;
  if (!qword_2804A8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CC0);
  }

  return result;
}

unint64_t sub_26C69D9F0()
{
  result = qword_2804A8CC8;
  if (!qword_2804A8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFSetupServerState.SFServiceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WFSetupServerState.SFServiceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFSetupServerState.SFSessionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WFSetupServerState.SFSessionState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26C69DD80(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))();
  if (v2)
  {
    return result | ((BYTE1(result) & 1) << 8);
  }

  return result;
}

void sub_26C69DDF0(uint64_t a1@<X0>, char a2@<W1>, uint8_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_26C6D89A8();
  v10 = sub_26C6D89E8();
  v11 = NSDictionaryGetNSNumber();

  if (v11)
  {
    v12 = a2;
    v32 = a4;
    v33 = a3;
    v13 = sub_26C6D8ED8();

    if (qword_2804A8580 != -1)
    {
LABEL_24:
      swift_once();
    }

    v14 = 0;
    v15 = off_2804A8CD0;
    v16 = *(off_2804A8CD0 + 2);
    v17 = off_2804A8CD0 + 32;
    do
    {
      if (v16 == v14)
      {
        if (qword_2804A85A8 != -1)
        {
          swift_once();
        }

        v27 = sub_26C6D8898();
        __swift_project_value_buffer(v27, qword_2804AD258);
        v28 = sub_26C6D8878();
        v29 = sub_26C6D8BA8();
        v25 = v13;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 16908544;
          v30[4] = v13;
          _os_log_impl(&dword_26C66B000, v28, v29, "Unknown opcode in TransmittableObject: %{public}hhu", v30, 5u);
          MEMORY[0x26D6A7490](v30, -1, -1);
        }

        sub_26C678378();
        swift_willThrowTypedImpl();
        v26 = 0;
        goto LABEL_21;
      }

      if (v14 >= v15[2])
      {
        __break(1u);
        goto LABEL_24;
      }

      v18 = *&v17[16 * v14++];
      v19 = *(&v18 + 1);
      v34 = v18;
      v20 = v18;
    }

    while ((*(*(&v18 + 1) + 16))(v18, *(&v18 + 1)) != v13);
    if ((v12 & 1) != 0 || ((*(v19 + 8))(v20, v19) & 1) == 0)
    {
      v31 = *(v19 + 40);
      *(v32 + 24) = v34;
      __swift_allocate_boxed_opaque_existential_1(v32);
      v31(a1, v35, v20, v19);
      if (!v4)
      {
        return;
      }

      v25 = v35[0];
      v26 = v35[1];
      __swift_deallocate_boxed_opaque_existential_1(v32);
    }

    else
    {
      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v21 = sub_26C6D8898();
      __swift_project_value_buffer(v21, qword_2804AD258);
      v22 = sub_26C6D8878();
      v23 = sub_26C6D8BA8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 16908544;
        v24[4] = v13;
        _os_log_impl(&dword_26C66B000, v22, v23, "Object %{public}hhu sent over a non-secure connection.", v24, 5u);
        MEMORY[0x26D6A7490](v24, -1, -1);
      }

      sub_26C678378();
      swift_willThrowTypedImpl();
      v25 = 0;
      v26 = 1;
    }

LABEL_21:
    *v33 = v25;
    v33[1] = v26;
  }

  else
  {
    __break(1u);
  }
}

double sub_26C69E1C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8CD8, &qword_26C6DBDE8);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_26C6DAAA0;
  *(v0 + 32) = &type metadata for LegacyPreAuthObject;
  *(v0 + 40) = &off_287D2EF48;
  *(v0 + 48) = &type metadata for LegacyPreAuthResponseObject;
  *(v0 + 56) = &off_287D2E740;
  *(v0 + 64) = &type metadata for LegacySetupDataObject;
  *(v0 + 72) = &off_287D2B7C0;
  off_2804A8CD0 = v0;
  return result;
}

uint64_t getEnumTagSinglePayload for TransmittableObjectError(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for TransmittableObjectError(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_26C69E36C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26C69E38C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_26C69E3C0(void *a1, void *a2, char a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = sub_26C6D86A8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_26C6D8698();
  sub_26C6A00D8();
  v10 = sub_26C6D8688();
  v12 = v11;

  if (!v3)
  {
    v14 = objc_opt_self();
    v15 = sub_26C6D8798();
    v31[0] = 0;
    v16 = [v14 JSONObjectWithData:v15 options:0 error:v31];

    if (v16)
    {
      v17 = v31[0];
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
      if (swift_dynamicCast())
      {
        sub_26C678418(v10, v12);
        result = v30;
        goto LABEL_13;
      }

      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v19 = sub_26C6D8898();
      __swift_project_value_buffer(v19, qword_2804AD258);

      v20 = sub_26C6D8878();
      v21 = sub_26C6D8BA8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = a3 & 1;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        v31[0] = a1;
        *v23 = 136446210;
        v31[1] = a2;
        v32 = v22;
        v25 = sub_26C6D8A18();
        v27 = sub_26C67A77C(v25, v26, &v30);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_26C66B000, v20, v21, "Failed to encode %{public}s into dictionary.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x26D6A7490](v24, -1, -1);
        MEMORY[0x26D6A7490](v23, -1, -1);
      }

      else
      {
      }

      sub_26C676694();
      swift_allocError();
      *v28 = 1;
    }

    else
    {
      v18 = v31[0];
      sub_26C6D86F8();
    }

    swift_willThrow();
    result = sub_26C678418(v10, v12);
  }

LABEL_13:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C69E6F0(void *a1, void *a2, void *a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_26C69E828(a1, a2, a3, a4, sub_26C6A0194);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C69E758(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_26C69EBA0(a1, a2, sub_26C69FF34);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C69E7C0(void *a1, void *a2, void *a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_26C69E828(a1, a2, a3, a4, sub_26C69FF88);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C69E828(void *a1, void *a2, void *a3, void *a4, void (*a5)(void))
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v7 = sub_26C6D86A8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_26C6D8698();
  a5();
  v10 = sub_26C6D8688();
  v12 = v11;

  if (!v5)
  {
    v14 = objc_opt_self();
    v15 = sub_26C6D8798();
    v36[0] = 0;
    v16 = [v14 JSONObjectWithData:v15 options:0 error:v36];

    if (v16)
    {
      v17 = v36[0];
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
      if (swift_dynamicCast())
      {
        sub_26C678418(v10, v12);
        result = v35;
        goto LABEL_13;
      }

      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v19 = sub_26C6D8898();
      __swift_project_value_buffer(v19, qword_2804AD258);
      v21 = v37;
      v20 = v38;
      v22 = v39;
      v23 = v40;

      sub_26C67ED2C(v22, v23);

      sub_26C67ED2C(v22, v23);
      v24 = sub_26C6D8878();
      v25 = sub_26C6D8BA8();

      sub_26C678418(v22, v23);
      if (os_log_type_enabled(v24, v25))
      {
        v33 = v21;
        v26 = swift_slowAlloc();
        log = v24;
        v35 = swift_slowAlloc();
        v27 = v35;
        *v26 = 136446210;
        v36[0] = v33;
        v36[1] = v20;
        v36[2] = v22;
        v36[3] = v23;
        v28 = sub_26C6D8A18();
        v30 = sub_26C67A77C(v28, v29, &v35);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_26C66B000, log, v25, "Failed to encode %{public}s into dictionary.", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x26D6A7490](v27, -1, -1);
        MEMORY[0x26D6A7490](v26, -1, -1);
      }

      else
      {

        sub_26C678418(v22, v23);
      }

      sub_26C676694();
      swift_allocError();
      *v31 = 1;
    }

    else
    {
      v18 = v36[0];
      sub_26C6D86F8();
    }

    swift_willThrow();
    result = sub_26C678418(v10, v12);
  }

LABEL_13:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C69EBA0(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v32 = a2;
  v5 = sub_26C6D86A8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_26C6D8698();
  a3();
  v8 = sub_26C6D8688();
  v10 = v9;

  if (!v3)
  {
    v12 = objc_opt_self();
    v13 = sub_26C6D8798();
    v30[0] = 0;
    v14 = [v12 JSONObjectWithData:v13 options:0 error:v30];

    if (v14)
    {
      v15 = v30[0];
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
      if (swift_dynamicCast())
      {
        sub_26C678418(v8, v10);
        result = v29;
        goto LABEL_13;
      }

      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v17 = sub_26C6D8898();
      __swift_project_value_buffer(v17, qword_2804AD258);
      v18 = v31;
      v19 = v32;
      sub_26C67ED2C(v31, v32);
      sub_26C67ED2C(v18, v19);
      v20 = sub_26C6D8878();
      v21 = sub_26C6D8BA8();
      sub_26C678418(v18, v19);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        v30[0] = v18;
        *v22 = 136446210;
        v30[1] = v19;
        v24 = sub_26C6D8A18();
        v26 = sub_26C67A77C(v24, v25, &v29);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_26C66B000, v20, v21, "Failed to encode %{public}s into dictionary.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x26D6A7490](v23, -1, -1);
        MEMORY[0x26D6A7490](v22, -1, -1);
      }

      else
      {
        sub_26C678418(v18, v19);
      }

      sub_26C676694();
      swift_allocError();
      *v27 = 1;
    }

    else
    {
      v16 = v30[0];
      sub_26C6D86F8();
    }

    swift_willThrow();
    result = sub_26C678418(v8, v10);
  }

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C69EEDC(void *a1, void *a2, void *a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_26C69E828(a1, a2, a3, a4, sub_26C69F6A8);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26C69EF44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA100;
  v9 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  sub_26C67ED2C(a1, a2);
  sub_26C6D8CD8();
  *(inited + 168) = v9;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v10 = sub_26C689E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_26C69F0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v1 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v1;
}

uint64_t sub_26C69F174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C69F6FC(a1);
  if (v3)
  {
    *a2 = result;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t sub_26C69F378(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D10, &qword_26C6DC040);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6A0084();
  sub_26C6D8F38();
  v13 = a2;
  v14 = a3;
  sub_26C67ED2C(a2, a3);
  sub_26C686938();
  sub_26C6D8E18();
  sub_26C678418(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26C69F504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C62755072656570 && a2 == 0xED000079654B6369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C6D8E48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26C69F594(uint64_t a1)
{
  v2 = sub_26C6A0084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C69F5D0(uint64_t a1)
{
  v2 = sub_26C6A0084();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26C69F60C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26C6A01E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_26C69F654()
{
  result = qword_2804A8CE0;
  if (!qword_2804A8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CE0);
  }

  return result;
}

unint64_t sub_26C69F6A8()
{
  result = qword_2804A8CE8;
  if (!qword_2804A8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CE8);
  }

  return result;
}

uint64_t sub_26C69F6FC(uint64_t a1)
{
  sub_26C6D8CD8();
  if (!*(a1 + 16) || (v2 = sub_26C689928(v23), (v3 & 1) == 0))
  {
    sub_26C678324(v23);
    goto LABEL_9;
  }

  sub_26C676984(*(a1 + 56) + 32 * v2, v24);
  sub_26C678324(v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v7 = sub_26C6D8898();
    __swift_project_value_buffer(v7, qword_2804AD258);

    v8 = sub_26C6D8878();
    v9 = sub_26C6D8BA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136380931;
      *(v10 + 4) = sub_26C67A77C(0x654B63696C627570, 0xE900000000000079, v23);
      *(v10 + 12) = 2082;
      v12 = sub_26C6D89C8();
      v14 = sub_26C67A77C(v12, v13, v23);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C66B000, v8, v9, "Unable to load %{private}s from %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v11, -1, -1);
      MEMORY[0x26D6A7490](v10, -1, -1);
    }

    LOBYTE(v23[0]) = 1;
    sub_26C676694();
    swift_willThrowTypedImpl();
    return 1;
  }

  sub_26C6D8CD8();
  if (*(a1 + 16) && (v4 = sub_26C689928(v23), (v5 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v4, v24);
    sub_26C678324(v23);
    if (swift_dynamicCast())
    {
      return 0x654B63696C627570;
    }
  }

  else
  {
    sub_26C678324(v23);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v15 = sub_26C6D8898();
  __swift_project_value_buffer(v15, qword_2804AD258);

  v16 = sub_26C6D8878();
  v17 = sub_26C6D8BA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_26C67A77C(0x6449746567726174, 0xE800000000000000, v23);
    *(v18 + 12) = 2082;
    v20 = sub_26C6D89C8();
    v22 = sub_26C67A77C(v20, v21, v23);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_26C66B000, v16, v17, "Unable to load %{private}s from %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v19, -1, -1);
    MEMORY[0x26D6A7490](v18, -1, -1);
  }

  LOBYTE(v23[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();
  sub_26C678418(0x654B63696C627570, 0xE900000000000079);
  return 1;
}

uint64_t sub_26C69FB90()
{
  v1 = v0;
  v28[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_26C6D89A8();
  v27 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v27];

  v5 = v27;
  if (v4)
  {
    v6 = sub_26C6D87A8();
    v8 = v7;

    v9 = sub_26C6D8678();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_26C6D8668();
    sub_26C69FEE0();
    sub_26C6D8658();
    if (!v0)
    {

      sub_26C678418(v6, v8);
      v24 = v28[0];
      goto LABEL_11;
    }

    sub_26C678418(v6, v8);
  }

  else
  {
    v12 = v5;
    v1 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD258);

  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = &type metadata for RapportSetupConnectionResponse;
    v28[0] = v17;
    *v16 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8CF0, &qword_26C6DBE58);
    v18 = sub_26C6D8A18();
    v20 = sub_26C67A77C(v18, v19, v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_26C6D89C8();
    v23 = sub_26C67A77C(v21, v22, v28);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_26C66B000, v14, v15, "Unabled to decode %{public}s from %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v17, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  v24 = 2;
  LOBYTE(v28[0]) = 2;
  sub_26C676694();
  swift_willThrowTypedImpl();

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

unint64_t sub_26C69FEE0()
{
  result = qword_2804A8CF8;
  if (!qword_2804A8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8CF8);
  }

  return result;
}

unint64_t sub_26C69FF34()
{
  result = qword_2804A8D00;
  if (!qword_2804A8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D00);
  }

  return result;
}

unint64_t sub_26C69FF88()
{
  result = qword_2804A8D08;
  if (!qword_2804A8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D08);
  }

  return result;
}

uint64_t sub_26C69FFEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26C6A0034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26C6A0084()
{
  result = qword_2804A8D18;
  if (!qword_2804A8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D18);
  }

  return result;
}

unint64_t sub_26C6A00D8()
{
  result = qword_2804A8D20;
  if (!qword_2804A8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D20);
  }

  return result;
}

uint64_t sub_26C6A012C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C6A0194()
{
  result = qword_2804A8D28;
  if (!qword_2804A8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D28);
  }

  return result;
}

void *sub_26C6A01E8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D30, &qword_26C6DC048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6A0084();
  sub_26C6D8F28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_26C686AFC();
    sub_26C6D8DE8();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_26C6A0370()
{
  result = qword_2804A8D38;
  if (!qword_2804A8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D38);
  }

  return result;
}

unint64_t sub_26C6A03C8()
{
  result = qword_2804A8D40;
  if (!qword_2804A8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D40);
  }

  return result;
}

unint64_t sub_26C6A0420()
{
  result = qword_2804A8D48;
  if (!qword_2804A8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8D48);
  }

  return result;
}

unint64_t SetupServerStateChange.to()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 <= 2)
  {
    if (*(v0 + 24))
    {
      if (v4 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26C6DA0F0;
        v19[0] = 0xD000000000000012;
        v19[1] = 0x800000026C6DFC00;
        sub_26C6D8CD8();
        *(inited + 96) = type metadata accessor for WFSetupServerState();
        *(inited + 72) = v2;
        sub_26C69A68C(v2, v1, v3, 1u);
        sub_26C689E88(inited);
        swift_setDeallocating();
        sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
        return 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_26C6DA100;
        sub_26C6D8CD8();
        *(v15 + 96) = type metadata accessor for WFSetupServerState();
        *(v15 + 72) = v2;
        strcpy(v19, "messageSession");
        HIBYTE(v19[1]) = -18;
        v16 = v2;
        sub_26C6D8CD8();
        *(v15 + 168) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
        *(v15 + 144) = v1;
        v17 = v1;
        sub_26C689E88(v15);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
        swift_arrayDestroy();
        return 2;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_26C6DA100;
      sub_26C6D8CD8();
      *(v9 + 96) = type metadata accessor for WFSetupServerState();
      *(v9 + 72) = v2;
      strcpy(v19, "messageSession");
      HIBYTE(v19[1]) = -18;
      v10 = v2;
      sub_26C6D8CD8();
      *(v9 + 168) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
      *(v9 + 144) = v1;
      v11 = v1;
      v12 = sub_26C689E88(v9);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
      swift_arrayDestroy();
      result = sub_26C6A1058(v3, 0x4470757465536677, 0xEB00000000617461);
      if (result)
      {
        v13 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19[0] = v12;
        sub_26C6A37DC(v13, sub_26C6A3538, 0, isUniquelyReferenced_nonNull_native, v19);

        return 0;
      }
    }
  }

  else if (*(v0 + 24) > 4u)
  {
    if (v4 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_26C6DA0F0;
      strcpy(v19, "messageSession");
      HIBYTE(v19[1]) = -18;
      sub_26C6D8CD8();
      *(v8 + 96) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
      *(v8 + 72) = v2;
      sub_26C69A68C(v2, v1, v3, 5u);
      sub_26C689E88(v8);
      swift_setDeallocating();
      sub_26C677B60(v8 + 32, &qword_2804A86B8, &qword_26C6DA550);
      return 7;
    }

    else if (v3 | v1 | v2)
    {
      if (v2 != 1 || v3 | v1)
      {
        sub_26C689E88(MEMORY[0x277D84F90]);
        return 8;
      }

      else
      {
        sub_26C689E88(MEMORY[0x277D84F90]);
        return 6;
      }
    }

    else
    {
      sub_26C689E88(MEMORY[0x277D84F90]);
      return 3;
    }
  }

  else if (v4 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_26C6DA0F0;
    v19[0] = 0xD000000000000012;
    v19[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    *(v5 + 96) = type metadata accessor for WFSetupServerState();
    *(v5 + 72) = v2;
    sub_26C69A68C(v2, v1, v3, 3u);
    sub_26C689E88(v5);
    swift_setDeallocating();
    sub_26C677B60(v5 + 32, &qword_2804A86B8, &qword_26C6DA550);
    return 4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_26C6DA0F0;
    v19[0] = 0xD000000000000012;
    v19[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    *(v18 + 96) = type metadata accessor for WFSetupServerState();
    *(v18 + 72) = v2;
    sub_26C69A68C(v2, v1, v3, 4u);
    sub_26C689E88(v18);
    swift_setDeallocating();
    sub_26C677B60(v18 + 32, &qword_2804A86B8, &qword_26C6DA550);
    return 5;
  }

  return result;
}

uint64_t SetupServerData.to()()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *(v0 + 8);
  v4 = (v3 >> 60) & 3;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = (v1 | (v2 << 8));
      v6 = sub_26C689E88(MEMORY[0x277D84F90]);
      v7 = sub_26C6A1058(v5, 0x4470757465536677, 0xEB00000000617461);
      if (v7)
      {
        v8 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v6;
        sub_26C6A37DC(v8, sub_26C6A3538, 0, isUniquelyReferenced_nonNull_native, &v29);
      }

      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      v29 = 0xD000000000000015;
      v30 = 0x800000026C6DFC20;
      sub_26C6D8CD8();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = v1 & 1;
      sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
      return 2;
    }
  }

  else
  {
    v11 = *(v0 + 10);
    v13 = *(v0 + 6);
    v12 = *(v0 + 7);
    v14 = *(v0 + 4);
    v25 = *(v0 + 5);
    v15 = *(v0 + 2);
    v23 = *(v0 + 9);
    v24 = *(v0 + 3);
    v16 = v3 & 0xCFFFFFFFFFFFFFFFLL;
    v17 = v1 | (v2 << 8);
    v18 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_26C6DAAC0;

    v20 = MEMORY[0x277D837D0];
    sub_26C6D8CD8();
    *(v19 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D58, &unk_26C6DC170);
    *(v19 + 72) = v17;
    sub_26C6D8CD8();
    *(v19 + 168) = v20;
    *(v19 + 144) = v18;
    *(v19 + 152) = v15;
    sub_26C6D8CD8();
    *(v19 + 240) = v20;
    *(v19 + 216) = v24;
    *(v19 + 224) = v14;
    sub_26C6D8CD8();
    *(v19 + 312) = v20;
    *(v19 + 288) = v25;
    *(v19 + 296) = v13;
    v29 = 0xD000000000000015;
    v30 = 0x800000026C6DEAE0;
    sub_26C6D8CD8();
    *(v19 + 384) = MEMORY[0x277CC9318];
    *(v19 + 360) = v12;
    *(v19 + 368) = v16;
    sub_26C67ED2C(v12, v16);
    sub_26C689E88(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
    if (v11)
    {
      sub_26C6D8CD8();
      v28 = v20;
      *&v27 = v23;
      *(&v27 + 1) = v11;
      sub_26C68A024(&v27, v26);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_26C689CC0(v26, &v29, v21);
      sub_26C678324(&v29);
    }

    return 0;
  }
}

uint64_t SetupServerError.to()()
{
  v1 = *v0;
  if (v1)
  {
    if (v1 == 1)
    {
      sub_26C689E88(MEMORY[0x277D84F90]);
      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      sub_26C6D8CD8();
      swift_getErrorValue();
      *(inited + 96) = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
      sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
      return 2;
    }
  }

  else
  {
    sub_26C689E88(MEMORY[0x277D84F90]);
    return 0;
  }
}

unint64_t sub_26C6A1058(void *a1, void *a2, void *a3)
{
  v31[15] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD228);

    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_26C67A77C(a2, a3, v31);
      _os_log_impl(&dword_26C66B000, v17, v18, "Unable to archive nil object for key: %{public}s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D6A7490](v20, -1, -1);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }

    goto LABEL_13;
  }

  v6 = objc_opt_self();
  v31[0] = 0;
  v7 = a1;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v31];
  v9 = v31[0];
  if (!v8)
  {
    v21 = v9;
    v22 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v23 = sub_26C6D8898();
    __swift_project_value_buffer(v23, qword_2804AD228);

    v17 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v25 = 136446466;
      type metadata accessor for WFSetupData();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D60, &qword_26C6DC4E0);
      v27 = sub_26C6D8A18();
      v29 = sub_26C67A77C(v27, v28, v31);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_26C67A77C(a2, a3, v31);
      _os_log_impl(&dword_26C66B000, v17, v24, "Unable to archive %{public}s for key: %{public}s.", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v10 = sub_26C6D87A8();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  v31[0] = a2;
  v31[1] = a3;

  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = v10;
  *(inited + 80) = v12;
  sub_26C67ED2C(v10, v12);
  v14 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);

  sub_26C678418(v10, v12);
  result = v14;
LABEL_14:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C6A1490(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_26C6D8CD8();
  if (*(a1 + 16) && (v6 = sub_26C689928(v17), (v7 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v6, v18);
    sub_26C678324(v17);
    if (swift_dynamicCast())
    {
      sub_26C6779D0(0, &qword_2804A8768, 0x277CCAAC8);
      type metadata accessor for WFSetupData();
      v13 = sub_26C6D8BC8();
      sub_26C678418(a2, a3);
      return v13;
    }
  }

  else
  {
    sub_26C678324(v17);
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD228);

  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BA8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26C67A77C(a2, a3, v17);
    _os_log_impl(&dword_26C66B000, v9, v10, "No value for key %{public}s when unpacking.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  return 0;
}

void static SetupServerStateChange.from(_:metaData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v5 = 1;
        goto LABEL_36;
      }

      if (a1 != 7)
      {
        if (a1 == 8)
        {
          v5 = 2;
LABEL_36:
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v5;
          v8 = 6;
          goto LABEL_82;
        }

        goto LABEL_45;
      }

      strcpy(v74, "messageSession");
      HIBYTE(v74[1]) = -18;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v27 = sub_26C689928(v75), (v28 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v27, v76);
        sub_26C678324(v75);
        sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
        if (swift_dynamicCast())
        {
          v29 = v74[0];
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v29;
          v8 = 5;
          goto LABEL_82;
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v67 = sub_26C6D8898();
      __swift_project_value_buffer(v67, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v75[0] = v35;
        *v34 = 136446466;
        v76[0] = 7;
        type metadata accessor for WFSetupServerStateChangeEvent(0);
        v68 = sub_26C6D8A18();
        v70 = sub_26C67A77C(v68, v69, v75);

        *(v34 + 4) = v70;
        *(v34 + 12) = 2082;
        v71 = sub_26C6D89C8();
        v73 = sub_26C67A77C(v71, v72, v75);

        *(v34 + 14) = v73;
        v42 = "Unable to decode: %{public}s with data: %{public}s";
        goto LABEL_80;
      }

LABEL_81:

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v8 = -1;
      goto LABEL_82;
    }

    if (a1 == 4)
    {
      v74[0] = 0xD000000000000012;
      v74[1] = 0x800000026C6DFC00;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v24 = sub_26C689928(v75), (v25 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v24, v76);
        sub_26C678324(v75);
        type metadata accessor for WFSetupServerState();
        if (swift_dynamicCast())
        {
          v26 = v74[0];
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v26;
          v8 = 3;
          goto LABEL_82;
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v60 = sub_26C6D8898();
      __swift_project_value_buffer(v60, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v51 = 4;
    }

    else
    {
      v74[0] = 0xD000000000000012;
      v74[1] = 0x800000026C6DFC00;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v9 = sub_26C689928(v75), (v10 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v9, v76);
        sub_26C678324(v75);
        type metadata accessor for WFSetupServerState();
        if (swift_dynamicCast())
        {
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = v74[0];
          v8 = 4;
          goto LABEL_82;
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v50 = sub_26C6D8898();
      __swift_project_value_buffer(v50, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v51 = 5;
    }

LABEL_74:
    v76[0] = v51;
    type metadata accessor for WFSetupServerStateChangeEvent(0);
    v61 = sub_26C6D8A18();
    v63 = sub_26C67A77C(v61, v62, v75);

    *(v34 + 4) = v63;
    *(v34 + 12) = 2082;
    v64 = sub_26C6D89C8();
    v66 = sub_26C67A77C(v64, v65, v75);

    *(v34 + 14) = v66;
    v42 = "Unable to decode enum sessionStarted: %{public}s with data: %{public}s";
LABEL_80:
    _os_log_impl(&dword_26C66B000, v32, v33, v42, v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v35, -1, -1);
    MEMORY[0x26D6A7490](v34, -1, -1);
    goto LABEL_81;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v74[0] = 0xD000000000000012;
      v74[1] = 0x800000026C6DFC00;
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v11 = sub_26C689928(v75), (v12 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v11, v76);
        sub_26C678324(v75);
        type metadata accessor for WFSetupServerState();
        if (swift_dynamicCast())
        {
          v13 = v74[0];
          strcpy(v74, "messageSession");
          HIBYTE(v74[1]) = -18;
          sub_26C6D8CD8();
          if (*(a2 + 16) && (v14 = sub_26C689928(v75), (v15 & 1) != 0))
          {
            sub_26C676984(*(a2 + 56) + 32 * v14, v76);
            sub_26C678324(v75);
            sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
            if (swift_dynamicCast())
            {
              v16 = v74[0];
              v17 = sub_26C6A1490(a2, 0x4470757465536677, 0xEB00000000617461);
              *a3 = v13;
              *(a3 + 8) = v16;
              *(a3 + 16) = v17;
              *(a3 + 24) = 0;
              return;
            }
          }

          else
          {
            sub_26C678324(v75);
          }
        }
      }

      else
      {
        sub_26C678324(v75);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v52 = sub_26C6D8898();
      __swift_project_value_buffer(v52, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v76[0] = 0;
      type metadata accessor for WFSetupServerStateChangeEvent(0);
      v53 = sub_26C6D8A18();
      v55 = sub_26C67A77C(v53, v54, v75);

      *(v34 + 4) = v55;
      *(v34 + 12) = 2082;
      v56 = sub_26C6D89C8();
      v58 = sub_26C67A77C(v56, v57, v75);

      *(v34 + 14) = v58;
      v42 = "Unable to decode enum resumed: %{public}s with data: %{public}s";
      goto LABEL_80;
    }

    if (a1 != 1)
    {
LABEL_45:
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v31 = sub_26C6D8898();
      __swift_project_value_buffer(v31, qword_2804AD228);

      v32 = sub_26C6D8878();
      v33 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_81;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75[0] = v35;
      *v34 = 136446466;
      v76[0] = a1;
      type metadata accessor for WFSetupServerStateChangeEvent(0);
      v36 = sub_26C6D8A18();
      v38 = sub_26C67A77C(v36, v37, v75);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = sub_26C6D89C8();
      v41 = sub_26C67A77C(v39, v40, v75);

      *(v34 + 14) = v41;
      v42 = "Unable to decode unknown enum type: %{public}s with data: %{public}s";
      goto LABEL_80;
    }

    v74[0] = 0xD000000000000012;
    v74[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v6 = sub_26C689928(v75), (v7 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v6, v76);
      sub_26C678324(v75);
      type metadata accessor for WFSetupServerState();
      if (swift_dynamicCast())
      {
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = v74[0];
        v8 = 1;
        goto LABEL_82;
      }
    }

    else
    {
      sub_26C678324(v75);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v43 = sub_26C6D8898();
    __swift_project_value_buffer(v43, qword_2804AD228);

    v32 = sub_26C6D8878();
    v33 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_81;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v75[0] = v35;
    *v34 = 136446466;
    v76[0] = 1;
    type metadata accessor for WFSetupServerStateChangeEvent(0);
    v44 = sub_26C6D8A18();
    v46 = sub_26C67A77C(v44, v45, v75);

    *(v34 + 4) = v46;
    *(v34 + 12) = 2082;
    v47 = sub_26C6D89C8();
    v49 = sub_26C67A77C(v47, v48, v75);

    *(v34 + 14) = v49;
    v42 = "Unable to decode enum activated: %{public}s with data: %{public}s";
    goto LABEL_80;
  }

  if (a1 == 2)
  {
    v74[0] = 0xD000000000000012;
    v74[1] = 0x800000026C6DFC00;
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v18 = sub_26C689928(v75), (v19 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v18, v76);
      sub_26C678324(v75);
      type metadata accessor for WFSetupServerState();
      if (swift_dynamicCast())
      {
        v20 = v74[0];
        strcpy(v74, "messageSession");
        HIBYTE(v74[1]) = -18;
        sub_26C6D8CD8();
        if (*(a2 + 16) && (v21 = sub_26C689928(v75), (v22 & 1) != 0))
        {
          sub_26C676984(*(a2 + 56) + 32 * v21, v76);
          sub_26C678324(v75);
          sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
          if (swift_dynamicCast())
          {
            v23 = v74[0];
            *a3 = v20;
            *(a3 + 8) = v23;
            *(a3 + 16) = 0;
            v8 = 2;
            goto LABEL_82;
          }
        }

        else
        {
          sub_26C678324(v75);
        }
      }
    }

    else
    {
      sub_26C678324(v75);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v59 = sub_26C6D8898();
    __swift_project_value_buffer(v59, qword_2804AD228);

    v32 = sub_26C6D8878();
    v33 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_81;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v75[0] = v35;
    *v34 = 136446466;
    v51 = 2;
    goto LABEL_74;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = 6;
LABEL_82:
  *(a3 + 24) = v8;
}

void static SetupServerData.from(_:metaData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    sub_26C6D8CD8();
    if (*(a2 + 16) && (v22 = sub_26C689928(v52), (v23 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v22, v53);
      sub_26C678324(v52);
      if (swift_dynamicCast())
      {
        *a3 = 21;
        v21 = 0x2000000000000000;
        goto LABEL_50;
      }
    }

    else
    {
      sub_26C678324(v52);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v37 = sub_26C6D8898();
    __swift_project_value_buffer(v37, qword_2804AD228);

    v26 = sub_26C6D8878();
    v27 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_49;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136446466;
    v53[0] = 2;
    type metadata accessor for WFSetupServerData(0);
    v38 = sub_26C6D8A18();
    v40 = sub_26C67A77C(v38, v39, v52);

    *(v28 + 4) = v40;
    *(v28 + 12) = 2082;
    v41 = sub_26C6D89C8();
    v43 = sub_26C67A77C(v41, v42, v52);

    *(v28 + 14) = v43;
    v36 = "Unable to decode WFSetupServerDataWFEnrollmentsSaveResult: %{public}s with data: %{public}s";
    goto LABEL_48;
  }

  if (a1 == 1)
  {
    v20 = sub_26C6A1490(a2, 0x4470757465536677, 0xEB00000000617461);
    if (!v20)
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v45 = sub_26C6D8898();
      __swift_project_value_buffer(v45, qword_2804AD228);

      v26 = sub_26C6D8878();
      v27 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_49;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52[0] = v29;
      *v28 = 136446467;
      v53[0] = 1;
LABEL_47:
      type metadata accessor for WFSetupServerData(0);
      v46 = sub_26C6D8A18();
      v48 = sub_26C67A77C(v46, v47, v52);

      *(v28 + 4) = v48;
      *(v28 + 12) = 2081;
      v49 = sub_26C6D89C8();
      v51 = sub_26C67A77C(v49, v50, v52);

      *(v28 + 14) = v51;
      v36 = "Unable to decode WFSetupServerData: %{public}s with data: %{private}s";
LABEL_48:
      _os_log_impl(&dword_26C66B000, v26, v27, v36, v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v29, -1, -1);
      MEMORY[0x26D6A7490](v28, -1, -1);
LABEL_49:

      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v21 = 0x3000000000000000;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      goto LABEL_50;
    }

    *a3 = v20;
    v21 = 0x1000000000000000;
LABEL_50:
    *(a3 + 64) = v21;
    return;
  }

  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v25 = sub_26C6D8898();
    __swift_project_value_buffer(v25, qword_2804AD228);

    v26 = sub_26C6D8878();
    v27 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_49;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136446467;
    v53[0] = a1;
    type metadata accessor for WFSetupServerData(0);
    v30 = sub_26C6D8A18();
    v32 = sub_26C67A77C(v30, v31, v52);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2081;
    v33 = sub_26C6D89C8();
    v35 = sub_26C67A77C(v33, v34, v52);

    *(v28 + 14) = v35;
    v36 = "Unable to decode unknown WFSetupServerData: %{public}s with data: %{private}s";
    goto LABEL_48;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v5 = sub_26C689928(v52), (v6 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_39;
  }

  sub_26C676984(*(a2 + 56) + 32 * v5, v53);
  sub_26C678324(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D58, &unk_26C6DC170);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v44 = sub_26C6D8898();
    __swift_project_value_buffer(v44, qword_2804AD228);

    v26 = sub_26C6D8878();
    v27 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_49;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136446467;
    v53[0] = 0;
    goto LABEL_47;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v7 = sub_26C689928(v52), (v8 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_52;
  }

  sub_26C676984(*(a2 + 56) + 32 * v7, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

    goto LABEL_39;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v9 = sub_26C689928(v52), (v10 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_54;
  }

  sub_26C676984(*(a2 + 56) + 32 * v9, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:

    goto LABEL_52;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v11 = sub_26C689928(v52), (v12 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_56;
  }

  sub_26C676984(*(a2 + 56) + 32 * v11, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:

    goto LABEL_54;
  }

  sub_26C6D8CD8();
  if (!*(a2 + 16) || (v13 = sub_26C689928(v52), (v14 & 1) == 0))
  {
    sub_26C678324(v52);
    goto LABEL_58;
  }

  sub_26C676984(*(a2 + 56) + 32 * v13, v53);
  sub_26C678324(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_58:

    goto LABEL_56;
  }

  v53[0] = 0xD000000000000015;
  v53[1] = 0x800000026C6DEAE0;
  sub_26C6D8CD8();
  if (*(a2 + 16) && (v15 = sub_26C689928(v52), (v16 & 1) != 0))
  {
    sub_26C676984(*(a2 + 56) + 32 * v15, v53);
    sub_26C678324(v52);
    v17 = swift_dynamicCast();
    v18 = 0xD000000000000015;
    v19 = 0x800000026C6DEAE0;
    if (!v17)
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_26C678324(v52);
    v18 = 0;
    v19 = 0;
  }

  strcpy(a3, "languagelocale");
  *(a3 + 15) = 0;
  *(a3 + 16) = 0xE600000000000000;
  *(a3 + 24) = 0x6C65646F6DLL;
  *(a3 + 32) = 0xE500000000000000;
  *(a3 + 40) = 0x6C43656369766564;
  *(a3 + 48) = 0xEB00000000737361;
  *(a3 + 56) = 0xD000000000000015;
  *(a3 + 64) = 0x800000026C6DEAE0 & 0xCFFFFFFFFFFFFFFFLL;
  *(a3 + 72) = v18;
  *(a3 + 80) = v19;
}

void static SetupServerError.from(_:metaData:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v6 = sub_26C689928(v27), (v7 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v6, v28);
        sub_26C678324(v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
        if (swift_dynamicCast())
        {
          v3 = 0x726F727265;
          goto LABEL_18;
        }
      }

      else
      {
        sub_26C678324(v27);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v19 = sub_26C6D8898();
      __swift_project_value_buffer(v19, qword_2804AD228);

      v9 = sub_26C6D8878();
      v20 = sub_26C6D8BA8();

      if (os_log_type_enabled(v9, v20))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27[0] = v12;
        *v11 = 136446466;
        v3 = 2;
        v28[0] = 2;
        type metadata accessor for WFSetupServerError(0);
        v21 = sub_26C6D8A18();
        v23 = sub_26C67A77C(v21, v22, v27);

        *(v11 + 4) = v23;
        *(v11 + 12) = 2082;
        v24 = sub_26C6D89C8();
        v26 = sub_26C67A77C(v24, v25, v27);

        *(v11 + 14) = v26;
        _os_log_impl(&dword_26C66B000, v9, v20, "Unable to decode WFSetupServerError: %{public}s with data: %{public}s", v11, 0x16u);
        goto LABEL_16;
      }
    }

    else
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v8 = sub_26C6D8898();
      __swift_project_value_buffer(v8, qword_2804AD228);

      v9 = sub_26C6D8878();
      v10 = sub_26C6D8BA8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27[0] = v12;
        *v11 = 136446466;
        v28[0] = v3;
        type metadata accessor for WFSetupServerError(0);
        v13 = sub_26C6D8A18();
        v15 = sub_26C67A77C(v13, v14, v27);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2082;
        v16 = sub_26C6D89C8();
        v18 = sub_26C67A77C(v16, v17, v27);

        *(v11 + 14) = v18;
        _os_log_impl(&dword_26C66B000, v9, v10, "Unable to decode unknown WFSetupServerError type: %{public}s with data: %{public}s", v11, 0x16u);
        v3 = 2;
LABEL_16:
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v12, -1, -1);
        MEMORY[0x26D6A7490](v11, -1, -1);

        goto LABEL_18;
      }
    }

    v3 = 2;
  }

LABEL_18:
  *a3 = v3;
}

uint64_t sub_26C6A3538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C68ADDC(a1, a2);

  return sub_26C676984(a1 + 40, a2 + 40);
}

_OWORD *sub_26C6A357C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_26C68ADDC(*(v3 + 48) + 40 * v13, &v18);
    sub_26C676984(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_26C68A024(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_26C677B60(&v18, &qword_2804A8D68, qword_26C6DC4E8);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C6A3704(uint64_t a1)
{
  v7[0] = 0x726F727245;
  v7[1] = 0xE500000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v2 = sub_26C689928(v6), (v3 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v2, v7);
    sub_26C678324(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_26C678324(v6);
  }

  return 0;
}

uint64_t sub_26C6A37DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_26C6A357C(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_26C6A3D74();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_26C68A024(&v41, v34);
    v15 = *a5;
    v16 = sub_26C689928(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_26C6CE658(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_26C689928(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_26C6CEE70();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_26C676984(*(*a5 + 56) + 32 * v16, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      sub_26C678324(&v35);
      v14 = *(v12 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v14 + v13));
      sub_26C68A024(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_26C68A024(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_26C6A357C(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_26C6D8E78();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing22SetupServerStateChangeO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 5)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C6A3AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C6A3AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6A3B30(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26C6A3B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 88))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 64) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26C6A3BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 72) = 0;
      *(result + 80) = 0;
      *(result + 64) = 0x3000000000000000;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing16SetupServerErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C6A3C94(uint64_t *a1, unsigned int a2)
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

uint64_t sub_26C6A3CE8(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_26C6A3D44(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_26C6A3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26C676B2C;

  return v13(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing19SharingServiceEventO5IssueO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing19SharingServiceEventO(uint64_t a1)
{
  if ((*(a1 + 56) & 7u) <= 4)
  {
    return *(a1 + 56) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingServiceAgentError(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFFFF) >> 24 == 255)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((a2 + 0xFFFFFF) >> 24)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return v3;
    }

    if (v3 == 2)
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    else
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    return (*a1 | (*(a1 + 2) << 16) | (v3 << 24)) - 0xFFFFFF;
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for SharingServiceAgentError(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFFFF) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 0xFFFFFF) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v4)
    {
      v5 = ((a2 - 1) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_26C6A40E0(unsigned __int16 *a1)
{
  if (*(a1 + 2))
  {
    return (*a1 | (*(a1 + 2) << 16)) - 0xFFFF;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A4104(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = ((a2 - 1) >> 16) + 1;
  }

  else
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing20SharingServiceActionO(uint64_t a1)
{
  if ((*(a1 + 56) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 56) & 7;
  }
}

uint64_t sub_26C6A4154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A4190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6A41E0(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 56) = a2;
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

uint64_t sub_26C6A4230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A426C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_26C6A42B8(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26C6A4304(uint64_t *a1, int a2)
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

uint64_t sub_26C6A434C(uint64_t result, int a2, int a3)
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

uint64_t sub_26C6A439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_26C6D8C98();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v6 = sub_26C6A4510(&v9, result, *(a1 + 36), 0, a1);
    v7 = v9;
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;

    sub_26C67ED2C(v7, *(&v7 + 1));

    sub_26C67ED2C(v7, *(&v7 + 1));

    sub_26C678418(v7, *(&v7 + 1));

    return sub_26C678418(v7, *(&v7 + 1));
  }

  return result;
}

uint64_t sub_26C6A44D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C6A45B4(a1);
  if (v3)
  {
    *a2 = result;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = v7;
  }

  return result;
}

_OWORD *sub_26C6A4510(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v8 = *(*(a5 + 56) + 16 * a2);
    *result = v8;

    sub_26C67ED2C(v8, *(&v8 + 1));
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26C6A45B4(uint64_t a1)
{
  v2 = sub_26C6CFEFC(a1);
  if (!v2)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD258);

    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v55 = v8;
    *v7 = 136315138;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, &v55);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Failed to retrieve anisette data dict from request: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    v12 = v7;
    goto LABEL_25;
  }

  v3 = v2;
  sub_26C6A439C(v2, &v55);
  if (v56)
  {
    sub_26C678418(v57, v58);
  }

  if (sub_26C6CC7EC() == 5)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD258);

    v5 = sub_26C6D8878();
    v14 = sub_26C6D8BA8();

    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v55 = v16;
      *v15 = 136315138;
      v17 = sub_26C6D89C8();
      v19 = v18;

      v20 = sub_26C67A77C(v17, v19, &v55);

      *(v15 + 4) = v20;
      v21 = "Failed to retrieve anisette service id from: %s";
LABEL_24:
      _os_log_impl(&dword_26C66B000, v5, v14, v21, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6A7490](v16, -1, -1);
      v12 = v15;
LABEL_25:
      MEMORY[0x26D6A7490](v12, -1, -1);
LABEL_27:

      LOBYTE(v55) = 1;
      sub_26C676694();
      swift_willThrowTypedImpl();
      return 1;
    }

    goto LABEL_26;
  }

  sub_26C6A439C(v3, &v55);
  if (!v56)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v38 = sub_26C6D8898();
    __swift_project_value_buffer(v38, qword_2804AD258);

    v5 = sub_26C6D8878();
    v14 = sub_26C6D8BA8();

    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v55 = v16;
      *v15 = 136315138;
      v39 = sub_26C6D89C8();
      v41 = v40;

      v42 = sub_26C67A77C(v39, v41, &v55);

      *(v15 + 4) = v42;
      v21 = "Failed to retrieve anisette request data blob from: %s";
      goto LABEL_24;
    }

LABEL_26:

    goto LABEL_27;
  }

  v22 = v57;
  v23 = v58;

  sub_26C6783CC();
  type metadata accessor for AnisetteRequest();
  v24 = sub_26C6D8BC8();
  if (v1)
  {
LABEL_15:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v25 = sub_26C6D8898();
    __swift_project_value_buffer(v25, qword_2804AD258);
    sub_26C67ED2C(v22, v23);
    v26 = v1;
    v27 = sub_26C6D8878();
    v28 = sub_26C6D8BA8();
    sub_26C678418(v22, v23);

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136315394;
      v31 = sub_26C6D8788();
      v33 = sub_26C67A77C(v31, v32, &v55);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v59 = v1;
      v34 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v35 = sub_26C6D8A18();
      v37 = sub_26C67A77C(v35, v36, &v55);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_26C66B000, v27, v28, "Failed to unarchive anisette request from: %s with error: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v30, -1, -1);
      MEMORY[0x26D6A7490](v29, -1, -1);
    }

    LOBYTE(v55) = 1;
    sub_26C676694();
    swift_willThrowTypedImpl();

    sub_26C678418(v22, v23);
    return 1;
  }

  if (!v24)
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v45 = sub_26C6D8898();
    __swift_project_value_buffer(v45, qword_2804AD258);
    sub_26C67ED2C(v22, v23);
    v46 = sub_26C6D8878();
    v47 = sub_26C6D8BA8();
    sub_26C678418(v22, v23);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v48 = 136315138;
      v50 = sub_26C6D8788();
      v52 = sub_26C67A77C(v50, v51, &v55);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_26C66B000, v46, v47, "Failed to unarchive anisette request from: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x26D6A7490](v49, -1, -1);
      MEMORY[0x26D6A7490](v48, -1, -1);
    }

    sub_26C676694();
    v53 = swift_allocError();
    *v54 = 1;
    swift_willThrow();
    v1 = v53;
    goto LABEL_15;
  }

  v44 = v24;
  sub_26C678418(v22, v23);
  return v44;
}

uint64_t sub_26C6A4DB4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_26C6A4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_26C6A4ED8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_26C6D89B8();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_26C6D89B8();
  }

LABEL_4:

  v9 = a2;
  v7(a2, v8, v4);
}

uint64_t sub_26C6A4FBC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    v7 = sub_26C6D89B8();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_26C6D89B8();
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v6(v7, v8, sub_26C69A2D4, v10);
}

void sub_26C6A50D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_26C6D86E8();
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    a2 = sub_26C6D89A8();
  }

  if (a3)
  {
    v8 = sub_26C6D89A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t sub_26C6A51B4(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DB8, &qword_26C6DCAA0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DC0, &qword_26C6DCAA8);
  v7 = *(v6 - 8);
  v45 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v47 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = v42 - v11;
  v43 = sub_26C6D8BD8();
  v12 = *(v43 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v43);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C6D8C08();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v18 = sub_26C6D8978();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_26C6A9BB8();
  v42[1] = "v20@?0I8@NSString12";
  v42[2] = v20;
  sub_26C6D8968();
  v51 = MEMORY[0x277D84F90];
  sub_26C6A9C04(&qword_2804A8720, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580);
  sub_26C6D8C88();
  (*(v12 + 104))(v15, *MEMORY[0x277D85268], v43);
  *(v1 + 16) = sub_26C6D8C18();
  v22 = v45;
  v21 = v46;
  v23 = *(v45 + 56);
  v25 = v48;
  v24 = v49;
  (*(v48 + 104))(v46, *MEMORY[0x277D85778], v49);
  v26 = v44;
  sub_26C6D8B18();
  (*(v25 + 8))(v21, v24);
  v27 = v47;
  sub_26C6A9C4C(v26, v47);
  v28 = *(v22 + 56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DC8, &unk_26C6DCAB0);
  *(v2 + 64) = v29;
  *(v2 + 72) = sub_26C677B18(&qword_2804A8DD0, &qword_2804A8DC8, &unk_26C6DCAB0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 40));
  v31 = *(v29 - 8);
  (*(v31 + 32))(boxed_opaque_existential_1, v27, v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v33 = *(v32 - 8);
  (*(v33 + 8))(v27 + v28, v32);
  sub_26C6A9C4C(v26, v27);
  (*(v33 + 32))(v2 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v27 + *(v22 + 56), v32);
  (*(v31 + 8))(v27, v29);
  v34 = [objc_allocWithZone(MEMORY[0x277D54C48]) init];
  v35 = v50;
  v36 = sub_26C6D87F8();
  [v34 setIdentifier_];

  *(v2 + 24) = v34;
  v37 = objc_allocWithZone(MEMORY[0x277D54CE8]);
  v38 = v34;
  v39 = [v37 init];
  *(v2 + 32) = v39;
  [v39 setDispatchQueue_];
  [*(v2 + 32) setServiceIdentifier_];
  [*(v2 + 32) setSessionFlags_];
  [*(v2 + 32) setPeerDevice_];

  v40 = sub_26C6D8838();
  (*(*(v40 - 8) + 8))(v35, v40);
  sub_26C677B60(v26, &qword_2804A8DC0, &qword_26C6DCAA8);
  return v2;
}

uint64_t sub_26C6A57FC()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v10);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFSessionAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));
  v7 = OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_26C6A59A8()
{
  sub_26C6A57FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SFSessionAgent()
{
  result = qword_2804A8D78;
  if (!qword_2804A8D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C6A5A54()
{
  sub_26C6A6CD0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26C6A5B00()
{
  type metadata accessor for SFSessionAgent();
  sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  v2 = sub_26C6D8AD8();
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;

  return MEMORY[0x2822009F8](sub_26C6A5BB4, v2, v1);
}

uint64_t sub_26C6A5BB4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D54C30]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[3] = sub_26C6A5CE8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F0, &qword_26C6DA3C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6A4DB4;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 reenableProxCardType:36 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6A5CE8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);
  if (v3)
  {
    v6 = sub_26C6A5E7C;
  }

  else
  {
    v6 = sub_26C6A5E18;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26C6A5E18()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C6A5E7C()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

void sub_26C6A5EEC()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9930;
  v17 = v2;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C6AABE4;
  v15 = &block_descriptor_46;
  v3 = _Block_copy(&v12);

  [v1 setErrorHandler_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9968;
  v17 = v4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C670B0C;
  v15 = &block_descriptor_50;
  v5 = _Block_copy(&v12);

  [v1 setInvalidationHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9970;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C670B0C;
  v15 = &block_descriptor_54;
  v7 = _Block_copy(&v12);

  [v1 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9978;
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C6A81B4;
  v15 = &block_descriptor_58;
  v9 = _Block_copy(&v12);

  [v1 setShowPINHandlerEx_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v16 = sub_26C6A9980;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_26C6AABE4;
  v15 = &block_descriptor_62;
  v11 = _Block_copy(&v12);

  [v1 setPairSetupCompletionHandler_];
  _Block_release(v11);
}

void sub_26C6A623C()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v9 = sub_26C6A9844;
  v10 = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = sub_26C6A9560;
  v8 = &block_descriptor_34;
  v3 = _Block_copy(&v5);

  [v1 setReceivedObjectHandler_];
  _Block_release(v3);
  v9 = sub_26C675DD4;
  v10 = 0;
  v5 = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = sub_26C675FCC;
  v8 = &block_descriptor_37;
  v4 = _Block_copy(&v5);
  [v1 setReceivedRequestHandler_];
  _Block_release(v4);
}

id sub_26C6A6390()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFSessionAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v7 = *(v1 + 32);
  [v7 setErrorHandler_];
  [v7 setInvalidationHandler_];
  [v7 setInterruptionHandler_];
  [v7 setShowPINHandlerEx_];
  [v7 setPairSetupCompletionHandler_];
  [v7 setReceivedObjectHandler_];

  return [v7 invalidate];
}

uint64_t sub_26C6A6570(uint64_t a1)
{
  sub_26C6A96B8(a1, v36);
  if (v39)
  {
    sub_26C676744(v36, aBlock);
    v3 = *(v1 + 32);
    v4 = v30;
    v5 = v31;
    __swift_project_boxed_opaque_existential_1(aBlock, v30);
    v6 = (*(v5 + 3))(v4, v5);
    v7 = v30;
    v8 = v31;
    __swift_project_boxed_opaque_existential_1(aBlock, v30);
    v9 = (*(v8 + 4))(v7, v8);
    if (v2)
    {
      v10 = (v9 >> 8) & 1;
      LOWORD(v33[0]) = v9 & 0x1FF;
      v11 = v9;
      sub_26C6A9714();
      swift_willThrowTypedImpl();
      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
      return v11 | (v10 << 8);
    }

    v19 = sub_26C6D89A8();

    [v3 sendWithFlags:v6 object:v19];

    v20 = aBlock;
  }

  else
  {
    v13 = v37;
    v14 = v38;
    sub_26C676744(v36, v33);
    v28 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    swift_getDynamicType();
    (*(v35 + 8))();
    v15 = sub_26C6D89E8();

    v16 = v34;
    v17 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    if ((*(v17 + 16))(v16, v17))
    {
      v18 = sub_26C6D89A8();
    }

    else
    {
      v18 = 0;
    }

    v21 = v34;
    v22 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v22 + 24))(v21, v22);
    v23 = sub_26C6D89A8();

    if (v13)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v13;
      *(v24 + 24) = v14;
      v25 = sub_26C6A97E4;
    }

    else
    {
      v25 = nullsub_1;
      v24 = 0;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    v31 = sub_26C6A97A0;
    v32 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C6A4ED8;
    v30 = &block_descriptor_23;
    v27 = _Block_copy(aBlock);
    sub_26C676954(v13);

    [v28 sendRequestID:v15 options:v18 request:v23 responseHandler:v27];
    _Block_release(v27);

    sub_26C676904(v13);
    v20 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

void sub_26C6A6934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD240);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    v11 = (*(a2 + 8))(a1, a2);
    v13 = sub_26C67A77C(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Registering to receive request: %{public}s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA100;
  v22 = 0x746365726964;
  v23 = 0xE600000000000000;
  sub_26C6D8CD8();
  v15 = MEMORY[0x277D839B0];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v22 = 0xD000000000000010;
  v23 = 0x800000026C6DEEB0;
  sub_26C6D8CD8();
  *(inited + 168) = v15;
  *(inited + 144) = 1;
  sub_26C689E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  swift_arrayDestroy();
  v16 = *(v3 + 32);
  (*(a2 + 8))(a1, a2);
  v17 = sub_26C6D89E8();

  v18 = sub_26C6D89A8();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v19;
  v26 = sub_26C6A965C;
  v27 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_26C6A4FBC;
  v25 = &block_descriptor_1;
  v21 = _Block_copy(&v22);

  [v16 registerRequestID:v17 options:v18 handler:v21];
  _Block_release(v21);
}

void sub_26C6A6CD0()
{
  if (!qword_2804A8D88)
  {
    v0 = sub_26C6D8B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A8D88);
    }
  }
}

uint64_t sub_26C6A6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v46 - v20;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v21 = sub_26C6D8898();
  __swift_project_value_buffer(v21, qword_2804AD240);

  v22 = sub_26C6D8878();
  v23 = sub_26C6D8BB8();

  v24 = os_log_type_enabled(v22, v23);
  v25 = a2;
  v49 = v19;
  if (v24)
  {
    v26 = swift_slowAlloc();
    v47 = v12;
    v27 = v26;
    v28 = swift_slowAlloc();
    v53[0] = v28;
    *v27 = 136446466;
    v29 = (*(a6 + 8))(a5, a6);
    v31 = sub_26C67A77C(v29, v30, v53);
    v46 = a3;
    v32 = a4;
    v33 = v31;

    *(v27 + 4) = v33;
    *(v27 + 12) = 2082;
    v34 = sub_26C6D89C8();
    v36 = sub_26C67A77C(v34, v35, v53);

    *(v27 + 14) = v36;
    a4 = v32;
    a3 = v46;
    _os_log_impl(&dword_26C66B000, v22, v23, "Request %{public}s invoked with request: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v28, -1, -1);
    v37 = v27;
    v12 = v47;
    MEMORY[0x26D6A7490](v37, -1, -1);
  }

  v38 = *(a6 + 32);
  v56[3] = a5;
  v56[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v56);
  v38(v25, v55, a5, a6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = v51;
    v41 = v50;
    (*(v51 + 16))(v50, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v12);

    sub_26C67749C(v56, v53);
    v53[5] = a3;
    v53[6] = a4;
    v54 = 3;

    v42 = v48;
    sub_26C6D8B28();
    (*(v40 + 8))(v41, v12);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v48;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
  sub_26C677B60(v42, &qword_2804A8DA0, &qword_26C6DCA60);
  return __swift_destroy_boxed_opaque_existential_1Tm(v56);
}

uint64_t sub_26C6A73D8(uint64_t a1)
{
  result = sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C6A7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6A7578, 0, 0);
}

uint64_t sub_26C6A7578()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 136);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(v0 + 128);
      v4 = *(v0 + 136);
      (*(*(v0 + 168) + 16))(*(v0 + 176), Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, *(v0 + 160));
      v5 = v3;

      swift_beginAccess();
      v6 = swift_weakLoadStrong();
      *(v0 + 192) = v6;
      if (v6)
      {
        type metadata accessor for SFSessionAgent();
        sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
        v8 = sub_26C6D8AD8();

        return MEMORY[0x2822009F8](sub_26C6A77D8, v8, v7);
      }

      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 160);
      v13 = *(v0 + 168);
      v14 = *(v0 + 128) | 0x8000000000000000;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v14;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v13 + 8))(v11, v12);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v15 = *(v0 + 184);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
    (*(*(v16 - 8) + 56))(v15, v9, 1, v16);
    sub_26C677B60(v15, &qword_2804A8DA0, &qword_26C6DCA60);
  }

  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26C6A77D8()
{
  v1 = *(*(v0 + 192) + 32);
  *(v0 + 200) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6A7850, 0, 0);
}

uint64_t sub_26C6A7850()
{
  v1 = *(v0 + 200);
  v2 = [v1 identifier];

  if (v2)
  {
    v3 = *(v0 + 144);
    sub_26C6D8818();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = sub_26C6D8838();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, v4, 1, v7);
  sub_26C6767B0(v6, v5);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = *(v0 + 152);
  if (v9 == 1)
  {
    sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 152);
    v11 = sub_26C6D87D8();
    v12 = v14;
    (*(v8 + 8))(v10, v7);
  }

  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = *(v0 + 128) | 0x8000000000000000;
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  *(v0 + 32) = v19;
  *(v0 + 72) = 4;
  sub_26C6D8B28();
  (*(v18 + 8))(v16, v17);
  v20 = *(v0 + 184);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_26C677B60(v20, &qword_2804A8DA0, &qword_26C6DCA60);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26C6A7AC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v9 = sub_26C6D8898();
  __swift_project_value_buffer(v9, qword_2804AD240);
  v10 = sub_26C6D8878();
  v11 = sub_26C6D8BB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26C66B000, v10, v11, "SFSessionAgent::session.invalidationHandler triggered", v12, 2u);
    MEMORY[0x26D6A7490](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v0);

    v17[1] = 0;
    v17[2] = 0;
    v17[3] = 0xC000000000000000;
    v18 = 4;
    sub_26C6D8B28();
    (*(v1 + 8))(v4, v0);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v15 - 8) + 56))(v8, v14, 1, v15);
  return sub_26C677B60(v8, &qword_2804A8DA0, &qword_26C6DCA60);
}

uint64_t sub_26C6A7D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v0);

    v13 = xmmword_26C6DC980;
    v14 = 0xC000000000000000;
    v15 = 4;
    sub_26C6D8B28();
    (*(v1 + 8))(v4, v0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return sub_26C677B60(v8, &qword_2804A8DA0, &qword_26C6DCA60);
}

uint64_t sub_26C6A7F98(int a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v19 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v7 + 16))(v10, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v6);

    v19[1] = a2;
    v19[2] = a3;
    v20 = a1;
    v21 = 0;

    sub_26C6D8B28();
    (*(v7 + 8))(v10, v6);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v17 - 8) + 56))(v14, v16, 1, v17);
  return sub_26C677B60(v14, &qword_2804A8DA0, &qword_26C6DCA60);
}

uint64_t sub_26C6A81B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_26C6D8A08();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_26C6A8230(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_26C6D8B08();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v11;
  v13 = a1;
  sub_26C68AF90(0, 0, v9, a4, v12);
}

uint64_t sub_26C6A838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  v5[40] = v6;
  v7 = *(v6 - 8);
  v5[41] = v7;
  v8 = *(v7 + 64) + 15;
  v5[42] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6A84A8, 0, 0);
}

uint64_t sub_26C6A84A8()
{
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = v1;
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD240);
    v4 = v1;
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BA8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_26C66B000, v5, v6, "Failed to establish encrypted channel with error: %{public}@", v7, 0xCu);
      sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v8, -1, -1);
      MEMORY[0x26D6A7490](v7, -1, -1);
    }

    v11 = *(v0 + 312);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = (v0 + 360);
      v14 = *(v0 + 360);
      v16 = *(v0 + 328);
      v15 = *(v0 + 336);
      v17 = *(v0 + 320);
      (*(v16 + 16))(v15, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v17);

      *(v0 + 144) = xmmword_26C6DC990;
      *(v0 + 160) = 0xC000000000000000;
      *(v0 + 200) = 4;
      sub_26C6D8B28();

      (*(v16 + 8))(v15, v17);
LABEL_8:
      v18 = 0;
LABEL_15:
      v23 = *v13;
      v25 = *(v0 + 352);
      v24 = *(v0 + 360);
      v27 = *(v0 + 336);
      v26 = *(v0 + 344);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
      (*(*(v28 - 8) + 56))(v23, v18, 1, v28);
      sub_26C677B60(v23, &qword_2804A8DA0, &qword_26C6DCA60);

      v29 = *(v0 + 8);

      return v29();
    }

    v13 = (v0 + 360);
    goto LABEL_14;
  }

  v19 = *(v0 + 312);
  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  *(v0 + 368) = v20;
  if (!v20)
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v30 = sub_26C6D8898();
    __swift_project_value_buffer(v30, qword_2804AD240);
    v31 = sub_26C6D8878();
    v32 = sub_26C6D8BA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26C66B000, v31, v32, "After establishing encryption SFSession::messageSessionTemplate was nil", v33, 2u);
      MEMORY[0x26D6A7490](v33, -1, -1);
    }

    v34 = *(v0 + 312);

    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    v13 = (v0 + 344);
    if (v35)
    {
      v36 = *(v0 + 336);
      v37 = *(v0 + 320);
      v38 = *(v0 + 328);
      (*(v38 + 16))(v36, v35 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v37);

      *(v0 + 16) = xmmword_26C6DC9A0;
      *(v0 + 32) = 0xC000000000000000;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v38 + 8))(v36, v37);
      goto LABEL_8;
    }

LABEL_14:
    v18 = 1;
    goto LABEL_15;
  }

  type metadata accessor for SFSessionAgent();
  sub_26C6A9C04(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  v22 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6A89CC, v22, v21);
}

uint64_t sub_26C6A89CC()
{
  v1 = *(*(v0 + 368) + 32);
  *(v0 + 376) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6A8A44, 0, 0);
}

uint64_t sub_26C6A8A44()
{
  v1 = *(v0 + 376);
  v2 = [v1 messageSessionTemplate];

  if (v2)
  {
    v3 = *(v0 + 312);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = (v0 + 352);
      v6 = *(v0 + 352);
      v8 = *(v0 + 328);
      v7 = *(v0 + 336);
      v9 = *(v0 + 320);
      (*(v8 + 16))(v7, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v9);

      *(v0 + 80) = v2;
      *(v0 + 136) = 1;
      sub_26C6D8B28();
      (*(v8 + 8))(v7, v9);
LABEL_10:
      v19 = 0;
      goto LABEL_13;
    }

    v5 = (v0 + 352);
  }

  else
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD240);
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C66B000, v11, v12, "After establishing encryption SFSession::messageSessionTemplate was nil", v13, 2u);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }

    v14 = *(v0 + 312);

    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    v5 = (v0 + 344);
    if (v15)
    {
      v16 = *(v0 + 336);
      v17 = *(v0 + 320);
      v18 = *(v0 + 328);
      (*(v18 + 16))(v16, v15 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v17);

      *(v0 + 16) = xmmword_26C6DC9A0;
      *(v0 + 32) = 0xC000000000000000;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v18 + 8))(v16, v17);
      goto LABEL_10;
    }
  }

  v19 = 1;
LABEL_13:
  v20 = *v5;
  v22 = *(v0 + 352);
  v21 = *(v0 + 360);
  v24 = *(v0 + 336);
  v23 = *(v0 + 344);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v25 - 8) + 56))(v20, v19, 1, v25);
  sub_26C677B60(v20, &qword_2804A8DA0, &qword_26C6DCA60);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26C6A8D84(int a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_26C6D8B08();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a2;
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;

  sub_26C68AF90(0, 0, v7, &unk_26C6DCA78, v10);
}

uint64_t sub_26C6A8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 76) = a6;
  *(v6 + 408) = a4;
  *(v6 + 416) = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D98, &qword_26C6DCA58);
  *(v6 + 424) = v7;
  v8 = *(v7 - 8);
  *(v6 + 432) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA0, &qword_26C6DCA60) - 8) + 64) + 15;
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6A9014, 0, 0);
}

uint64_t sub_26C6A9014()
{
  v37 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);

  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136446210;
    v8 = sub_26C6D89C8();
    v10 = sub_26C67A77C(v8, v9, &v36);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26C66B000, v3, v4, "Received the following objects: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v11 = *(v0 + 408);
  *(v0 + 392) = 0xD000000000000022;
  *(v0 + 400) = 0x800000026C6DEF30;
  sub_26C6D8CD8();
  if (!*(v11 + 16) || (v12 = *(v0 + 408), v13 = sub_26C689928(v0 + 208), (v14 & 1) == 0))
  {
    sub_26C678324(v0 + 208);
    goto LABEL_13;
  }

  sub_26C676984(*(*(v0 + 408) + 56) + 32 * v13, v0 + 288);
  sub_26C678324(v0 + 208);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 75) != 1)
  {
LABEL_13:
    sub_26C69DDF0(*(v0 + 408), *(v0 + 76), (v0 + 73), v0 + 248);
    v23 = *(v0 + 416);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = *(v0 + 456);
      v27 = *(v0 + 432);
      v26 = *(v0 + 440);
      v28 = *(v0 + 424);
      (*(v27 + 16))(v26, Strong + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v28);

      sub_26C67749C(v0 + 248, v0 + 80);
      *(v0 + 136) = 2;
      sub_26C6D8B28();
      (*(v27 + 8))(v26, v28);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
      v21 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
      v21 = 1;
    }

    v22 = *(v0 + 456);
    goto LABEL_17;
  }

  v15 = *(v0 + 416);
  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = *(v0 + 464);
    v19 = *(v0 + 432);
    v18 = *(v0 + 440);
    v20 = *(v0 + 424);
    (*(v19 + 16))(v18, v16 + OBJC_IVAR____TtC10TDGSharing14SFSessionAgent_output, v20);

    *(v0 + 192) = 0;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 200) = 5;
    sub_26C6D8B28();
    (*(v19 + 8))(v18, v20);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 464);
LABEL_17:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DA8, &qword_26C6DCA68);
  (*(*(v29 - 8) + 56))(v22, v21, 1, v29);
  sub_26C677B60(v22, &qword_2804A8DA0, &qword_26C6DCA60);
  v31 = *(v0 + 456);
  v30 = *(v0 + 464);
  v33 = *(v0 + 440);
  v32 = *(v0 + 448);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_26C6A9560(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_26C6D89B8();

  v4(a2, v5);
}

uint64_t sub_26C6A95EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C6A9624()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C6A9680()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26C6A9714()
{
  result = qword_2804A8DB0;
  if (!qword_2804A8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DB0);
  }

  return result;
}

uint64_t sub_26C6A9768()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6A97A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  return v4(&v9, &v8, &v7);
}

uint64_t sub_26C6A97E4(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_26C6A9868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C676B2C;

  return sub_26C6A8EF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26C6A99D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6A838C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_40Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  v6 = v2[5];

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26C6A9AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6A7430(a1, v4, v5, v7, v6);
}

unint64_t sub_26C6A9BB8()
{
  result = qword_2804A8718;
  if (!qword_2804A8718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8718);
  }

  return result;
}

uint64_t sub_26C6A9C04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C6A9C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DC0, &qword_26C6DCAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C6A9D04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t FileTransferTargetAgentError.hashValue.getter()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1);
  return sub_26C6D8F08();
}

uint64_t FileTransferTargetEvent.Issue.hashValue.getter()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

unint64_t sub_26C6A9E44()
{
  result = qword_2804A8DD8;
  if (!qword_2804A8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DD8);
  }

  return result;
}

unint64_t sub_26C6A9E9C()
{
  result = qword_2804A8DE0;
  if (!qword_2804A8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DE0);
  }

  return result;
}

uint64_t sub_26C6A9FC0(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6A9FFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t sub_26C6AA048(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_26C6AA0A0(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA100;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = a1 + 5;
  sub_26C6D8CD8();
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  v3 = sub_26C689E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_26C6AA1FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C6AA344(a1);
  if (v3)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  *v7 = result;
  return result;
}

uint64_t sub_26C6AA238()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1 + 5);
  return sub_26C6D8F08();
}

uint64_t sub_26C6AA2B0()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1 + 5);
  return sub_26C6D8F08();
}

uint64_t sub_26C6AA2F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C6AA330(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C6AA330(uint64_t a1)
{
  if ((a1 - 5) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 5;
  }
}

uint64_t sub_26C6AA344(uint64_t a1)
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v2 = sub_26C689928(v13), (v3 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v2, v14);
    sub_26C678324(v13);
    swift_dynamicCast();
  }

  else
  {
    sub_26C678324(v13);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD258);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_26C67A77C(0xD000000000000014, 0x800000026C6DFD10, v13);
    *(v7 + 12) = 2082;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Unable to get raw value for key: %{public}s, from payload: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  LOBYTE(v13[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();
  return 1;
}

unint64_t sub_26C6AA5E0()
{
  result = qword_2804A8DE8;
  if (!qword_2804A8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DE8);
  }

  return result;
}

uint64_t sub_26C6AA64C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8DF8, &qword_26C6DCF30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6AA94C();
  sub_26C6D8F38();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_26C6D8DF8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_26C6D8DF8();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C50, &qword_26C6DB9C8);
    sub_26C69B7E8();
    sub_26C6D8E18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26C6AA840(uint64_t a1)
{
  v2 = sub_26C6AA94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6AA87C(uint64_t a1)
{
  v2 = sub_26C6AA94C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26C6AA8D0(uint64_t a1)
{
  result = sub_26C6AA8F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C6AA8F8()
{
  result = qword_2804A8DF0;
  if (!qword_2804A8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8DF0);
  }

  return result;
}

unint64_t sub_26C6AA94C()
{
  result = qword_2804A8E00;
  if (!qword_2804A8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E00);
  }

  return result;
}

unint64_t sub_26C6AA9B4()
{
  result = qword_2804A8E08;
  if (!qword_2804A8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E08);
  }

  return result;
}

unint64_t sub_26C6AAA0C()
{
  result = qword_2804A8E10;
  if (!qword_2804A8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E10);
  }

  return result;
}

unint64_t sub_26C6AAA64()
{
  result = qword_2804A8E18;
  if (!qword_2804A8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E18);
  }

  return result;
}

uint64_t WFSetupServerActivationFlow.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1398035026;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x7473657567;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000012;
  }
}

unint64_t sub_26C6AAB68()
{
  result = qword_2804A8E20;
  if (!qword_2804A8E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8E28, &qword_26C6DD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E20);
  }

  return result;
}

void sub_26C6AABE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_26C6AAC78(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

void sub_26C6AAD30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26C6D86E8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *sub_26C6AAD94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E98, &qword_26C6DD1D8);
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v0);
  v39 = v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8EA0, &unk_26C6DD1E0);
  v4 = *(v3 - 8);
  v38 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = v35 - v9;
  v36 = sub_26C6D8BD8();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v36);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C6D8C08();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_26C6D8978();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_26C6779D0(0, &qword_2804A8718, 0x277D85C90);
  v35[0] = "/private/var/tmp/byoe/";
  v35[1] = v18;
  sub_26C6D8968();
  v43 = MEMORY[0x277D84F90];
  sub_26C6AFAE0(&qword_2804A8720, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580);
  sub_26C6D8C88();
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v36);
  v19 = sub_26C6D8C18();
  v20 = v41;
  v21 = v42;
  v42[2] = v19;
  v23 = v38;
  v22 = v39;
  v24 = *(v38 + 56);
  v25 = v40;
  (*(v40 + 104))(v39, *MEMORY[0x277D85778], v20);
  v26 = v37;
  sub_26C6D8B18();
  (*(v25 + 8))(v22, v20);
  sub_26C6AFB28(v26, v8);
  v27 = *(v23 + 56);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8EA8, &unk_26C6DD1F0);
  v21[7] = v28;
  v21[8] = sub_26C677B18(&qword_2804A8EB0, &qword_2804A8EA8, &unk_26C6DD1F0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 4);
  v30 = *(v28 - 8);
  (*(v30 + 32))(boxed_opaque_existential_1, v8, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  v32 = *(v31 - 8);
  (*(v32 + 8))(&v8[v27], v31);
  sub_26C6AFB28(v26, v8);
  (*(v32 + 32))(v21 + OBJC_IVAR____TtC10TDGSharing30RapportFileTransferSourceAgent_output, &v8[*(v23 + 56)], v31);
  (*(v30 + 8))(v8, v28);
  v33 = [objc_allocWithZone(MEMORY[0x277D44190]) init];
  v21[3] = v33;
  [v33 setDispatchQueue_];
  sub_26C677B60(v26, &qword_2804A8EA0, &unk_26C6DD1E0);
  return v21;
}

void *sub_26C6AB310()
{
  v84[1] = *MEMORY[0x277D85DE8];
  v83 = sub_26C6D8778();
  v80 = *(v83 - 8);
  v1 = *(v80 + 64);
  v2 = MEMORY[0x28223BE20](v83);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v74 - v6;
  MEMORY[0x28223BE20](v5);
  v82 = &v74 - v8;
  v9 = *(v0 + 24);
  v84[0] = 0;
  if ([v9 prepareTemplateAndReturnError_])
  {
    v10 = v84[0];
    v11 = sub_26C6D8798();
    [v9 setPeerPublicKey_];

    v12 = sub_26C6D89E8();
    [v9 setTargetID_];

    v13 = [v9 selfPublicKey];
    if (v13)
    {
      v14 = v13;
      v15 = sub_26C6D87A8();
      v79 = v16;

      if (qword_2804A85B8 != -1)
      {
        swift_once();
      }

      v17 = sub_26C6D8898();
      __swift_project_value_buffer(v17, qword_2804AD288);
      v18 = sub_26C6D8878();
      v19 = sub_26C6D8BB8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_26C66B000, v18, v19, "Rapport Peer Keys Set", v20, 2u);
        MEMORY[0x26D6A7490](v20, -1, -1);
      }

      sub_26C6AED54();
      v21 = v82;
      sub_26C6D8728();
      v22 = [objc_opt_self() defaultManager];
      v23 = sub_26C6D8738();
      v84[0] = 0;
      v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v84];

      v25 = v84[0];
      if (v24)
      {
        v26 = v80;
        v27 = v83;
        (*(v80 + 16))(v7, v21, v83);
        v28 = v25;
        v29 = sub_26C6D8878();
        v30 = sub_26C6D8BB8();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v77 = v31;
          v78 = swift_slowAlloc();
          v84[0] = v78;
          *v31 = 136446210;
          sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
          v32 = sub_26C6D8E28();
          v34 = v33;
          v35 = *(v26 + 8);
          v35(v7, v83);
          v36 = sub_26C67A77C(v32, v34, v84);
          v27 = v83;

          v37 = v77;
          *(v77 + 1) = v36;
          v38 = v37;
          _os_log_impl(&dword_26C66B000, v29, v30, "Setting Rapport source temp dir to %{public}s", v37, 0xCu);
          v39 = v78;
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          MEMORY[0x26D6A7490](v39, -1, -1);
          MEMORY[0x26D6A7490](v38, -1, -1);
        }

        else
        {

          v35 = *(v26 + 8);
          v35(v7, v27);
        }

        v70 = v82;
        v71 = sub_26C6D8738();
        [v9 setTemporaryDirectoryURL_];
      }

      else
      {
        v53 = v84[0];
        v54 = sub_26C6D86F8();

        swift_willThrow();
        v81 = 0;
        v55 = v80;
        v27 = v83;
        (*(v80 + 16))(v4, v21, v83);
        v56 = v54;
        v57 = sub_26C6D8878();
        v58 = sub_26C6D8BA8();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          LODWORD(v77) = v58;
          v60 = v59;
          v76 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v84[0] = v78;
          *v60 = 136446466;
          sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
          v75 = v57;
          v61 = sub_26C6D8E28();
          v63 = v62;
          v35 = *(v55 + 8);
          v35(v4, v83);
          v64 = sub_26C67A77C(v61, v63, v84);
          v27 = v83;

          *(v60 + 4) = v64;
          *(v60 + 12) = 2114;
          v65 = v54;
          v66 = _swift_stdlib_bridgeErrorToNSError();
          *(v60 + 14) = v66;
          v68 = v75;
          v67 = v76;
          *v76 = v66;
          _os_log_impl(&dword_26C66B000, v68, v77, "Failed to create rapport temp directory at %{public}s: %{public}@", v60, 0x16u);
          sub_26C677B60(v67, &qword_2804A9070, &qword_26C6DA3C0);
          MEMORY[0x26D6A7490](v67, -1, -1);
          v69 = v78;
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          MEMORY[0x26D6A7490](v69, -1, -1);
          MEMORY[0x26D6A7490](v60, -1, -1);
        }

        else
        {

          v35 = *(v55 + 8);
          v35(v4, v27);
        }

        v70 = v82;
      }

      [v9 activate];
      v35(v70, v27);
    }

    else
    {
      if (qword_2804A85B8 != -1)
      {
        swift_once();
      }

      v49 = sub_26C6D8898();
      __swift_project_value_buffer(v49, qword_2804AD288);
      v50 = sub_26C6D8878();
      v51 = sub_26C6D8BA8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_26C66B000, v50, v51, "Failed to retreive selfPublicKey", v52, 2u);
        MEMORY[0x26D6A7490](v52, -1, -1);
      }

      v84[0] = 0;
      sub_26C6AFA8C();
      swift_willThrowTypedImpl();
      v15 = 0;
    }
  }

  else
  {
    v40 = v84[0];
    v15 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v41 = sub_26C6D8898();
    __swift_project_value_buffer(v41, qword_2804AD288);
    v42 = v15;
    v43 = sub_26C6D8878();
    v44 = sub_26C6D8BA8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v15;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_26C66B000, v43, v44, "Failed to prepare file transfer template: %@", v45, 0xCu);
      sub_26C677B60(v46, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v46, -1, -1);
      MEMORY[0x26D6A7490](v45, -1, -1);
    }

    v84[0] = v15;
    sub_26C6AFA8C();
    swift_willThrowTypedImpl();
  }

  v72 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_26C6ABCA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26C6D8778();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD288);
  (*(v9 + 16))(v12, a3, v8);

  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v17 = 136446466;
    *(v17 + 4) = sub_26C67A77C(v29, a2, &v30);
    *(v17 + 12) = 2082;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
    HIDWORD(v27) = v15;
    v18 = sub_26C6D8E28();
    v19 = v4;
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = sub_26C67A77C(v18, v21, &v30);
    v4 = v19;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_26C66B000, v14, BYTE4(v27), "Rapport Send File with %{public}s, url: %{public}s", v17, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v23, -1, -1);
    MEMORY[0x26D6A7490](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D44180]) init];
  v25 = sub_26C6D89E8();
  [v24 setFilename_];

  v26 = sub_26C6D8738();
  [v24 setItemURL_];

  [*(v4 + 24) addItem_];
}

uint64_t sub_26C6ABFF8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = sub_26C6D8778();
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v8 = sub_26C6D8948();
  *(v3 + 64) = v8;
  v9 = *(v8 - 8);
  *(v3 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v11 = sub_26C6D88A8();
  *(v3 + 88) = v11;
  v12 = *(v11 - 8);
  *(v3 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v14 = sub_26C6D8918();
  *(v3 + 120) = v14;
  v15 = *(v14 - 8);
  *(v3 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = *a3;
  type metadata accessor for RapportFileTransferSourceAgent();
  sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent);
  v18 = sub_26C6D8AD8();
  *(v3 + 160) = v18;
  *(v3 + 168) = v17;

  return MEMORY[0x2822009F8](sub_26C6AC24C, v18, v17);
}

uint64_t sub_26C6AC24C()
{
  v15 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[22] = __swift_project_value_buffer(v1, qword_2804AD288);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000028, 0x800000026C6DFDF0, &v14);
    _os_log_impl(&dword_26C66B000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v0[17];
  sub_26C6D8908();
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C66B000, v7, v8, "Activating EnrollmentAssetService", v9, 2u);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v10 = *(MEMORY[0x277D04E78] + 4);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_26C6AC474;
  v12 = v0[17];

  return MEMORY[0x28215A838]();
}

uint64_t sub_26C6AC474()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_26C6AC594, v4, v3);
}

uint64_t sub_26C6AC594()
{
  v53 = v0;
  v1 = v0[22];
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Activated EnrollmentAssetService", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v5 = v0[19];

  if (v5 >> 60 == 15)
  {
    v6 = v0[22];
    v7 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26C66B000, v7, v8, "Missing enrollmentAssetRequestData", v9, 2u);
      MEMORY[0x26D6A7490](v9, -1, -1);
    }

    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];

    sub_26C676694();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    v21 = v0[17];
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[10];
    v26 = v0[6];
    v25 = v0[7];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[14];
    v17 = v0[11];
    v18 = sub_26C6D8678();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_26C67ED2C(v15, v14);
    sub_26C6D8668();
    sub_26C6AFAE0(&qword_2804A8E80, MEMORY[0x277D04DB0]);
    sub_26C6D8658();
    v29 = v0[22];
    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[11];
    v33 = v0[12];

    (*(v33 + 16))(v31, v30, v32);
    v34 = sub_26C6D8878();
    v35 = sub_26C6D8BB8();
    v36 = os_log_type_enabled(v34, v35);
    v38 = v0[12];
    v37 = v0[13];
    v39 = v0[11];
    if (v36)
    {
      v40 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v40 = 136446210;
      sub_26C6AFAE0(&qword_2804A8E88, MEMORY[0x277D04DB0]);
      v41 = sub_26C6D8E28();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v37, v39);
      v45 = sub_26C67A77C(v41, v43, &v52);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_26C66B000, v34, v35, "Will get enrollment assets using request %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x26D6A7490](v51, -1, -1);
      MEMORY[0x26D6A7490](v40, -1, -1);
    }

    else
    {

      v44 = *(v38 + 8);
      v44(v37, v39);
    }

    v0[24] = v44;
    v46 = *(MEMORY[0x277D04DC8] + 4);
    v47 = swift_task_alloc();
    v0[25] = v47;
    *v47 = v0;
    v47[1] = sub_26C6ACA58;
    v48 = v0[17];
    v49 = v0[14];
    v50 = v0[10];

    return MEMORY[0x28215A800](v50, v49);
  }
}

uint64_t sub_26C6ACA58()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_26C6ACEC0;
  }

  else
  {
    v7 = sub_26C6ACB94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26C6ACB94()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_26C6D8938();
  v39 = *(v6 + 16);
  v39(v4, v3, v5);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136446210;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
    v15 = sub_26C6D8E28();
    v17 = v16;
    v38 = *(v11 + 8);
    v38(v10, v12);
    v18 = sub_26C67A77C(v15, v17, &v40);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_26C66B000, v7, v8, "Enrollments assets zip generated to %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D6A7490](v14, -1, -1);
    MEMORY[0x26D6A7490](v13, -1, -1);
  }

  else
  {

    v38 = *(v11 + 8);
    v38(v10, v12);
  }

  v19 = v0[18];
  v21 = v0[16];
  v20 = v0[17];
  v34 = v0[24];
  v35 = v0[15];
  v33 = v0[14];
  v30 = v0[19];
  v31 = v0[12];
  v22 = v0[10];
  v32 = v0[11];
  v23 = v0[8];
  v24 = v0[9];
  v25 = v0[7];
  v36 = v0[13];
  v37 = v0[6];
  v26 = v0[3];
  v27 = v0[4];
  (*(v24 + 16))(v0[2], v22, v23);
  v39(v26, v25, v27);
  sub_26C6AEC70();
  sub_26C67EE70(v19, v30);
  v38(v25, v27);
  (*(v24 + 8))(v22, v23);
  v34(v33, v32);
  (*(v21 + 8))(v20, v35);

  v28 = v0[1];

  return v28();
}

uint64_t sub_26C6ACEC0()
{
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v7 = v0[12];
  sub_26C67EE70(v0[18], v0[19]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[26];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[10];
  v14 = v0[6];
  v13 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26C6ACFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E70, &qword_26C6DD1C0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_26C6D8778();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  type metadata accessor for RapportFileTransferSourceAgent();
  sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent);
  v9 = sub_26C6D8AD8();
  v4[29] = v9;
  v4[30] = v10;
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26C6AD19C, v9, v10);
}

uint64_t sub_26C6AD19C()
{
  v120 = v0;
  v119[1] = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26C677B60(v0[18], &qword_2804A8E70, &qword_26C6DD1C0);
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v7 = v0[13];
    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD288);
    sub_26C67749C(v7, (v0 + 2));
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v119[0] = v12;
      *v11 = 136446210;
      sub_26C67749C((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E78, &unk_26C6DD1C8);
      v13 = sub_26C6D8A18();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v16 = sub_26C67A77C(v13, v15, v119);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_26C66B000, v9, v10, "Unable to save data: %{public}s without valid item URL.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D6A7490](v12, -1, -1);
      MEMORY[0x26D6A7490](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    sub_26C676694();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    goto LABEL_22;
  }

  (*(v0[20] + 32))(v0[28], v0[18], v0[19]);
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[19];
  v20 = v0[20];
  v21 = sub_26C6D8898();
  __swift_project_value_buffer(v21, qword_2804AD288);
  v118 = *(v20 + 16);
  v118(v18, v17, v19);
  v22 = sub_26C6D8878();
  v23 = sub_26C6D8BB8();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[27];
  v27 = v0[19];
  v26 = v0[20];
  if (v24)
  {
    buf = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v119[0] = v115;
    *buf = 136315138;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
    v28 = sub_26C6D8E28();
    v30 = v29;
    v31 = *(v26 + 8);
    v31(v25, v27);
    v32 = sub_26C67A77C(v28, v30, v119);
    v33 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    *(buf + 4) = v32;
    _os_log_impl(&dword_26C66B000, v22, v23, "Rapport file is at %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    MEMORY[0x26D6A7490](v115, -1, -1);
    MEMORY[0x26D6A7490](buf, -1, -1);
  }

  else
  {

    v31 = *(v26 + 8);
    v33 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v25, v27);
  }

  v0[31] = v31;
  v35 = v0[25];
  v36 = v0[26];
  v37 = v0[24];
  v38 = v0[19];
  sub_26C6D88E8();
  sub_26C6D8748();
  v0[32] = v33;
  v31(v35, v38);
  v118(v37, v36, v38);
  v39 = sub_26C6D8878();
  v40 = sub_26C6D8BB8();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[24];
  v43 = v0[19];
  if (v41)
  {
    v44 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v119[0] = v116;
    *v44 = 136446210;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
    v45 = sub_26C6D8E28();
    v47 = v46;
    v31(v42, v43);
    v48 = sub_26C67A77C(v45, v47, v119);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_26C66B000, v39, v40, "EnrollmentAssetService prefers assetDirectoryURL %{public}s, attempting to create directory", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x26D6A7490](v116, -1, -1);
    MEMORY[0x26D6A7490](v44, -1, -1);
  }

  else
  {

    v31(v42, v43);
  }

  v117 = v31;
  v49 = v0[26];
  v50 = objc_opt_self();
  v51 = [v50 defaultManager];
  v52 = sub_26C6D8738();
  v0[12] = 0;
  v53 = [v51 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:v0 + 12];

  v54 = v0[12];
  if (!v53)
  {
    v72 = v0[28];
    v73 = v0[26];
    v74 = v0[19];
    v75 = v54;
    sub_26C6D86F8();

    swift_willThrow();
    v117(v73, v74);
    v117(v72, v74);
LABEL_22:
    v82 = v0[27];
    v81 = v0[28];
    v84 = v0[25];
    v83 = v0[26];
    v86 = v0[23];
    v85 = v0[24];
    v88 = v0[21];
    v87 = v0[22];
    v89 = v0[17];
    v90 = v0[18];

    v91 = v0[1];
    v92 = *MEMORY[0x277D85DE8];

    return v91();
  }

  v55 = v0[26];
  v57 = v0[22];
  v56 = v0[23];
  v58 = v0[19];
  v59 = v54;
  sub_26C6D8748();
  v118(v57, v56, v58);
  v60 = sub_26C6D8878();
  v61 = sub_26C6D8B98();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v0[22];
  v64 = v0[19];
  if (v62)
  {
    v65 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v119[0] = v113;
    *v65 = 136446210;
    v66 = v50;
    v67 = sub_26C6D8708();
    v69 = v68;
    v117(v63, v64);
    v70 = v67;
    v50 = v66;
    v71 = sub_26C67A77C(v70, v69, v119);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_26C66B000, v60, v61, "Attempting copy of Enrollments data to %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x26D6A7490](v113, -1, -1);
    MEMORY[0x26D6A7490](v65, -1, -1);
  }

  else
  {

    v117(v63, v64);
  }

  v76 = v0[28];
  v77 = v0[23];
  v78 = v0[17];
  v79 = [v50 defaultManager];
  sub_26C6D8B88();
  v80 = v0[19];
  v94 = v0[23];
  v95 = v0[21];
  sub_26C677B60(v0[17], &qword_2804A8E70, &qword_26C6DD1C0);

  v118(v95, v94, v80);
  v96 = sub_26C6D8878();
  v97 = sub_26C6D8B98();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v0[21];
  v100 = v0[19];
  if (v98)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v119[0] = v102;
    *v101 = 136446210;
    v103 = sub_26C6D8708();
    v105 = v104;
    v117(v99, v100);
    v106 = sub_26C67A77C(v103, v105, v119);

    *(v101 + 4) = v106;
    _os_log_impl(&dword_26C66B000, v96, v97, "Enrollments data successfully copied to %{public}s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    MEMORY[0x26D6A7490](v102, -1, -1);
    MEMORY[0x26D6A7490](v101, -1, -1);
  }

  else
  {

    v117(v99, v100);
  }

  v107 = swift_task_alloc();
  v0[33] = v107;
  *v107 = v0;
  v107[1] = sub_26C6ADCF0;
  v108 = v0[23];
  v109 = v0[15];
  v110 = v0[16];
  v111 = v0[14];
  v112 = *MEMORY[0x277D85DE8];

  return sub_26C6AE0DC(v111, v109, v108);
}

uint64_t sub_26C6ADCF0()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_26C6ADF98;
  }

  else
  {
    v7 = sub_26C6ADE58;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26C6ADE58()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v12 = v0[22];
  v13 = v0[21];
  v8 = v0[19];
  v14 = v0[17];
  v1(v0[23], v8);
  v1(v5, v8);
  v1(v4, v8);

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_26C6ADF98()
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[19];
  v2(v0[23], v5);
  v2(v4, v5);
  v2(v3, v5);
  v19 = v0[34];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[17];
  v15 = v0[18];

  v16 = v0[1];
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_26C6AE0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_26C6D8948();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_26C6D8778();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_26C6D8918();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  type metadata accessor for RapportFileTransferSourceAgent();
  sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent);
  v14 = sub_26C6D8AD8();
  v3[14] = v14;
  v3[15] = v13;

  return MEMORY[0x2822009F8](sub_26C6AE2AC, v14, v13);
}

uint64_t sub_26C6AE2AC()
{
  v15 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[16] = __swift_project_value_buffer(v1, qword_2804AD288);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD00000000000002FLL, 0x800000026C6DFDA0, &v14);
    _os_log_impl(&dword_26C66B000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v0[13];
  sub_26C6D8908();
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C66B000, v7, v8, "Activating EnrollmentAssetService", v9, 2u);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v10 = *(MEMORY[0x277D04E78] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_26C6AE4D4;
  v12 = v0[13];

  return MEMORY[0x28215A838]();
}

uint64_t sub_26C6AE4D4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_26C6AE5F4, v4, v3);
}

uint64_t sub_26C6AE5F4()
{
  v28 = v0;
  v1 = v0[16];
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    sub_26C6AFAE0(&qword_2804A87B8, MEMORY[0x277CC9260]);
    v10 = sub_26C6D8E28();
    v12 = v11;
    (*(v6 + 8))(v5, v7);
    v13 = sub_26C67A77C(v10, v12, &v27);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v2, v3, "Decoding EnrollmentAssets with update URL %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[7];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  sub_26C6D8928();
  v18 = v0[16];
  v19 = sub_26C6D8878();
  v20 = sub_26C6D8BB8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26C66B000, v19, v20, "Calling storeEnrollmentAssets", v21, 2u);
    MEMORY[0x26D6A7490](v21, -1, -1);
  }

  v22 = *(MEMORY[0x277D04DD0] + 4);
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_26C6AE928;
  v24 = v0[13];
  v25 = v0[7];

  return MEMORY[0x28215A808](v25);
}

uint64_t sub_26C6AE928()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_26C6AEBA8;
  }

  else
  {
    v7 = sub_26C6AEA64;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26C6AEA64()
{
  v1 = v0[16];
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Finished storing enrollmentAssets", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  (*(v10 + 8))(v9, v11);
  sub_26C6AEC70();
  (*(v6 + 8))(v5, v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26C6AEBA8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  sub_26C6AEC70();
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26C6AEC70()
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v0 = sub_26C6D8898();
  __swift_project_value_buffer(v0, qword_2804AD288);
  v1 = sub_26C6D8878();
  v2 = sub_26C6D8BB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26C66B000, v1, v2, "Invalidating EnrollmentAssetService", v3, 2u);
    MEMORY[0x26D6A7490](v3, -1, -1);
  }

  return sub_26C6D88D8();
}

void sub_26C6AED54()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26C6AF9BC;
  *(v2 + 24) = v0;
  v10 = sub_26C6AF9FC;
  v11 = v2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_26C6AAC78;
  v9 = &block_descriptor_2;
  v3 = _Block_copy(&v6);

  [v1 setReceivedItemHandler_];
  _Block_release(v3);
  v10 = sub_26C6AFA3C;
  v11 = v0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_26C671E20;
  v9 = &block_descriptor_11;
  v4 = _Block_copy(&v6);

  [v1 setProgressHandler_];
  _Block_release(v4);
  v10 = sub_26C6AFA44;
  v11 = v0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_26C6AABE4;
  v9 = &block_descriptor_14;
  v5 = _Block_copy(&v6);

  [v1 setCompletionHandler_];
  _Block_release(v5);
}

uint64_t sub_26C6AEF58(void *a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E60, &unk_26C6DD1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v11[3] = sub_26C6779D0(0, &qword_2804A87E8, 0x277D44180);
  v11[4] = &protocol witness table for RPFileTransferItem;
  v11[0] = a1;
  v12 = 0;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  sub_26C6D8B28();
  (*(v5 + 8))(v8, v4);
  return a2(0);
}

uint64_t sub_26C6AF0AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E60, &unk_26C6DD1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v7 = sub_26C6D8898();
  __swift_project_value_buffer(v7, qword_2804AD288);
  v8 = a1;
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v3;
    v12 = v11;
    v24 = swift_slowAlloc();
    v27[0] = v24;
    *v12 = 136315138;
    v13 = v8;
    v14 = [v13 description];
    v15 = sub_26C6D8A08();
    v25 = v6;
    v17 = v16;

    v18 = sub_26C67A77C(v15, v17, v27);
    v6 = v25;

    *(v12 + 4) = v18;
    _os_log_impl(&dword_26C66B000, v9, v10, "Source Progress Event: %s", v12, 0xCu);
    v19 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6A7490](v19, -1, -1);
    v20 = v12;
    v3 = v26;
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  v27[3] = sub_26C6779D0(0, &qword_2804A8E68, 0x277D44188);
  v27[4] = &off_287D2D6F8;
  v27[0] = v8;
  v28 = 1;
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  sub_26C6D8B28();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26C6AF364(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E60, &unk_26C6DD1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  if (a1)
  {
    v9 = a1;
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD288);
    v11 = a1;
    v12 = sub_26C6D8878();
    v13 = sub_26C6D8BB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27[0] = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v27[1] = a1;
      *&v28[0] = v16;
      *v15 = 136315138;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v18 = sub_26C6D8A18();
      v20 = sub_26C67A77C(v18, v19, v28);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26C66B000, v12, v13, "Source Transfer Failed: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6A7490](v16, -1, -1);
      MEMORY[0x26D6A7490](v15, -1, -1);
    }

    *&v28[0] = a1;
    v30 = 2;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
    sub_26C6D8B28();
  }

  else
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v22 = sub_26C6D8898();
    __swift_project_value_buffer(v22, qword_2804AD288);
    v23 = sub_26C6D8878();
    v24 = sub_26C6D8BB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26C66B000, v23, v24, "Source Transfer Complete", v25, 2u);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
    sub_26C6D8B28();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26C6AF6E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferSourceAgent_output;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26C6AF7A0()
{
  v1 = *(v0 + 24);
  [v1 finish];
  [v1 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8E58, &qword_26C6DD1A8);
  return sub_26C6D8B38();
}

uint64_t type metadata accessor for RapportFileTransferSourceAgent()
{
  result = qword_2804A8E38;
  if (!qword_2804A8E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C6AF868()
{
  sub_26C6AF914();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26C6AF914()
{
  if (!qword_2804A8E48)
  {
    v0 = sub_26C6D8B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A8E48);
    }
  }
}

uint64_t sub_26C6AF964(uint64_t a1)
{
  result = sub_26C6AFAE0(&qword_2804A8E50, type metadata accessor for RapportFileTransferSourceAgent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C6AF9C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6AF9FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C6AFA4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26C6AFA8C()
{
  result = qword_2804A8E90;
  if (!qword_2804A8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8E90);
  }

  return result;
}

uint64_t sub_26C6AFAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C6AFB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8EA0, &unk_26C6DD1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WFSetupClientState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WFSetupClientState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_26C6AFC50()
{
  result = qword_2804A8EB8;
  if (!qword_2804A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8EB8);
  }

  return result;
}

unint64_t sub_26C6AFCB8()
{
  result = qword_2804A8EC0;
  if (!qword_2804A8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8EC0);
  }

  return result;
}

uint64_t sub_26C6AFD0C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C68AF8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4);
}

uint64_t sub_26C6AFDAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C11BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3);
  return sub_26C676904(v8);
}

uint64_t sub_26C6AFF14@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C68A0F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4);
}

uint64_t sub_26C6AFFB4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0DD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3);
  return sub_26C676904(v8);
}

uint64_t sub_26C6B0130@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0DA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4);
}

uint64_t sub_26C6B01D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0D68;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3);
  return sub_26C676904(v8);
}

uint64_t sub_26C6B0338@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0D3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4);
}

uint64_t sub_26C6B03D8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0CD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3);
  return sub_26C676904(v8);
}

uint64_t sub_26C6B0540@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0D10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4);
}

uint64_t sub_26C6B05E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0CD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3);
  return sub_26C676904(v8);
}

uint64_t sub_26C6B0748@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26C6C0CA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26C676954(v4);
}

uint64_t sub_26C6B07E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C6C0C64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26C676954(v3);
  return sub_26C676904(v8);
}

uint64_t sub_26C6B08D0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_26C6B0958(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_26C6B0A20()
{
  v1 = sub_26C6D8838();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = [*(*(v0 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent) + 24) identifier];
  if (v13)
  {
    v14 = v13;
    sub_26C6D8818();

    (*(v2 + 56))(v10, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v10, 1, 1, v1);
  }

  sub_26C6767B0(v10, v12);
  if ((*(v2 + 48))(v12, 1, v1))
  {
    sub_26C677B60(v12, &qword_2804A86E0, &qword_26C6DA3B8);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v5, v12, v1);
    sub_26C677B60(v12, &qword_2804A86E0, &qword_26C6DA3B8);
    v16 = sub_26C6D87D8();
    (*(v2 + 8))(v5, v1);
    return v16;
  }
}

id WFSetupClient.__allocating_init(queue:deviceIdentifier:activationFlow:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v49 = a1;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_26C6D8838();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v15 = sub_26C6D8898();
  __swift_project_value_buffer(v15, qword_2804AD240);

  v16 = sub_26C6D8878();
  v17 = sub_26C6D8BB8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_26C67A77C(a2, a3, v52);
    _os_log_impl(&dword_26C66B000, v16, v17, "Initializing WFSetupClient with deviceIdentifier: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D6A7490](v19, -1, -1);
    MEMORY[0x26D6A7490](v18, -1, -1);
  }

  sub_26C6D87C8();

  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_26C6D8828();
    if (v20(v9, 1, v10) != 1)
    {
      sub_26C677B60(v9, &qword_2804A86E0, &qword_26C6DA3B8);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  v21 = type metadata accessor for SFSessionAgent();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v48 = sub_26C6A51B4(v14);
  v24 = [objc_allocWithZone(type metadata accessor for SFAnisetteAgent()) init];
  v25 = type metadata accessor for RapportFileTransferSourceAgent();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_26C6AAD94();
  v29 = sub_26C6C0BE4(&qword_2804A8F00, type metadata accessor for SFSessionAgent);
  v30 = sub_26C6C0BE4(&qword_2804A8F08, type metadata accessor for RapportFileTransferSourceAgent);
  v31 = type metadata accessor for WFSetupClient();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler];
  *v38 = 0;
  *(v38 + 1) = 0;
  *&v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask] = 0;
  *&v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask] = 0;
  v39 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_analyticsManager;
  v52[3] = &type metadata for CoreAnalyticsBackend;
  v52[4] = &off_287D2B788;
  type metadata accessor for AnalyticsManager();
  v40 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v52, &type metadata for CoreAnalyticsBackend);
  *(v40 + 40) = &type metadata for CoreAnalyticsBackend;
  *(v40 + 48) = &off_287D2B788;
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  *&v32[v39] = v40;
  v41 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_incomingFileInfo;
  *&v32[v41] = sub_26C68AA04(MEMORY[0x277D84F90]);
  v42 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent];
  *v42 = v48;
  v42[1] = v29;
  v43 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent];
  *v43 = v24;
  *(v43 + 1) = &off_287D2E2E8;
  v44 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent];
  *v44 = v28;
  *(v44 + 1) = v30;
  v45 = v50;
  *&v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue] = v49;
  v46 = &v32[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state];
  *v46 = 0;
  *(v46 + 1) = v45;
  v51.receiver = v32;
  v51.super_class = v31;
  return objc_msgSendSuper2(&v51, sel_init);
}

id WFSetupClient.__deallocating_deinit()
{
  v1 = v0;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running WFSetupClient::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  v7 = type metadata accessor for WFSetupClient();
  v10.receiver = v1;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_26C6B13F8()
{
  v1 = sub_26C6D8958();
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C6D8978();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v13 = sub_26C6D8898();
  __swift_project_value_buffer(v13, qword_2804AD240);
  v14 = sub_26C6D8878();
  v15 = sub_26C6D8BB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_26C67A77C(0x6164696C61766E69, 0xEC00000029286574, aBlock);
    _os_log_impl(&dword_26C66B000, v14, v15, "Running WFSetupClient::%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6A7490](v17, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  v18 = &v0[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state];
  if (v0[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state + 1] - 1 > 3)
  {
    v22 = v0;
    v23 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      LOBYTE(v37) = v18[1];
      v27 = sub_26C6D8A18();
      v29 = sub_26C67A77C(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_26C66B000, v23, v24, "Calling invalidate on a non-active session state: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    v30 = *&v22[OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_26C6C11AC;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C670B0C;
    aBlock[3] = &block_descriptor_3;
    v32 = _Block_copy(aBlock);

    sub_26C6D8968();
    v37 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v8, v4, v32);
    _Block_release(v32);
    (*(v36 + 8))(v4, v1);
    (*(v34 + 8))(v8, v35);
  }

  else
  {
    v18[1] = 6;
    v19 = sub_26C6D8B08();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v0;
    v21 = v0;
    sub_26C68AF90(0, 0, v12, &unk_26C6DD380, v20);
  }
}

uint64_t sub_26C6B19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26C6D8958();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_26C6D8978();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6B1AC4, 0, 0);
}

uint64_t sub_26C6B1AC4()
{
  *(v0 + 128) = *(*(v0 + 72) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  type metadata accessor for SFSessionAgent();
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
  swift_unknownObjectRetain();
  v2 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B1BA0, v2, v1);
}

uint64_t sub_26C6B1BA0()
{
  v1 = *(v0 + 128);
  sub_26C6A6390();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B1C10, 0, 0);
}

uint64_t sub_26C6B1C10()
{
  v1 = v0[9];
  *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state + 1) = 5;
  v2 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask;
  if (*(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask);

    sub_26C6D8B58();

    v4 = *(v1 + v2);
  }

  v5 = v0[9];
  *(v1 + v2) = 0;

  v6 = v5 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent;
  v0[17] = *(v5 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  v7 = *(v6 + 8);
  swift_getObjectType();
  v8 = sub_26C6C0BE4(&qword_2804A8F08, type metadata accessor for RapportFileTransferSourceAgent);
  v0[18] = v8;
  v0[19] = *(v8 + 56);
  v0[20] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xF33D000000000000;
  v9 = *(v7 + 8);
  v11 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B1D64, v11, v10);
}

uint64_t sub_26C6B1D64()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = type metadata accessor for RapportFileTransferSourceAgent();
  v2(v5, v3);

  return MEMORY[0x2822009F8](sub_26C6B1DE4, 0, 0);
}

uint64_t sub_26C6B1DE4()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask;
  if (*(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask);

    sub_26C6D8B58();

    v4 = *(v1 + v2);
  }

  v5 = v0[9];
  v6 = v0[15];
  v7 = v0[12];
  v16 = v0[14];
  v17 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  *(v1 + v2) = 0;

  v15 = *(v5 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_26C6C10FC;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26C670B0C;
  v0[5] = &block_descriptor_187;
  v11 = _Block_copy(v0 + 2);

  sub_26C6D8968();
  v0[8] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v6, v7, v11);
  _Block_release(v11);
  (*(v9 + 8))(v7, v8);
  (*(v16 + 8))(v6, v17);
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

void sub_26C6B2068()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler;
    v2 = Strong;
    swift_beginAccess();
    v4 = *v1;
    v3 = *(v1 + 8);
    sub_26C676954(v4);

    if (v4)
    {
      v4();
      sub_26C676904(v4);
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_26C6B2134();
  }
}

uint64_t sub_26C6B2134()
{
  v1 = v0;
  v2 = sub_26C6D8988();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_26C6D8998();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_2804A85A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_26C6D8898();
  __swift_project_value_buffer(v9, qword_2804AD240);
  v10 = sub_26C6D8878();
  v11 = sub_26C6D8BB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_26C67A77C(0xD000000000000011, 0x800000026C6E0180, &v34);
    _os_log_impl(&dword_26C66B000, v10, v11, "Running WFSetupClient::%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6A7490](v13, -1, -1);
    MEMORY[0x26D6A7490](v12, -1, -1);
  }

  v14 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  sub_26C676904(v15);
  v17 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_invalidationHandler);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  sub_26C676904(v18);
  v20 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_26C676904(v21);
  v23 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  sub_26C676904(v24);
  v26 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupSecurePairingCompletionHandler);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  sub_26C676904(v27);
  v29 = (v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  *v29 = 0;
  v29[1] = 0;
  return sub_26C676904(v30);
}

uint64_t sub_26C6B2460()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD240);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_26C67A77C(0x6574617669746361, 0xEA00000000002928, &v16);
    _os_log_impl(&dword_26C66B000, v7, v8, "Running WFSetupClient::%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = sub_26C6D8B08();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v13 = v1;
  sub_26C68AF90(0, 0, v5, &unk_26C6DD390, v12);
}

uint64_t sub_26C6B2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a4;
  v5 = sub_26C6D8958();
  v4[48] = v5;
  v6 = *(v5 - 8);
  v4[49] = v6;
  v7 = *(v6 + 64) + 15;
  v4[50] = swift_task_alloc();
  v8 = sub_26C6D8978();
  v4[51] = v8;
  v9 = *(v8 - 8);
  v4[52] = v9;
  v10 = *(v9 + 64) + 15;
  v4[53] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0) - 8) + 64) + 15;
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6B27D4, 0, 0);
}

uint64_t sub_26C6B27D4()
{
  v1 = v0[47];
  v2 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  v0[55] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_state;
  v3 = v1 + v2;
  if (*(v1 + v2 + 1) - 1 >= 4)
  {
    v13 = v0[54];
    v0[56] = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    *(swift_task_alloc() + 16) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8C38, &qword_26C6DB550);
    sub_26C6D8BE8();
    v0[57] = 0;

    v14 = sub_26C6D8B08();
    v0[58] = v14;
    v15 = *(v14 - 8);
    v16 = *(v15 + 56);
    v0[59] = v16;
    v0[60] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v16(v13, 1, 1, v14);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v19 = sub_26C68AF90(0, 0, v13, &unk_26C6DD430, v18);
    v20 = *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask);
    *(v1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgentListeningTask) = v19;

    *(v3 + 1) = 1;
    v21 = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
    v0[61] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent;
    v0[62] = *(v1 + v21);
    v0[63] = type metadata accessor for SFSessionAgent();
    v0[64] = sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent);
    swift_unknownObjectRetain();
    v23 = sub_26C6D8AD8();
    v0[65] = v23;
    v0[66] = v22;

    return MEMORY[0x2822009F8](sub_26C6B2B40, v23, v22);
  }

  else
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD240);
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26C66B000, v5, v6, "WFSetupClient is already activated.", v7, 2u);
      MEMORY[0x26D6A7490](v7, -1, -1);
    }

    v9 = v0[53];
    v8 = v0[54];
    v10 = v0[50];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_26C6B2B40()
{
  v1 = v0[62];
  sub_26C6A5EEC();
  sub_26C6A623C();
  v2 = *(v1 + 32);
  v0[2] = v0;
  v0[3] = sub_26C6B2C60;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F0, &qword_26C6DA3C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6A4DB4;
  v0[13] = &block_descriptor_162;
  v0[14] = v3;
  [v2 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6B2C60()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 536) = v3;
  v4 = *(v1 + 528);
  v5 = *(v1 + 520);
  if (v3)
  {
    v6 = sub_26C6B2F64;
  }

  else
  {
    v6 = sub_26C6B2D90;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26C6B2D90()
{
  v1 = *(v0 + 496);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B2DF8, 0, 0);
}

uint64_t sub_26C6B2DF8()
{
  *(v0[47] + v0[55] + 1) = 2;
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[68] = __swift_project_value_buffer(v1, qword_2804AD240);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Activation Successful, registering for requests.", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[61];
  v8 = v0[47];

  v0[69] = *(v8 + v7);
  swift_unknownObjectRetain();
  v10 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B34A4, v10, v9);
}

uint64_t sub_26C6B2F64()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 496);
  swift_willThrow();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B2FE0, 0, 0);
}

uint64_t sub_26C6B2FE0()
{
  v1 = v0[67];
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error activating session: %{public}@", v6, 0xCu);
    sub_26C677B60(v7, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v10 = v0[53];
  v11 = v0[50];
  v39 = v0[52];
  v40 = v0[51];
  v13 = v0[48];
  v12 = v0[49];
  v37 = v0[56];
  v38 = v0[47];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v1;
  v0[38] = sub_26C6C11C0;
  v0[39] = v15;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_26C670B0C;
  v0[37] = &block_descriptor_169;
  v16 = _Block_copy(v0 + 34);
  v17 = v1;

  sub_26C6D8968();
  v0[45] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v10, v11, v16);
  _Block_release(v16);
  (*(v12 + 8))(v11, v13);
  (*(v39 + 8))(v10, v40);
  v18 = v0[39];

  v19 = *(v38 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_analyticsManager);
  v20 = sub_26C6B0A20();
  v22 = v21;
  v23 = sub_26C6D86E8();
  v24 = [v23 code];

  v0[46] = v24;
  v25 = sub_26C6D8E28();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(inited + 32) = 0x646F43726F727265;
  v29 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  v30 = sub_26C68A7EC(inited);
  swift_setDeallocating();
  sub_26C677B60(v29, &qword_2804A8BE8, &qword_26C6DB4F8);
  v0[43] = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
  v0[44] = sub_26C6C08B8();
  v31 = swift_allocObject();
  v0[40] = v31;
  v31[2] = 0xD000000000000044;
  v31[3] = 0x800000026C6E0070;
  v31[4] = v20;
  v31[5] = v22;
  v31[6] = v30;
  sub_26C6CDF0C(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);
  v33 = v0[53];
  v32 = v0[54];
  v34 = v0[50];

  v35 = v0[1];

  return v35();
}

uint64_t sub_26C6B34A4()
{
  v1 = *(v0 + 552);
  sub_26C6A6934(&type metadata for SetupActionRequest, &off_287D2E230);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3524, 0, 0);
}

uint64_t sub_26C6B3524()
{
  v2 = v0[63];
  v1 = v0[64];
  v0[70] = *(v0[47] + v0[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B35BC, v4, v3);
}

uint64_t sub_26C6B35BC()
{
  v1 = *(v0 + 560);
  sub_26C6A6934(&type metadata for UserInteractionRequest, &off_287D2F1F0);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B363C, 0, 0);
}

uint64_t sub_26C6B363C()
{
  v2 = v0[63];
  v1 = v0[64];
  v0[71] = *(v0[47] + v0[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B36D4, v4, v3);
}

uint64_t sub_26C6B36D4()
{
  v1 = *(v0 + 568);
  sub_26C6A6934(&type metadata for SecurityRequest, &off_287D2D528);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3754, 0, 0);
}

uint64_t sub_26C6B3754()
{
  v2 = v0[63];
  v1 = v0[64];
  v0[72] = *(v0[47] + v0[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B37EC, v4, v3);
}

uint64_t sub_26C6B37EC()
{
  v1 = *(v0 + 576);
  sub_26C6A6934(&type metadata for RapportSetupConnectionRequest, &off_287D2CA78);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B386C, 0, 0);
}

uint64_t sub_26C6B386C()
{
  v2 = v0[63];
  v1 = v0[64];
  v0[73] = *(v0[47] + v0[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B3904, v4, v3);
}

uint64_t sub_26C6B3904()
{
  v1 = *(v0 + 584);
  sub_26C6A6934(&type metadata for RapportRetrieveDataRequest, &off_287D2E918);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3984, 0, 0);
}

uint64_t sub_26C6B3984()
{
  v2 = v0[63];
  v1 = v0[64];
  v0[74] = *(v0[47] + v0[61]);
  swift_unknownObjectRetain();
  v4 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B3A1C, v4, v3);
}

uint64_t sub_26C6B3A1C()
{
  v1 = *(v0 + 592);
  sub_26C6A6934(&type metadata for RapportPrepareToSendDataRequest, &off_287D2E0F8);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3A9C, 0, 0);
}

uint64_t sub_26C6B3A9C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 432);
  v3 = *(v0 + 376);
  v4 = v3 + *(v0 + 440);
  (*(v0 + 472))(v2, 1, 1, *(v0 + 464));
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_26C68AF90(0, 0, v2, &unk_26C6DD440, v6);
  v8 = *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask);
  *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgentListeningTask) = v7;

  if ((*(v4 + 8) | 2) == 3)
  {
    v10 = *(v0 + 504);
    v9 = *(v0 + 512);
    *(v0 + 600) = *(*(v0 + 376) + *(v0 + 488));
    swift_unknownObjectRetain();
    v11 = sub_26C6D8AD8();
    v13 = v12;
    v14 = sub_26C6B3CC4;
  }

  else
  {
    v15 = *(v0 + 544);
    v16 = sub_26C6D8878();
    v17 = sub_26C6D8BB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26C66B000, v16, v17, "Registrations complete. Automatically sending LegacyPreAuthObject.", v18, 2u);
      MEMORY[0x26D6A7490](v18, -1, -1);
    }

    v20 = *(v0 + 504);
    v19 = *(v0 + 512);
    v21 = *(v0 + 488);
    v22 = *(v0 + 376);

    *(v0 + 608) = *(v22 + v21);
    swift_unknownObjectRetain();
    v23 = sub_26C6C9DF4();
    *(v0 + 232) = &type metadata for LegacyPreAuthObject;
    *(v0 + 240) = &off_287D2EF48;
    *(v0 + 208) = v23;
    *(v0 + 264) = 1;
    v11 = sub_26C6D8AD8();
    v13 = v24;
    v14 = sub_26C6B3E78;
  }

  return MEMORY[0x2822009F8](v14, v11, v13);
}

uint64_t sub_26C6B3CC4()
{
  v1 = *(v0 + 600);
  sub_26C6A6934(&type metadata for AnisetteTransmittableRequest, &off_287D2CFA0);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26C6B3D44, 0, 0);
}

uint64_t sub_26C6B3D44()
{
  v1 = *(v0 + 544);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26C66B000, v2, v3, "Registrations complete. Automatically sending LegacyPreAuthObject.", v4, 2u);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 488);
  v8 = *(v0 + 376);

  *(v0 + 608) = *(v8 + v7);
  swift_unknownObjectRetain();
  v9 = sub_26C6C9DF4();
  *(v0 + 232) = &type metadata for LegacyPreAuthObject;
  *(v0 + 240) = &off_287D2EF48;
  *(v0 + 208) = v9;
  *(v0 + 264) = 1;
  v11 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B3E78, v11, v10);
}

uint64_t sub_26C6B3E78()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 456);
  *(v0 + 266) = sub_26C6A6570(v0 + 208);
  v3 = *(v0 + 608);
  swift_unknownObjectRelease();
  if (v2)
  {

    return MEMORY[0x2822009F8](sub_26C6B3F58, 0, 0);
  }

  else
  {
    sub_26C6C0984(v0 + 208);
    v5 = *(v0 + 424);
    v4 = *(v0 + 432);
    v6 = *(v0 + 400);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_26C6B3F58()
{
  v1 = *(v0 + 266);
  sub_26C6A9714();
  v2 = swift_allocError();
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  sub_26C6C0984(v0 + 208);
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD240);
  v5 = v2;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26C66B000, v6, v7, "Error activating session: %{public}@", v8, 0xCu);
    sub_26C677B60(v9, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v12 = *(v0 + 424);
  v13 = *(v0 + 400);
  v41 = *(v0 + 416);
  v42 = *(v0 + 408);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  v39 = *(v0 + 448);
  v40 = *(v0 + 376);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2;
  *(v0 + 304) = sub_26C6C11C0;
  *(v0 + 312) = v17;
  *(v0 + 272) = MEMORY[0x277D85DD0];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_26C670B0C;
  *(v0 + 296) = &block_descriptor_169;
  v18 = _Block_copy((v0 + 272));
  v19 = v2;

  sub_26C6D8968();
  *(v0 + 360) = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v12, v13, v18);
  _Block_release(v18);
  (*(v14 + 8))(v13, v15);
  (*(v41 + 8))(v12, v42);
  v20 = *(v0 + 312);

  v21 = *(v40 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_analyticsManager);
  v22 = sub_26C6B0A20();
  v24 = v23;
  v25 = sub_26C6D86E8();
  v26 = [v25 code];

  *(v0 + 368) = v26;
  v27 = sub_26C6D8E28();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(inited + 32) = 0x646F43726F727265;
  v31 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v27;
  *(inited + 56) = v29;
  v32 = sub_26C68A7EC(inited);
  swift_setDeallocating();
  sub_26C677B60(v31, &qword_2804A8BE8, &qword_26C6DB4F8);
  *(v0 + 344) = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
  *(v0 + 352) = sub_26C6C08B8();
  v33 = swift_allocObject();
  *(v0 + 320) = v33;
  v33[2] = 0xD000000000000044;
  v33[3] = 0x800000026C6E0070;
  v33[4] = v22;
  v33[5] = v24;
  v33[6] = v32;
  sub_26C6CDF0C((v0 + 320));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 320));
  v35 = *(v0 + 424);
  v34 = *(v0 + 432);
  v36 = *(v0 + 400);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26C6B4450@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);
    sub_26C676954(v5);
    v7 = sub_26C689E88(MEMORY[0x277D84F90]);
    v5(0, v7);
    sub_26C676904(v5);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_26C6B4528()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26C691F84;

    return sub_26C6B69A0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26C6B4630()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26C6C112C;

    return sub_26C6B4718();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26C6B4738()
{
  v13 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = sub_26C6D8898();
  v0[81] = __swift_project_value_buffer(v1, qword_2804AD288);
  v2 = sub_26C6D8878();
  v3 = sub_26C6D8BB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_26C67A77C(0xD000000000000022, 0x800000026C6E01C0, &v12);
    _os_log_impl(&dword_26C66B000, v2, v3, "Running WFSetupClient::%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6A7490](v5, -1, -1);
    MEMORY[0x26D6A7490](v4, -1, -1);
  }

  v6 = (v0[80] + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  v0[82] = *v6;
  v7 = v6[1];
  swift_getObjectType();
  v8 = *(v7 + 8);
  v10 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6B48EC, v10, v9);
}

uint64_t sub_26C6B48EC()
{
  sub_26C67749C(*(v0 + 656) + 32, v0 + 296);

  return MEMORY[0x2822009F8](sub_26C6B495C, 0, 0);
}

uint64_t sub_26C6B495C()
{
  v1 = v0[80];
  v2 = v0[40];
  v3 = v0[41];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 37, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = *(v3 + 8);
  v0[35] = swift_getAssociatedTypeWitness();
  v0[36] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 32);
  sub_26C6D8B68();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  v0[83] = OBJC_IVAR____TtC10TDGSharing13WFSetupClient_incomingFileInfo;
  swift_beginAccess();
  v9 = v0[36];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v0[35]);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[84] = v11;
  *v11 = v0;
  v11[1] = sub_26C6B4B44;

  return MEMORY[0x282200310](v0 + 2, 0, 0);
}

uint64_t sub_26C6B4B44()
{
  v2 = *(*v1 + 672);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26C6B4C54, 0, 0);
  }

  return result;
}

uint64_t sub_26C6B4C54()
{
  v92 = v0;
  if (*(v0 + 56) != 255)
  {
    v1 = *(v0 + 648);
    v2 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v2;
    *(v0 + 89) = *(v0 + 41);
    sub_26C6C1008(v0 + 64, v0 + 112);
    v3 = sub_26C6D8878();
    v4 = sub_26C6D8BB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v91 = v6;
      *v5 = 136315138;
      sub_26C6C1008(v0 + 112, v0 + 208);
      v7 = sub_26C6D8A18();
      v9 = v8;
      sub_26C6C1064(v0 + 112);
      v10 = sub_26C67A77C(v7, v9, &v91);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_26C66B000, v3, v4, "File Transfer Agent Event Received: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x26D6A7490](v6, -1, -1);
      MEMORY[0x26D6A7490](v5, -1, -1);
    }

    else
    {

      sub_26C6C1064(v0 + 112);
    }

    sub_26C6C1008(v0 + 64, v0 + 160);
    v13 = *(v0 + 648);
    if (*(v0 + 200) <= 1u)
    {
      v14 = (v0 + 160);
      if (!*(v0 + 200))
      {
        sub_26C676744(v14, v0 + 416);
        sub_26C67749C(v0 + 416, v0 + 456);
        v15 = sub_26C6D8878();
        v16 = sub_26C6D8B98();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v91 = v18;
          *v17 = 136315138;
          v19 = *(v0 + 480);
          v20 = *(v0 + 488);
          __swift_project_boxed_opaque_existential_1((v0 + 456), v19);
          *(v0 + 616) = (*(v20 + 8))(v19, v20);
          *(v0 + 624) = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
          v22 = sub_26C6D8A18();
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
          v25 = sub_26C67A77C(v22, v24, &v91);

          *(v17 + 4) = v25;
          _os_log_impl(&dword_26C66B000, v15, v16, "File Transfer Item Received: %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          MEMORY[0x26D6A7490](v18, -1, -1);
          MEMORY[0x26D6A7490](v17, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
        }

        v48 = *(v0 + 440);
        v49 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v48);
        v50 = (*(v49 + 8))(v48, v49);
        if (v51)
        {
          v52 = v51;
          v53 = *(v0 + 640);
          v54 = *(v53 + *(v0 + 664));
          if (*(v54 + 16))
          {
            v55 = v50;
            v56 = *(v53 + *(v0 + 664));

            v57 = sub_26C689AC8(v55, v52);
            if (v58)
            {
              v59 = *(v0 + 648);
              v60 = (*(v54 + 56) + 16 * v57);
              v61 = *v60;
              *(v0 + 680) = *v60;
              v62 = v60[1];
              *(v0 + 688) = v62;
              sub_26C67ED2C(v61, v62);

              sub_26C67749C(v0 + 416, v0 + 496);
              v63 = sub_26C6D8878();
              v64 = sub_26C6D8B98();
              if (os_log_type_enabled(v63, v64))
              {
                v90 = v62;
                v65 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v91 = v89;
                *v65 = 136315138;
                v66 = *(v0 + 520);
                v67 = *(v0 + 528);
                __swift_project_boxed_opaque_existential_1((v0 + 496), v66);
                *(v0 + 600) = (*(v67 + 8))(v66, v67);
                *(v0 + 608) = v68;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
                v69 = sub_26C6D8A18();
                v71 = v70;
                __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
                v72 = sub_26C67A77C(v69, v71, &v91);

                *(v65 + 4) = v72;
                _os_log_impl(&dword_26C66B000, v63, v64, "Received file info for: %s", v65, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v89);
                MEMORY[0x26D6A7490](v89, -1, -1);
                v73 = v65;
                v62 = v90;
                MEMORY[0x26D6A7490](v73, -1, -1);
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
              }

              v82 = *(v0 + 664);
              v83 = *(v0 + 640);
              swift_beginAccess();
              sub_26C6BFC14(v55, v52, (v0 + 584));
              v84 = *(v0 + 584);
              v85 = *(v0 + 592);
              swift_endAccess();
              sub_26C67EE70(v84, v85);

              v87 = swift_task_alloc();
              *(v0 + 696) = v87;
              *v87 = v0;
              v87[1] = sub_26C6B5634;
              v88 = *(v0 + 640);

              return sub_26C6BECA4(v0 + 416, v86, v61, v62);
            }
          }
        }

        v75 = *(v0 + 648);
        v76 = sub_26C6D8878();
        v77 = sub_26C6D8BA8();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_26C66B000, v76, v77, "File Transfer sent without RapportPrepareToSendDataRequest.", v78, 2u);
          MEMORY[0x26D6A7490](v78, -1, -1);
        }

        sub_26C6C1064(v0 + 64);
        v74 = (v0 + 416);
        goto LABEL_34;
      }

      sub_26C676744(v14, v0 + 336);
      sub_26C67749C(v0 + 336, v0 + 376);
      v36 = sub_26C6D8878();
      v37 = sub_26C6D8B98();
      if (!os_log_type_enabled(v36, v37))
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
        sub_26C6C1064(v0 + 64);
        v74 = (v0 + 376);
LABEL_34:
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        goto LABEL_35;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v91 = v39;
      *v38 = 136315138;
      v40 = *(v0 + 400);
      v41 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v40);
      (*(v41 + 8))(v40, v41);
      v42 = sub_26C6D8B78();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
      v45 = sub_26C67A77C(v42, v44, &v91);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_26C66B000, v36, v37, "File Transfer Progress Update - Remaining Seconds: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x26D6A7490](v39, -1, -1);
      MEMORY[0x26D6A7490](v38, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
LABEL_27:
      sub_26C6C1064(v0 + 64);
LABEL_35:
      v79 = *(v0 + 288);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, *(v0 + 280));
      v80 = *(MEMORY[0x277D856D8] + 4);
      v81 = swift_task_alloc();
      *(v0 + 672) = v81;
      *v81 = v0;
      v81[1] = sub_26C6B4B44;

      return MEMORY[0x282200310](v0 + 16, 0, 0);
    }

    if (*(v0 + 200) == 2)
    {
      v26 = *(v0 + 160);
      v27 = v26;
      v28 = sub_26C6D8878();
      v29 = sub_26C6D8BA8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v91 = v31;
        *v30 = 136315138;
        *(v0 + 632) = v26;
        v32 = v26;
        v33 = sub_26C6D8A18();
        v35 = sub_26C67A77C(v33, v34, &v91);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_26C66B000, v28, v29, "Error completing file transfer: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x26D6A7490](v31, -1, -1);
        MEMORY[0x26D6A7490](v30, -1, -1);

        goto LABEL_27;
      }
    }

    else
    {
      v28 = sub_26C6D8878();
      v46 = sub_26C6D8B98();
      if (os_log_type_enabled(v28, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_26C66B000, v28, v46, "File Transfer Complete", v47, 2u);
        MEMORY[0x26D6A7490](v47, -1, -1);
      }
    }

    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  v11 = *(v0 + 8);

  return v11();
}