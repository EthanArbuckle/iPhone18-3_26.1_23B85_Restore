uint64_t sub_231056128(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_23105662C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  sub_231042684(v5);
  return sub_231056214(v9, v8);
}

uint64_t sub_2310561C4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_231042684(v1);
  return v1;
}

uint64_t sub_231056214(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_231046164(v5);
}

uint64_t *sub_2310562BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v3[4] = 0;
  v3[5] = 0;
  v7 = *(v6 + 88);
  v3[2] = a3;
  v3[3] = v7;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v3;
  v9 = *(v7 + 32);
  v10 = *(v6 + 80);
  swift_unknownObjectRetain();

  v9(sub_231056644, v8, v10, v7);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2310563BC(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
    result = sub_2310561C4();
    if (result)
    {
      v4 = result;
      (result)(a1);

      return sub_231046164(v4);
    }
  }

  return result;
}

void *EventFilter.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  sub_231046164(v0[4]);
  return v0;
}

uint64_t EventFilter.__deallocating_deinit()
{
  EventFilter.deinit();
  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_231056494(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

void (*sub_2310564B8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231056268();
  return sub_231056514;
}

void sub_231056514(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23105662C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_2310CA548(a1, *(v1 + 32));
}

uint64_t sub_231056638(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_23108020C(a1, *(v1 + 32));
}

uint64_t sub_231056644(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2310563BC(a1, *(v1 + 16));
}

uint64_t sub_231056690@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2310566BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2310566BC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE08, &qword_2311622C8);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057C44();
  sub_231159958();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  sub_231057C98();
  sub_231159788();
  sub_231054A0C(0, &qword_27DD3BE18, 0x277CCAAC8);
  sub_231054A0C(0, &qword_27DD3BE20, 0x277D7A1D0);
  result = sub_231159308();
  v8 = result;
  if (result)
  {
    v10 = OUTLINED_FUNCTION_2_3();
    v11(v10);
    sub_231054A60(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2310568C8(void *a1, uint64_t a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE28, &qword_2311622D0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057C44();
  sub_231159968();
  v13 = objc_opt_self();
  v23[0] = 0;
  v14 = [v13 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v23];
  v15 = v23[0];
  if (v14)
  {
    v16 = sub_2311579A8();
    v18 = v17;

    v23[0] = v16;
    v23[1] = v18;
    sub_231057CEC();
    sub_2311597A8();
    (*(v6 + 8))(v11, v4);
    result = sub_231054A60(v16, v18);
  }

  else
  {
    v20 = v15;
    sub_231157938();

    swift_willThrow();
    result = (*(v6 + 8))(v11, v4);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_231056AC0()
{
  v0 = sub_231159758();

  return v0 != 0;
}

BOOL sub_231056B18@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231056AC0();
  *a2 = result;
  return result;
}

BOOL sub_231056B88@<W0>(_BYTE *a1@<X8>)
{
  result = sub_231056AC0();
  *a1 = result;
  return result;
}

uint64_t sub_231056BCC(uint64_t a1)
{
  v2 = sub_231057C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231056C08(uint64_t a1)
{
  v2 = sub_231057C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CSSearchableItemAttributeSet.set(workflowDescriptorForDisplayRepresentation:)(void *a1)
{
  v2 = sub_2311577A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for WFWorkflowDescriptorCodableProxy;
  v12[4] = sub_231056D84();
  v12[5] = sub_231056DD8();
  v12[0] = a1;
  v10 = a1;
  sub_231157798();
  sub_2311593D8();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_231056D84()
{
  result = qword_280CCB5A8;
  if (!qword_280CCB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5A8);
  }

  return result;
}

unint64_t sub_231056DD8()
{
  result = qword_280CCB5B0;
  if (!qword_280CCB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5B0);
  }

  return result;
}

void sub_231056E2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CSSearchableItemAttributeSet.set(workflowDescriptorForDisplayRepresentation:)(v4);
}

uint64_t CSSearchableItemAttributeSet.associateWithAppEntity(descriptor:)(void *a1)
{
  v2 = [a1 identifier];
  sub_231158E58();

  v3 = [a1 name];
  sub_231158E58();

  sub_231158DB8();
  sub_2311593E8();
}

void sub_231056FD0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CSSearchableItemAttributeSet.associateWithAppEntity(descriptor:)(v4);
}

double sub_231057038@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23105707C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_23105707C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE30, &qword_2311622D8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057D40();
  sub_231159958();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v14 = sub_231159778();
  v27 = v15;
  v29 = 1;
  v25 = sub_231159778();
  v26 = v16;
  v28 = 2;
  v17 = sub_231159778();
  v18 = v12;
  v20 = v19;
  (*(v7 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_2310572B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE38, &qword_2311622E0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057D40();
  sub_231159968();
  v14 = *v3;
  v15 = v3[1];
  v24 = 0;
  OUTLINED_FUNCTION_5_2(v14, v15, &v24);
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23 = 1;
    OUTLINED_FUNCTION_5_2(v16, v17, &v23);
    v18 = v3[4];
    v19 = v3[5];
    v22 = 2;
    OUTLINED_FUNCTION_5_2(v18, v19, &v22);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_231057410()
{
  v0 = sub_231159758();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23105745C(char a1)
{
  if (!a1)
  {
    return 0x6953657361726870;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_2310574C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_231050EFC();
}

uint64_t sub_2310574EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231057410();
  *a2 = result;
  return result;
}

uint64_t sub_23105751C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23105745C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231057550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231057410();
  *a1 = result;
  return result;
}

uint64_t sub_231057584(uint64_t a1)
{
  v2 = sub_231057D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2310575C0(uint64_t a1)
{
  v2 = sub_231057D40();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_231057630(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4 = sub_231158E28();

  return v4;
}

Swift::Void __swiftcall CSSearchableItemAttributeSet.setAppShortcutDisplayRepresentation(for:bundleIdentifier:associatedAppBundleIdentifier:)(Swift::String a1, Swift::String bundleIdentifier, Swift::String associatedAppBundleIdentifier)
{
  object = associatedAppBundleIdentifier._object;
  countAndFlagsBits = associatedAppBundleIdentifier._countAndFlagsBits;
  v5 = bundleIdentifier._object;
  v6 = bundleIdentifier._countAndFlagsBits;
  v7 = a1._object;
  v8 = a1._countAndFlagsBits;
  v9 = sub_2311577A8();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[5] = &type metadata for WFAppShortcutCodableProxy;
  v18[6] = sub_2310577F4();
  v18[7] = sub_231057848();
  v17 = swift_allocObject();
  v18[2] = v17;
  v17[2] = v8;
  v17[3] = v7;
  v17[4] = v6;
  v17[5] = v5;
  v17[6] = countAndFlagsBits;
  v17[7] = object;

  sub_231157798();
  sub_2311593D8();
  (*(v12 + 8))(v16, v9);
}

unint64_t sub_2310577F4()
{
  result = qword_280CCB6A0;
  if (!qword_280CCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6A0);
  }

  return result;
}

unint64_t sub_231057848()
{
  result = qword_280CCB6A8;
  if (!qword_280CCB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6A8);
  }

  return result;
}

uint64_t sub_23105789C(void *a1)
{
  v2 = sub_231158E58();
  v4 = v3;
  v5 = sub_231158E58();
  v7 = v6;
  v8 = sub_231158E58();
  v10 = v9;
  v11 = a1;
  v12._countAndFlagsBits = v2;
  v12._object = v4;
  v13._countAndFlagsBits = v5;
  v13._object = v7;
  v14._countAndFlagsBits = v8;
  v14._object = v10;
  CSSearchableItemAttributeSet.setAppShortcutDisplayRepresentation(for:bundleIdentifier:associatedAppBundleIdentifier:)(v12, v13, v14);
}

Swift::Void __swiftcall CSSearchableItemAttributeSet.associateWithAppEntity(for:)(WFContextualAction *a1)
{
  v3 = [(WFContextualAction *)a1 identifier];
  sub_231158E58();

  sub_231057B20(v1);
  if (!v4)
  {
    v5 = [(WFContextualAction *)a1 title];
    sub_231158E58();
  }

  sub_231158DB8();
  sub_2311593E8();
}

void sub_231057AB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CSSearchableItemAttributeSet.associateWithAppEntity(for:)(v4);
}

uint64_t sub_231057B20(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231158E58();

  return v3;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231057B98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231057BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_231057C44()
{
  result = qword_280CCB5C8;
  if (!qword_280CCB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5C8);
  }

  return result;
}

unint64_t sub_231057C98()
{
  result = qword_27DD3BE10;
  if (!qword_27DD3BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE10);
  }

  return result;
}

unint64_t sub_231057CEC()
{
  result = qword_280CCBFA0;
  if (!qword_280CCBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCBFA0);
  }

  return result;
}

unint64_t sub_231057D40()
{
  result = qword_280CCB6C0;
  if (!qword_280CCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFAppShortcutCodableProxy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFWorkflowDescriptorCodableProxy.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WFWorkflowDescriptorCodableProxy.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_231057F7C()
{
  result = qword_27DD3BE40;
  if (!qword_27DD3BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE40);
  }

  return result;
}

unint64_t sub_231057FD4()
{
  result = qword_27DD3BE48;
  if (!qword_27DD3BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE48);
  }

  return result;
}

unint64_t sub_23105802C()
{
  result = qword_280CCB6B0;
  if (!qword_280CCB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6B0);
  }

  return result;
}

unint64_t sub_231058084()
{
  result = qword_280CCB6B8;
  if (!qword_280CCB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6B8);
  }

  return result;
}

unint64_t sub_2310580DC()
{
  result = qword_280CCB5B8;
  if (!qword_280CCB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5B8);
  }

  return result;
}

unint64_t sub_231058134()
{
  result = qword_280CCB5C0;
  if (!qword_280CCB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDB38](a1, a2, a3, v3);
}

uint64_t sub_2310581C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_231058230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

unint64_t sub_231058294(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v10 = 0x676E6974616E6F64;
      v9 = OUTLINED_FUNCTION_17();
      MEMORY[0x231924980](v9);
      v6 = 39;
      v7 = 0xE100000000000000;
      goto LABEL_8;
    case 2:
      sub_231159588();

      OUTLINED_FUNCTION_48();
      goto LABEL_4;
    case 3:
      result = 1701602409;
      switch(a1)
      {
        case 1:
          result = 0xD00000000000001BLL;
          break;
        case 2:
          result = 0xD000000000000013;
          break;
        case 3:
          result = 0xD000000000000012;
          break;
        default:
          return result;
      }

      return result;
    default:
      sub_231159588();

      OUTLINED_FUNCTION_48();
      v5 = v4 + 25;
LABEL_4:
      v10 = v5;
      v6 = OUTLINED_FUNCTION_17();
LABEL_8:
      MEMORY[0x231924980](v6, v7);
      return v10;
  }
}

uint64_t sub_231058420(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    case 2:
      if (a6 != 2)
      {
        return 0;
      }

      goto LABEL_11;
    case 3:
      switch(a1)
      {
        case 1:
          v8 = a6 == 3 && a4 == 1;
          break;
        case 2:
          v8 = a6 == 3 && a4 == 2;
          break;
        case 3:
          v8 = a6 == 3 && a4 == 3;
          break;
        default:
          return a6 == 3 && !(a5 | a4);
      }

      return v8 && a5 == 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_11:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_231159818();
      }
  }
}

uint64_t sub_231058530()
{
  v20 = sub_231159328();
  v1 = OUTLINED_FUNCTION_4(v20);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = sub_231159318();
  OUTLINED_FUNCTION_11(v9);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v13 = sub_231158D48();
  v14 = OUTLINED_FUNCTION_19(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 3;
  sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  sub_231158D08();
  sub_231060244(&unk_280CCAF10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v3 + 104);
  v18(v8, v17, v20);
  OUTLINED_FUNCTION_46();
  *(v0 + 64) = sub_231159358();
  sub_231158D08();
  sub_231159498();
  v18(v8, v17, v20);
  OUTLINED_FUNCTION_46();
  *(v0 + 72) = sub_231159358();
  return v0;
}

uint64_t sub_231058800()
{
  OUTLINED_FUNCTION_4_1();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_231157F18();
  v1[9] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[10] = v5;
  v1[11] = *(v6 + 64);
  v1[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF40, &qword_231166450);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310588F0()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = sub_2311585F8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  (*(v4 + 16))(v1, v7, v5);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = v6;
  (*(v4 + 32))(v10 + v9, v1, v5);
  v11 = *(MEMORY[0x277D72728] + 4);

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_231058A60;
  v13 = v0[13];
  v14 = v0[6];

  return MEMORY[0x2821DAC30]();
}

uint64_t sub_231058A60()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = v2[15];
  *v4 = *v1;
  v3[16] = v0;

  v6 = v2[14];
  sub_231060190(v2[13], &qword_27DD3CF40, &qword_231166450);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231058BB0()
{
  OUTLINED_FUNCTION_4_1();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_231058C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[16];
  v13 = v10[12];
  v12 = v10[13];
  v14 = v10[8];
  swift_getErrorValue();
  v16 = v10[2];
  v15 = v10[3];
  v17 = v10[4];
  v18 = sub_2311598B8();
  sub_231086A14(v18, v19, 2u);

  v20 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v20, v21, v22);
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  v23 = v10[16];
  OUTLINED_FUNCTION_27_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_231058CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_231058DB8;

  return sub_231059184(a2, a4);
}

uint64_t sub_231058DB8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 40);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_231058EE8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_231157F18();
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_51();
  v7(v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_231058FD4;
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return sub_231059B7C(v10, v9);
}

uint64_t sub_231058FD4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;
  *(v3 + 64) = v0;

  sub_231060190(v7, &unk_27DD3CE70, &qword_2311626F0);
  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 40);

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_231059128()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_231059184(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2311577C8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_231158258();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_231158AE8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v13 = sub_231157F18();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231059368, 0, 0);
}

uint64_t sub_231059368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 32);
  if (*(v11 + 56) != 3 || *(v11 + 40) != 0)
  {
    v13 = *(v10 + 48);
    v12 = *(v10 + 56);
    v14 = *(v10 + 40);
    *(v10 + 168) = 37;
    sub_23105FAA4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_13_2();
    sub_231060244(v15, v16);
    sub_231157918();
    sub_2311577B8();
    v17 = *(v13 + 8);
    v18 = OUTLINED_FUNCTION_17();
    v19(v18);
    swift_willThrow();
    OUTLINED_FUNCTION_60();

    OUTLINED_FUNCTION_1();
LABEL_4:
    OUTLINED_FUNCTION_27_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  v29 = *(v10 + 128);
  v30 = *(v10 + 24);
  (*(v29 + 104))(*(v10 + 136), *MEMORY[0x277D79C50], *(v10 + 120));
  sub_231060244(&qword_280CCB140, MEMORY[0x277D79C60]);
  LOBYTE(v30) = sub_231158E18();
  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_25_0();
  v33(v32);
  if (v30)
  {
    v34 = *(v10 + 136);
    v36 = *(v10 + 104);
    v35 = *(v10 + 112);
    v37 = *(v10 + 80);
    v38 = *(v10 + 56);
    v39 = *(v10 + 32);
    v40 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v40, v41, v42);

    OUTLINED_FUNCTION_1();
    goto LABEL_4;
  }

  v43 = *(v10 + 32);
  sub_231086A14(1819242324, 0xE400000000000000, 0);
  v44 = swift_task_alloc();
  *(v10 + 144) = v44;
  *v44 = v10;
  v44[1] = sub_231059604;
  v45 = *(v10 + 32);
  OUTLINED_FUNCTION_27_0();

  return sub_23105B4F8(v46, v47);
}

