uint64_t Version.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D2D028]) init];
  type metadata accessor for Version();
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t Version.__allocating_init(major:minor:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D2D028]) initWithMajor:a1 minor:a2];
  type metadata accessor for Version();
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t static Version.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_25E5B8ECC(0, &qword_27FCF8050, 0x277D82BB8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  return sub_25E5B96C8() & 1;
}

uint64_t Identifier.__allocating_init(name:)()
{
  sub_25E5B8ECC(0, &qword_27FCF8058, 0x277D2CFC0);
  v0 = sub_25E5B8320();
  type metadata accessor for Identifier();
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

id sub_25E5B8320()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_25E5B96A8();

  v2 = [v0 initWithName_];

  return v2;
}

uint64_t Identifier.__deallocating_deinit()
{
  OUTLINED_FUNCTION_0();

  return MEMORY[0x2821FE8D8]();
}

uint64_t ChannelType.hashValue.getter()
{
  v1 = *v0;
  sub_25E5B9748();
  MEMORY[0x25F8B87D0](v1);
  return sub_25E5B9768();
}

uint64_t sub_25E5B847C()
{
  v1 = *v0;
  sub_25E5B9748();
  MEMORY[0x25F8B87D0](v1);
  return sub_25E5B9768();
}

uint64_t static Channel.primary.getter()
{
  v0 = [objc_opt_self() primary];
  type metadata accessor for Channel();
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t ConcretePipeline.__allocating_init(identifier:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D2D068]) initWithIdentifier_];

  type metadata accessor for ConcretePipeline();
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_25E5B85D0(SEL *a1, void (*a2)(void))
{
  v4 = [*(v2 + 16) *a1];
  a2();
  OUTLINED_FUNCTION_0();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

uint64_t sub_25E5B8638(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  sub_25E5B8ECC(0, &qword_27FCF8060, 0x277D2CF88);
  v3 = sub_25E5B96B8();

  v4 = sub_25E5B8F0C(v3);
  if (v4)
  {
    v5 = v4;
    v11 = MEMORY[0x277D84F90];
    result = sub_25E5B9708();
    if (v5 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F8B8750](v7, v3);
        }

        else
        {
          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        ++v7;
        type metadata accessor for Channel();
        OUTLINED_FUNCTION_0();
        *(swift_allocObject() + 16) = v9;
        sub_25E5B96E8();
        v10 = *(v11 + 16);
        sub_25E5B9718();
        sub_25E5B9728();
        sub_25E5B96F8();
      }

      while (v5 != v7);

      return v11;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

id sub_25E5B8788@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v15[0] = 0;
  v6 = [v5 addPipelineWithBuilder:a1 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = OUTLINED_FUNCTION_1(v8);
    v10 = type metadata accessor for ConcretePipeline();
    OUTLINED_FUNCTION_0();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    a2[3] = v10;
    a2[4] = &protocol witness table for ConcretePipeline;
    *a2 = v11;
    result = v7;
  }

  else
  {
    v13 = v15[0];
    sub_25E5B9668();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_25E5B8884@<X0>(uint64_t *a1@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_25E5B96A8();
  v14[0] = 0;
  v5 = [v3 addCIFilterPipelineWithName:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = OUTLINED_FUNCTION_1(v7);
    v9 = type metadata accessor for ConcretePipeline();
    OUTLINED_FUNCTION_0();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    a1[3] = v9;
    a1[4] = &protocol witness table for ConcretePipeline;
    *a1 = v10;
    result = v6;
  }

  else
  {
    v12 = v14[0];
    sub_25E5B9668();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_25E5B8990@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_25E5B8A38(a1, &selRef_addInputChannel_error_, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_25E5B89E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_25E5B8A38(a1, &selRef_addOutputChannel_error_, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_25E5B8A38@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 16);
  v6 = *(a1 + 16);
  v16[0] = 0;
  v7 = [v5 *a2];
  v8 = v16[0];
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = OUTLINED_FUNCTION_1(v9);
    v11 = type metadata accessor for ConcreteChannelPort();
    OUTLINED_FUNCTION_0();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    a3[3] = v11;
    a3[4] = &off_287041320;
    *a3 = v12;
    result = v8;
  }

  else
  {
    v14 = v16[0];
    sub_25E5B9668();

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25E5B8B34(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_25E5B8BDC(a1, a2, &selRef_canConnectInputPort_toOutputPort_error_);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25E5B8B88(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_25E5B8BDC(a1, a2, &selRef_connectInputPort_toOutputPort_error_);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25E5B8BDC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  sub_25E5B8F54(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8068, &qword_25E5B9A50);
  v6 = type metadata accessor for ConcreteChannelPort();
  OUTLINED_FUNCTION_3(v6);
  v7 = *(v14 + 16);

  v8 = sub_25E5B8F54(a2, v15);
  OUTLINED_FUNCTION_3(v8);
  v9 = *(v14 + 16);

  v10 = *(v3 + 16);
  v15[0] = 0;
  if ([v10 *a3])
  {
    v11 = v15[0];
  }

  else
  {
    v12 = v15[0];
    sub_25E5B9668();

    swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25E5B8ECC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25E5B8F0C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_25E5B8F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_25E5B9004()
{
  result = qword_27FCF8070;
  if (!qword_27FCF8070)
  {
    type metadata accessor for Version();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8070);
  }

  return result;
}

unint64_t sub_25E5B905C()
{
  result = qword_27FCF8078;
  if (!qword_27FCF8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF8078);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ChannelType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x25E5B928CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConcretePipeline.addPipeline(with:)()
{
  OUTLINED_FUNCTION_2();
  return (*(v0 + 120))();
}

{
  OUTLINED_FUNCTION_2();
  return (*(v0 + 128))();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return MEMORY[0x2821FE938](v1, a1, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v5 = va_arg(va1, void);

  return MEMORY[0x2821FE908](va, va1, v1, v2, 7);
}