uint64_t sub_231059604()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v1;
  *(v2 + 152) = v6;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231059704()
{
  v77 = v0;
  v1 = IDSCopyLocalDeviceUniqueID();
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = sub_231158E58();
    v10 = v9;

    *v3 = v8;
    v3[1] = v10;
    (*(v6 + 104))(v3, *MEMORY[0x277D730E0], v5);
    v11 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    (*(v6 + 16))(v4, v3, v5);
    v12 = sub_231158238();
    v13 = sub_2311592C8();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    if (v14)
    {
      v75 = *(v0 + 64);
      v21 = swift_slowAlloc();
      v73 = v13;
      v22 = swift_slowAlloc();
      v76 = v22;
      *v21 = 136315138;
      v72 = sub_231158AD8();
      v74 = v17;
      v24 = v23;
      v25 = *(v16 + 8);
      v25(v15, v18);
      v26 = sub_2310488F8(v72, v24, &v76);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_23103C000, v12, v73, "Device id: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v27 = v25;
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();

      (*(v19 + 8))(v74, v75);
    }

    else
    {

      v27 = *(v16 + 8);
      v27(v15, v18);
      (*(v19 + 8))(v17, v20);
    }

    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v33 = *(v0 + 112);
    v34 = *(v0 + 32);
    v35 = *(v0 + 16);
    OUTLINED_FUNCTION_6_3();
    sub_231086A14(v36, v37, v38);
    v39 = swift_task_alloc();
    v39[2] = v34;
    v39[3] = v33;
    v39[4] = v32;
    OUTLINED_FUNCTION_55();
    if (!v31)
    {
      v45 = *(v0 + 32);

      OUTLINED_FUNCTION_6_3();
      sub_231086A14(v46, v47, v48);
      sub_23105D054();
      v49 = *(v0 + 112);
      v50 = *(v0 + 88);
      v51 = *(v0 + 96);

      v61 = OUTLINED_FUNCTION_45();
      (v27)(v61);
      v62 = *(v0 + 136);
      v64 = *(v0 + 104);
      v63 = *(v0 + 112);
      v65 = *(v0 + 80);
      v66 = *(v0 + 56);
      v67 = *(v0 + 32);
      v68 = OUTLINED_FUNCTION_0_5();
      sub_231086A14(v68, v69, v70);

      OUTLINED_FUNCTION_1();
      goto LABEL_10;
    }

    v40 = *(v0 + 112);
    v41 = *(v0 + 88);
    v42 = *(v0 + 96);
    v43 = *(v0 + 32);

    v44 = OUTLINED_FUNCTION_31();
    (v27)(v44);
  }

  else
  {
    v28 = *(v0 + 152);
    v29 = *(v0 + 32);
    sub_23106007C();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0;
    swift_willThrow();
  }

  v52 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v52, v53, v54);
  v55 = *(v0 + 136);
  v57 = *(v0 + 104);
  v56 = *(v0 + 112);
  v58 = *(v0 + 80);
  v59 = *(v0 + 56);

  OUTLINED_FUNCTION_1();
LABEL_10:

  return v71();
}

uint64_t sub_231059AF0()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v2, v3, v4);
  v5 = *(v0 + 160);
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_231059B7C(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2311577C8();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_231158B08();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = sub_2311588B8();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_231059D68, 0, 0);
}

uint64_t sub_231059D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v87 = *MEMORY[0x277D85DE8];
  v10 = *(v9 + 64);
  if (*(v10 + 56) != 3 || *(v10 + 40) != 0)
  {
    v12 = *(v9 + 80);
    v11 = *(v9 + 88);
    v13 = *(v9 + 72);
    *(v9 + 304) = 37;
    sub_23105FAA4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_13_2();
    sub_231060244(v14, v15);
    sub_231157918();
    sub_2311577B8();
    v16 = *(v12 + 8);
    v17 = OUTLINED_FUNCTION_45();
    v18(v17);
    swift_willThrow();
LABEL_4:
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_1();
    v19 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_27_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v87);
  }

  v29 = *(v9 + 152);
  sub_23106001C(*(v9 + 56), v29, &unk_27DD3CE70, &qword_2311626F0);
  v30 = sub_231157F18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  v32 = *(v9 + 152);
  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v32, &unk_27DD3CE70, &qword_2311626F0);
LABEL_16:
    v49 = (v9 + 16);
    v50 = *(v9 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE60, &unk_231162708);
    sub_231158608();
LABEL_28:
    *(v9 + 224) = *v49;
    v75 = *(v9 + 144);
    sub_2311588A8();
    v76 = *(MEMORY[0x277D727A0] + 4);
    v77 = swift_task_alloc();
    *(v9 + 232) = v77;
    *v77 = v9;
    OUTLINED_FUNCTION_8_2(v77);
    v78 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2821DADB0](v79, v80, v81, v82, v83, v84, v85, v86, a9, v87);
  }

  v33 = *(v30 - 8);
  v34 = (*(v33 + 88))(v32, v30);
  v35 = *(v9 + 152);
  if (v34 != *MEMORY[0x277D79C58])
  {
    v46 = *(v33 + 8);
    v47 = OUTLINED_FUNCTION_25_0();
    v48(v47);
    goto LABEL_16;
  }

  v36 = *(v33 + 96);
  v37 = OUTLINED_FUNCTION_25_0();
  v38(v37);
  *(v9 + 160) = *v35;
  v39 = v35[1];
  *(v9 + 168) = v39;
  v40 = v35[2];

  if (!*(v39 + 16))
  {

LABEL_27:
    v49 = (v9 + 40);
    v72 = *(v9 + 160);
    v73 = *(v9 + 48);
    *(swift_task_alloc() + 16) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE60, &unk_231162708);
    OUTLINED_FUNCTION_12_2();
    sub_231158608();
    v74 = *(v9 + 160);

    goto LABEL_28;
  }

  v41 = *(v39 + 32);
  *(v9 + 308) = v41;
  v42 = -1;
  v43 = -1 << v41;
  if (-v43 < 64)
  {
    v42 = ~(-1 << -v43);
  }

  if ((v42 & *(v39 + 56)) == 0)
  {
    v54 = 0;
    v55 = ((63 - v43) >> 6) - 1;
    v45 = *(v9 + 168);
    while (v55 != v54)
    {
      v44 = v54 + 1;
      if (*(v45 + 8 * v54++ + 64))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_27;
  }

  v44 = 0;
  v45 = *(v9 + 168);
LABEL_21:
  OUTLINED_FUNCTION_20_0(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v57 = OUTLINED_FUNCTION_61();
  *(v9 + 192) = v57;
  *(v57 + 16) = xmmword_231161E80;
  v58 = objc_opt_self();

  OUTLINED_FUNCTION_51();
  v59 = sub_231158E28();

  *(v9 + 32) = 0;
  v60 = [v58 sourceIdentifierWithValue:v59 error:v9 + 32];

  v61 = *(v9 + 32);
  if (!v60)
  {
    v68 = *(v9 + 160);
    v69 = *(v9 + 168);
    v70 = *(v9 + 64);
    v71 = v61;

    sub_231157938();

    swift_willThrow();

    *(v57 + 16) = 0;

    v51 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v51, v52, v53);
    goto LABEL_4;
  }

  *(v57 + 32) = v60;
  v62 = v61;
  v63 = swift_task_alloc();
  *(v9 + 200) = v63;
  *v63 = v9;
  OUTLINED_FUNCTION_9_2(v63);
  v64 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_27_0();

  return sub_23105B4F8(v65, v66);
}

uint64_t sub_23105A2E0()
{
  OUTLINED_FUNCTION_22_0();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;
  v5 = v2[25];
  v6 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v7 = v6;
  v3[26] = v8;
  v3[27] = v0;

  v9 = v2[24];
  if (v0)
  {
    v10 = v3[20];
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23105A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v69 = *MEMORY[0x277D85DE8];
  v10 = *(v9 + 208);
  v11 = *(v9 + 216);
  v12 = *(v9 + 64);
  OUTLINED_FUNCTION_6_3();
  sub_231086A14(v13, v14, v15);
  OUTLINED_FUNCTION_6_3();
  sub_231086A14(v16, v17, v18);
  sub_23105D054();
  v19 = *(v9 + 208);
  if (v11)
  {
    v21 = *(v9 + 160);
    v20 = *(v9 + 168);
    v22 = *(v9 + 64);

LABEL_3:
    v23 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v23, v24, v25);
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_1();
    v26 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_27_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v69);
  }

  v36 = *(v9 + 184);
  if (((*(v9 + 176) - 1) & *(v9 + 176)) != 0)
  {
    v37 = *(v9 + 168);
LABEL_12:
    OUTLINED_FUNCTION_20_0(v37, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
    v39 = OUTLINED_FUNCTION_61();
    *(v9 + 192) = v39;
    *(v39 + 16) = xmmword_231161E80;
    v40 = objc_opt_self();

    OUTLINED_FUNCTION_51();
    v41 = sub_231158E28();

    *(v9 + 32) = 0;
    v42 = [v40 sourceIdentifierWithValue:v41 error:v9 + 32];

    v43 = *(v9 + 32);
    if (!v42)
    {
      v50 = *(v9 + 160);
      v51 = *(v9 + 168);
      v52 = *(v9 + 64);
      v53 = v43;

      sub_231157938();

      swift_willThrow();

      *(v39 + 16) = 0;

      goto LABEL_3;
    }

    *(v39 + 32) = v42;
    v44 = v43;
    v45 = swift_task_alloc();
    *(v9 + 200) = v45;
    *v45 = v9;
    OUTLINED_FUNCTION_9_2();
    v46 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_27_0();

    return sub_23105B4F8(v47, v48);
  }

  else
  {
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
      }

      v37 = *(v9 + 168);
      if (v38 >= (((1 << *(v9 + 308)) + 63) >> 6))
      {
        break;
      }

      ++v36;
      if (*(v37 + 8 * v38 + 56))
      {
        v36 = v38;
        goto LABEL_12;
      }
    }

    v54 = *(v9 + 160);
    v55 = *(v9 + 48);
    *(swift_task_alloc() + 16) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE60, &unk_231162708);
    OUTLINED_FUNCTION_12_2();
    sub_231158608();
    v56 = *(v9 + 160);

    *(v9 + 224) = *(v9 + 40);
    v57 = *(v9 + 144);
    sub_2311588A8();
    v58 = *(MEMORY[0x277D727A0] + 4);
    v59 = swift_task_alloc();
    *(v9 + 232) = v59;
    *v59 = v9;
    OUTLINED_FUNCTION_8_2(v59);
    v60 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2821DADB0](v61, v62, v63, v64, v65, v66, v67, v68, a9, v69);
  }
}

uint64_t sub_23105A7D4()
{
  OUTLINED_FUNCTION_21();
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  v5 = *(v4 + 232);
  *v3 = *v1;
  v2[30] = v6;
  v2[31] = v0;

  if (v0)
  {
    v7 = v2[28];
    (*(v2[17] + 8))(v2[18], v2[16]);
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
  }

  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23105A948()
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(v0 + 224);
  v5 = *(v0 + 104);
  v6 = *(v4 + 32);
  *(v0 + 309) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v4 + 56);
  if (!v9)
  {
    v11 = 0;
    v12 = ((63 - v8) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v4 + 8 * v11++ + 64);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v38 = *(v0 + 240);
    OUTLINED_FUNCTION_53_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE68, &unk_231162720);
    OUTLINED_FUNCTION_15_1();
    sub_231158548();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v39, v40, v41);

    OUTLINED_FUNCTION_1();
    v42 = *MEMORY[0x277D85DE8];
LABEL_14:
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v10 = 0;
LABEL_8:
  *(v0 + 256) = v9;
  *(v0 + 264) = v10;
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  (*(v5 + 16))(v13, *(v4 + 48) + *(v5 + 72) * (__clz(__rbit64(v9)) | (v10 << 6)), v15);
  (*(v5 + 32))(v14, v13, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v16 = OUTLINED_FUNCTION_61();
  *(v0 + 272) = v16;
  *(v16 + 16) = xmmword_231161E80;
  v17 = objc_opt_self();
  sub_231158AB8();
  v18 = sub_231158E28();

  *(v0 + 24) = 0;
  v19 = [v17 sourceIdentifierWithValue:v18 error:v0 + 24];

  v20 = *(v0 + 24);
  if (!v19)
  {
    OUTLINED_FUNCTION_39();
    v28 = v20;
    sub_231157938();

    swift_willThrow();
    swift_unknownObjectRelease();

    *(v16 + 16) = 0;

    (*(v3 + 8))(v1, v2);
    v29 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v29, v30, v31);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 88);

    OUTLINED_FUNCTION_1();
    v37 = *MEMORY[0x277D85DE8];
    goto LABEL_14;
  }

  *(v16 + 32) = v19;
  v21 = v20;
  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_10_2(v22);
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();

  return sub_23105B4F8(v24, v25);
}

uint64_t sub_23105ACCC()
{
  OUTLINED_FUNCTION_21();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *(v2 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 288) = v8;
  *(v9 + 296) = v0;

  v10 = *(v2 + 272);

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23105AE1C()
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 240);
  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  OUTLINED_FUNCTION_6_3();
  sub_231086A14(v9, v10, v11);
  v12 = swift_task_alloc();
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v4;
  v12[5] = v5;
  OUTLINED_FUNCTION_55();
  v13 = v3;
  v14 = *(v0 + 288);
  if (v13)
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 224);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);
    v20 = *(v0 + 64);

    swift_unknownObjectRelease();

    (*(v18 + 8))(v17, v19);
LABEL_4:
    v22 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v22, v23, v24);
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_1();
    v25 = *MEMORY[0x277D85DE8];
    goto LABEL_5;
  }

  v21 = *(v0 + 64);

  sub_23105D054();
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v30 = *(v0 + 96);

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_51();
  v33(v32);
  v34 = *(v0 + 264);
  v35 = (*(v0 + 256) - 1) & *(v0 + 256);
  if (v35)
  {
    v36 = *(v0 + 224);
    goto LABEL_14;
  }

  do
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
    }

    if (v37 >= (((1 << *(v0 + 309)) + 63) >> 6))
    {
      v56 = *(v0 + 240);
      v57 = *(v0 + 224);
      OUTLINED_FUNCTION_53_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE68, &unk_231162720);
      OUTLINED_FUNCTION_15_1();
      sub_231158548();
      swift_unknownObjectRelease();
      v58 = OUTLINED_FUNCTION_0_5();
      sub_231086A14(v58, v59, v60);

      OUTLINED_FUNCTION_1();
      v61 = *MEMORY[0x277D85DE8];
LABEL_5:
      OUTLINED_FUNCTION_10();

      __asm { BRAA            X1, X16 }
    }

    v36 = *(v0 + 224);
    v35 = *(v36 + 8 * v37 + 56);
    ++v34;
  }

  while (!v35);
  v34 = v37;
LABEL_14:
  *(v0 + 256) = v35;
  *(v0 + 264) = v34;
  v38 = *(v0 + 112);
  v39 = *(v0 + 104);
  (*(v39 + 16))(*(v0 + 120), *(v36 + 48) + *(v39 + 72) * (__clz(__rbit64(v35)) | (v34 << 6)), *(v0 + 96));
  v40 = *(v39 + 32);
  v41 = OUTLINED_FUNCTION_25_0();
  v42(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v43 = OUTLINED_FUNCTION_61();
  *(v0 + 272) = v43;
  *(v43 + 16) = xmmword_231161E80;
  v44 = objc_opt_self();
  sub_231158AB8();
  v45 = sub_231158E28();

  *(v0 + 24) = 0;
  v46 = [v44 sourceIdentifierWithValue:v45 error:v0 + 24];

  v47 = *(v0 + 24);
  if (!v46)
  {
    OUTLINED_FUNCTION_39();
    v55 = v47;
    sub_231157938();

    swift_willThrow();
    swift_unknownObjectRelease();

    *(v43 + 16) = 0;

    (*(v2 + 8))(v6, v1);
    goto LABEL_4;
  }

  *(v43 + 32) = v46;
  v48 = v47;
  v49 = swift_task_alloc();
  *(v0 + 280) = v49;
  *v49 = v0;
  OUTLINED_FUNCTION_10_2();
  v50 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_10();

  return sub_23105B4F8(v51, v52);
}

uint64_t sub_23105B298()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = v0[8];

  v3 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v3, v4, v5);
  v6 = v0[27];
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_1();
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23105B358()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v2, v3, v4);
  v5 = *(v0 + 248);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_23105B410()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[8];

  swift_unknownObjectRelease();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_17();
  v9(v8);
  v10 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v10, v11, v12);
  v13 = v0[37];
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_1();
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_23105B4F8(__int16 a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_23105B51C, 0, 0);
}

uint64_t sub_23105B51C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 152);
  v2 = *(v0 + 176);
  v3 = objc_opt_self();
  sub_231054A0C(0, &unk_280CCAF40, 0x277CF9500);
  v4 = sub_231158F38();
  *(v0 + 160) = v4;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23105B684;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE80, &qword_231162770);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23105D128;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v5;
  [v3 fullSetDonationWithItemType:v2 descriptors:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23105B684()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23105B780()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23105B7E8()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  v4 = *(v0 + 168);

  return v3();
}

uint64_t sub_23105B850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v60 = a1;
  v61 = a4;
  v6 = sub_231158258();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEA0, &unk_231162788);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v44 - v11;
  v12 = sub_231158708();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2311585C8();
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_231158918();
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  MEMORY[0x28223BE20](v18);
  v52 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_231158AE8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_231158538();
  v54 = *(v25 - 8);
  v55 = v25;
  v26 = *(v54 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231158508();
  (*(v22 + 16))(v24, a3, v21);
  v29 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v30 = (v23 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  (*(v22 + 32))(v31 + v29, v24, v21);
  v32 = v61;
  *(v31 + v30) = v60;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v34 = v52;
  v33 = v53;

  v35 = v32;
  sub_231158848();
  sub_231158858();
  v36 = v62;
  sub_231158838();
  if (v36)
  {

    (*(v58 + 8))(v33, v59);
    (*(v56 + 8))(v34, v57);
    return (*(v54 + 8))(v28, v55);
  }

  else
  {
    v39 = v48;
    v38 = v49;

    (*(v58 + 8))(v33, v59);
    (*(v56 + 8))(v34, v57);
    (*(v54 + 8))(v28, v55);
    sub_2311585E8();
    sub_231060244(&qword_27DD3BEA8, MEMORY[0x277D72718]);
    v40 = v51;
    sub_231158788();
    if (__swift_getEnumTagSinglePayload(v40, 1, v38) == 1)
    {
      return sub_231060190(v40, &qword_27DD3BEA0, &unk_231162788);
    }

    else
    {
      v41 = v39;
      v42 = *(v39 + 32);
      v43 = v45;
      v42(v45, v40, v38);
      sub_2311585D8();
      sub_231060244(&qword_27DD3CF60, MEMORY[0x277D72708]);
      sub_2311587C8();
      return (*(v41 + 8))(v43, v38);
    }
  }
}

void sub_23105BFD8(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), void (*a4)(char *, uint64_t), NSObject *a5)
{
  v10 = sub_2311583E8();
  sub_231086A14(v10, v11, 1u);

  swift_weakInit();
  v12 = objc_autoreleasePoolPush();
  sub_23105C0A4(v13, a1, a3, a4, a5);
  objc_autoreleasePoolPop(v12);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    swift_weakDestroy();
  }
}

void sub_23105C0A4(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), void (*a4)(char *, uint64_t), NSObject *a5)
{
  v103 = a5;
  v110 = sub_231158A58();
  v105 = *(v110 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_231158258();
  v10 = *(v111 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v111);
  v114 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231157D88();
  v115 = *(v13 - 8);
  v14 = v115[8];
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v91 - v17;
  v19 = sub_231158418();
  v112 = *(v19 - 8);
  v20 = *(v112 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v91 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v102 = a4;
  v106 = v10;
  v107 = Strong;
  v108 = a2;
  sub_231158388();
  v26 = *MEMORY[0x277D79B58];
  v101 = a3;
  v27 = v115 + 13;
  v28 = v115[13];
  v28(v18, v26, v13);
  sub_231060244(&qword_27DD3BEB0, MEMORY[0x277D72238]);
  sub_231060244(&qword_27DD3BEB8, MEMORY[0x277D72898]);
  v29 = v116;
  v30 = sub_231158038();
  v119 = v29;
  if (v29)
  {
    (v115[1])(v18, v13);
    v32 = v112;
    v33 = *(v112 + 8);
    v33(v24, v19);
    v34 = v114;
    v35 = v19;
LABEL_8:
    v44 = v113;
    goto LABEL_9;
  }

  v36 = v31;
  v98 = v28;
  v99 = v26;
  v116 = v24;
  v100 = v19;
  v37 = v115[1];
  v38 = v30;
  v39 = v115 + 1;
  v37(v18, v13);
  v40 = objc_allocWithZone(MEMORY[0x277D21168]);
  sub_2310601EC(v38, v36);
  v41 = v119;
  v42 = sub_23105F240(v38, v36);
  v119 = v41;
  if (v41)
  {
    v43 = v36;
    v32 = v112;
    v33 = *(v112 + 8);
    v35 = v100;
    v33(v116, v100);
    sub_231054A60(v38, v43);
LABEL_7:
    v34 = v114;
    goto LABEL_8;
  }

  v61 = v13;
  v92 = v42;
  v93 = v38;
  v62 = sub_231158758();
  v44 = v113;
  v119 = 0;
  v63 = v62;
  v64 = *(v62 + 16);
  if (!v64)
  {
    v115 = v36;

    v77 = MEMORY[0x277D84F90];
    v35 = v100;
    v32 = v112;
LABEL_20:
    v78 = v116;
    v79 = objc_allocWithZone(MEMORY[0x277D21150]);
    v80 = v119;
    v81 = sub_23105F320(v92, v77, MEMORY[0x277D84F90]);
    v119 = v80;
    if (v80)
    {
      v33 = *(v32 + 8);
      v33(v78, v35);
    }

    else
    {
      v82 = v81;
      sub_2311583E8();
      v83 = objc_allocWithZone(MEMORY[0x277D21160]);
      v84 = v119;
      v85 = sub_23105F9D8();
      v119 = v84;
      if (!v84)
      {
        v86 = v85;
        v117 = 0x206C6F6F54;
        v118 = 0xE500000000000000;
        v87 = v82;
        v88 = v86;
        v89 = sub_2311583E8();
        MEMORY[0x231924980](v89);

        v90 = v119;
        sub_23105CCB0(v103, v87, v88, v117, v118);
        if (!v90)
        {
          (*(v32 + 8))(v116, v35);
          sub_231054A60(v93, v115);

          return;
        }

        v33 = *(v32 + 8);
        v33(v116, v35);

        sub_231054A60(v93, v115);
        v119 = v90;
        goto LABEL_25;
      }

      v33 = *(v32 + 8);
      v33(v78, v35);
    }

    sub_231054A60(v93, v115);
LABEL_25:
    v34 = v114;
LABEL_9:
    v45 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    (*(v32 + 16))(v44, v108, v35);
    v46 = v119;
    v47 = v119;
    v48 = sub_231158238();
    v49 = sub_2311592F8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v116 = 0;
      v117 = v115;
      *v50 = 136315394;
      v52 = sub_2311583E8();
      v53 = v44;
      v55 = v54;
      v33(v53, v35);
      v56 = sub_2310488F8(v52, v55, &v117);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2112;
      v57 = v119;
      v58 = v119;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v59;
      *v51 = v59;
      _os_log_impl(&dword_23103C000, v48, v49, "Failed to donate tool: %s with error: %@", v50, 0x16u);
      sub_231060190(v51, &unk_27DD3CC40, &qword_231162750);
      MEMORY[0x2319267C0](v51, -1, -1);
      v60 = v115;
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x2319267C0](v60, -1, -1);
      MEMORY[0x2319267C0](v50, -1, -1);

      (*(v106 + 8))(v114, v111);
    }

    else
    {

      v33(v44, v35);
      (*(v106 + 8))(v34, v111);
    }

    return;
  }

  v102 = v37;
  v117 = MEMORY[0x277D84F90];
  v94 = v64;
  sub_231159618();
  v65 = 0;
  v97 = v63 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
  v96 = v105 + 16;
  v101 = (v105 + 8);
  v115 = v39;
  v95 = v27;
  v66 = v98;
  while (v65 < *(v63 + 16))
  {
    v67 = v63;
    (*(v105 + 16))(v109, v97 + *(v105 + 72) * v65, v110);
    v68 = v104;
    v66(v104, v99, v61);
    sub_231060244(&qword_27DD3BEC0, MEMORY[0x277D72B90]);
    sub_231060244(&unk_27DD3C300, MEMORY[0x277D72818]);
    v69 = v119;
    v70 = sub_231158038();
    v119 = v69;
    if (v69)
    {

      sub_231054A60(v93, v36);
      v102(v68, v61);
LABEL_28:
      (*v101)(v109, v110);
      v32 = v112;
      v33 = *(v112 + 8);
      v35 = v100;
      v33(v116, v100);

      goto LABEL_7;
    }

    v72 = v70;
    v73 = v71;
    v102(v68, v61);
    v74 = objc_allocWithZone(MEMORY[0x277D21170]);
    v75 = v119;
    sub_23105F240(v72, v73);
    v119 = v75;
    if (v75)
    {

      sub_231054A60(v93, v36);
      goto LABEL_28;
    }

    ++v65;
    (*v101)(v109, v110);
    sub_2311595E8();
    v76 = *(v117 + 16);
    sub_231159628();
    sub_231159638();
    sub_2311595F8();
    v63 = v67;
    if (v94 == v65)
    {
      v115 = v36;

      v77 = v117;
      v35 = v100;
      v32 = v112;
      v44 = v113;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_23105CCB0(NSObject *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v32 = a4;
  v10 = sub_231158258();
  v11 = OUTLINED_FUNCTION_4(v10);
  v33 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  objc_allocWithZone(MEMORY[0x277CF94C8]);
  v18 = sub_23105F478(a2, a3);
  if (!v5)
  {
    v19 = v18;
    v20 = MEMORY[0x28223BE20](v18);
    *(&v31 - 2) = a1;
    *(&v31 - 1) = v20;
    sub_23105D194();

    return;
  }

  v37 = v5;
  v21 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  type metadata accessor for CCItemError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v35 = v36;
  sub_231060244(&unk_280CCB068, type metadata accessor for CCItemError);
  sub_2311578E8();
  if (v34 != 4)
  {

LABEL_8:
    swift_willThrow();
    return;
  }

  v22 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v23 = v36;
  v24 = sub_231158238();
  v25 = sub_2311592E8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v31 = v24;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_2310488F8(v32, a5, &v35);
    *(v26 + 12) = 2112;
    v29 = v23;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v30;
    *v27 = v30;
    v23 = v31;
    _os_log_impl(&dword_23103C000, v31, v25, "%s is too big, Cascade is dropping it: %@", v26, 0x16u);
    sub_231060190(v27, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  (*(v33 + 8))(v17, v10);
}

uint64_t sub_23105D054()
{
  sub_23105D194();
  if (v0)
  {
    swift_getErrorValue();
    v1 = sub_2311598B8();
    sub_231086A14(v1, v2, 2u);

    sub_231086A14(0, 0, 3u);
    return swift_willThrow();
  }

  else
  {
    sub_231086A14(3, 0, 3u);
    return sub_231086A14(0, 0, 3u);
  }
}

uint64_t *sub_23105D128(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_2310581C4(v6, a3);
  }

  if (a2)
  {
    return sub_231058270(v6, a2);
  }

  __break(1u);
  return result;
}

id sub_23105D1E8(void *a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([a1 registerItem:a2 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_231157938();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_23105D290(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([a1 finish_])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_231157938();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23105D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE70, &qword_231162758) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = sub_231158BC8();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC0, &qword_231162760) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v13 = sub_231158C88();
  v7[17] = v13;
  v14 = *(v13 - 8);
  v7[18] = v14;
  v15 = *(v14 + 64) + 15;
  v7[19] = swift_task_alloc();
  v16 = sub_231158CE8();
  v7[20] = v16;
  v17 = *(v16 - 8);
  v7[21] = v17;
  v18 = *(v17 + 64) + 15;
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23105D540, 0, 0);
}

uint64_t sub_23105D540()
{
  v3 = *(v0 + 176);
  v4 = *(v0 + 56);
  sub_231158C08();
  sub_231158CC8();
  v6 = v5;
  v7 = MEMORY[0x2319247A0]();
  v8 = objc_allocWithZone(MEMORY[0x277D20E58]);
  v9 = OUTLINED_FUNCTION_45();
  *(v0 + 184) = sub_23105F54C(v9, v10, v7);
  v11 = *(v0 + 56);
  v12 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v13 = MEMORY[0x231924700]();
  *(v0 + 192) = v13;
  v14 = *(v13 + 16);
  *(v0 + 200) = v14;
  if (!v14)
  {
LABEL_19:
    v52 = *(v0 + 184);
    v54 = *(v0 + 40);
    v53 = *(v0 + 48);

    objc_allocWithZone(MEMORY[0x277D20F10]);
    v55 = v52;

    sub_23105F8A0(v54, v53, v52, v12);
    OUTLINED_FUNCTION_37();
    MEMORY[0x231924980](45, 0xE100000000000000);
    MEMORY[0x231924980](v2, v1);
    v56 = objc_allocWithZone(MEMORY[0x277D20F18]);
    OUTLINED_FUNCTION_59();
    v57 = OUTLINED_FUNCTION_36();
    v58(v57);
    OUTLINED_FUNCTION_42(*(v0 + 184));

    v62 = *(v0 + 8);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X3, X16 }
  }

  v15 = 0;
  *(v0 + 272) = *(*(v0 + 144) + 80);
  while (1)
  {
    *(v0 + 208) = v15;
    *(v0 + 216) = v12;
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      return MEMORY[0x2821DB698]();
    }

    v16 = *(v0 + 128);
    (*(*(v0 + 144) + 16))(*(v0 + 152), v13 + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(*(v0 + 144) + 72) * v15, *(v0 + 136));
    sub_231158C68();
    v17 = sub_231158BF8();
    v18 = OUTLINED_FUNCTION_16_1();
    v19 = *(v0 + 128);
    if (v18 == 1)
    {
      sub_231060190(*(v0 + 128), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      v20 = *(v0 + 128);
      sub_231158BA8();
      OUTLINED_FUNCTION_4_2();
      (*(v21 + 8))(v19, v17);
    }

    OUTLINED_FUNCTION_58();
    if (OUTLINED_FUNCTION_16_1() == 1)
    {
      sub_231060190(*(v0 + 120), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      sub_231158BE8();
      OUTLINED_FUNCTION_4_2();
      v23 = *(v22 + 8);
      v24 = OUTLINED_FUNCTION_50();
      v25(v24);
    }

    OUTLINED_FUNCTION_57();
    v26 = OUTLINED_FUNCTION_16_1();
    v27 = *(v0 + 112);
    if (v26 == 1)
    {
      v28 = *(v0 + 112);
      v29 = &qword_27DD3BCC0;
      v30 = &qword_231162760;
      goto LABEL_14;
    }

    v31 = *(v0 + 80);
    sub_231158BD8();
    OUTLINED_FUNCTION_4_2();
    v33 = *(v32 + 8);
    v34 = OUTLINED_FUNCTION_50();
    v35(v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE78, &qword_231162768);
    *(v0 + 248) = v36;
    if (__swift_getEnumTagSinglePayload(v31, 1, v36) != 1)
    {
      break;
    }

    v28 = *(v0 + 80);
    v29 = &unk_27DD3BE70;
    v30 = &unk_231162758;
LABEL_14:
    sub_231060190(v28, v29, v30);
    v38 = *(v0 + 232);
    v37 = *(v0 + 240);
    v39 = *(v0 + 224);
    v40 = objc_allocWithZone(MEMORY[0x277D20E50]);
    v41 = sub_23105F660(v39, v38, 0, 0, v37);
    v42 = *(v0 + 152);
    sub_231158C78();
    v43 = objc_allocWithZone(MEMORY[0x277D20E48]);
    v44 = v41;
    v45 = OUTLINED_FUNCTION_52();
    v2 = sub_23105F7B0(v45, v46, v41);
    MEMORY[0x2319249F0]();
    OUTLINED_FUNCTION_47();
    if (v47)
    {
      sub_231158F98();
    }

    OUTLINED_FUNCTION_29();

    v48 = *(v3 + 8);
    v3 += 8;
    v49 = OUTLINED_FUNCTION_52();
    v50(v49);
    v12 = *(v0 + 16);
    if (v6 == v1)
    {
      v51 = *(v0 + 192);
      goto LABEL_19;
    }

    v15 = *(v0 + 208) + 1;
    v13 = *(v0 + 192);
  }

  v59 = *(MEMORY[0x277D731E8] + 4);
  v60 = swift_task_alloc();
  *(v0 + 256) = v60;
  *v60 = v0;
  OUTLINED_FUNCTION_7_2(v60);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821DB698]();
}

uint64_t sub_23105DB50()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[33] = v0;

  if (v0)
  {
    v10 = v3[29];
    v9 = v3[30];
    v11 = v3[27];
    v12 = v3[24];
  }

  else
  {
    v13 = v3[10];
    OUTLINED_FUNCTION_11(v3[31]);
    (*(v14 + 8))();
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_23105DCA4()
{
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = sub_231158BB8();
  v7 = v6;
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v10 = OUTLINED_FUNCTION_17();
  v11(v10);
  for (i = *(v0 + 264); ; i = 0)
  {
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 224);
    v16 = objc_allocWithZone(MEMORY[0x277D20E50]);
    v17 = OUTLINED_FUNCTION_52();
    v19 = sub_23105F660(v17, v18, v5, v7, v14);
    if (i)
    {
      v55 = *(v0 + 216);
      OUTLINED_FUNCTION_17_0();
      v56 = *(v0 + 136);
      v57 = *(v0 + 144);

      v58 = *(v57 + 8);
      v59 = OUTLINED_FUNCTION_31();
      v60(v59);
      v61 = OUTLINED_FUNCTION_18_0();
      v62(v61);

      OUTLINED_FUNCTION_41();

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X1, X16 }
    }

    v20 = v19;
    v21 = *(v0 + 152);
    v22 = sub_231158C78();
    v24 = v23;
    objc_allocWithZone(MEMORY[0x277D20E48]);
    v25 = v20;
    v26 = sub_23105F7B0(v22, v24, v20);
    MEMORY[0x2319249F0]();
    OUTLINED_FUNCTION_47();
    if (v27)
    {
      sub_231158F98();
    }

    OUTLINED_FUNCTION_29();

    v28 = *(v2 + 8);
    v2 += 8;
    v29 = OUTLINED_FUNCTION_52();
    v30(v29);
    v31 = *(v0 + 16);
    if (v8 == v1)
    {
      v64 = *(v0 + 184);
      v63 = *(v0 + 192);
      v66 = *(v0 + 40);
      v65 = *(v0 + 48);

      objc_allocWithZone(MEMORY[0x277D20F10]);
      v67 = v64;

      sub_23105F8A0(v66, v65, v64, v31);
      OUTLINED_FUNCTION_37();
      MEMORY[0x231924980](45, 0xE100000000000000);
      MEMORY[0x231924980](v26, v1);
      v71 = objc_allocWithZone(MEMORY[0x277D20F18]);
      OUTLINED_FUNCTION_59();
      v72 = OUTLINED_FUNCTION_36();
      v73(v72);
      OUTLINED_FUNCTION_42(*(v0 + 184));

      v76 = *(v0 + 8);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X3, X16 }
    }

    v32 = *(v0 + 208) + 1;
    *(v0 + 208) = v32;
    *(v0 + 216) = v31;
    v33 = *(v0 + 192);
    if (v32 >= *(v33 + 16))
    {
      __break(1u);
      return MEMORY[0x2821DB698]();
    }

    v34 = *(v0 + 128);
    (*(*(v0 + 144) + 16))(*(v0 + 152), v33 + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(*(v0 + 144) + 72) * v32, *(v0 + 136));
    sub_231158C68();
    v35 = sub_231158BF8();
    v36 = OUTLINED_FUNCTION_16_1();
    v37 = *(v0 + 128);
    if (v36 == 1)
    {
      sub_231060190(*(v0 + 128), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      v38 = *(v0 + 128);
      sub_231158BA8();
      OUTLINED_FUNCTION_4_2();
      (*(v39 + 8))(v37, v35);
    }

    OUTLINED_FUNCTION_58();
    if (OUTLINED_FUNCTION_16_1() == 1)
    {
      sub_231060190(*(v0 + 120), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      sub_231158BE8();
      OUTLINED_FUNCTION_4_2();
      v41 = *(v40 + 8);
      v42 = OUTLINED_FUNCTION_50();
      v43(v42);
    }

    OUTLINED_FUNCTION_57();
    v44 = OUTLINED_FUNCTION_16_1();
    v45 = *(v0 + 112);
    if (v44 == 1)
    {
      v46 = *(v0 + 112);
      v47 = &qword_27DD3BCC0;
      v48 = &qword_231162760;
      goto LABEL_17;
    }

    v49 = *(v0 + 80);
    sub_231158BD8();
    OUTLINED_FUNCTION_4_2();
    v51 = *(v50 + 8);
    v52 = OUTLINED_FUNCTION_50();
    v53(v52);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE78, &qword_231162768);
    *(v0 + 248) = v54;
    if (__swift_getEnumTagSinglePayload(v49, 1, v54) != 1)
    {
      break;
    }

    v46 = *(v0 + 80);
    v47 = &unk_27DD3BE70;
    v48 = &unk_231162758;
LABEL_17:
    sub_231060190(v46, v47, v48);
    v5 = 0;
    v7 = 0;
  }

  v68 = *(MEMORY[0x277D731E8] + 4);
  v69 = swift_task_alloc();
  *(v0 + 256) = v69;
  *v69 = v0;
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821DB698]();
}

uint64_t sub_23105E248()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 80);

  v9 = OUTLINED_FUNCTION_36();
  v10(v9);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_17();
  v13(v12);
  OUTLINED_FUNCTION_11(v1);
  (*(v14 + 8))(v8, v1);
  v15 = *(v0 + 264);
  v16 = *(v0 + 176);
  v17 = *(v0 + 152);
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v21 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = *(v0 + 80);

  OUTLINED_FUNCTION_1();

  return v23();
}

uint64_t sub_23105E368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158778();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23105E39C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158778();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23105E420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v54 = a3;
  v61 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v48 - v8;
  v9 = sub_231158C18();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231158A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_231158C48();
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = &v48 - v21;
  v22 = sub_231158A68();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, a1, v22);
  if ((*(v23 + 88))(v26, v22) != *MEMORY[0x277D72D28])
  {
    return (*(v23 + 8))(v26, v22);
  }

  (*(v23 + 96))(v26, v22);
  v27 = *v26;
  v29 = *(*v26 + 16);
  v28 = *(*v26 + 24);
  v31 = *(*v26 + 32);
  v30 = *(v27 + 40);

  (*(v14 + 16))(v17, v61, v13);
  if ((*(v14 + 88))(v17, v13) == *MEMORY[0x277D72B48])
  {
    v49 = v31;
    v50 = v29;
    v61 = v30;
    (*(v14 + 96))(v17, v13);
    v33 = v57;
    v32 = v58;
    v34 = v60;
    v48 = *(v57 + 32);
    v48(v60, v17, v58);
    sub_231158C28();
    v36 = v55;
    v35 = v56;
    if ((*(v55 + 88))(v12, v56) == *MEMORY[0x277D73240])
    {
      (*(v36 + 8))(v12, v35);
      v37 = sub_2311590C8();
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v37);
      v38 = *(v33 + 16);
      v56 = v28;
      v39 = v51;
      v38(v51, v34, v32);
      v40 = (*(v33 + 80) + 80) & ~*(v33 + 80);
      v41 = v32;
      v42 = swift_allocObject();
      *(v42 + 2) = 0;
      *(v42 + 3) = 0;
      v43 = v52;
      *(v42 + 4) = v54;
      *(v42 + 5) = v43;
      v44 = v56;
      *(v42 + 6) = v50;
      *(v42 + 7) = v44;
      v45 = v61;
      *(v42 + 8) = v49;
      *(v42 + 9) = v45;
      v48(&v42[v40], v39, v41);
      *&v42[(v19 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v53;

      v46 = v43;
      swift_unknownObjectRetain();
      sub_23105ED1C(0, 0, v59, &unk_231162738, v42);

      sub_231086A14(2, 0, 3u);
      return (*(v33 + 8))(v60, v41);
    }

    else
    {
      (*(v33 + 8))(v34, v32);

      return (*(v36 + 8))(v12, v35);
    }
  }

  else
  {

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_23105EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v16;
  v8[2] = a4;
  v8[3] = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_23105EB08;

  return sub_23105D334(a6, a7, a8, v16, v17, v18, OpaqueTypeConformance2);
}

uint64_t sub_23105EB08()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_26();
  v7 = v6;
  OUTLINED_FUNCTION_2_4();
  *v8 = v7;
  v10 = *(v9 + 48);
  v11 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v12 = v11;
  v7[7] = v0;

  if (v0)
  {
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_62();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v7[8] = v3;
    v7[9] = v5;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_62();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }
}

uint64_t sub_23105EC40()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x231924980](v0[4], v0[5]);
  sub_23105CCB0(v4, v1, v2, 0x6D756E6520707041, 0xE900000000000020);

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_23105ED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v9 = OUTLINED_FUNCTION_19(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  sub_23106001C(a3, v26 - v12, &qword_27DD3C1D0, &qword_231162D50);
  v14 = sub_2311590C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v13, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    OUTLINED_FUNCTION_11(v14);
    (*(v16 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_231159048();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_231158E88() + 32;

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = OUTLINED_FUNCTION_54();

      sub_231060190(a3, &qword_27DD3C1D0, &qword_231162D50);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231060190(a3, &qword_27DD3C1D0, &qword_231162D50);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return OUTLINED_FUNCTION_54();
}

uint64_t sub_23105EF84()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2310602F0(*(v0 + 16));
  sub_231060330(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_23105EFC4()
{
  sub_23105EF84();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts24ToolKitCascadeSyncEngineC16PushStateMachineC011TransactionI0O(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23105F04C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23105F08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23105F0D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_23105F0FC()
{
  result = qword_27DD3BE50;
  if (!qword_27DD3BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE50);
  }

  return result;
}

uint64_t sub_23105F15C()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = sub_231157F18();
  OUTLINED_FUNCTION_19(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23106044C;
  OUTLINED_FUNCTION_62();

  return sub_231058CCC(v7, v8, v9, v10);
}

id sub_23105F240(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231157998();
  v12[0] = 0;
  v7 = [v3 initWithData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_231157938();

    swift_willThrow();
  }

  sub_231054A60(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_23105F320(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    sub_231054A0C(0, &qword_27DD3BED0, 0x277D21170);
    v7 = sub_231158F38();

    if (a3)
    {
LABEL_3:
      sub_231054A0C(0, &qword_27DD3BEC8, 0x277D21158);
      v8 = sub_231158F38();

      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v14[0] = 0;
  v9 = [v4 initWithToolDefinition:a1 typeDefinitions:v7 localizedStringsByLocale:v8 error:v14];

  if (v9)
  {
    v10 = v14[0];
  }

  else
  {
    v11 = v14[0];
    sub_231157938();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

id sub_23105F478(void *a1, void *a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v6 = [v3 initWithContent:a1 metaContent:a2 error:v11];
  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_231157938();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_23105F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = sub_231158E28();

    if (a3)
    {
LABEL_3:
      v6 = sub_231158F38();

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v12[0] = 0;
  v7 = [v3 initWithName:v5 synonyms:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_231157938();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_23105F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = sub_231158E28();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_231158E28();

  if (a5)
  {
LABEL_4:
    v10 = sub_231158F38();

    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  v16[0] = 0;
  v11 = [v5 initWithTitle:v8 subtitle:v9 synonyms:v10 error:v16];

  if (v11)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    sub_231157938();

    swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

id sub_23105F7B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v12[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = sub_231158E28();
  }

  else
  {
    v6 = 0;
  }

  v12[0] = 0;
  v7 = [v4 initWithCaseIdentifier:v6 displayRepresentation:a3 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_231157938();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_23105F8A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = sub_231158E28();

    if (a4)
    {
LABEL_3:
      sub_231054A0C(0, &qword_280CCAF90, 0x277D20E48);
      v9 = sub_231158F38();

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v15[0] = 0;
  v10 = [v5 initWithTypeIdentifier:v8 typeDisplayRepresentation:a3 cases:v9 error:v15];

  if (v10)
  {
    v11 = v15[0];
  }

  else
  {
    v12 = v15[0];
    sub_231157938();

    swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

id sub_23105F9D8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_231158E28();

  v7[0] = 0;
  v2 = [v0 initWithSourceItemIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_231157938();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_23105FAA4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE88, &qword_231162778);
  v2 = sub_2311596F8();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_23106001C(v6, v17, &qword_27DD3BE90, &qword_231162780);
    v7 = v17[0];
    v8 = v17[1];
    v9 = OUTLINED_FUNCTION_31();
    result = sub_23105FECC(v9, v10);
    if (v12)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v7;
    v13[1] = v8;
    result = sub_231040B88(&v18, (v3[7] + 32 * result));
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_12;
    }

    v3[2] = v16;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23105FBF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_23105E3D0();
}

uint64_t sub_23105FC4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23105FC94(uint64_t a1)
{
  v3 = v2;
  v4 = sub_231158C48();
  OUTLINED_FUNCTION_5(v4);
  v7 = v1[3];
  v17 = v1[2];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v13 = v1[8];
  v12 = v1[9];
  v14 = *(v1 + ((*(v6 + 64) + ((*(v5 + 80) + 80) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_23105FDEC;

  return sub_23105EA08(a1, v17, v7, v8, v9, v10, v11, v13);
}

uint64_t sub_23105FDEC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_1();

  return v5();
}

unint64_t sub_23105FECC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_231159918();
  sub_231158EA8();
  v6 = sub_231159948();

  return sub_23105FF44(a1, a2, v6);
}

unint64_t sub_23105FF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231159818() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23106001C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_25_0();
  v9(v8);
  return a2;
}

unint64_t sub_23106007C()
{
  result = qword_27DD3BE98;
  if (!qword_27DD3BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE98);
  }

  return result;
}

void sub_2310600F0(uint64_t a1)
{
  v3 = sub_231158AE8();
  OUTLINED_FUNCTION_5(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_23105BFD8(a1, *(v1 + 16), (v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_231060190(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2310601EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_231060244(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23106028C()
{
  result = qword_280CCAFC0;
  if (!qword_280CCAFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD3BC00, &unk_231161AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCAFC0);
  }

  return result;
}

uint64_t sub_2310602F0(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_231060330(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts24ToolKitCascadeSyncEngineC16PushStateMachineC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23106036C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2310603C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_23106041C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{
  *(a1 + 8) = sub_23105DB50;
  result = v1[13];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t result)
{
  *(result + 8) = sub_23105A7D4;
  v2 = *(v1 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t result)
{
  *(result + 8) = sub_23105A2E0;
  v2 = *(v1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t result)
{
  *(result + 8) = sub_23105ACCC;
  v2 = *(v1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  v2 = v0[23];
  result = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 176) = v2;
  *(v3 + 184) = a2;
  v4 = (*(result + 48) + ((a2 << 10) | (16 * __clz(__rbit64(v2)))));
  v6 = *v4;
  v5 = v4[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_29()
{
  v2 = v0[25];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[26] + 1;

  return sub_231158FE8();
}

uint64_t OUTLINED_FUNCTION_37()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
}

void OUTLINED_FUNCTION_39()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_41()
{
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];
}

void OUTLINED_FUNCTION_42(void *a1@<X8>)
{
  v3 = v1[22];
  v4 = v1[19];
  v6 = v1[15];
  v5 = v1[16];
  v8 = v1[13];
  v7 = v1[14];
  v9 = v1[10];
}

uint64_t OUTLINED_FUNCTION_43()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_44()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_231158608();
}

uint64_t OUTLINED_FUNCTION_57()
{
  v0[30] = v1;
  v3 = v0[19];
  v4 = v0[14];

  return sub_231158C68();
}

uint64_t OUTLINED_FUNCTION_58()
{
  v1[28] = v0;
  v1[29] = v2;
  v4 = v1[19];
  v5 = v1[15];

  return sub_231158C68();
}

id OUTLINED_FUNCTION_59()
{

  return sub_23105F9D8();
}

uint64_t OUTLINED_FUNCTION_60()
{
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_allocObject();
}

uint64_t DarwinNotificationEventDescriptor.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

VoiceShortcuts::DarwinNotificationEventDescriptor __swiftcall DarwinNotificationEventDescriptor.init(eventName:)(__C::VCXPCEventName eventName)
{
  v3 = v1;
  v4 = sub_231158E58();
  v6 = v5;

  *v3 = v4;
  v3[1] = v6;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  return result;
}

uint64_t static DarwinNotificationEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t DarwinNotificationEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t DarwinNotificationEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_2310609F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

unint64_t XPCDarwinNotificationEventStream.Event.description.getter()
{
  sub_231159588();

  v0 = sub_2311580A8();
  MEMORY[0x231924980](v0);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t XPCDarwinNotificationEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2311580A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_231060B00(uint64_t a1)
{
  result = sub_231060B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231060B28()
{
  result = qword_280CCB5A0;
  if (!qword_280CCB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5A0);
  }

  return result;
}

unint64_t sub_231060B80()
{
  result = qword_280CCB598;
  if (!qword_280CCB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB598);
  }

  return result;
}

uint64_t sub_231060BD4(uint64_t a1)
{
  result = sub_231060D20(&qword_280CCB110, MEMORY[0x277D79CE0]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231060C30()
{
  result = qword_280CCB590;
  if (!qword_280CCB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB590);
  }

  return result;
}

uint64_t sub_231060C9C(uint64_t a1)
{
  v2 = MEMORY[0x277D79D00];
  *(a1 + 8) = sub_231060D20(&unk_280CCB0F0, MEMORY[0x277D79D00]);
  result = sub_231060D20(&unk_280CCB100, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_231060D20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231060D68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231060DA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t WFSystemSurfaceWorkflowStatusUpdater.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_231061044;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231162968;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000035;
  *(inited + 40) = 0x8000000231168650;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v3;
  *(inited + 64) = 1;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_231161B80;
  *(v6 + 32) = inited;
  v7 = v0;
  v8 = static TaskBuilder.buildBlock(_:)(v6);
  swift_setDeallocating();
  sub_2310639FC();
  return v8;
}

double sub_231060F84(uint64_t *a1, void *a2)
{
  v2 = sub_23106104C(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  sub_23109C3D0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_231161E80;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_23106104C(uint64_t a1, id a2)
{
  v4 = sub_2310DF1AC(a1, [a2 databaseProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  sub_23109C3D0(v4);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C744();
  v6 = v5;
  v13 = a1;

  v7 = sub_2310A0BF0(&unk_2845D7720);
  v8 = [a2 databaseProvider];
  swift_getObjectType();
  sub_2310E07F4(v7, v8, &v13);

  swift_unknownObjectRelease();
  swift_allocObject();
  sub_23109C6B0();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_231162950;
  *(v11 + 32) = v6;
  *(v11 + 40) = v10;

  return v11;
}

uint64_t sub_231061234()
{
  OUTLINED_FUNCTION_4_1();
  [*(v0 + 16) updateIfPossible];
  OUTLINED_FUNCTION_46_0();

  return v1();
}

uint64_t sub_231061294()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23106044C;

  return sub_231061214(v3, v4);
}

void sub_231061350()
{
  OUTLINED_FUNCTION_30();
  v14 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  if (v0 >> 62)
  {
    v7 = sub_2311594D8();
  }

  else
  {
    v7 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_12:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  v15 = MEMORY[0x277D84F90];
  sub_23104CCC4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231925080](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_23104CCC4((v10 > 1), v11 + 1, 1);
      }

      ++v8;
      v12 = sub_231051E04(v5, v3, v14);
      *(v15 + 16) = v11 + 1;
      v13 = v15 + 16 * v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = v12;
    }

    while (v7 != v8);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2310614A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_23104CD04(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23104CD04((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_231040B88(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_2310615A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_34_0(v35);
      OUTLINED_FUNCTION_28_1();
      v36 = *(v28 + 40);
      v37 = *(v28 + 48);
      *(v28 + 40) = sub_2310646E4;
      *(v28 + 48) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v35);
      v36 = *(v28 + 16);
      v37 = *(v28 + 24);
      *(v28 + 16) = sub_231064508;
      *(v28 + 24) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v35);
      v36 = *(v28 + 16);
      v37 = *(v28 + 24);
      *(v28 + 16) = sub_2310645C8;
      *(v28 + 24) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_45_0();
    sub_231061350();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_34_0(v35);
      OUTLINED_FUNCTION_28_1();
      v36 = *(v28 + 32);
      v37 = *(v28 + 40);
      *(v28 + 32) = sub_23106461C;
      *(v28 + 40) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v35);
      v36 = *(v28 + 16);
      v37 = *(v28 + 24);
      *(v28 + 16) = sub_231064624;
      *(v28 + 24) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_34_0(v35);
      OUTLINED_FUNCTION_28_1();
      v36 = *(v28 + 40);
      v37 = *(v28 + 48);
      *(v28 + 40) = sub_2310643C0;
      *(v28 + 48) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_34_0(v35);
      OUTLINED_FUNCTION_28_1();
      v36 = *(v28 + 40);
      v37 = *(v28 + 48);
      *(v28 + 40) = sub_2310646E8;
      *(v28 + 48) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v35);
      v36 = *(v28 + 16);
      v37 = *(v28 + 24);
      *(v28 + 16) = sub_2310642D8;
      *(v28 + 24) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v35);
      v36 = *(v28 + 16);
      v37 = *(v28 + 24);
      *(v28 + 16) = sub_2310644FC;
      *(v28 + 24) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_231061D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_30();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_7_3();
  v24(&a10);
  OUTLINED_FUNCTION_50_0();
  if (!sub_23106FF58(v24))
  {
LABEL_8:
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_36_0();
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_35();
    do
    {
      if (v27)
      {
        OUTLINED_FUNCTION_51_0();
        v28 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_29_0();
      }

      ++v26;
      OUTLINED_FUNCTION_26_1();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v35);
      v36 = *(v28 + 16);
      v37 = *(v28 + 24);
      *(v28 + 16) = sub_2310646E4;
      *(v28 + 24) = v29;

      OUTLINED_FUNCTION_22_1();
    }

    while (v25 != v26);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_231061F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231061F34()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (!OUTLINED_FUNCTION_48_0())
  {
    v0[9] = 0;
    v0[10] = 0;
    goto LABEL_7;
  }

  v1 = v0[10];
  if (!v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }

  v2 = v0[12];
  v0[7] = v0[9];
  v0[8] = v1;
  OUTLINED_FUNCTION_0_6(v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[14] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_16_2(v5);

  return v8(v7);
}

uint64_t sub_231062088()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231062180()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF40, &unk_231162A60);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_21_0();
  v7 = sub_2311580B8();
  OUTLINED_FUNCTION_40_0(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231062254()
{
  OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_38())
  {
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    OUTLINED_FUNCTION_5_3();
    v5 = *(v2 + 4);
    v6 = swift_task_alloc();
    *(v1 + 112) = v6;
    *v6 = v1;
    OUTLINED_FUNCTION_23_1(v6);
    OUTLINED_FUNCTION_69_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_39_0();
  sub_231064568(v0, &qword_27DD3BF40, &unk_231162A60);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_4_3();
  sub_2311597E8();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_69_0();
}

uint64_t sub_2310623C4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310624BC()
{
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_62_0();
  v1(v0);

  OUTLINED_FUNCTION_46_0();

  return v2();
}

uint64_t sub_23106252C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_62_0();
  v2(v1);

  OUTLINED_FUNCTION_1();
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_2310625A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310625B8()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(v0[9], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    OUTLINED_FUNCTION_0_6(v2);
    v4 = *(v3 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[13] = v5;
    *v5 = v6;
    v5[1] = sub_23106273C;
    v7 = v0[11];
    v8 = OUTLINED_FUNCTION_19_0();

    return v9(v8);
  }

  else
  {
    v11 = v0[9];
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_23106273C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231062834()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF60, &qword_231162A98);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231158118();
  OUTLINED_FUNCTION_40_0(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231062908()
{
  OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_38())
  {
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    OUTLINED_FUNCTION_5_3();
    v5 = *(v2 + 4);
    v6 = swift_task_alloc();
    *(v1 + 112) = v6;
    *v6 = v1;
    OUTLINED_FUNCTION_23_1(v6);
    OUTLINED_FUNCTION_69_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_39_0();
  sub_231064568(v0, &qword_27DD3BF60, &qword_231162A98);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_4_3();
  sub_2311597E8();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_69_0();
}

uint64_t sub_231062A78()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231062B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231062B88()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(v0[9], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    OUTLINED_FUNCTION_0_6(v2);
    v4 = *(v3 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[13] = v5;
    *v5 = v6;
    v5[1] = sub_231062D10;
    v7 = v0[11];
    v8 = OUTLINED_FUNCTION_19_0();

    return v9(v8);
  }

  else
  {
    v11 = v0[9];
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_18_1();
    MEMORY[0x231924980](0xD000000000000013);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_231062D10()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231062E08()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_46_0();

  return v2();
}

uint64_t sub_231062E60()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_231062EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231062ED4()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (!OUTLINED_FUNCTION_48_0())
  {
    v0[9] = 0;
    v0[10] = 0;
    goto LABEL_7;
  }

  v1 = v0[10];
  if (!v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_18_1();
    MEMORY[0x231924980](0xD000000000000012);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }

  v2 = v0[12];
  v0[7] = v0[9];
  v0[8] = v1;
  OUTLINED_FUNCTION_0_6(v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[14] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_16_2(v5);

  return v8(v7);
}

uint64_t sub_231063050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231063068()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (!OUTLINED_FUNCTION_48_0())
  {
    v0[9] = 0;
    v0[10] = 0;
    goto LABEL_7;
  }

  v1 = v0[10];
  if (!v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }

  v2 = v0[12];
  v0[7] = v0[9];
  v0[8] = v1;
  OUTLINED_FUNCTION_0_6(v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[14] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_16_2(v5);

  return v8(v7);
}

uint64_t sub_2310631BC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310632B4()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_46_0();

  return v2();
}

uint64_t sub_23106330C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_231063368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231063380()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(v0[9], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    OUTLINED_FUNCTION_0_6(v2);
    v4 = *(v3 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[13] = v5;
    *v5 = v6;
    v5[1] = sub_23106273C;
    v7 = v0[11];
    v8 = OUTLINED_FUNCTION_19_0();

    return v9(v8);
  }

  else
  {
    v11 = v0[9];
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_18_1();
    MEMORY[0x231924980](0xD000000000000013);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_231063508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231063520()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(*(v0 + 56), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    OUTLINED_FUNCTION_0_6(*(v0 + 64));
    v8 = v1;
    v3 = *(v2 + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_23106367C;
    v5 = *(v0 + 72);

    return v8();
  }

  else
  {
    v7 = *(v0 + 56);
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_23106367C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231063794()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_2310637B8()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF10, &unk_231162A30);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231157F58();
  OUTLINED_FUNCTION_40_0(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_23106388C()
{
  OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_38())
  {
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    OUTLINED_FUNCTION_5_3();
    v5 = *(v2 + 4);
    v6 = swift_task_alloc();
    *(v1 + 112) = v6;
    *v6 = v1;
    OUTLINED_FUNCTION_23_1(v6);
    OUTLINED_FUNCTION_69_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_39_0();
  sub_231064568(v0, &qword_27DD3BF10, &unk_231162A30);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_4_3();
  sub_2311597E8();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_69_0();
}

uint64_t sub_2310639FC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF78, &qword_231162AD8);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_231063A58()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_231063A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  v10 = sub_2311580B8();
  v16[3] = v10;
  v16[4] = sub_2310645D4(&qword_280CCB120, MEMORY[0x277D79CE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a2, v10);
  v12 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  sub_2310548A0(v16, v15);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a1;
  sub_23104613C(v15, (v13 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_231063C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  v10 = sub_231158118();
  v16[3] = v10;
  v16[4] = sub_2310645D4(&unk_280CCB0E0, MEMORY[0x277D79D10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a2, v10);
  v12 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  sub_2310548A0(v16, v15);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a1;
  sub_23104613C(v15, (v13 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_231063DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v11 = OUTLINED_FUNCTION_19(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v19[3] = a4;
  v19[4] = a5(v14);
  v19[0] = a2;
  v15 = sub_2311590C8();
  OUTLINED_FUNCTION_63_0(v15);
  sub_2310548A0(v19, v18);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a1;
  sub_23104613C(v18, (v16 + 6));

  OUTLINED_FUNCTION_61_0();

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_231063EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v13 = OUTLINED_FUNCTION_19(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v21[3] = a5;
  v21[4] = a6(v16);
  v21[0] = a2;
  v21[1] = a3;
  v17 = sub_2311590C8();
  OUTLINED_FUNCTION_63_0(v17);
  sub_2310548A0(v21, v20);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a4;
  v18[5] = a1;
  sub_23104613C(v20, (v18 + 6));

  OUTLINED_FUNCTION_61_0();

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_231064004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v12[3] = &type metadata for TerminationEventSource.Event;
  v12[4] = sub_2310642E0();
  v8 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_2310548A0(v12, v11);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;
  sub_23104613C(v11, (v9 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_231064128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  v10 = sub_231157F58();
  v16[3] = v10;
  v16[4] = sub_2310645D4(&qword_27DD3BF28, MEMORY[0x277D79C78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a2, v10);
  v12 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  sub_2310548A0(v16, v15);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a1;
  sub_23104613C(v15, (v13 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

unint64_t sub_2310642E0()
{
  result = qword_27DD3C0E0;
  if (!qword_27DD3C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C0E0);
  }

  return result;
}

uint64_t sub_231064334()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_17_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_2(v1);
  OUTLINED_FUNCTION_64();

  return sub_23107B670(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_2310643C8()
{
  result = qword_27DD3C250;
  if (!qword_27DD3C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C250);
  }

  return result;
}

uint64_t sub_23106441C()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_17_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_2(v1);
  OUTLINED_FUNCTION_64();

  return sub_23107B670(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_2310644A8()
{
  result = qword_27DD3BF08;
  if (!qword_27DD3BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BF08);
  }

  return result;
}

unint64_t sub_231064514()
{
  result = qword_27DD3BF58;
  if (!qword_27DD3BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BF58);
  }

  return result;
}

uint64_t sub_231064568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2310645D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23106462C()
{
  result = qword_280CCBD90;
  if (!qword_280CCBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCBD90);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void OUTLINED_FUNCTION_3_3()
{

  sub_231061350();
}

void *OUTLINED_FUNCTION_4_3()
{
  v1 = v0[4];
  result = __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_2311596C8();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return v2 + 56;
}

void OUTLINED_FUNCTION_17_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_231159588();
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  __swift_storeEnumTagSinglePayload(v0[10], 0, 1, v0[11]);
  v4 = *(v2 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  sub_231046164(v0);
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return *(v2 + 104);
}

void OUTLINED_FUNCTION_25_1()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void OUTLINED_FUNCTION_41_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_46_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_231159588();
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49()
{
}

uint64_t OUTLINED_FUNCTION_50_0()
{
}

void OUTLINED_FUNCTION_51_0()
{

  JUMPOUT(0x231925080);
}

void OUTLINED_FUNCTION_52_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_54_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return sub_2311597E8();
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  return sub_2310548A0(v4, (v0 + 2));
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_2310798FC();
}

uint64_t OUTLINED_FUNCTION_62_0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v0[12] + 8);
  return v0[13];
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_66()
{
  v2 = *(v0 + 88);

  return sub_2310548A0(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_67()
{
  v2 = *(v0 + 88);
}

void BGSystemTaskScheduler.checkIn(identifier:perform:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *(v7 + 24);
  sub_231158F18();
  v9 = sub_231158E28();

  OUTLINED_FUNCTION_26_1();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v13[4] = sub_231064E50;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_231064E80;
  v13[3] = &block_descriptor_3;
  v11 = _Block_copy(v13);

  LODWORD(v4) = [v4 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  if (!v4)
  {
    sub_231064EF0();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

uint64_t sub_231064E50(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, &protocol witness table for BGSystemTask);
}

void sub_231064E80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_231064EF0()
{
  result = qword_280CCBF98;
  if (!qword_280CCBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCBF98);
  }

  return result;
}

void BGSystemTaskScheduler.runWhenAppropriate(request:)(uint64_t a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  sub_2310548A0(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF90, &qword_231162AF0);
  sub_231054A0C(0, &qword_280CCAEE8, 0x277CF0800);
  if (swift_dynamicCast())
  {
    v11[0] = 0;
    if ([v1 submitTaskRequest:v10 error:v11])
    {
      v2 = v11[0];
    }

    else
    {
      v3 = v11[0];
      v4 = sub_231157938();

      swift_willThrow();
      type metadata accessor for Code(0);
      v11[0] = 5;
      v5 = v4;
      sub_23106518C();
      v6 = sub_231157898();

      if (v6)
      {

        sub_231064EF0();
        swift_allocError();
        *v7 = 0;
        swift_willThrow();
      }
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_231159588();
    sub_231159688();
    MEMORY[0x231924980](0xD000000000000024, 0x80000002311687A0);
    swift_getObjectType();
    v9 = sub_231159998();
    MEMORY[0x231924980](v9);

    sub_2311596C8();
    __break(1u);
  }
}

unint64_t sub_23106518C()
{
  result = qword_280CCAE98;
  if (!qword_280CCAE98)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCAE98);
  }

  return result;
}

uint64_t sub_2310651F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_231054A0C(255, &qword_280CCAEE8, 0x277CF0800);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231065260@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  sub_231054A0C(0, a2, a3);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *(v6 + 24);
  sub_231158F18();
  v8 = sub_231065320();
  a4[3] = sub_231054A0C(0, &qword_280CCAEE8, 0x277CF0800);
  result = sub_2310651F8(&qword_280CCAEF8);
  a4[4] = result;
  *a4 = v8;
  return result;
}

id sub_231065320()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231158E28();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

id BGSystemTaskScheduler.cancel(identifier:)(void *a1)
{
  v2 = v1;
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *(v3 + 24);
  sub_231158F18();
  v5 = sub_231158E28();

  v9[0] = 0;
  LODWORD(v2) = [v2 cancelTaskRequestWithIdentifier:v5 error:v9];

  if (v2)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_231157938();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL BGSystemTaskScheduler.isScheduled(identifier:)(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *(v3 + 24);
  sub_231158F18();
  v5 = sub_231158E28();

  v6 = [v2 taskRequestForIdentifier_];

  if (v6)
  {
  }

  return v6 != 0;
}

uint64_t (*BGSystemTask.onExpirationBySystem.getter())(unsigned __int8 *a1)
{
  result = [v0 expirationHandlerWithReason];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    OUTLINED_FUNCTION_26_1();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2310658B0;
    *(v4 + 24) = v3;
    return sub_2310658C4;
  }

  return result;
}

uint64_t sub_231065680@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = BGSystemTask.onExpirationBySystem.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_231066790;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_2310656F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_231066768;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_231042684(v3);
  return BGSystemTask.onExpirationBySystem.setter(v6, v5);
}

id BGSystemTask.onExpirationBySystem.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    OUTLINED_FUNCTION_26_1();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_2310658F0;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_231065930;
    v9[3] = &block_descriptor_12;
    v7 = _Block_copy(v9);

    [v3 setExpirationHandlerWithReason_];
    _Block_release(v7);
    return sub_231046164(a1);
  }

  else
  {

    return [v2 setExpirationHandlerWithReason_];
  }
}

uint64_t sub_2310658C4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2310658F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 == 1;
  return v2(&v5);
}

uint64_t sub_231065930(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id (*BGSystemTask.onExpirationBySystem.modify(uint64_t (**a1)(unsigned __int8 *a1)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = BGSystemTask.onExpirationBySystem.getter();
  a1[1] = v3;
  return sub_2310659CC;
}

id sub_2310659CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_17();
    sub_231042684(v5);
    v6 = OUTLINED_FUNCTION_17();
    BGSystemTask.onExpirationBySystem.setter(v6, v7);
    v8 = OUTLINED_FUNCTION_17();

    return sub_231046164(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_17();
    return BGSystemTask.onExpirationBySystem.setter(v10, v11);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BGSystemTask.fail(retryingAfter:)(Swift::Double retryingAfter)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([v1 setTaskExpiredWithRetryAfter:v5 error:retryingAfter + 300.0])
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_231157938();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
}

id (*sub_231065B08(uint64_t (**a1)(unsigned __int8 *a1)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = BGSystemTask.onExpirationBySystem.getter();
  a1[1] = v3;
  return sub_2310659CC;
}

uint64_t sub_231065B6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = BGSystemTaskRequest.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t BGSystemTaskRequest.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_231158E58();

  return v2;
}

id BGSystemTaskRequest.taxedResources.getter@<X0>(void *a1@<X8>)
{
  result = [v1 resources];
  *a1 = result;
  return result;
}

id sub_231065C24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = BGSystemTaskRequest.taxedResources.getter(&v5);
  *a2 = v5;
  return result;
}

id sub_231065C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return BGSystemTaskRequest.taxedResources.setter(&v4);
}

id (*BGSystemTaskRequest.taxedResources.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [v1 resources];
  return sub_231065CFC;
}

unint64_t BGSystemTaskRequest.urgency.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 priority];
  v4 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v4) = 3;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_231065D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = BGSystemTaskRequest.urgency.getter(&v5);
  *a2 = v5;
  return result;
}

id sub_231065D98(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return BGSystemTaskRequest.urgency.setter(&v4);
}

id (*BGSystemTaskRequest.urgency.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  BGSystemTaskRequest.urgency.getter((a1 + 8));
  return sub_231065E40;
}

id sub_231065E40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v4 = &v7;
  }

  return BGSystemTaskRequest.urgency.setter(v4);
}

void sub_231065EAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  BGSystemTaskRequest.relatedApps.setter(v4);
}

void BGSystemTaskRequest.relatedApps.setter(uint64_t a1)
{
  [v1 setApplicationRelationship_];
  if (a1)
  {
    v3 = sub_231158F38();
  }

  else
  {
    v3 = 0;
  }

  [v1 setRelatedApplications_];
}

void (*BGSystemTaskRequest.relatedApps.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2310667B8(v1, &selRef_relatedApplications);
  return sub_231065FB8;
}

void sub_231065FB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    BGSystemTaskRequest.relatedApps.setter(v5);
  }

  else
  {
    BGSystemTaskRequest.relatedApps.setter(*a1);
  }
}

id (*sub_23106607C(void *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 resources];
  return sub_231065CFC;
}

id (*sub_231066154(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 requiresExternalPower];
  return sub_2310661A8;
}

id (*sub_231066204(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  BGSystemTaskRequest.urgency.getter((a1 + 8));
  return sub_231065E40;
}

id (*sub_2310662C4(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 expectedDuration];
  *a1 = v4;
  return sub_231066318;
}

void sub_23106639C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_231158F38();
  }

  else
  {
    v2 = 0;
  }

  [v1 setInvolvedProcesses_];
}

void (*sub_231066410(uint64_t **a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_231066470(v3);
  return sub_231056514;
}

void (*sub_231066470(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2310667B8(v1, &selRef_involvedProcesses);
  return sub_2310664C4;
}

void sub_2310664C4(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;

      v6 = sub_231158F38();
    }

    else
    {
      v6 = 0;
    }

    [a1[1] setInvolvedProcesses_];
  }

  else if (v3)
  {
    v5 = *a1;
    v6 = sub_231158F38();

    [a1[1] setInvolvedProcesses_];
  }

  else
  {
    v6 = 0;
    [a1[1] setInvolvedProcesses_];
  }
}

void (*sub_2310665D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = sub_2310667B8(v3, &selRef_relatedApplications);
  return sub_231065FB8;
}

id (*sub_2310666B0(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 requiresBuddyComplete];
  return sub_231066704;
}

uint64_t sub_231066724(uint64_t a1)
{
  result = sub_2310651F8(&qword_280CCAEF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_231066768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_231066790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2310667B8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231158F48();

  return v4;
}

uint64_t DaemonEventStream.any<A>(_:)(uint64_t (*a1)(void))
{
  type metadata accessor for DaemonEventStream.EventMerge();
  v2 = a1();
  return sub_231066E40(v2);
}

uint64_t DaemonEventStream.event<A>(_:)()
{
  OUTLINED_FUNCTION_2_6();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  type metadata accessor for DaemonEventStream.EventSource();
  (*(v4 + 16))(v8, v2, v0);

  return sub_231066970();
}

uint64_t sub_231066970()
{
  OUTLINED_FUNCTION_2_6();
  v1 = swift_allocObject();
  sub_231066BCC(v0);
  return v1;
}

uint64_t sub_2310669BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  result = sub_231066AE4();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v8;
    *(result + 40) = v9;
    v10 = sub_231067678;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_231066A48(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
  }

  v9 = *a2;
  sub_231042684(v5);
  return sub_231066B2C();
}

uint64_t sub_231066AE4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_25_0();
  sub_231042684(v3);
  return OUTLINED_FUNCTION_25_0();
}

uint64_t sub_231066B2C()
{
  OUTLINED_FUNCTION_2_6();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return sub_231046164(v3);
}

uint64_t *sub_231066BCC(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v6 = *(v3 + 80);
  v5[2] = v6;
  v7 = *(v3 + 88);
  v5[3] = v7;
  v5[4] = v4;

  sub_23107AAC4(a1, sub_2310676A0, v5, v6, v7);

  (*(*(v6 - 8) + 8))(a1, v6);

  return v1;
}

uint64_t sub_231066CFC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_231066AE4();

    if (v3)
    {
      v3(a1);
      return sub_231046164(v3);
    }
  }

  return result;
}

uint64_t DaemonEventStream.EventSource.deinit()
{
  v1 = *(v0 + 24);
  sub_231046164(*(v0 + 16));
  return v0;
}

uint64_t DaemonEventStream.EventSource.__deallocating_deinit()
{
  DaemonEventStream.EventSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void (*sub_231066DE4(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231066B7C();
  return sub_2310676B8;
}

uint64_t sub_231066E40(uint64_t a1)
{
  OUTLINED_FUNCTION_0_7();
  v2 = swift_allocObject();
  sub_2310670A0(a1);
  return v2;
}

uint64_t sub_231066E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  result = sub_231066FB8();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v8;
    *(result + 40) = v9;
    v10 = sub_231056638;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_231066F1C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
  }

  v9 = *a2;
  sub_231042684(v5);
  return sub_231067000();
}

uint64_t sub_231066FB8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_25_0();
  sub_231042684(v3);
  return OUTLINED_FUNCTION_25_0();
}

uint64_t sub_231067000()
{
  OUTLINED_FUNCTION_2_6();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return sub_231046164(v3);
}

void *sub_2310670A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  v6 = v5;
  v7 = *(v4 + 80);

  v8 = sub_231158F58();
  v14 = v8;
  if (v8 != sub_231158FF8())
  {
    v10 = *(v6 + 88);
    v11 = *(v10 + 32);
    do
    {
      v12 = sub_231158FD8();
      sub_231158F88();
      if (v12)
      {
        v13 = *(a1 + 32 + 8 * v8);
        swift_unknownObjectRetain();
      }

      else
      {
        sub_2311595A8();
      }

      sub_231159028();

      v11(sub_2310676AC, v2, v7, v10);
      swift_unknownObjectRelease();
      v8 = v14;
    }

    while (v14 != sub_231158FF8());
  }

  return v2;
}

void (*sub_23106722C(uint64_t a1))(uint64_t)
{
  result = sub_231066FB8();
  if (result)
  {
    v3 = result;
    result(a1);

    return sub_231046164(v3);
  }

  return result;
}

void *DaemonEventStream.EventMerge.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_231046164(v0[3]);
  return v0;
}

uint64_t DaemonEventStream.EventMerge.__deallocating_deinit()
{
  DaemonEventStream.EventMerge.deinit();
  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2310672F0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

void (*sub_231067314(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231067050();
  return sub_231067370;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DaemonEventStream(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonEventStream(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231067650()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_231067678()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_2310676A0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_231066CFC(a1);
}

uint64_t sub_2310676E8()
{
  OUTLINED_FUNCTION_4_1();
  v1[5] = v0;
  v2 = sub_231158258();
  v1[6] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[7] = v3;
  v5 = *(v4 + 64);
  v1[8] = OUTLINED_FUNCTION_21_0();
  v6 = sub_231158C58();
  v1[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[10] = v7;
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_21_0();
  v10 = sub_231157F18();
  v1[12] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231067828()
{
  OUTLINED_FUNCTION_4_1();
  (*(v0[13] + 104))(v0[14], *MEMORY[0x277D79C48], v0[12]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2310678F8;
  v2 = v0[5];
  OUTLINED_FUNCTION_29_1();

  return sub_231067D14();
}

uint64_t sub_2310678F8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = v5[12];
  v10 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v11 = v10;
  v3[16] = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v15 = v3[14];
    v16 = v3[11];
    v17 = v3[8];

    OUTLINED_FUNCTION_1();

    return v18();
  }
}

uint64_t sub_231067AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v13 = v12[16];
  v15 = v12[10];
  v14 = v12[11];
  v16 = v12[8];
  v17 = v12[9];
  sub_231158B68();
  sub_231158B58();
  sub_231159588();
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  MEMORY[0x231924980](0xD000000000000034, 0x80000002311689A0);
  v12[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  v18 = v12[3];
  *v14 = v12[2];
  v14[1] = v18;
  (*(v15 + 104))(v14, *MEMORY[0x277D73298], v17);
  sub_231158B48();

  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_21_2();
  v21(v20);
  v22 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  v23 = v13;
  v24 = sub_231158238();
  LOBYTE(v16) = sub_2311592D8();

  v25 = os_log_type_enabled(v24, v16);
  v26 = v12[16];
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v31, v32, "could not force index toolkit spotlight coordinator %@");
    sub_231064568(v28, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  (*(v12[7] + 8))(v12[8], v12[6]);
  v33 = v12[14];
  v34 = v12[11];
  v35 = v12[8];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, 0, 0xE000000000000000, a11, a12);
}

uint64_t sub_231067D14()
{
  OUTLINED_FUNCTION_4_1();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_231158368();
  v1[22] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[23] = v5;
  v7 = *(v6 + 64);
  v1[24] = OUTLINED_FUNCTION_21_0();
  v8 = sub_231158C58();
  v1[25] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[26] = v9;
  v11 = *(v10 + 64);
  v1[27] = OUTLINED_FUNCTION_21_0();
  v12 = sub_231158918();
  v1[28] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[29] = v13;
  v15 = *(v14 + 64);
  v1[30] = OUTLINED_FUNCTION_21_0();
  v16 = sub_2311584A8();
  v1[31] = v16;
  OUTLINED_FUNCTION_5(v16);
  v1[32] = v17;
  v19 = *(v18 + 64);
  v1[33] = OUTLINED_FUNCTION_21_0();
  v20 = sub_231158568();
  v1[34] = v20;
  OUTLINED_FUNCTION_5(v20);
  v1[35] = v21;
  v23 = *(v22 + 64);
  v1[36] = OUTLINED_FUNCTION_21_0();
  v24 = sub_231158538();
  v1[37] = v24;
  OUTLINED_FUNCTION_5(v24);
  v1[38] = v25;
  v27 = *(v26 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v28 = sub_231157A38();
  v1[41] = v28;
  OUTLINED_FUNCTION_5(v28);
  v1[42] = v29;
  v31 = *(v30 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v32 = sub_2311588E8();
  OUTLINED_FUNCTION_19(v32);
  v34 = *(v33 + 64);
  v1[45] = OUTLINED_FUNCTION_21_0();
  v35 = sub_2311588B8();
  v1[46] = v35;
  OUTLINED_FUNCTION_5(v35);
  v1[47] = v36;
  v38 = *(v37 + 64);
  v1[48] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_23106801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  sub_231158888();
  v10[49] = sub_231158878();
  v11 = v10[48];
  v13 = v10[44];
  v12 = v10[45];
  sub_2311588D8();
  sub_231157A28();
  OUTLINED_FUNCTION_9();
  sub_231158898();
  v14 = *(MEMORY[0x277D727A0] + 4);
  v15 = swift_task_alloc();
  v10[50] = v15;
  *v15 = v10;
  v15[1] = sub_2310681B0;
  v16 = v10[48];
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821DADB0](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2310681B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  v7 = v4[50];
  *v6 = *v2;

  v8 = v4[48];
  v9 = v4[47];
  v10 = v4[46];
  if (v1)
  {

    v11 = *(v9 + 8);
  }

  else
  {
    v5[51] = a1;
    v14 = *(v9 + 8);
  }

  v12 = OUTLINED_FUNCTION_21_2();
  v13(v12);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231068340()
{
  v1 = v0[51];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v0[52] = v1;
  v3 = v0[49];
  v4 = v0[39];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[33];
  v22 = v0[40];
  v23 = v0[34];
  v9 = v0[32];
  v21 = v0[31];
  v27 = v0[30];
  v28 = v0[43];
  v24 = v0[29];
  v25 = v0[37];
  v26 = v0[28];
  type metadata accessor for ToolTransformer();
  OUTLINED_FUNCTION_8();
  v10 = swift_allocObject();
  v0[53] = v10;
  v10[2] = v3;
  v10[3] = v1;
  v10[4] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_9_0();
  v11 = swift_allocObject();
  v0[54] = v11;
  *(v11 + 16) = MEMORY[0x277D84F90];

  swift_unknownObjectRetain();
  sub_231158508();
  swift_getKeyPath();
  sub_231158498();
  sub_231158558();
  (*(v9 + 8))(v8, v21);
  OUTLINED_FUNCTION_8_3();
  sub_23106B2BC(v12, v13);
  OUTLINED_FUNCTION_7_4();
  sub_23106B2BC(v14, v15);
  sub_2311588F8();

  (*(v6 + 8))(v7, v23);
  v16 = *(v5 + 8);
  v0[55] = v16;
  v0[56] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v4, v25);
  (*(v24 + 104))(v27, *MEMORY[0x277D72858], v26);

  sub_231157A28();
  v17 = *(MEMORY[0x277D72768] + 4);
  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v19 = OUTLINED_FUNCTION_4_4(v18);

  return MEMORY[0x2821DACB8](v19);
}

uint64_t sub_2310685A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = v2[57];
  *v4 = *v1;
  *(v3 + 464) = v0;

  v24 = v2[56];
  v6 = v2[55];
  v7 = v2[54];
  v8 = v2[43];
  v9 = v2[42];
  v10 = v2[41];
  v11 = v2[40];
  v12 = v2[37];
  v13 = v2[30];
  v14 = v2[29];
  v15 = v2[28];

  v16 = *(v9 + 8);
  v17 = OUTLINED_FUNCTION_21_2();
  v18(v17);
  (*(v14 + 8))(v13, v15);
  v6(v11, v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_2310687D8()
{
  v1 = v0[54];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v39 = v0;
    v44 = MEMORY[0x277D84F90];

    sub_23104CA0C(0, v3, 0);
    v4 = 0;
    v5 = *(v44 + 16);
    v6 = 16 * v5;
    while (1)
    {
      v7 = v2;
      v9 = *(v2 + v4 + 32);
      v8 = *(v2 + v4 + 40);
      v10 = *(v44 + 24);
      v11 = v5 + 1;

      if (v5 >= v10 >> 1)
      {
        sub_23104CA0C((v10 > 1), v11, 1);
      }

      *(v44 + 16) = v11;
      v12 = v44 + v6 + v4;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v4 += 16;
      ++v5;
      --v3;
      v2 = v7;
      if (!v3)
      {
        v13 = v39[26];
        v14 = v39[27];
        v15 = v39[25];
        v43 = v39[24];
        v16 = v39[23];
        v41 = v39[54];
        v42 = v39[22];
        v40 = v39[21];

        v39[59] = sub_231158B68();
        sub_231158B58();
        sub_231159588();

        v17 = MEMORY[0x231924A30](v44, MEMORY[0x277D837D0]);
        v19 = v18;

        MEMORY[0x231924980](v17, v19);

        *v14 = 0xD000000000000024;
        v14[1] = 0x8000000231168920;
        *(v39 + 156) = *MEMORY[0x277D73288];
        v20 = *(v13 + 104);
        v39[60] = v20;
        v39[61] = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v20(v14);
        sub_231158B48();

        v21 = *(v13 + 8);
        v39[62] = v21;
        v39[63] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v21(v14, v15);
        v22 = *(v40 + 16);
        v39[64] = v22;
        v23 = *(v22 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index);
        type metadata accessor for SpotlightIndexDiffer();
        inited = swift_initStackObject();
        v39[65] = inited;
        inited[5] = &type metadata for SpotlightIndexDiffer.DataSource;
        inited[6] = &off_2845DAE28;
        inited[2] = v23;
        v39[66] = *(v41 + 16);
        (*(v16 + 104))(v43, *MEMORY[0x277D721F8], v42);
        v25 = v23;

        v26 = swift_task_alloc();
        v39[67] = v26;
        *v26 = v39;
        v26[1] = sub_231068C68;
        v27 = v39[24];
        OUTLINED_FUNCTION_32();

        __asm { BR              X4 }
      }
    }
  }

  v31 = v0[53];
  v30 = v0[54];
  v32 = v0[52];
  v33 = v0[49];
  v35 = v0[26];
  v34 = v0[27];
  v36 = v0[25];
  sub_231158B68();
  sub_231158B58();
  *v34 = 0xD00000000000002ALL;
  v34[1] = 0x8000000231168970;
  (*(v35 + 104))(v34, *MEMORY[0x277D73298], v36);
  sub_231158B48();

  swift_unknownObjectRelease();
  (*(v35 + 8))(v34, v36);

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_32();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231068C68()
{
  OUTLINED_FUNCTION_5_1();
  v30 = v2;
  OUTLINED_FUNCTION_6_2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v1;
  v10 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v11 = v10;
  v12 = v9[67];
  v13 = *v1;
  *v11 = *v1;
  v10[68] = v8;
  v10[69] = v14;
  v10[70] = v15;
  v10[71] = v0;

  v16 = v9[66];
  v17 = v9[24];
  v18 = v9[23];
  v19 = v9[22];
  if (v0)
  {
    (*(v18 + 8))(v17, v19);

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_3_0();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {
    (*(v18 + 8))(v17, v19);

    v24 = swift_task_alloc();
    v10[72] = v24;
    *v24 = v13;
    v24[1] = sub_231068E98;
    v25 = v10[64];
    v26 = v10[53];
    v27 = v10[19];
    v28 = v10[20];

    return (sub_2310ADED8)(v8, v6, v4, v26, v27, v28);
  }
}

uint64_t sub_231068E98()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[73] = v0;

  if (!v0)
  {
    v9 = v3[70];
    v10 = v3[69];
    v11 = v3[68];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231068FB8()
{
  v1 = *(v0 + 416);
  if (v1)
  {
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  }

  else
  {
    OpaqueTypeConformance2 = 0;
  }

  v3 = *(v0 + 392);
  type metadata accessor for CustomToolTransformer();
  OUTLINED_FUNCTION_8();
  v4 = swift_allocObject();
  *(v0 + 592) = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = OpaqueTypeConformance2;
  v29 = MEMORY[0x277D84F90];

  swift_unknownObjectRetain();
  sub_23104CCE4(0, 23, 0);
  v5 = 0;
  do
  {
    sub_23104FD3C(byte_2845D7648[v5 + 32], v0 + 16);
    v7 = *(v29 + 16);
    v6 = *(v29 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_23104CCE4((v6 > 1), v7 + 1, 1);
    }

    *(v0 + 616) = v29;
    ++v5;
    *(v29 + 16) = v7 + 1;
    v8 = v29 + 56 * v7;
    v9 = *(v0 + 16);
    v10 = *(v0 + 32);
    v11 = *(v0 + 48);
    *(v8 + 80) = *(v0 + 64);
    *(v8 + 48) = v10;
    *(v8 + 64) = v11;
    *(v8 + 32) = v9;
  }

  while (v5 != 23);
  v27 = *(v0 + 496);
  v28 = *(v0 + 504);
  v12 = *(v0 + 480);
  v26 = *(v0 + 488);
  v13 = *(v0 + 624);
  v14 = *(v0 + 472);
  v15 = *(v0 + 216);
  v16 = *(v0 + 200);
  sub_231158B58();
  sub_231159588();

  v17 = MEMORY[0x231924A30](v29, &type metadata for CustomToolPlan);
  MEMORY[0x231924980](v17);

  *v15 = 0xD00000000000001ELL;
  v15[1] = 0x8000000231168950;
  v12(v15, v13, v16);
  sub_231158B48();

  v18 = OUTLINED_FUNCTION_21_2();
  v27(v18);
  v19 = swift_task_alloc();
  *(v0 + 600) = v19;
  *v19 = v0;
  v19[1] = sub_231069264;
  v20 = *(v0 + 512);
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  v23 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];

  return sub_2310AE128(v29, v23, v24, v4, v21, v22);
}

uint64_t sub_231069264()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *(v2 + 600);
  *v4 = *v1;
  *(v3 + 608) = v0;

  v6 = *(v2 + 616);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231069388()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[74];
  v2 = v0[65];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[49];

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v2 + 16));

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_2310694A0()
{
  v0[52] = 0;
  v1 = v0[49];
  v2 = v0[39];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v22 = v0[40];
  v23 = v0[34];
  v7 = v0[32];
  v21 = v0[31];
  v8 = v0[29];
  v26 = v0[30];
  v27 = v0[43];
  v24 = v0[37];
  v25 = v0[28];
  type metadata accessor for ToolTransformer();
  OUTLINED_FUNCTION_8();
  v9 = swift_allocObject();
  v0[53] = v9;
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  OUTLINED_FUNCTION_9_0();
  v10 = swift_allocObject();
  v0[54] = v10;
  *(v10 + 16) = MEMORY[0x277D84F90];

  sub_231158508();
  swift_getKeyPath();
  sub_231158498();
  sub_231158558();
  (*(v7 + 8))(v6, v21);
  OUTLINED_FUNCTION_8_3();
  sub_23106B2BC(v11, v12);
  OUTLINED_FUNCTION_7_4();
  sub_23106B2BC(v13, v14);
  sub_2311588F8();

  (*(v5 + 8))(v4, v23);
  v15 = *(v3 + 8);
  v0[55] = v15;
  v0[56] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v24);
  (*(v8 + 104))(v26, *MEMORY[0x277D72858], v25);

  sub_231157A28();
  v16 = *(MEMORY[0x277D72768] + 4);
  v17 = swift_task_alloc();
  v0[57] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_4_4(v17);
  OUTLINED_FUNCTION_32();

  return MEMORY[0x2821DACB8](v18);
}

uint64_t sub_2310696C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = v14[53];
  v16 = v14[54];
  v17 = v14[52];
  v18 = v14[49];

  swift_unknownObjectRelease();
  v19 = v14[58];
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310697A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = v14[65];
  v17 = v14[53];
  v16 = v14[54];
  v18 = v14[52];
  v19 = v14[49];

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v15 + 16));

  v20 = v14[71];
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231069890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = v14[70];
  v16 = v14[69];
  v17 = v14[68];
  v18 = v14[65];
  v19 = v14[53];
  v20 = v14[54];
  v21 = v14[52];
  v22 = v14[49];

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v18 + 16));

  v23 = v14[73];
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310699A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = v14[74];
  v16 = v14[65];
  v18 = v14[53];
  v17 = v14[54];
  v19 = v14[52];
  v20 = v14[49];

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v16 + 16));

  v21 = v14[76];
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231069AA0(uint64_t a1)
{
  v2 = sub_231158568();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2311584C8();
}

uint64_t sub_231069B68(uint64_t a1, uint64_t a2)
{
  v3 = sub_2311583E8();
  v5 = v4;
  swift_beginAccess();
  sub_231086030();
  v6 = *(*(a2 + 16) + 16);
  sub_231086104(v6);
  v7 = *(a2 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_231069C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23_2();
  v4 = sub_2311590C8();
  OUTLINED_FUNCTION_16_3(v4);
  OUTLINED_FUNCTION_9_0();
  v5 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();
}

uint64_t sub_231069CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_231158258();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_231158C58();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = sub_231157F18();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231069E48, 0, 0);
}

uint64_t sub_231069E48()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26_2();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    (*(v0[16] + 104))(v0[17], *MEMORY[0x277D79C48], v0[15]);
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_231069F6C;
    OUTLINED_FUNCTION_29_1();

    return sub_231067D14();
  }

  else
  {
    v4 = v0[14];
    v5 = v0[11];

    OUTLINED_FUNCTION_1();

    return v6();
  }
}

uint64_t sub_231069F6C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[18];
  v8 = v5[17];
  v9 = v5[16];
  v10 = v5[15];
  v11 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v12 = v11;
  v3[20] = v0;

  (*(v9 + 8))(v8, v10);

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v16 = v3[17];
    v17 = v3[14];
    v18 = v3[11];

    v19 = *(v11 + 8);

    return v19();
  }
}

uint64_t sub_23106A144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v13 = v12[20];
  v15 = v12[13];
  v14 = v12[14];
  v16 = v12[11];
  v17 = v12[12];
  sub_231159588();
  v12[5] = 0;
  v12[6] = 0xE000000000000000;
  MEMORY[0x231924980](0xD000000000000030, 0x80000002311688E0);
  v12[7] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  v18 = v12[5];
  v19 = v12[6];
  sub_231158B68();
  sub_231158B58();
  *v14 = v18;
  v14[1] = v19;
  (*(v15 + 104))(v14, *MEMORY[0x277D73298], v17);
  sub_231158B48();

  v20 = *(v15 + 8);
  v21 = OUTLINED_FUNCTION_21_2();
  v22(v21);
  v23 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  v24 = v13;
  v25 = sub_231158238();
  LOBYTE(v16) = sub_2311592D8();

  v26 = os_log_type_enabled(v25, v16);
  v27 = v12[20];
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v27;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v32, v33, "failed to handle gms change notification due to %@");
    sub_231064568(v29, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  (*(v12[10] + 8))(v12[11], v12[9]);
  v34 = v12[17];
  v35 = v12[14];
  v36 = v12[11];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, 0, 0xE000000000000000, a11, a12);
}

uint64_t sub_23106A3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_231157F18();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v19 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v27 - v20;
  sub_2310DC330(a1);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_231064568(v11, &unk_27DD3CE70, &qword_2311626F0);
  }

  v28 = *(v15 + 32);
  v28(v21, v11, v12);
  v23 = sub_2311590C8();
  OUTLINED_FUNCTION_16_3(v23);
  OUTLINED_FUNCTION_9_0();
  v24 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(v19, v21, v12);
  v25 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v24;
  v28(&v26[v25], v19, v12);
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();

  return (*(v15 + 8))(v21, v12);
}

uint64_t sub_23106A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_231158C58();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23106A70C, 0, 0);
}

uint64_t sub_23106A70C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26_2();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_23106A800;
    OUTLINED_FUNCTION_29_1();

    return sub_231067D14();
  }

  else
  {
    v4 = v0[12];

    OUTLINED_FUNCTION_1();

    return v5();
  }
}

uint64_t sub_23106A800()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[13];

    v13 = v3[12];

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_23106A924()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];

  sub_231159588();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x231924980](0xD000000000000034, 0x8000000231168860);
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  MEMORY[0x231924980](0xD00000000000001BLL, 0x80000002311688A0);
  v6 = v0[5];
  v7 = v0[6];
  sub_231158B68();
  sub_231158B58();
  *v3 = v6;
  v3[1] = v7;
  (*(v5 + 104))(v3, *MEMORY[0x277D73298], v4);
  sub_231158B48();

  (*(v5 + 8))(v3, v4);
  v8 = v0[12];

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_23106AB08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_2();
  v5 = sub_2311590C8();
  OUTLINED_FUNCTION_16_3(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  v7 = OUTLINED_FUNCTION_13_4();
  sub_23105ED1C(v7, v8, v9, v10, v6);
}

uint64_t sub_23106ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_231157F18();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23106AC7C, 0, 0);
}

uint64_t sub_23106AC7C()
{
  OUTLINED_FUNCTION_4_1();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D79C48], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23106AD44;
  v2 = v0[2];
  OUTLINED_FUNCTION_29_1();

  return sub_231067D14();
}

uint64_t sub_23106AD44()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v11 = v10;
  *(v3 + 56) = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 40);

    OUTLINED_FUNCTION_1();

    return v16();
  }
}

uint64_t sub_23106AED0()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_23106AF44(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

uint64_t sub_23106AFC8()
{
  sub_23106AFA0();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23106B068()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23105FDEC;
  v7 = OUTLINED_FUNCTION_11_0();

  return sub_23106ABBC(v7, v8, v9, v3);
}

uint64_t sub_23106B104()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_19(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23105FDEC;
  v10 = OUTLINED_FUNCTION_11_0();

  return sub_23106A64C(v10, v11, v12, v6, v13);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_23106B220()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;
  v7 = OUTLINED_FUNCTION_11_0();

  return sub_231069CD0(v7, v8, v9, v3);
}

uint64_t sub_23106B2BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_8()
{
  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[36];
  v9 = v0[33];
  v10 = v0[30];
  v11 = v0[27];
  v13 = v0[24];
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{
  *(a1 + 8) = sub_2310685A4;
  v2 = v1[49];
  v3 = v1[43];
  v4 = v1[30];
  return v1[40];
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  result = v0[48];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[24];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  v2 = *(v0 + 64);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_34_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_231158E98();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_231158E98();
    }

LABEL_9:
    __break(1u);
    return sub_231158E98();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_27DD3B940 != -1)
  {
    swift_once();
  }

  v1 = qword_27DD3C0A8;

  return v1;
}

id sub_23106B608()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DD3C0A8 = result;
  return result;
}

uint64_t CSSearchableIndex.index(searchableItems:batchSize:updatedIdentifiers:)()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_0(v7);
  *v8 = v9;
  v8[1] = sub_23105FDEC;

  return sub_23106B7E4(v6, v2, v4, v0);
}

uint64_t *sub_23106B754(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_231060450(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_231060454(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23106B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[54] = a3;
  v4[55] = a4;
  v4[52] = a1;
  v4[53] = a2;
  v5 = sub_231158258();
  v4[56] = v5;
  v6 = *(v5 - 8);
  v4[57] = v6;
  v7 = *(v6 + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23106B8E4, 0, 0);
}

uint64_t sub_23106B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();
  v13 = v10[63];
  v14 = v10[52];
  v10[64] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v15 = sub_231158238();
  v16 = sub_2311592C8();
  v17 = OUTLINED_FUNCTION_20_2(v16);
  v18 = v10[52];
  if (v17)
  {
    v19 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v19, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v20, v21, "Starting indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v22 = v10[52];
  }

  v23 = v10[63];
  v24 = v10[56];
  v25 = v10[57];
  v26 = v10[52];
  v27 = *(v25 + 8);
  v10[65] = v27;
  v10[66] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23, v24);
  v28 = MEMORY[0x277D84F90];
  v10[50] = MEMORY[0x277D84F90];
  v29 = sub_23106EEB4(v26);
  v10[67] = v29;
  v10[68] = v28;
  if (v29)
  {
    v30 = v10[52];
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x231925080](0);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x282200938](v29);
      }

      v31 = *(v30 + 32);
      swift_unknownObjectRetain();
    }

    v10[71] = v31;
    v10[72] = 1;
    v10[2] = v10;
    v10[7] = v10 + 51;
    v10[3] = sub_23106BF40;
    swift_continuation_init();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C0, &qword_231162E78);
    OUTLINED_FUNCTION_7_5(v32);
    v10[27] = 1107296256;
    OUTLINED_FUNCTION_5_4(&block_descriptor_41);
    [v31 generateSearchableItemWithCompletionBlock_];
LABEL_13:
    OUTLINED_FUNCTION_55_1();

    return MEMORY[0x282200938](v29);
  }

  if (sub_23106EEB4(MEMORY[0x277D84F90]))
  {
    OUTLINED_FUNCTION_60_0();
    v33 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_56_0(v35);
      OUTLINED_FUNCTION_25_2(&dword_23103C000, v36, v37, "Finished generating searchable items, triggering final index");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_54_1();
    v12("xtualAction", v11);
    sub_23106F9C8();
    v10[69] = sub_231158F38();

    OUTLINED_FUNCTION_52_1();
    v10[18] = v38;
    v39 = OUTLINED_FUNCTION_12_4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    OUTLINED_FUNCTION_27_2(v40);
    v10[43] = 1107296256;
    OUTLINED_FUNCTION_8_4();
    v10[45] = v41;
    v10[46] = v39;
    v42 = OUTLINED_FUNCTION_23_3();
    [v42 v43];
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32_0();

  v45 = sub_231158238();
  v46 = sub_2311592B8();
  v47 = OUTLINED_FUNCTION_20_2(v46);
  v48 = v10[52];
  if (v47)
  {
    v49 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v49, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v50, v51, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v52 = v10[52];
  }

  v53 = OUTLINED_FUNCTION_2_7();
  v54(v53);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_55_1();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10);
}

uint64_t sub_23106BC9C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 176);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106BD98()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_32_0();

  v1 = sub_231158238();
  v2 = sub_2311592B8();
  v3 = OUTLINED_FUNCTION_20_2(v2);
  v4 = *(v0 + 416);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v5, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v6, v7, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v8 = *(v0 + 416);
  }

  v9 = OUTLINED_FUNCTION_2_7();
  v10(v9);

  OUTLINED_FUNCTION_46_0();

  return v11();
}

uint64_t sub_23106BE98()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  swift_willThrow();

  v3 = *(v0 + 560);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23106BF40()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 584) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106C03C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[68];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[73];
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_23106C0F4()
{
  v1 = v0[71];
  v2 = v0[64];
  v3 = v0[60];
  v4 = v0[51];
  v0[74] = v4;
  swift_unknownObjectRelease();
  sub_2311581C8();
  v5 = v4;
  v6 = sub_231158238();
  v7 = sub_2311592C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[60];
  v12 = &selRef_setContentModificationDate_;
  v13 = v0[56];
  if (v8)
  {
    v102 = v0[65];
    v14 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_67_0();
    *v14 = 136315138;
    v15 = v5;
    v16 = OUTLINED_FUNCTION_71();
    sub_231158E58();
    v18 = v17;

    v19 = OUTLINED_FUNCTION_66_0();
    v12 = &selRef_setContentModificationDate_;
    v21 = sub_2310488F8(v19, v18, v20);

    *(v14 + 4) = v21;
    v5 = v15;
    OUTLINED_FUNCTION_69(&dword_23103C000, v22, v23, "Generated searchable item with identifier %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    v102(v101, v13);
  }

  else
  {

    v10(v11, v13);
  }

  v24 = v0[53];
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_71();
    v26 = sub_231158E58();
    v28 = v27;

    v29 = sub_23106EED8(v26, v28, v24);

    if (v29)
    {
      v30 = v0[64];
      v31 = v0[59];
      sub_2311581C8();
      v32 = v5;
      v33 = sub_231158238();
      v34 = sub_2311592C8();

      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[66];
      v37 = v0[65];
      v38 = v0[59];
      v39 = v0[56];
      if (v35)
      {
        OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_67_0();
        v103 = v5;
        v40 = OUTLINED_FUNCTION_62_1();
        *v38 = 136315138;
        v41 = [v32 v12[403]];
        sub_231158E58();
        v100 = v37;
        v43 = v42;

        v44 = OUTLINED_FUNCTION_66_0();
        v46 = sub_2310488F8(v44, v43, v45);

        *(v38 + 4) = v46;
        OUTLINED_FUNCTION_68(&dword_23103C000, v47, v48, "Item identifier %s already exists in index, marking as update");
        __swift_destroy_boxed_opaque_existential_0(v40);
        v5 = v103;
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_16();

        v100(v101, v39);
      }

      else
      {

        v37(v38, v39);
      }

      [v32 setIsUpdate_];
    }
  }

  v49 = v5;
  MEMORY[0x2319249F0]();
  if (*((v0[50] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[50] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_231158F98();
  }

  sub_231158FE8();
  v50 = v0[50];
  v0[75] = v50;
  if (v50 >> 62)
  {
    v51 = sub_2311594D8();
    if (v51 < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v51 == v0[54])
  {
    v52 = v0[64];
    v53 = v0[58];
    sub_2311581C8();
    v54 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v56);
      OUTLINED_FUNCTION_48_1(&dword_23103C000, v57, v58, "Searchable items set at batch capacity, triggering index");
      OUTLINED_FUNCTION_16();
    }

    v59 = v0[66];
    v60 = v0[65];
    v61 = v0[58];
    v62 = v0[56];
    v104 = v0[55];

    v63 = OUTLINED_FUNCTION_51_1();
    v60(v63);
    sub_23106F9C8();
    v64 = sub_231158F38();
    v0[76] = v64;
    v0[10] = v0;
    v0[11] = sub_23106C888;
    v65 = swift_continuation_init();
    v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[34] = MEMORY[0x277D85DD0];
    v0[35] = 1107296256;
    v0[36] = sub_23106FF5C;
    v0[37] = &block_descriptor_44;
    v0[38] = v65;
    [v104 indexSearchableItems:v64 completionHandler:v0 + 34];
    goto LABEL_29;
  }

LABEL_19:

  v67 = v0[72];
  v0[68] = v50;
  if (v67 == v0[67])
  {
    if (!sub_23106EEB4(v50))
    {

      OUTLINED_FUNCTION_32_0();

      v87 = sub_231158238();
      v88 = sub_2311592B8();
      v89 = OUTLINED_FUNCTION_20_2(v88);
      v90 = v0[52];
      if (v89)
      {
        v91 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_13_5(v91, 3.852e-34);
        OUTLINED_FUNCTION_17_3(&dword_23103C000, v92, v93, "Done indexing %ld items");
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v94 = v0[52];
      }

      v95 = OUTLINED_FUNCTION_2_7();
      v96(v95);

      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_60_0();
    v68 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v70);
      OUTLINED_FUNCTION_48_1(&dword_23103C000, v71, v72, "Finished generating searchable items, triggering final index");
      OUTLINED_FUNCTION_16();
    }

    v73 = v0[66];
    v74 = v0[65];
    v75 = v0[62];
    v76 = v0[55];
    v77 = v0[56];

    v78 = OUTLINED_FUNCTION_51_1();
    v74(v78);
    sub_23106F9C8();
    v79 = sub_231158F38();
    v0[69] = v79;

    OUTLINED_FUNCTION_52_1();
    v0[18] = v80;
    v81 = OUTLINED_FUNCTION_12_4();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    OUTLINED_FUNCTION_8_4();
    v0[45] = v82;
    v0[46] = v81;
    [v76 indexSearchableItems:v79 completionHandler:v0 + 42];
    goto LABEL_29;
  }

  v83 = v0[52];
  if ((v83 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x231925080](v67);
    v84 = v66;
  }

  else
  {
    if (v67 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      return MEMORY[0x282200938](v66);
    }

    v84 = *(v83 + 8 * v67 + 32);
    v66 = swift_unknownObjectRetain();
  }

  v0[71] = v84;
  v0[72] = v67 + 1;
  if (__OFADD__(v67, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  v0[2] = v0;
  OUTLINED_FUNCTION_28_2((v0 + 51));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C0, &qword_231162E78);
  OUTLINED_FUNCTION_7_5(v85);
  v0[27] = 1107296256;
  OUTLINED_FUNCTION_5_4(&block_descriptor_41);
  [v84 generateSearchableItemWithCompletionBlock_];
LABEL_29:
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x282200938](v66);
}