uint64_t sub_26BC82EA8(CGPathRef path)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v6 = v2;
    MutableCopy = sub_26BC999B8();
    v4 = v6;
  }

  else
  {
    MutableCopy = CGPathCreateMutableCopy(path);
    v4 = *(v1 + 32);
    *(v1 + 32) = MutableCopy;
  }

  return MEMORY[0x2821F96F8](MutableCopy, v4);
}

void sub_26BC82F2C(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v57 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v56 = v16 - v15;
  v17 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v18 = OUTLINED_FUNCTION_5(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444418, &qword_26BC9A7D0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v56 - v28);
  Mutable = CGPathCreateMutable();
  v31 = *a1;
  v32 = *(*a1 + 16);
  if (v32)
  {
    v58 = Mutable;
    sub_26BC833E0(v31, v29);
    if (__swift_getEnumTagSinglePayload(v29, 1, v17) != 1)
    {
      v33 = *v29 * a3;
      v34 = v29[1] * a3;
      OUTLINED_FUNCTION_2();
      sub_26BC83E58(v29, v35);
      v60 = 0x3FF0000000000000;
      v61 = 0;
      v62 = 0;
      v63 = 0x3FF0000000000000;
      v64 = 0;
      v65 = 0;
      sub_26BC999C8();

      sub_26BC83484(1, v31);
      v39 = (v38 >> 1) - v37;
      if (v38 >> 1 != v37)
      {
        if ((v38 >> 1) <= v37)
        {
          __break(1u);
          goto LABEL_25;
        }

        v40 = *(v20 + 72);
        v41 = v36 + v37 * v40;
        do
        {
          sub_26BC83CB8(v41, v25);
          v42 = *v25 * a3;
          v43 = v25[1] * a3;
          sub_26BC999D8();
          OUTLINED_FUNCTION_2();
          sub_26BC83E58(v25, v44);
          v41 += v40;
          --v39;
        }

        while (v39);
      }

      swift_unknownObjectRelease();
      v45 = *(v4 + 40);
      v46 = v58;
      *(v4 + 40) = v58;
      v25 = v46;

      *(v4 + 48) = v32;
      *(v4 + 56) = 0;
      sub_26BC83D1C(v57, v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {

        sub_26BC83D8C(v10);
        return;
      }

      v47 = v56;
      sub_26BC83DF4(v10, v56);
      v48 = *v47;
      if (!*(*v47 + 16))
      {

        OUTLINED_FUNCTION_3();
        v55 = v47;
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_26BC9A6C0;
      sub_26BC83EB0(0, &unk_280444850, 0x277CCABB0);
      *(v49 + 32) = sub_26BC99AD8();
      v59 = v49;
      v50 = *(v48 + 16);
      if (v50)
      {
        v51 = (v48 + 32);
        do
        {
          if (*v51 > -1.0)
          {
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            MEMORY[0x26D6931A0]();
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26BC99958();
            }

            sub_26BC99968();
          }

          ++v51;
          --v50;
        }

        while (v50);
      }

      sub_26BC99AD8();
      MEMORY[0x26D6931A0]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_21:
        sub_26BC99968();
        v52 = v59;

        v53 = *(v4 + 80);
        *(v4 + 80) = v52;

        OUTLINED_FUNCTION_3();
        v55 = v56;
LABEL_23:
        sub_26BC83E58(v55, v54);
        return;
      }

LABEL_25:
      sub_26BC99958();
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_26BC833E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v6 = v5;
  if (v4)
  {
    sub_26BC83CB8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_26BC83484(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_26BC84048(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_26BC83FA0(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

double sub_26BC8351C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  if (*(v0 + 56))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v0 + 48);
  }

  v5 = *(v0 + 72);

  v6 = sub_26BC98580(v1, v2, v4);

  return v6 / *(v0 + 96);
}

uint64_t sub_26BC83588()
{
  if (*(v0 + 120) == 1)
  {
    return 200;
  }

  v1 = *(v0 + 112);
  if (v1 <= -1.0)
  {
    return 200;
  }

  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26BC83600()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  sub_26BC840BC(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t sub_26BC8364C()
{
  sub_26BC83600();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_26BC83680()
{
  v1 = [objc_opt_self() labelColor];
  v2 = [v1 CGColor];

  *(v0 + 16) = v2;
  sub_26BC90190();
  *(v0 + 24) = v3;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 200;
  *(v0 + 96) = 0x3FF0000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  return v0;
}

uint64_t variable initialization expression of _ProtoStrokeAnimationRepresentation._storage()
{
  if (qword_280444358 != -1)
  {
    swift_once();
  }
}

id variable initialization expression of StrokeView.backgroundView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D18]);

  return [v0 init];
}

id variable initialization expression of StrokeView.backgroundImageView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D755E8]);

  return [v0 init];
}

uint64_t variable initialization expression of StrokeView.queue()
{
  v0 = sub_26BC99A18();
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_26BC999F8();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = sub_26BC99818();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_1();
  sub_26BC83EB0(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  sub_26BC83AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC83B44();
  sub_26BC99B18();
  (*(v3 + 104))(v8, *MEMORY[0x277D85260], v0);
  return sub_26BC99A48();
}

unint64_t sub_26BC83AA4()
{
  result = qword_280444810;
  if (!qword_280444810)
  {
    sub_26BC999F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444810);
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

unint64_t sub_26BC83B44()
{
  result = qword_280444820;
  if (!qword_280444820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804443F0, &qword_26BC9A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444820);
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

uint64_t sub_26BC83C48(uint64_t a1)
{
  type metadata accessor for CGPath(255);
  *(a1 + 16) = v2;
  return 0;
}

uint64_t sub_26BC83CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC83D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC83D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC83DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC83E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BC83EB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BC83EF0@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26BC83F1C@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_2(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26BC83F48@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_3(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26BC83F74@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_23(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_26BC83FA0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26BC84048(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26BC840BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
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

uint64_t sub_26BC840E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BC84108(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26BC84160(uint64_t a1, int a2)
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

uint64_t sub_26BC84180(uint64_t result, int a2, int a3)
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

void sub_26BC841BC(uint64_t a1, unint64_t *a2)
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

uint64_t _ProtoStrokeAnimationRepresentation.strokeAnimationRepresentation(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26BC995A8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26BC99538();
  if (v4 >> 60 == 15)
  {
    v5 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }

  else
  {
    v7 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
    sub_26BC99598();
    sub_26BC843FC();
    sub_26BC99698();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }
}

unint64_t sub_26BC843FC()
{
  result = qword_2804449E0;
  if (!qword_2804449E0)
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804449E0);
  }

  return result;
}

UIColor_optional __swiftcall _ProtoStrokeAnimationRepresentation.Color.toUIColor()()
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 16) == 0.0)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  if (sub_26BC998B8() < 1 || (sub_26BC998F8() & 1) == 0)
  {
    if (*(v0 + 32) == 1)
    {
      v9 = *(v0 + 24);
      switch(v9)
      {
        case 1uLL:
          v9 = [objc_opt_self() clearColor];
          goto LABEL_23;
        case 2uLL:
          v7 = [objc_opt_self() blackColor];
          v10 = [v7 colorWithAlphaComponent_];
          goto LABEL_21;
        case 3uLL:
          v7 = [objc_opt_self() whiteColor];
          v10 = [v7 colorWithAlphaComponent_];
          goto LABEL_21;
        case 4uLL:
          v7 = [objc_opt_self() systemGrayColor];
          v10 = [v7 colorWithAlphaComponent_];
          goto LABEL_21;
        case 5uLL:
          v7 = [objc_opt_self() systemRedColor];
          v10 = [v7 colorWithAlphaComponent_];
          goto LABEL_21;
        case 6uLL:
          v7 = [objc_opt_self() systemGreenColor];
          v10 = [v7 colorWithAlphaComponent_];
          goto LABEL_21;
        case 7uLL:
          v7 = [objc_opt_self() systemBlueColor];
          v10 = [v7 colorWithAlphaComponent_];
LABEL_21:
          v8 = v10;
          goto LABEL_22;
        default:
          goto LABEL_23;
      }
    }

    goto LABEL_14;
  }

  v5 = sub_26BC998C8();
  v6 = sub_26BC847E4(v5, v2, v3);
  MEMORY[0x26D693130](v6);

  if (sub_26BC998B8() != 6)
  {

LABEL_14:
    v9 = 0;
    goto LABEL_23;
  }

  sub_26BC84830();
  v7 = sub_26BC84874();
  v13[0] = 0;
  if (![v7 scanHexLongLong_])
  {

    goto LABEL_14;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:BYTE2(v13[0]) / 255.0 green:BYTE1(v13[0]) / 255.0 blue:LOBYTE(v13[0]) / 255.0 alpha:v1];
LABEL_22:
  v9 = v8;

LABEL_23:
  v11 = *MEMORY[0x277D85DE8];
  v12 = v9;
  result.value.super.isa = v12;
  result.is_nil = v4;
  return result;
}

uint64_t sub_26BC847E4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_26BC84830()
{
  result = qword_280444500;
  if (!qword_280444500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280444500);
  }

  return result;
}

id sub_26BC84874()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26BC99878();

  v2 = [v0 initWithString_];

  return v2;
}

CFDataRef sub_26BC848E8(void *a1)
{
  result = CFDataCreate(*MEMORY[0x277CBECE8], [a1 bytes], objc_msgSend(a1, sel_length));
  if (result)
  {
    v2 = result;
    v3 = CGSVGDocumentCreateFromData();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_26BC84970()
{
  v0 = sub_26BC997A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BC99AB8();
  if (qword_2804443C8 != -1)
  {
    swift_once();
  }

  sub_26BC99798();
  OUTLINED_FUNCTION_1_0(v5, &dword_26BC81000, v6, "parse strokeAnimation svg data");
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = CGSVGDocumentGetRootNode();
  if (v9)
  {
    v10 = v9;
    CGSVGViewBoxNodeGetViewbox();
    v11 = sub_26BC90204();
    v31.origin.x = OUTLINED_FUNCTION_0_0();
    v12 = v11 / CGRectGetWidth(v31);
    sub_26BC90204();
    v14 = v13;
    v32.origin.x = OUTLINED_FUNCTION_0_0();
    Height = CGRectGetHeight(v32);
    CGAffineTransformMakeScale(&v30, v12, v14 / Height);
    v16 = swift_allocObject();
    v16[2] = 0x3FF0000000000000;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0x3FF0000000000000;
    v16[6] = 0;
    v16[7] = 0;
    v17 = swift_allocObject();
    v18 = *&v30.c;
    *(v17 + 24) = *&v30.a;
    *(v17 + 16) = v16;
    *(v17 + 40) = v18;
    *(v17 + 56) = *&v30.tx;
    *(v17 + 72) = v8;
    aBlock[4] = sub_26BC85164;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BC85014;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);
    v28 = v4;

    CGSVGNodeEnumerate();

    _Block_release(v19);
    v4 = v28;
    swift_beginAccess();
    v20 = *(v8 + 16);
  }

  else
  {
    if (qword_2804443B0 != -1)
    {
      swift_once();
    }

    v21 = sub_26BC997C8();
    __swift_project_value_buffer(v21, qword_280444AF0);
    v22 = sub_26BC997B8();
    v23 = sub_26BC999A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26BC81000, v22, v23, "invalid svg doc", v24, 2u);
      MEMORY[0x26D693B30](v24, -1, -1);
    }

    v12 = 1.0;
  }

  v25 = sub_26BC99AA8();
  sub_26BC99798();
  OUTLINED_FUNCTION_1_0(v25, &dword_26BC81000, v26, "parse strokeAnimation svg data");
  v7(v4, v0);
  return v12;
}

void sub_26BC84DA0(uint64_t a1, int a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_2;
  }

  v23 = *(a5 + 16);
  *v24 = *a5;
  v9 = *(a5 + 32);
  v10 = *(a5 + 40);
  if (CGSVGNodeGetType() == 1)
  {
    v11 = CGSVGNodeGetAttributeMap();
    if (!v11)
    {
LABEL_2:
      v6 = *MEMORY[0x277D85DE8];
      return;
    }

    v25 = v11;
    v12 = CGSVGAttributeMapGetAttribute();
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      CGSVGAttributeGetTransform();
      swift_endAccess();

      goto LABEL_2;
    }

    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (CGSVGNodeGetType() != 2)
    {
      goto LABEL_2;
    }

    Primitive = CGSVGShapeNodeGetPrimitive();
    swift_beginAccess();
    v15 = a4[2];
    *&t1.a = a4[1];
    *&t1.c = v15;
    *&t1.tx = a4[3];
    *&t2.a = *v24;
    *&t2.c = v23;
    t2.tx = v9;
    t2.ty = v10;
    CGAffineTransformConcat(&v28, &t1, &t2);
    if (Primitive != 42)
    {
      goto LABEL_2;
    }

    v16 = CGSVGShapeNodeGetPath();
    if (!v16)
    {
      goto LABEL_2;
    }

    v17 = v16;
    CGPath = CGSVGPathCreateCGPath();
    v19 = MEMORY[0x26D6934C0](CGPath, &v28);
    type metadata accessor for StrokePathInfo();
    swift_allocObject();
    sub_26BC83680();
    if (v19)
    {
      v20 = v19;
      sub_26BC82EA8(v20);

      v21 = swift_beginAccess();
      MEMORY[0x26D6931A0](v21);
      sub_26BC97688(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_26BC99968();
      swift_endAccess();

      goto LABEL_2;
    }

    __break(1u);
  }
}

void sub_26BC85014(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26BC85098()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BC85124()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x282200C68](a1, a2, v5, a4, 30, 2, v4);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeContours.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 16);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeContours.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v5 = OUTLINED_FUNCTION_2_0();
    v6 = sub_26BC87F6C(v5);
    OUTLINED_FUNCTION_37(v6);
  }

  OUTLINED_FUNCTION_18();
  v7 = *(v4 + 16);
  *(v4 + 16) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeContours.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85308(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.strokeContours.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_26();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6();
      v11 = OUTLINED_FUNCTION_2_0();
      v12 = sub_26BC87F6C(v11);
      OUTLINED_FUNCTION_31(v12);
    }

    OUTLINED_FUNCTION_21();
    v13 = *(v8 + 16);
    *(v8 + 16) = v3;
  }

  free(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationPoints.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 24);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationPoints.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v5 = OUTLINED_FUNCTION_2_0();
    v6 = sub_26BC87F6C(v5);
    OUTLINED_FUNCTION_37(v6);
  }

  OUTLINED_FUNCTION_18();
  v7 = *(v4 + 24);
  *(v4 + 24) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.animationPoints.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = *(v0 + 24);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85494(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.animationPoints.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_26();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6();
      v11 = OUTLINED_FUNCTION_2_0();
      v12 = sub_26BC87F6C(v11);
      OUTLINED_FUNCTION_31(v12);
    }

    OUTLINED_FUNCTION_21();
    v13 = *(v8 + 24);
    *(v8 + 24) = v3;
  }

  free(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeFeatures.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 32);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeFeatures.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v5 = OUTLINED_FUNCTION_2_0();
    v6 = sub_26BC87F6C(v5);
    OUTLINED_FUNCTION_37(v6);
  }

  OUTLINED_FUNCTION_18();
  v7 = *(v4 + 32);
  *(v4 + 32) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeFeatures.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85620(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.strokeFeatures.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_26();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6();
      v11 = OUTLINED_FUNCTION_2_0();
      v12 = sub_26BC87F6C(v11);
      OUTLINED_FUNCTION_31(v12);
    }

    OUTLINED_FUNCTION_21();
    v13 = *(v8 + 32);
    *(v8 + 32) = v3;
  }

  free(v1);
}

double _ProtoStrokeAnimationRepresentation.speedRate.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19();
  return *(v2 + 40);
}

uint64_t _ProtoStrokeAnimationRepresentation.speedRate.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v8 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_18();
  v7[5] = a1;
  return result;
}

void (*_ProtoStrokeAnimationRepresentation.speedRate.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_12();
  v3[9] = *(v5 + 40);
  return sub_26BC857D8;
}

void sub_26BC857D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_6();
    v10 = OUTLINED_FUNCTION_2_0();
    v11 = sub_26BC87F6C(v10);
    OUTLINED_FUNCTION_31(v11);
  }

  OUTLINED_FUNCTION_30();
  *(v7 + 40) = v2;

  free(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeWidth.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 48);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeWidth.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v5 = OUTLINED_FUNCTION_2_0();
    v6 = sub_26BC87F6C(v5);
    OUTLINED_FUNCTION_37(v6);
  }

  OUTLINED_FUNCTION_18();
  v7 = *(v4 + 48);
  *(v4 + 48) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeWidth.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC8597C(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.strokeWidth.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_26();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6();
      v11 = OUTLINED_FUNCTION_2_0();
      v12 = sub_26BC87F6C(v11);
      OUTLINED_FUNCTION_31(v12);
    }

    OUTLINED_FUNCTION_21();
    v13 = *(v8 + 48);
    *(v8 + 48) = v3;
  }

  free(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationControlValues.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 56);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationControlValues.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v5 = OUTLINED_FUNCTION_2_0();
    v6 = sub_26BC87F6C(v5);
    OUTLINED_FUNCTION_37(v6);
  }

  OUTLINED_FUNCTION_18();
  v7 = *(v4 + 56);
  *(v4 + 56) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.animationControlValues.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = *(v0 + 56);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85B08(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.animationControlValues.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_26();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6();
      v11 = OUTLINED_FUNCTION_2_0();
      v12 = sub_26BC87F6C(v11);
      OUTLINED_FUNCTION_31(v12);
    }

    OUTLINED_FUNCTION_21();
    v13 = *(v8 + 56);
    *(v8 + 56) = v3;
  }

  free(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v1 = a1 + *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0) + 28);
  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

void (*_ProtoStrokeAnimationRepresentation.contourColor.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_34(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[4] = v5;
  v6 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  v1[5] = __swift_coroFrameAllocStub(v8);
  v1[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_5_0();
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  OUTLINED_FUNCTION_27();
  sub_26BC885AC(v10 + v11, v5);
  OUTLINED_FUNCTION_7();
  if (v12)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7();
    if (!v12)
    {
      sub_26BC8F328(v5, &qword_280444520, &qword_26BC9A8B0);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_52();
    sub_26BC8863C(v13, v14);
  }

  return sub_26BC85D34;
}

uint64_t sub_26BC85D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_5_0();
  v12 = *(v2 + v11);
  v13 = *a1;
  OUTLINED_FUNCTION_27();
  sub_26BC885AC(v12 + v13, v10);
  v14 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
  {
    return sub_26BC8863C(v10, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v15 = a2 + *(v14 + 28);
  _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = __swift_getEnumTagSinglePayload(v10, 1, v14);
  if (result != 1)
  {
    return sub_26BC8F328(v10, &qword_280444520, &qword_26BC9A8B0);
  }

  return result;
}

uint64_t sub_26BC85E9C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v11 = *(OUTLINED_FUNCTION_63() + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v15 = OUTLINED_FUNCTION_2_0();
    v14 = sub_26BC87F6C(v15);
    *(v5 + v11) = v14;
  }

  sub_26BC8863C(a1, v3);
  v16 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v16);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  sub_26BC886A0(v3, v14 + a2);
  return swift_endAccess();
}

void (*_ProtoStrokeAnimationRepresentation.backgroundColor.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_34(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[4] = v5;
  v6 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  v1[5] = __swift_coroFrameAllocStub(v8);
  v1[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_5_0();
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  OUTLINED_FUNCTION_27();
  sub_26BC885AC(v10 + v11, v5);
  OUTLINED_FUNCTION_7();
  if (v12)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7();
    if (!v12)
    {
      sub_26BC8F328(v5, &qword_280444520, &qword_26BC9A8B0);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_52();
    sub_26BC8863C(v13, v14);
  }

  return sub_26BC860C4;
}

BOOL sub_26BC860E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_5_0();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_27();
  sub_26BC885AC(v10 + a1, v8);
  v11 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v12 = __swift_getEnumTagSinglePayload(v8, 1, v11) != 1;
  v13 = OUTLINED_FUNCTION_52();
  sub_26BC8F328(v13, v14, &qword_26BC9A8B0);
  return v12;
}

uint64_t sub_26BC861C4(uint64_t a1)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v9 = *(OUTLINED_FUNCTION_63() + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v13 = OUTLINED_FUNCTION_2_0();
    v12 = sub_26BC87F6C(v13);
    *(v4 + v9) = v12;
  }

  v14 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v14);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  sub_26BC886A0(v2, v12 + a1);
  return swift_endAccess();
}

uint64_t _ProtoStrokeAnimationRepresentation.compoundAnimationEffects.modify()
{
  v0 = OUTLINED_FUNCTION_20();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

uint64_t sub_26BC8634C(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_19();
  v6 = *(v4 + v5);
}

uint64_t sub_26BC8639C(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  v6 = OUTLINED_FUNCTION_14();
  v7 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(v6) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v11 = OUTLINED_FUNCTION_2_0();
    v10 = sub_26BC87F6C(v11);
    *(v5 + v7) = v10;
  }

  v12 = *a2;
  OUTLINED_FUNCTION_18();
  v13 = *(v10 + v12);
  *(v10 + v12) = v2;
}

uint64_t _ProtoStrokeAnimationRepresentation.animationDelays.modify()
{
  v0 = OUTLINED_FUNCTION_20();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

void (*_ProtoStrokeAnimationRepresentation.strokeColor.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_34(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[4] = v5;
  v6 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  v1[5] = __swift_coroFrameAllocStub(v8);
  v1[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_5_0();
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  OUTLINED_FUNCTION_27();
  sub_26BC885AC(v10 + v11, v5);
  OUTLINED_FUNCTION_7();
  if (v12)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7();
    if (!v12)
    {
      sub_26BC8F328(v5, &qword_280444520, &qword_26BC9A8B0);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_52();
    sub_26BC8863C(v13, v14);
  }

  return sub_26BC865FC;
}

void sub_26BC86614(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_26BC8EAE8();
    a3(v5);
    sub_26BC8EB40();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t _ProtoStrokeAnimationRepresentation.backgroundURL.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_27();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_23();
}

uint64_t _ProtoStrokeAnimationRepresentation.backgroundURL.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v10 = OUTLINED_FUNCTION_2_0();
    v9 = sub_26BC87F6C(v10);
    *(v3 + v6) = v9;
  }

  v11 = (v9 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  OUTLINED_FUNCTION_30();
  v12 = v11[1];
  *v11 = a1;
  v11[1] = a2;
}

uint64_t _ProtoStrokeAnimationRepresentation.backgroundURL.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  OUTLINED_FUNCTION_12();
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return OUTLINED_FUNCTION_17();
}

void sub_26BC86858(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    _ProtoStrokeAnimationRepresentation.backgroundURL.setter(v3, v4);
    v7 = *(v2 + 56);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 64);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 64);
      OUTLINED_FUNCTION_6();
      v15 = OUTLINED_FUNCTION_2_0();
      v12 = sub_26BC87F6C(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
    OUTLINED_FUNCTION_30();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v4;
  }

  free(v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.customEaseInValues.modify()
{
  v0 = OUTLINED_FUNCTION_20();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

uint64_t _ProtoStrokeAnimationRepresentation.customEaseOutValues.modify()
{
  v0 = OUTLINED_FUNCTION_20();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

uint64_t _ProtoStrokeAnimationRepresentation.customEaseInOutValues.modify()
{
  v0 = OUTLINED_FUNCTION_20();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

void sub_26BC86B04(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1);
  if (v5)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_48();
    v6(v7);
    v8 = *(v1 + 48);
  }

  else
  {
    v9 = v3;
    v10 = *(v1 + 64);
    v11 = *(v1 + 56);
    v12 = *(v11 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v1 + 64);
      v16 = *(v1 + 56);
      OUTLINED_FUNCTION_6();
      v17 = OUTLINED_FUNCTION_2_0();
      v14 = sub_26BC87F6C(v17);
      *(v16 + v15) = v14;
    }

    v18 = *v9;
    OUTLINED_FUNCTION_21();
    v19 = *(v14 + v18);
    *(v14 + v18) = v2;
  }

  free(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.unknownFields.getter()
{
  OUTLINED_FUNCTION_54();
  v0 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_53();

  return v4(v3);
}

uint64_t _ProtoStrokeAnimationRepresentation.unknownFields.setter()
{
  OUTLINED_FUNCTION_14();
  v0 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_23();

  return v4(v3);
}

uint64_t sub_26BC86CE8@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoStrokeAnimationRepresentation.AnimationEffect.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_26BC86D54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_26BC99BE8();
  a3(v4);
  OUTLINED_FUNCTION_62();
  return sub_26BC99BF8();
}

uint64_t sub_26BC86DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8EA30();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26BC86E34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_26BC99BE8();
  a4(v5);
  OUTLINED_FUNCTION_62();
  return sub_26BC99BF8();
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_54();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(v0) + 24);
  v2 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();

  return v6(v5);
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_14();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(v0) + 24);
  v2 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_60();

  return v6(v5);
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(v0) + 24);
  return OUTLINED_FUNCTION_57();
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0) + 24);
  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t _ProtoStrokeAnimationRepresentation.AnimationPoints.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(v0) + 20);
  return OUTLINED_FUNCTION_57();
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.value.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_26BC8717C()
{
  v0 = OUTLINED_FUNCTION_54();
  v2 = *(v1(v0) + 20);
  v3 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22();

  return v7(v6);
}

uint64_t sub_26BC87204()
{
  v0 = OUTLINED_FUNCTION_14();
  v2 = *(v1(v0) + 20);
  v3 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_60();

  return v7(v6);
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(v0) + 20);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_26BC872D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.rgb.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_53();
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.rgb.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.name.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.name.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_54();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(v0) + 28);
  v2 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();

  return v6(v5);
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_14();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(v0) + 28);
  v2 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_60();

  return v6(v5);
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  v1 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(v0) + 28);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_26BC87608(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8D7CC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoStrokeAnimationRepresentation.init()@<X0>(uint64_t a1@<X8>)
{
  _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  if (qword_280444358 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280444518;
}

uint64_t static _ProtoStrokeAnimationRepresentation.AnimationEffect.allCases.getter()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_27();
}

uint64_t (*static _ProtoStrokeAnimationRepresentation.AnimationEffect.allCases.modify())()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static _ProtoStrokeAnimationRepresentation.Color.Name.allCases.getter()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_26BC87814()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_30();
  v2 = *v0;
  *v0 = v1;
}

uint64_t (*static _ProtoStrokeAnimationRepresentation.Color.Name.allCases.modify())()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_26BC878AC@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_27();
  *a2 = *a1;
}

uint64_t sub_26BC87918()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26BC9A850;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "strokeContours";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BC99758();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "animationPoints";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "strokeFeatures";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "speedRate";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "strokeWidth";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "animationControlValues";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "contourColor";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "backgroundColor";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "compoundAnimationEffects";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "animationDelays";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "strokeColor";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "backgroundUrl";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "customEaseInValues";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "customEaseOutValues";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "customEaseInOutValues";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  return sub_26BC99768();
}

void *sub_26BC87E50()
{
  OUTLINED_FUNCTION_6();
  result = sub_26BC87E80();
  qword_280444518 = result;
  return result;
}

void *sub_26BC87E80()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v1;
  v0[4] = v1;
  v0[5] = 0;
  v0[6] = v1;
  v0[7] = v1;
  v2 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  v3 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects) = v1;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays) = v1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues) = v1;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues) = v1;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues) = v1;
  return v0;
}

void *sub_26BC87F6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v53 - v5;
  v6 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v6;
  v1[4] = v6;
  v1[5] = 0;
  v54 = v1 + 5;
  v1[6] = v6;
  v1[7] = v6;
  v55 = v1 + 7;
  v7 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  v8 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v57 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, 1, 1, v8);
  v58 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects) = v6;
  v59 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays) = v6;
  v60 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v61 = v9;
  v62 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues) = v6;
  v63 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues) = v6;
  v64 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues) = v6;
  swift_beginAccess();
  v10 = a1[2];
  swift_beginAccess();
  v1[2] = v10;
  swift_beginAccess();
  v11 = a1[3];
  swift_beginAccess();
  v1[3] = v11;

  swift_beginAccess();
  v12 = a1[4];
  swift_beginAccess();
  v13 = v1[4];
  v1[4] = v12;

  swift_beginAccess();
  v14 = a1[5];
  v15 = v54;
  swift_beginAccess();
  *v15 = v14;
  swift_beginAccess();
  v16 = a1[6];
  swift_beginAccess();
  v17 = v1[6];
  v1[6] = v16;

  swift_beginAccess();
  v18 = a1[7];
  v19 = v55;
  swift_beginAccess();
  v20 = *v19;
  *v19 = v18;

  v21 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  swift_beginAccess();
  v22 = v56;
  sub_26BC885AC(a1 + v21, v56);
  swift_beginAccess();
  sub_26BC886A0(v22, v1 + v7);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  swift_beginAccess();
  sub_26BC885AC(a1 + v23, v22);
  v24 = v57;
  swift_beginAccess();
  sub_26BC886A0(v22, v1 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v58;
  swift_beginAccess();
  v28 = *(v1 + v27);
  *(v1 + v27) = v26;

  v29 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = v59;
  swift_beginAccess();
  v32 = *(v1 + v31);
  *(v1 + v31) = v30;

  v33 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  swift_beginAccess();
  sub_26BC885AC(a1 + v33, v22);
  v34 = v60;
  swift_beginAccess();
  sub_26BC886A0(v22, v1 + v34);
  swift_endAccess();
  v35 = (a1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  v38 = v61;
  swift_beginAccess();
  v39 = v38[1];
  *v38 = v37;
  v38[1] = v36;

  v40 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = v62;
  swift_beginAccess();
  v43 = *(v1 + v42);
  *(v1 + v42) = v41;

  v44 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v63;
  swift_beginAccess();
  v47 = *(v1 + v46);
  *(v1 + v46) = v45;

  v48 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
  swift_beginAccess();
  v49 = *(a1 + v48);

  v50 = v64;
  swift_beginAccess();
  v51 = *(v1 + v50);
  *(v1 + v50) = v49;

  return v1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26BC885AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC8863C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC886A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC88770(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26BC887A8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  sub_26BC8F328(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor, &qword_280444520, &qword_26BC9A8B0);
  sub_26BC8F328(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, &qword_280444520, &qword_26BC9A8B0);
  v6 = *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects);

  v7 = *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays);

  sub_26BC8F328(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, &qword_280444520, &qword_26BC9A8B0);
  v8 = *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues);

  v10 = *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues);

  v11 = *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues);

  return v0;
}

uint64_t sub_26BC888B4()
{
  v0 = sub_26BC887A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for _ProtoStrokeAnimationRepresentation._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2_0();
    *(v1 + v2) = sub_26BC87F6C(v9);
  }

  OUTLINED_FUNCTION_58();
  return sub_26BC889A4();
}

uint64_t sub_26BC889A4()
{
  while (1)
  {
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26BC88C34();
        break;
      case 2:
        sub_26BC88CB8();
        break;
      case 3:
        sub_26BC88D84();
        break;
      case 4:
        sub_26BC88E08();
        break;
      case 5:
        sub_26BC88E8C();
        break;
      case 6:
        sub_26BC88F10();
        break;
      case 7:
      case 8:
      case 12:
        sub_26BC89078();
        break;
      case 10:
        sub_26BC88FDC();
        break;
      case 11:
      case 14:
      case 15:
      case 16:
        sub_26BC891C8();
        break;
      case 13:
        sub_26BC8913C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BC88C34()
{
  swift_beginAccess();
  sub_26BC99638();
  return swift_endAccess();
}

uint64_t sub_26BC88CB8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
  sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);
  sub_26BC99668();
  return swift_endAccess();
}

uint64_t sub_26BC88D84()
{
  swift_beginAccess();
  sub_26BC99638();
  return swift_endAccess();
}

uint64_t sub_26BC88E08()
{
  swift_beginAccess();
  sub_26BC99648();
  return swift_endAccess();
}

uint64_t sub_26BC88E8C()
{
  swift_beginAccess();
  sub_26BC99628();
  return swift_endAccess();
}

uint64_t sub_26BC88F10()
{
  swift_beginAccess();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);
  sub_26BC99668();
  return swift_endAccess();
}

uint64_t sub_26BC88FDC()
{
  swift_beginAccess();
  sub_26BC8EA30();
  sub_26BC995F8();
  return swift_endAccess();
}

uint64_t sub_26BC89078()
{
  OUTLINED_FUNCTION_40();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  sub_26BC99678();
  return swift_endAccess();
}

uint64_t sub_26BC8913C()
{
  swift_beginAccess();
  sub_26BC99658();
  return swift_endAccess();
}

uint64_t sub_26BC891C8()
{
  OUTLINED_FUNCTION_40();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  OUTLINED_FUNCTION_15();
  sub_26BC99628();
  return swift_endAccess();
}

uint64_t _ProtoStrokeAnimationRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20));
  OUTLINED_FUNCTION_15();
  result = sub_26BC8929C(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_36();
    return sub_26BC99568();
  }

  return result;
}

uint64_t sub_26BC8929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v48 - v15;
  v54 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v16 = *(*(v54 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v54);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v50 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v51 = &v48 - v22;
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v23 = *(a1 + 16);

    sub_26BC99708();
    if (v4)
    {
    }

    v49 = v19;
    v24 = a4;
  }

  else
  {
    v49 = v19;
    v24 = a4;
  }

  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
    sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

    v25 = v24;
    sub_26BC99738();
    if (v4)
    {
    }
  }

  else
  {
    v25 = v24;
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {
    v26 = *(a1 + 32);

    sub_26BC99708();
    if (v4)
    {
    }

    v27 = v12;
  }

  else
  {
    v27 = v12;
  }

  swift_beginAccess();
  if (*(a1 + 40) != 0.0)
  {
    result = sub_26BC99718();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    v28 = *(a1 + 48);

    sub_26BC996D8();
    if (!v4)
    {

      goto LABEL_17;
    }
  }

LABEL_17:
  swift_beginAccess();
  v29 = *(*(a1 + 56) + 16);
  v48 = v25;
  if (v29)
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
    sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

    sub_26BC99738();
    if (v4)
    {
    }
  }

  v31 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  swift_beginAccess();
  v32 = a1 + v31;
  v33 = v53;
  sub_26BC885AC(v32, v53);
  v34 = v54;
  if (__swift_getEnumTagSinglePayload(v33, 1, v54) == 1)
  {
    sub_26BC8F328(v33, &qword_280444520, &qword_26BC9A8B0);
  }

  else
  {
    sub_26BC8863C(v33, v51);
    sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    sub_26BC99748();
    if (v4)
    {
      return sub_26BC8EB40();
    }

    sub_26BC8EB40();
  }

  v35 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  swift_beginAccess();
  v36 = a1 + v35;
  v37 = v52;
  sub_26BC885AC(v36, v52);
  if (__swift_getEnumTagSinglePayload(v37, 1, v34) == 1)
  {
    sub_26BC8F328(v37, &qword_280444520, &qword_26BC9A8B0);
  }

  else
  {
    sub_26BC8863C(v37, v50);
    sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    sub_26BC99748();
    result = sub_26BC8EB40();
    if (v4)
    {
      return result;
    }
  }

  v38 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  swift_beginAccess();
  if (!*(*(a1 + v38) + 16) || (sub_26BC8EA30(), , sub_26BC996C8(), result = , !v4))
  {
    v39 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
    swift_beginAccess();
    if (!*(*(a1 + v39) + 16) || (, sub_26BC996D8(), result = , !v4))
    {
      v40 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
      swift_beginAccess();
      sub_26BC885AC(a1 + v40, v27);
      if (__swift_getEnumTagSinglePayload(v27, 1, v34) == 1)
      {
        sub_26BC8F328(v27, &qword_280444520, &qword_26BC9A8B0);
      }

      else
      {
        sub_26BC8863C(v27, v49);
        sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
        sub_26BC99748();
        result = sub_26BC8EB40();
        if (v4)
        {
          return result;
        }
      }

      v41 = (a1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
      swift_beginAccess();
      v42 = *v41;
      v43 = v41[1];
      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v44 || (, sub_26BC99728(), result = , !v5))
      {
        v45 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
        swift_beginAccess();
        if (!*(*(a1 + v45) + 16) || (, sub_26BC996D8(), result = , !v5))
        {
          v46 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
          swift_beginAccess();
          if (!*(*(a1 + v46) + 16) || (, sub_26BC996D8(), result = , !v5))
          {
            v47 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
            result = swift_beginAccess();
            if (*(*(a1 + v47) + 16))
            {

              sub_26BC996D8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static _ProtoStrokeAnimationRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5_0();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_26BC89C90(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v7, v8);
  OUTLINED_FUNCTION_23();
  return sub_26BC99868() & 1;
}

uint64_t sub_26BC89C90(uint64_t a1, uint64_t a2)
{
  v111 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v4 = *(*(v111 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v111);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v106 = &v102 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v102 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444720, qword_26BC9B350);
  v12 = *(*(v112 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v112);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v108 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v102 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v105 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v109 = &v102 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v107 = &v102 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v110 = &v102 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v102 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v102 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  swift_beginAccess();
  if (sub_26BC8EB94(v35, *(a2 + 16)))
  {
    v103 = v7;
    v104 = v15;
    swift_beginAccess();
    v36 = *(a1 + 24);
    swift_beginAccess();
    v37 = *(a2 + 24);

    v38 = sub_26BC8EC20(v36, v37);

    if ((v38 & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v39 = *(a1 + 32);
    swift_beginAccess();
    if ((sub_26BC8EB94(v39, *(a2 + 32)) & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v40 = *(a1 + 40);
    swift_beginAccess();
    if (v40 != *(a2 + 40))
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v41 = *(a1 + 48);
    swift_beginAccess();
    if ((sub_26BC8D770(v41, *(a2 + 48)) & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v42 = *(a1 + 56);
    swift_beginAccess();
    v43 = *(a2 + 56);

    v44 = sub_26BC8F094(v42, v43);

    if ((v44 & 1) == 0)
    {
      goto LABEL_44;
    }

    v45 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
    swift_beginAccess();
    sub_26BC885AC(a1 + v45, v34);
    v46 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
    swift_beginAccess();
    v47 = *(v112 + 48);
    sub_26BC885AC(v34, v19);
    sub_26BC885AC(a2 + v46, &v19[v47]);
    v48 = v111;
    if (__swift_getEnumTagSinglePayload(v19, 1, v111) == 1)
    {
      sub_26BC8F328(v34, &qword_280444520, &qword_26BC9A8B0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v19[v47], 1, v48);
      v50 = v104;
      if (EnumTagSinglePayload != 1)
      {
LABEL_42:
        v86 = &qword_280444720;
        v87 = qword_26BC9B350;
        v85 = v19;
        goto LABEL_43;
      }

      sub_26BC8F328(v19, &qword_280444520, &qword_26BC9A8B0);
    }

    else
    {
      sub_26BC885AC(v19, v32);
      if (__swift_getEnumTagSinglePayload(&v19[v47], 1, v48) == 1)
      {
        sub_26BC8F328(v34, &qword_280444520, &qword_26BC9A8B0);
LABEL_41:
        sub_26BC8EB40();
        goto LABEL_42;
      }

      sub_26BC8863C(&v19[v47], v11);
      v81 = *v32 == *v11 && *(v32 + 1) == *(v11 + 1);
      if (!v81 && (sub_26BC99BD8() & 1) == 0 || *(v32 + 2) != *(v11 + 2) || (v82 = v11[32], !sub_26BC851C0(*(v32 + 3), v32[32], *(v11 + 3))))
      {
        sub_26BC8F328(v34, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
        sub_26BC8EB40();
        v85 = v19;
        v86 = &qword_280444520;
        v87 = &qword_26BC9A8B0;
LABEL_43:
        sub_26BC8F328(v85, v86, v87);
        goto LABEL_44;
      }

      v83 = *(v48 + 28);
      sub_26BC99588();
      sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
      v84 = sub_26BC99868();
      sub_26BC8F328(v34, &qword_280444520, &qword_26BC9A8B0);
      sub_26BC8EB40();
      sub_26BC8EB40();
      v48 = v111;
      sub_26BC8F328(v19, &qword_280444520, &qword_26BC9A8B0);
      v50 = v104;
      if ((v84 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v51 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
    swift_beginAccess();
    v52 = v110;
    sub_26BC885AC(a1 + v51, v110);
    v53 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
    swift_beginAccess();
    v54 = *(v112 + 48);
    v19 = v108;
    sub_26BC885AC(v52, v108);
    sub_26BC885AC(a2 + v53, &v19[v54]);
    if (__swift_getEnumTagSinglePayload(v19, 1, v48) == 1)
    {
      sub_26BC8F328(v52, &qword_280444520, &qword_26BC9A8B0);
      v55 = __swift_getEnumTagSinglePayload(&v19[v54], 1, v48);
      v56 = v109;
      if (v55 == 1)
      {
        sub_26BC8F328(v19, &qword_280444520, &qword_26BC9A8B0);
        goto LABEL_13;
      }

      goto LABEL_42;
    }

    v88 = v107;
    sub_26BC885AC(v19, v107);
    v89 = __swift_getEnumTagSinglePayload(&v19[v54], 1, v48);
    v56 = v109;
    if (v89 != 1)
    {
      v91 = v106;
      sub_26BC8863C(&v19[v54], v106);
      v92 = *v88 == *v91 && *(v88 + 8) == *(v91 + 8);
      if (!v92 && (sub_26BC99BD8() & 1) == 0 || *(v88 + 16) != *(v91 + 16) || (v93 = *(v91 + 32), !sub_26BC851C0(*(v88 + 24), *(v88 + 32), *(v91 + 24))))
      {
        sub_26BC8F328(v110, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
        sub_26BC8EB40();
        v85 = v19;
LABEL_57:
        v86 = &qword_280444520;
        v87 = &qword_26BC9A8B0;
        goto LABEL_43;
      }

      v94 = *(v48 + 28);
      sub_26BC99588();
      sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
      v95 = sub_26BC99868();
      sub_26BC8F328(v110, &qword_280444520, &qword_26BC9A8B0);
      sub_26BC8EB40();
      v50 = v104;
      sub_26BC8EB40();
      sub_26BC8F328(v19, &qword_280444520, &qword_26BC9A8B0);
      if ((v95 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_13:
      v57 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
      swift_beginAccess();
      v58 = *(a1 + v57);
      v59 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
      swift_beginAccess();
      if ((sub_26BC8F380(v58, *(a2 + v59)) & 1) == 0)
      {
        goto LABEL_44;
      }

      v60 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
      swift_beginAccess();
      v61 = *(a1 + v60);
      v62 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
      swift_beginAccess();
      if ((sub_26BC8D770(v61, *(a2 + v62)) & 1) == 0)
      {
        goto LABEL_44;
      }

      v63 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
      swift_beginAccess();
      sub_26BC885AC(a1 + v63, v56);
      v64 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
      swift_beginAccess();
      v65 = *(v112 + 48);
      sub_26BC885AC(v56, v50);
      sub_26BC885AC(a2 + v64, v50 + v65);
      if (__swift_getEnumTagSinglePayload(v50, 1, v48) == 1)
      {
        sub_26BC8F328(v56, &qword_280444520, &qword_26BC9A8B0);
        if (__swift_getEnumTagSinglePayload(v50 + v65, 1, v48) == 1)
        {
          sub_26BC8F328(v50, &qword_280444520, &qword_26BC9A8B0);
LABEL_18:
          v66 = (a1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
          swift_beginAccess();
          v67 = *v66;
          v68 = v66[1];
          v69 = (a2 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
          swift_beginAccess();
          v70 = v67 == *v69 && v68 == v69[1];
          if (v70 || (sub_26BC99BD8() & 1) != 0)
          {
            v71 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
            swift_beginAccess();
            v72 = *(a1 + v71);
            v73 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
            swift_beginAccess();
            if (sub_26BC8D770(v72, *(a2 + v73)))
            {
              v74 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
              swift_beginAccess();
              v75 = *(a1 + v74);
              v76 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
              swift_beginAccess();
              if (sub_26BC8D770(v75, *(a2 + v76)))
              {
                v77 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
                swift_beginAccess();
                v78 = *(a1 + v77);
                v79 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
                swift_beginAccess();
                v80 = sub_26BC8D770(v78, *(a2 + v79));
LABEL_45:

                return v80 & 1;
              }
            }
          }

LABEL_44:
          v80 = 0;
          goto LABEL_45;
        }

        goto LABEL_60;
      }

      v96 = v105;
      sub_26BC885AC(v50, v105);
      if (__swift_getEnumTagSinglePayload(v50 + v65, 1, v48) == 1)
      {
        sub_26BC8F328(v56, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
LABEL_60:
        v86 = &qword_280444720;
        v87 = qword_26BC9B350;
        v85 = v50;
        goto LABEL_43;
      }

      v97 = v103;
      sub_26BC8863C(v50 + v65, v103);
      v98 = *v96 == *v97 && *(v96 + 8) == *(v97 + 8);
      if (v98 || (sub_26BC99BD8()) && *(v96 + 16) == *(v97 + 16))
      {
        v99 = *(v97 + 32);
        if (sub_26BC851C0(*(v96 + 24), *(v96 + 32), *(v97 + 24)))
        {
          v100 = *(v111 + 28);
          sub_26BC99588();
          sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
          v101 = sub_26BC99868();
          sub_26BC8F328(v56, &qword_280444520, &qword_26BC9A8B0);
          sub_26BC8EB40();
          sub_26BC8EB40();
          sub_26BC8F328(v50, &qword_280444520, &qword_26BC9A8B0);
          if ((v101 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_18;
        }
      }

      sub_26BC8F328(v56, &qword_280444520, &qword_26BC9A8B0);
      sub_26BC8EB40();
      sub_26BC8EB40();
      v85 = v50;
      goto LABEL_57;
    }

    sub_26BC8F328(v110, &qword_280444520, &qword_26BC9A8B0);
    goto LABEL_41;
  }

  v80 = 0;
  return v80 & 1;
}

uint64_t sub_26BC8AB38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC99588();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26BC8ABA0(uint64_t a1)
{
  v3 = sub_26BC99588();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26BC8AC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_280444700, type metadata accessor for _ProtoStrokeAnimationRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8ACF8()
{
  sub_26BC8ADE4(&qword_2804449E0, type metadata accessor for _ProtoStrokeAnimationRepresentation);

  return sub_26BC996A8();
}

uint64_t sub_26BC8AD68()
{
  sub_26BC8ADE4(&qword_2804449E0, type metadata accessor for _ProtoStrokeAnimationRepresentation);

  return sub_26BC996B8();
}

uint64_t sub_26BC8ADE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BC8AE30()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.AnimationEffect._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.AnimationEffect._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BC9A860;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BC99758();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAIN";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EASEIN";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EASEOUT";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EASEINOUT";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_26BC99768();
}

uint64_t sub_26BC8B118(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_26BC99778();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_53();

  return v7(v6);
}

void *_ProtoStrokeAnimationRepresentation.Point.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444368 != -1)
  {
    swift_once();
  }

  return static _ProtoStrokeAnimationRepresentation.Point.protoMessageName;
}

uint64_t sub_26BC8B210()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Point._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Point._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BC9A870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BC99758();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_26BC99768();
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_15();
      sub_26BC99618();
    }
  }

  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_15(), result = sub_26BC996F8(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_15(), result = sub_26BC996F8(), !v1))
    {
      v3 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0) + 24);
      return OUTLINED_FUNCTION_13();
    }
  }

  return result;
}

uint64_t static _ProtoStrokeAnimationRepresentation.Point.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_33();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0) + 24);
  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v5, v6);
  return OUTLINED_FUNCTION_25() & 1;
}

uint64_t sub_26BC8B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BC8B694(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_26BC8B708(uint64_t a1, uint64_t a2))()
{
  result = nullsub_17;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_26BC8B760(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446F8, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8B7F4()
{
  sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point);

  return sub_26BC996A8();
}

uint64_t sub_26BC8B864()
{
  sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point);

  return sub_26BC996B8();
}

uint64_t sub_26BC8B8E8()
{
  result = MEMORY[0x26D693160](0xD000000000000010, 0x800000026BC9B960);
  static _ProtoStrokeAnimationRepresentation.AnimationPoints.protoMessageName = 0xD00000000000002DLL;
  *algn_280444A68 = 0x800000026BC9B720;
  return result;
}

uint64_t *_ProtoStrokeAnimationRepresentation.AnimationPoints.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444378 != -1)
  {
    swift_once();
  }

  return &static _ProtoStrokeAnimationRepresentation.AnimationPoints.protoMessageName;
}

uint64_t _ProtoStrokeAnimationRepresentation.AnimationPoints.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_58();
      sub_26BC8BA84();
    }
  }

  return result;
}

uint64_t sub_26BC8BA84()
{
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point);
  return sub_26BC99668();
}

uint64_t _ProtoStrokeAnimationRepresentation.AnimationPoints.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0), sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point), OUTLINED_FUNCTION_29(), result = sub_26BC99738(), !v1))
  {
    v3 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0) + 20);
    return OUTLINED_FUNCTION_13();
  }

  return result;
}

uint64_t (*sub_26BC8BC84(uint64_t a1, uint64_t a2))()
{
  result = nullsub_18;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_26BC8BCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446F0, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8BD70()
{
  sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

  return sub_26BC996A8();
}

uint64_t sub_26BC8BDE0()
{
  sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

  return sub_26BC996B8();
}

void *_ProtoStrokeAnimationRepresentation.StrokeKeyTimes.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444388 != -1)
  {
    swift_once();
  }

  return static _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.protoMessageName;
}

uint64_t sub_26BC8BF18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26BC99778();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26BC9A880;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_26BC99758();
  OUTLINED_FUNCTION_3_0(v14);
  (*(v15 + 104))(v12, v13);
  return sub_26BC99768();
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_15();
      sub_26BC99628();
    }
  }

  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_58(), result = sub_26BC996D8(), !v1))
  {
    v3 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0) + 20);
    return OUTLINED_FUNCTION_13();
  }

  return result;
}

uint64_t sub_26BC8C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_33();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v9, v10);
  return OUTLINED_FUNCTION_25() & 1;
}

uint64_t sub_26BC8C2B8(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();

  return v6(v5);
}

uint64_t sub_26BC8C320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v3 = sub_26BC99588();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_60();

  return v7(v6);
}

uint64_t (*sub_26BC8C388(uint64_t a1, uint64_t a2))()
{
  result = nullsub_19;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_26BC8C3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446E8, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8C474()
{
  sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

  return sub_26BC996A8();
}

uint64_t sub_26BC8C4E4()
{
  sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

  return sub_26BC996B8();
}

uint64_t sub_26BC8C584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D693160](a2, a3);
  *a4 = 0xD00000000000002DLL;
  *a5 = 0x800000026BC9B720;
  return result;
}

void *_ProtoStrokeAnimationRepresentation.Color.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444398 != -1)
  {
    swift_once();
  }

  return static _ProtoStrokeAnimationRepresentation.Color.protoMessageName;
}

uint64_t sub_26BC8C660(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_26BC8C6B0()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BC9A890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rgb";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BC99758();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alpha";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_26BC99768();
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_58();
        sub_26BC8C990();
        break;
      case 2:
        OUTLINED_FUNCTION_15();
        sub_26BC99648();
        break;
      case 1:
        OUTLINED_FUNCTION_15();
        sub_26BC99658();
        break;
    }
  }

  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  v3 = *v0;
  v4 = v0[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (OUTLINED_FUNCTION_29(), result = sub_26BC99728(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_15(), result = sub_26BC99718(), !v1))
    {
      if (!*(v2 + 24) || (v8 = *(v2 + 24), v9 = *(v2 + 32), sub_26BC8D7CC(), OUTLINED_FUNCTION_29(), result = sub_26BC996E8(), !v1))
      {
        v7 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0) + 28);
        return OUTLINED_FUNCTION_13();
      }
    }
  }

  return result;
}

uint64_t static _ProtoStrokeAnimationRepresentation.Color.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_26BC99BD8() & 1) == 0 || *(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v6 = *(v0 + 24);
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_10;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_10;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_10;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_10;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_10;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_10;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_10;
      default:
        break;
    }
  }

  if (v4 != v5)
  {
    return 0;
  }

LABEL_10:
  v7 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0) + 28);
  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v8, v9);
  return OUTLINED_FUNCTION_25() & 1;
}

uint64_t sub_26BC8CC88(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BC99BE8();
  a1(0);
  sub_26BC8ADE4(a2, a3);
  sub_26BC99858();
  return sub_26BC99BF8();
}

uint64_t sub_26BC8CD38(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  a3();
  v7 = *a4;
  v8 = *a5;

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_26BC8CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BC8CDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_26BC8CE60(uint64_t a1, uint64_t a2))()
{
  result = nullsub_20;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_26BC8CEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446E0, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8CF4C()
{
  sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);

  return sub_26BC996A8();
}

uint64_t sub_26BC8CFBC()
{
  sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);

  return sub_26BC996B8();
}

uint64_t sub_26BC8D038()
{
  sub_26BC99BE8();
  sub_26BC99858();
  return sub_26BC99BF8();
}

uint64_t sub_26BC8D090()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color.Name._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color.Name._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26BC9A8A0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BC99758();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 1;
  *v8 = "CLEAR";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "BLACK";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WHITE";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GRAY";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RED";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "GREEN";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "BLUE";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  return sub_26BC99768();
}

uint64_t sub_26BC8D3E0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26BC99778();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26BC8D45C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BC99778();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26BC8D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_26BC8EAE8();
      sub_26BC8EAE8();
      if (*v11 != *v8 || v11[1] != v8[1])
      {
        break;
      }

      v17 = *(v4 + 24);
      sub_26BC99588();
      sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
      v18 = sub_26BC99868();
      sub_26BC8EB40();
      sub_26BC8EB40();
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_26BC8EB40();
    sub_26BC8EB40();
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_26BC8D770(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26BC8D7CC()
{
  result = qword_2804445A0;
  if (!qword_2804445A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445A0);
  }

  return result;
}

unint64_t sub_26BC8D824()
{
  result = qword_2804445B0;
  if (!qword_2804445B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445B0);
  }

  return result;
}

unint64_t sub_26BC8D87C()
{
  result = qword_2804445B8;
  if (!qword_2804445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445B8);
  }

  return result;
}

unint64_t sub_26BC8D8D4()
{
  result = qword_2804445C0;
  if (!qword_2804445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445C0);
  }

  return result;
}

unint64_t sub_26BC8D92C()
{
  result = qword_2804445C8;
  if (!qword_2804445C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445C8);
  }

  return result;
}

unint64_t sub_26BC8D984()
{
  result = qword_2804445D0;
  if (!qword_2804445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445D0);
  }

  return result;
}

unint64_t sub_26BC8D9DC()
{
  result = qword_2804445D8;
  if (!qword_2804445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445D8);
  }

  return result;
}

uint64_t sub_26BC8DA90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BC8E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14();
  v6 = sub_26BC99588();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_24(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_26BC8E148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38();
  result = sub_26BC99588();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
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

uint64_t _s15StrokeAnimation35_ProtoStrokeAnimationRepresentationV5ColorV4NameOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_49(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15StrokeAnimation35_ProtoStrokeAnimationRepresentationV5ColorV4NameOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26BC8E274(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_49(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BC8E28C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_26BC8E2D0()
{
  OUTLINED_FUNCTION_38();
  v3 = *(v2 + 24);
  v4 = sub_26BC99588();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_26BC8E334()
{
  OUTLINED_FUNCTION_38();
  v3 = *(v2 + 24);
  v4 = sub_26BC99588();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_26BC8E388()
{
  result = sub_26BC99588();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BC8E434()
{
  sub_26BC8E9CC(319, &qword_280444698, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BC99588();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*a1);
  }

  sub_26BC99588();
  v5 = OUTLINED_FUNCTION_56(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_31Tm()
{
  OUTLINED_FUNCTION_38();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BC99588();
    v5 = OUTLINED_FUNCTION_56(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BC8E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26BC8E6BC()
{
  if (!qword_2804446B0)
  {
    v0 = sub_26BC99978();
    if (!v1)
    {
      atomic_store(v0, &qword_2804446B0);
    }
  }
}

uint64_t sub_26BC8E720(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*(a1 + 8));
  }

  sub_26BC99588();
  v5 = OUTLINED_FUNCTION_56(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_26BC8E7AC()
{
  OUTLINED_FUNCTION_38();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BC99588();
    v5 = OUTLINED_FUNCTION_56(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BC8E824()
{
  result = sub_26BC99588();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BC8E8D4()
{
  sub_26BC8E9CC(319, &qword_2804446D8, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26BC8E9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26BC8EA30()
{
  result = qword_280444708;
  if (!qword_280444708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444708);
  }

  return result;
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

uint64_t sub_26BC8EAE8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1(0);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v0;
}

uint64_t sub_26BC8EB40()
{
  v1 = OUTLINED_FUNCTION_14();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26BC8EB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26BC99BD8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_26BC8EC20(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v40);
  v8 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (v35 - v9);
  v11 = type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = v35 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_20:
    v34 = 0;
    return v34 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v35[0] = v4;
  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v38 = v15;
  v39 = a2 + v21;
  v22 = *(v16 + 72);
  v36 = v19;
  v37 = v11;
  v35[1] = v22;
  v35[2] = a1 + v21;
  while (1)
  {
    result = sub_26BC8EAE8();
    if (v20 == v19)
    {
      break;
    }

    sub_26BC8EAE8();
    v24 = *v18;
    v25 = *v15;
    v26 = *(*v18 + 16);
    if (v26 != *(*v15 + 16))
    {
      goto LABEL_19;
    }

    if (v26 && v24 != v25)
    {
      v27 = (*(v35[0] + 80) + 32) & ~*(v35[0] + 80);
      v28 = v24 + v27;
      v29 = v25 + v27;
      v30 = *(v35[0] + 72);
      while (1)
      {
        sub_26BC8EAE8();
        sub_26BC8EAE8();
        if (*v10 != *v8 || v10[1] != v8[1])
        {
          break;
        }

        v31 = *(v40 + 24);
        sub_26BC99588();
        sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
        v32 = sub_26BC99868();
        sub_26BC8EB40();
        sub_26BC8EB40();
        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }

        v29 += v30;
        v28 += v30;
        if (!--v26)
        {
          goto LABEL_14;
        }
      }

      sub_26BC8EB40();
      sub_26BC8EB40();
LABEL_19:
      sub_26BC8EB40();
      sub_26BC8EB40();
      goto LABEL_20;
    }

LABEL_14:
    v33 = *(v37 + 20);
    sub_26BC99588();
    sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
    v15 = v38;
    v34 = sub_26BC99868();
    sub_26BC8EB40();
    sub_26BC8EB40();
    if (v34)
    {
      ++v20;
      v19 = v36;
      if (v20 != v36)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC8F094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v13 = 0;
  v14 = *(v9 + 80);
  v15 = *(v9 + 72);
  while (1)
  {
    result = sub_26BC8EAE8();
    if (v13 == v12)
    {
      break;
    }

    result = sub_26BC8EAE8();
    v17 = *v11;
    v18 = *v8;
    v19 = *(*v11 + 16);
    if (v19 != *(*v8 + 16))
    {
LABEL_19:
      sub_26BC8EB40();
      sub_26BC8EB40();
      goto LABEL_20;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = (v17 + 32);
      v22 = (v18 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_19;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    v23 = *(v4 + 20);
    sub_26BC99588();
    sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8]);
    v24 = sub_26BC99868();
    sub_26BC8EB40();
    sub_26BC8EB40();
    if ((v24 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC8F328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26BC8F380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return 0;
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  result = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  v0 = type metadata accessor for _ProtoStrokeAnimationRepresentation._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_26BC99568();
}

uint64_t OUTLINED_FUNCTION_16()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v0;
  v4 = v1 + *(v2 + 28);

  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_26BC99868();
}

uint64_t OUTLINED_FUNCTION_26()
{
  v2 = *(*(v0 + 56) + *(v0 + 64));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_39()
{
  result = *(v0 + v2);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48()
{
  v2 = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_55(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_26BC99858();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
}

id sub_26BC8FA1C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_26BC97CF4(a1, a2, v4);
  [v4 setTextAlignment_];
  v5 = [objc_opt_self() systemFontOfSize_];
  [v4 setFont_];

  return v4;
}

id StrokeData.init(characters:strokeAnimationRepresention:strokeNames:pronunciations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR___SAStrokeDataInternal_characters;
  *&v5[OBJC_IVAR___SAStrokeDataInternal_characters] = 0;
  v7 = OBJC_IVAR___SAStrokeDataInternal_strokeNames;
  *&v5[OBJC_IVAR___SAStrokeDataInternal_strokeNames] = 0;
  v8 = OBJC_IVAR___SAStrokeDataInternal_pronunciations;
  *&v5[OBJC_IVAR___SAStrokeDataInternal_pronunciations] = 0;
  *&v5[v6] = a1;
  v9 = &v5[OBJC_IVAR___SAStrokeDataInternal_strokeAnimationRepresention];
  *v9 = a2;
  *(v9 + 1) = a3;
  *&v5[v7] = a4;
  v10 = *&v5[v8];
  *&v5[v8] = a5;

  v12.receiver = v5;
  v12.super_class = type metadata accessor for StrokeData();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_26BC8FC88()
{
  strcpy(v5, "character is:");
  HIWORD(v5[1]) = -4864;
  if (*(v0 + OBJC_IVAR___SAStrokeDataInternal_characters))
  {
    v1 = *(v0 + OBJC_IVAR___SAStrokeDataInternal_characters);

    MEMORY[0x26D6931D0](v2, MEMORY[0x277D837D0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444748, &qword_26BC9B378);
  v3 = sub_26BC99898();
  MEMORY[0x26D693160](v3);

  return v5[0];
}

id StrokeData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StrokeData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrokeData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BC8FE80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BC8FED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_26BC8FF38(uint64_t a1, int64_t a2)
{
  v5 = *(a1 + *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20));
  v6 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) <= a2 || (v8 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays, swift_beginAccess(), v9 = *(v5 + v8), *(v9 + 16) <= a2))
  {
    v2 = -100.0;
    goto LABEL_9;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (*(v7 + 16) <= a2)
  {
LABEL_21:
    __break(1u);
    JUMPOUT(0x26BC900F4);
  }

  v10 = v7 + 16 * a2;
  v11 = *(v10 + 32);
  if (*(v10 + 40) == 1)
  {
    switch(v11)
    {
      case 2:
        OUTLINED_FUNCTION_1_2(v9);
        goto LABEL_17;
      case 3:
        OUTLINED_FUNCTION_1_2(v9);
        goto LABEL_19;
      case 4:
        OUTLINED_FUNCTION_1_2(v9);
        goto LABEL_15;
      default:
        OUTLINED_FUNCTION_1_2(v9);
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2(v9);
    switch(v11)
    {
      case 4:
LABEL_15:
        v13 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
        OUTLINED_FUNCTION_0_2();
        v14 = *(v5 + v13);

        break;
      case 3:
LABEL_19:
        v17 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
        OUTLINED_FUNCTION_0_2();
        v18 = *(v5 + v17);

        break;
      case 2:
LABEL_17:
        v15 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
        OUTLINED_FUNCTION_0_2();
        v16 = *(v5 + v15);

        break;
    }
  }

LABEL_9:
  sub_26BC90108(a1);
  return v2;
}

uint64_t sub_26BC90108(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_beginAccess();
}

void sub_26BC90190()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];
}

double sub_26BC90204()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 200.0;
  if (!v1)
  {
    return 140.0;
  }

  return result;
}

uint64_t sub_26BC9027C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26BC99BB8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_26BC902A0()
{
  OUTLINED_FUNCTION_1_3();
  v2 = v1;
  *&v0[OBJC_IVAR____TtC15StrokeAnimation20StrokeAnimatingLayer_strokePathData] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for StrokeAnimatingLayer();

  v3 = objc_msgSendSuper2(&v9, sel_init);
  sub_26BC90B24(0x6E41656B6F727453, 0xEF6E6F6974616D69, v3);
  v4 = v3;
  OUTLINED_FUNCTION_2_1(v4, sel_setFrame_);
  [v4 setPath_];
  [v4 setStrokeColor_];
  [v4 setLineWidth_];
  [v4 setLineCap_];
  [v4 setLineJoin_];
  [v4 setFillColor_];
  result = [v4 setBackgroundColor_];
  v6 = *(v2 + 32);
  if (v6)
  {
    v7 = v6;
    v8 = sub_26BC90604(v7);

    [v4 setMask_];
    [v4 setStrokeEnd_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BC904B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15StrokeAnimation20StrokeAnimatingLayer_strokePathData];
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = sub_26BC9027C(*(v2 + 80));
    v5 = v4 - 2;
    if (v4 > 2)
    {

      v6 = 0;
      v7 = 1;
      goto LABEL_6;
    }

    v3 = 0;
  }

  v5 = 0;
  v7 = 0;
  v6 = 2;
LABEL_6:
  sub_26BC90AFC(v3, v5, v6);
  v8 = sub_26BC8351C();
  v9 = *(v2 + 40);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (v7)
    {
      v12 = sub_26BC9879C(v10, v11, v3, v3, v5, 0);
      sub_26BC90B10(v3, v5, 0);

      sub_26BC90B10(v3, v5, 0);
    }

    else
    {
      v12 = sub_26BC985F8(v10, v11, v3, v5, 2);
    }

    sub_26BC97DC8(v12, 0x656B6F7274535253, 0xE800000000000000, v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_26BC90604(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v1 frame];
  [v3 setFrame_];

  [v3 setPath_];
  return v3;
}

void sub_26BC90760()
{
  OUTLINED_FUNCTION_1_3();
  v14 = v1;
  v3 = v2;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for StrokeContourLayer();
  v15 = objc_msgSendSuper2(&v16, sel_init);
  OUTLINED_FUNCTION_2_1(v15, sel_setFrame_);
  Mutable = CGPathCreateMutable();
  v5 = sub_26BC97660(v3);
  for (i = 0; v5 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D6933C0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
    if (!v8)
    {
      goto LABEL_16;
    }

    v18 = 0;
    v19 = 0;
    v17 = 0x3FF0000000000000;
    v20 = 0x3FF0000000000000;
    v21 = 0;
    v22 = 0;
    v9 = v8;
    sub_26BC999B8();
  }

  [v15 setPath_];
  if (v14)
  {
    v10 = v14;
  }

  else
  {
    v11 = [objc_opt_self() systemRedColor];
    v12 = [v11 colorWithAlphaComponent_];

    v10 = [v12 CGColor];
  }

  v13 = v14;
  [v15 setFillColor_];
}

void sub_26BC90A44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  sub_26BC99B08();
  v5 = swift_unknownObjectRelease();
  a4(v5);
  __break(1u);
}

id sub_26BC90AA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26BC90AFC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_26BC90B10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_26BC90B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26BC99878();

  [a3 setName_];
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_26BC99BA8();
}

id OUTLINED_FUNCTION_2_1(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_26BC90BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_26BC99508();
  v7 = OUTLINED_FUNCTION_0_4(v6);
  v35 = v8;
  v36 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444758, &qword_26BC9B440);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = sub_26BC99528();
  v18 = OUTLINED_FUNCTION_0_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v35 - v26;
  [v4 setImage_];
  sub_26BC99518();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    return sub_26BC9187C(v16, &qword_280444758, &qword_26BC9B440);
  }

  (*(v20 + 32))(v27, v16, v17);
  (*(v20 + 16))(v25, v27, v17);
  sub_26BC994F8();
  sub_26BC994E8();
  v29 = [objc_opt_self() sharedSession];
  v30 = sub_26BC994D8();
  v31 = swift_allocObject();
  *(v31 + 16) = v4;
  aBlock[4] = sub_26BC9150C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BC9158C;
  aBlock[3] = &block_descriptor_0;
  v32 = _Block_copy(aBlock);
  v33 = v4;

  v34 = [v29 dataTaskWithRequest:v30 completionHandler:v32];
  _Block_release(v32);

  [v34 resume];
  (*(v35 + 8))(v12, v36);
  return (*(v20 + 8))(v27, v17);
}

void sub_26BC90F6C(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = sub_26BC997F8();
  v11 = *(v10 - 8);
  isa = v11[8].isa;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26BC99818();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_2804443B0 != -1)
    {
      swift_once();
    }

    v20 = sub_26BC997C8();
    __swift_project_value_buffer(v20, qword_280444AF0);
    v21 = a4;
    v44 = sub_26BC997B8();
    v22 = sub_26BC999A8();

    if (!os_log_type_enabled(v44, v22))
    {
      goto LABEL_21;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = a4;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_26BC81000, v44, v22, "download Image failed:%@", v23, 0xCu);
    sub_26BC9187C(v24, &qword_280444770, &qword_26BC9B450);
    MEMORY[0x26D693B30](v24, -1, -1);
    goto LABEL_20;
  }

  v43 = v17;
  v44 = v11;
  if (a3)
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = a3;
      if ([v28 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL && a2 >> 60 != 15)
      {
        sub_26BC91730(0, &qword_280444760, 0x277D755B8);
        sub_26BC916D8(a1, a2);
        sub_26BC916D8(a1, a2);
        v31 = sub_26BC91514(a1, a2);
        if (v31)
        {
          v32 = v31;
          sub_26BC91730(0, &unk_2804443E0, 0x277D85C78);
          v42 = sub_26BC99A28();
          v33 = swift_allocObject();
          *(v33 + 16) = a5;
          *(v33 + 24) = v32;
          aBlock[4] = sub_26BC917B0;
          aBlock[5] = v33;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_26BC91B2C;
          aBlock[3] = &block_descriptor_6;
          v41 = _Block_copy(aBlock);
          v34 = a5;
          v35 = v32;

          sub_26BC99808();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_26BC917C0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444768, &qword_26BC9B448);
          sub_26BC91818();
          sub_26BC99B18();
          v37 = v41;
          v36 = v42;
          MEMORY[0x26D6932C0](0, v19, v14, v41);

          _Block_release(v37);
          sub_26BC9166C(a1, a2);
          (v44[1].isa)(v14, v10);
          (*(v43 + 8))(v19, v15);
          return;
        }

        sub_26BC9166C(a1, a2);
      }
    }
  }

  if (qword_2804443B0 != -1)
  {
    swift_once();
  }

  v38 = sub_26BC997C8();
  __swift_project_value_buffer(v38, qword_280444AF0);
  v44 = sub_26BC997B8();
  v39 = sub_26BC999A8();
  if (os_log_type_enabled(v44, v39))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26BC81000, v44, v39, "image is nil or invalid image data.", v23, 2u);
LABEL_20:
    MEMORY[0x26D693B30](v23, -1, -1);
  }

LABEL_21:
  v40 = v44;
}

uint64_t sub_26BC914D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_26BC91514(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26BC99548();
  v6 = [v4 initWithData_];

  sub_26BC91680(a1, a2);
  return v6;
}

uint64_t sub_26BC9158C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_26BC99558();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_26BC9166C(v6, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BC9166C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BC91680(a1, a2);
  }

  return a1;
}

uint64_t sub_26BC91680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BC916D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BC91730(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BC91770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26BC917C0()
{
  result = qword_280444830;
  if (!qword_280444830)
  {
    sub_26BC997F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444830);
  }

  return result;
}

unint64_t sub_26BC91818()
{
  result = qword_280444840;
  if (!qword_280444840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280444768, &qword_26BC9B448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444840);
  }

  return result;
}

uint64_t sub_26BC9187C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BC918F8()
{
  v0 = sub_26BC997C8();
  __swift_allocate_value_buffer(v0, qword_280444AF0);
  v1 = __swift_project_value_buffer(v0, qword_280444AF0);
  if (qword_2804443C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280444B08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26BC919E0()
{
  v0 = sub_26BC997C8();
  __swift_allocate_value_buffer(v0, qword_280444B08);
  __swift_project_value_buffer(v0, qword_280444B08);
  if (qword_2804443B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280444778;
  return sub_26BC997D8();
}

uint64_t sub_26BC91A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_26BC91AE8();
  result = sub_26BC99AF8();
  *a4 = result;
  return result;
}

unint64_t sub_26BC91AE8()
{
  result = qword_280444780;
  if (!qword_280444780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280444780);
  }

  return result;
}

uint64_t sub_26BC91B2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *StrokeView.__allocating_init(with:frame:)()
{
  OUTLINED_FUNCTION_4_1();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_3_1();
  return StrokeView.init(with:frame:)();
}

char *StrokeView.init(with:frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_1();
  v45 = v2;
  swift_getObjectType();
  v3 = sub_26BC99A18();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  v43 = v5;
  v44 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v42 = v8;
  v41 = sub_26BC999F8();
  v9 = OUTLINED_FUNCTION_7_0(v41);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_15_0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = 0;
  v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v17 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v18 = objc_allocWithZone(type metadata accessor for StrokeData());
  *(v1 + v17) = OUTLINED_FUNCTION_8_0(&unk_287CA76B0);
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = 0;
  v19 = (v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue;
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  v46 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_2();
  sub_26BC98218(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC9816C(&qword_280444820, &qword_2804443F0);
  sub_26BC99B18();
  (*(v43 + 104))(v42, *MEMORY[0x277D85260], v44);
  *(v1 + v20) = sub_26BC99A48();
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers) = MEMORY[0x277D84F90];
  v23 = *(v1 + v17);
  *(v1 + v17) = v45;
  v24 = v45;

  if (qword_2804443B0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v25 = sub_26BC997C8();
  __swift_project_value_buffer(v25, qword_280444AF0);
  v26 = v24;
  v27 = sub_26BC997B8();
  v28 = sub_26BC99998();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = v30;
    *v29 = 136315138;
    v31 = sub_26BC8FC88();
    v33 = sub_26BC976C8(v31, v32, &v46);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_26BC81000, v27, v28, "strokeData is:%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  v34 = OUTLINED_FUNCTION_3_1();
  v37 = objc_msgSendSuper2(v35, v36, v34);
  sub_26BC920A4();
  sub_26BC921D8();
  sub_26BC93554();
  if (*&v37[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos])
  {
    v38 = *&v37[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos];

    sub_26BC936D4(v39);
  }

  sub_26BC93AE4();

  return v37;
}

void sub_26BC920A4()
{
  v1 = v0;
  sub_26BC9473C(1);
  sub_26BC983CC(0, &unk_2804449F0, 0x277D756B8);
  v2 = sub_26BC8FA1C(0, 0xE000000000000000);
  [v2 setFrame_];
  [v1 addSubview_];
  v3 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel];
  *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel] = v2;
  v8 = v2;

  v4 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  v5 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView];
  v6 = sub_26BC90204();
  sub_26BC90204();
  [v5 setFrame_];

  [v1 addSubview_];
}

void sub_26BC921D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v183 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v182 = &v167 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v167 - v6;
  v8 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v167 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v167 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v167 - v20;
  v22 = type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
  v199 = *(v22 - 8);
  v23 = *(v199 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_26BC995A8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804449D8, &qword_26BC9B4D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v167 - v30;
  v32 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  if (*(v197 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos))
  {
    return;
  }

  v195 = v21;
  v196 = v39;
  v198 = v36;
  v193 = v38;
  v194 = v17;
  v175 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos;
  v176 = v15;
  v200 = v25;
  v177 = v12;
  v178 = v7;
  v180 = v8;
  v181 = &v167 - v37;
  v40 = (*(v197 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData) + OBJC_IVAR___SAStrokeDataInternal_strokeAnimationRepresention);
  v41 = *v40;
  v42 = v40[1];

  v43 = sub_26BC99538();
  if (v44 >> 60 == 15)
  {

    if (qword_2804443B0 != -1)
    {
LABEL_91:
      swift_once();
    }

    v45 = sub_26BC997C8();
    __swift_project_value_buffer(v45, qword_280444AF0);
    v200 = sub_26BC997B8();
    v46 = sub_26BC999A8();
    if (os_log_type_enabled(v200, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26BC81000, v200, v46, "invalid strokeData", v47, 2u);
      MEMORY[0x26D693B30](v47, -1, -1);
    }

    v48 = v200;

    return;
  }

  v49 = v44;
  v202 = 0;
  memset(v201, 0, sizeof(v201));
  v50 = v43;
  sub_26BC916D8(v43, v44);
  sub_26BC99598();
  v51 = sub_26BC98218(&qword_2804449E0, type metadata accessor for _ProtoStrokeAnimationRepresentation);
  v173 = v50;
  v174 = v49;
  v52 = v198;
  sub_26BC99698();
  v192 = v51;
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v52);
  v53 = v181;
  sub_26BC9836C(v31, v181, type metadata accessor for _ProtoStrokeAnimationRepresentation);
  if (qword_2804443B0 != -1)
  {
    swift_once();
  }

  v54 = sub_26BC997C8();
  __swift_project_value_buffer(v54, qword_280444AF0);
  v55 = v196;
  sub_26BC98260(v53, v196, type metadata accessor for _ProtoStrokeAnimationRepresentation);
  v56 = sub_26BC997B8();
  v57 = sub_26BC99998();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v178;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v190 = v60;
    v191 = swift_slowAlloc();
    *&v201[0] = v191;
    *v60 = 136315138;
    v61 = v198;
    v192 = sub_26BC996A8();
    v63 = v62;
    sub_26BC98314(v55, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v64 = sub_26BC976C8(v192, v63, v201);

    v65 = v190;
    *(v190 + 4) = v64;
    _os_log_impl(&dword_26BC81000, v56, v57, "strokeAnimation is:%s", v65, 0xCu);
    v66 = v191;
    __swift_destroy_boxed_opaque_existential_0(v191);
    MEMORY[0x26D693B30](v66, -1, -1);
    MEMORY[0x26D693B30](v65, -1, -1);
  }

  else
  {

    sub_26BC98314(v55, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v61 = v198;
  }

  v67 = *(v53 + *(v61 + 20));
  swift_beginAccess();
  v192 = v67;
  v68 = *(v67 + 16);
  if (!v68[2])
  {
    __break(1u);
    goto LABEL_93;
  }

  v69 = v68[4];
  v70 = v68[5];

  v71 = sub_26BC99538();
  if (v72 >> 60 == 15)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v73 = v71;
  v74 = v72;
  sub_26BC983CC(0, &qword_2804449E8, 0x277CBEA90);
  sub_26BC916D8(v73, v74);
  v171 = v73;
  v75 = sub_26BC95278(v73, v74);
  v76 = sub_26BC848E8(v75);

  if (!v76)
  {
LABEL_94:
    __break(1u);
    return;
  }

  v77 = v76;

  v78 = sub_26BC84970();
  v80 = v79;
  v81 = v78;
  v170 = v77;

  v82 = v192;
  swift_beginAccess();
  v83 = v82[3];
  v84 = v180;
  if (!*(v83 + 16))
  {

    v93 = sub_26BC997B8();
    v94 = sub_26BC99988();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v53;
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_26BC81000, v93, v94, "no animation points, so just render contour path", v96, 2u);
      MEMORY[0x26D693B30](v96, -1, -1);

      sub_26BC9166C(v171, v74);
      sub_26BC9166C(v173, v174);
      v97 = v95;
    }

    else
    {
      sub_26BC9166C(v173, v174);
      sub_26BC9166C(v171, v74);

      v97 = v53;
    }

    goto LABEL_86;
  }

  v168 = v74;
  swift_beginAccess();
  v85 = v82[4];
  swift_beginAccess();
  v86 = v82[6];
  swift_beginAccess();
  v87 = v82[7];
  v88 = objc_opt_self();
  v169 = v80;

  v189 = v83;

  v196 = v85;

  v191 = v86;

  v198 = v87;

  v172 = v88;
  v89 = [v88 sharedPreferences];
  v90 = [v89 outputVoice];

  if (v90)
  {
    v91 = [v90 VSSpeechGender];

    v92 = 150;
    if (v91 == 1)
    {
      v92 = 100;
    }

    if (v91 == 2)
    {
      v92 = 200;
    }
  }

  else
  {
    v92 = 150;
  }

  v185 = v92;
  v98 = v195;
  v99 = v169;
  v190 = sub_26BC97664(v169);
  v100 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  swift_beginAccess();
  v184 = v100;
  swift_beginAccess();
  v101 = 0;
  v187 = v99 & 0xFFFFFFFFFFFFFF8;
  v188 = v99 & 0xC000000000000001;
  v186 = v99 + 32;
  v179 = v191 + 4;
  v102 = (v196 + 56);
  while (v190 != v101)
  {
    if (v188)
    {
      v103 = MEMORY[0x26D6933C0](v101, v169);
    }

    else
    {
      if (v101 >= *(v187 + 16))
      {
        goto LABEL_88;
      }

      v103 = *(v186 + 8 * v101);
    }

    if (v101 >= *(v189 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    sub_26BC98260(v189 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v101, v200, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);
    v104 = *(v198 + 16);
    if (v104)
    {
      if (v101 >= v104)
      {
        goto LABEL_89;
      }

      v105 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
      sub_26BC98260(v198 + ((*(*(v105 - 8) + 80) + 32) & ~*(*(v105 - 8) + 80)) + *(*(v105 - 8) + 72) * v101, v98, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);
      v106 = v98;
      v107 = 0;
      v108 = v105;
    }

    else
    {
      v108 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
      v106 = v98;
      v107 = 1;
    }

    __swift_storeEnumTagSinglePayload(v106, v107, 1, v108);
    v109 = v200;
    sub_26BC82F2C(v200, v98, v81);
    sub_26BC982C0(v98, &qword_280444410);
    sub_26BC98314(v109, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);
    *(v103 + 88) = v185;
    v110 = *(v196 + 16);
    if (v101 < v110)
    {
      v111 = *(v102 - 2);
      v112 = *(v103 + 72);
      *(v103 + 64) = *(v102 - 3);
      *(v103 + 72) = v111;

      if (v101 < v110 - 1)
      {
        if (v101 + 1 >= *(v196 + 16))
        {
          goto LABEL_90;
        }

        v113 = *(v102 - 1) == 68 && *v102 == 0xE100000000000000;
        if (v113 || (v114 = *v102, (sub_26BC99BD8() & 1) != 0))
        {
          v115 = 50;
        }

        else
        {
          v115 = 0;
        }

        v116 = [v172 sharedPreferences];
        v117 = [v116 outputVoice];

        if (v117)
        {
          v118 = [v117 VSSpeechGender];

          if (v118 != 1)
          {
            v84 = v180;
            if (v118 == 2)
            {
              v119 = 200;
            }

            else
            {
              v119 = 150;
            }

            v120 = v119 - v115;
            goto LABEL_56;
          }

          v120 = 100 - v115;
        }

        else
        {

          v120 = 150;
        }

        v84 = v180;
LABEL_56:
        *(v103 + 88) = v120;
        v53 = v181;
      }
    }

    if (v101 < v191[2])
    {
      v121 = *&v179[v101];
      if (v121 > 0.0)
      {
        v122 = [objc_opt_self() currentDevice];
        v123 = [v122 userInterfaceIdiom];

        v124 = v121 * 1.42857143;
        if (!v123)
        {
          v124 = v121;
        }

        *(v103 + 24) = v124;
      }
    }

    v125 = v192;
    v126 = *(v192 + 40);
    if (v126 > 0.0)
    {
      *(v103 + 96) = v126;
    }

    sub_26BC885AC(v125 + v184, v59);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v84);
    v128 = v194;
    if (EnumTagSinglePayload == 1)
    {
      *v194 = 0;
      v128[1] = 0xE000000000000000;
      v128[2] = 0;
      v128[3] = 0;
      *(v128 + 32) = 1;
      v129 = v128 + *(v84 + 28);
      _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
      if (__swift_getEnumTagSinglePayload(v59, 1, v84) != 1)
      {
        sub_26BC982C0(v59, &qword_280444520);
      }
    }

    else
    {
      sub_26BC9836C(v59, v194, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    }

    v130 = _ProtoStrokeAnimationRepresentation.Color.toUIColor()();
    sub_26BC98314(v128, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    if (v130)
    {
      v131 = [v130 CGColor];

      v132 = *(v103 + 16);
      *(v103 + 16) = v131;
    }

    v133 = v193;
    sub_26BC98260(v53, v193, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v134 = sub_26BC8FF38(v133, v101);
    v135 = *(v103 + 104);
    v136 = *(v103 + 112);
    v137 = *(v103 + 120);
    *(v103 + 104) = v138;
    *(v103 + 112) = v134;
    *(v103 + 120) = v139;
    sub_26BC840BC(v135, v136, v137);

    v102 += 2;
    ++v101;
    v98 = v195;
  }

  v140 = v169;

  v141 = v197;
  v142 = *(v197 + v175);
  *(v197 + v175) = v140;

  v143 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  v144 = v192;
  swift_beginAccess();
  v145 = v182;
  sub_26BC885AC(v144 + v143, v182);
  if (__swift_getEnumTagSinglePayload(v145, 1, v84) == 1)
  {
    v146 = v176;
    *v176 = 0;
    v146[1] = 0xE000000000000000;
    v146[2] = 0;
    v146[3] = 0;
    *(v146 + 32) = 1;
    v147 = v146 + *(v84 + 28);
    _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v148 = __swift_getEnumTagSinglePayload(v145, 1, v84);
    v149 = v177;
    v150 = v183;
    v152 = v170;
    v151 = v171;
    if (v148 != 1)
    {
      sub_26BC982C0(v145, &qword_280444520);
    }
  }

  else
  {
    v146 = v176;
    sub_26BC9836C(v145, v176, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    v149 = v177;
    v150 = v183;
    v152 = v170;
    v151 = v171;
  }

  v153 = _ProtoStrokeAnimationRepresentation.Color.toUIColor()();
  sub_26BC98314(v146, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  v154 = *(v141 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor);
  *(v141 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = v153;

  v155 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  v156 = v192;
  swift_beginAccess();
  sub_26BC885AC(v156 + v155, v150);
  v157 = v180;
  if (__swift_getEnumTagSinglePayload(v150, 1, v180) == 1)
  {
    *v149 = 0;
    *(v149 + 8) = 0xE000000000000000;
    *(v149 + 16) = 0;
    *(v149 + 24) = 0;
    *(v149 + 32) = 1;
    v158 = v149 + *(v157 + 28);
    _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    if (__swift_getEnumTagSinglePayload(v150, 1, v157) != 1)
    {
      sub_26BC982C0(v150, &qword_280444520);
    }
  }

  else
  {
    sub_26BC9836C(v150, v149, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  }

  v159 = _ProtoStrokeAnimationRepresentation.Color.toUIColor()();

  sub_26BC9166C(v151, v168);
  sub_26BC9166C(v173, v174);
  sub_26BC98314(v149, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  v160 = *(v141 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView);
  *(v141 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = v159;

  v161 = (v192 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  swift_beginAccess();
  v163 = *v161;
  v162 = v161[1];
  v164 = HIBYTE(v162) & 0xF;
  if ((v162 & 0x2000000000000000) == 0)
  {
    v164 = v163 & 0xFFFFFFFFFFFFLL;
  }

  if (v164)
  {

    sub_26BC98314(v181, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v165 = (v141 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
    v166 = *(v141 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl + 8);
    *v165 = v163;
    v165[1] = v162;

    return;
  }

  v97 = v181;
LABEL_86:
  sub_26BC98314(v97, type metadata accessor for _ProtoStrokeAnimationRepresentation);
}

void sub_26BC93554()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData) + OBJC_IVAR___SAStrokeDataInternal_pronunciations);
  if (v1 && v1[2])
  {
    v2 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel);
    if (v2)
    {
      v4 = v1[4];
      v3 = v1[5];

      v5 = v2;
      sub_26BC97CF4(v4, v3, v5);
    }
  }

  else
  {
    sub_26BC94AD4();
    v6 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView);
    v7 = sub_26BC90204();
    sub_26BC90204();
    [v6 setFrame_];
  }

  v9 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer);
    if (v10)
    {
      v13 = v9;
      v11 = v10;
      v12 = [v13 CGColor];
      [v11 setFillColor_];
    }
  }
}

uint64_t sub_26BC936D4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  v5 = sub_26BC97ECC([*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView) layer]);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = sub_26BC97664(v5);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

LABEL_11:
      sub_26BC90204();
      sub_26BC90204();
      v11 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor;
      v12 = *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor);
      if (v12)
      {
        sub_26BC983CC(0, &qword_2804449A0, 0x277D75348);
        v13 = objc_opt_self();
        v7 = v12;
        v14 = [v13 clearColor];
        LOBYTE(v13) = sub_26BC99AE8();

        if (v13)
        {
          if (qword_2804443B0 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_34;
        }

        v19 = *(v2 + v11);
        if (v19)
        {
          v20 = [v19 CGColor];
        }
      }

      v21 = objc_allocWithZone(type metadata accessor for StrokeContourLayer());

      sub_26BC90760();
      v23 = v22;
      v24 = [*(v2 + v4) layer];
      [v24 addSublayer_];

      v7 = *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer);
      *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = v23;
      goto LABEL_20;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D6933C0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v9 removeFromSuperlayer];
  }

  __break(1u);
LABEL_32:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_34:
    swift_once();
LABEL_14:
    v15 = sub_26BC997C8();
    __swift_project_value_buffer(v15, qword_280444AF0);
    v16 = sub_26BC997B8();
    v17 = sub_26BC99988();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26BC81000, v16, v17, "no contour color for stroke animation!", v18, 2u);
      MEMORY[0x26D693B30](v18, -1, -1);
    }

LABEL_20:
    v25 = sub_26BC90B8C(a1);
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
      break;
    }

    v7 = v25;
    v35 = MEMORY[0x277D84F90];
    sub_26BC99B78();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D6933C0](v27, a1);
        }

        else
        {
          v28 = *(a1 + 8 * v27 + 32);
        }

        ++v27;
        v29 = objc_allocWithZone(type metadata accessor for StrokeAnimatingLayer());

        v30 = sub_26BC902A0();
        v31 = [*(v2 + v4) layer];
        [v31 addSublayer_];

        sub_26BC99B58();
        v32 = *(v35 + 16);
        sub_26BC99B88();
        sub_26BC99B98();
        sub_26BC99B68();
      }

      while (v7 != v27);
      v26 = v35;
      break;
    }
  }

  v33 = *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers);
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = v26;
}

void sub_26BC93AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers);
  if (v1)
  {
    v21 = 150;
    v22 = 0;
    v2 = sub_26BC97664(v1);
    if (v2)
    {
      v18 = v2 - 1;
      if (v2 >= 1)
      {
        queue = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue);

        v3 = 0;
        for (i = 0; ; ++i)
        {
          v5 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x26D6933C0](i, v1) : *(v1 + 8 * i + 32);
          v6 = v5;
          OUTLINED_FUNCTION_13_0();
          v7 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v8 = swift_allocObject();
          v8[2] = v7;
          v8[3] = &v22;
          v8[4] = &v21;
          v8[5] = v6;
          v8[6] = v1;

          v9 = v6;
          sub_26BC98124(v3);
          v10 = swift_allocObject();
          *(v10 + 16) = sub_26BC98114;
          *(v10 + 24) = v8;
          aBlock[4] = sub_26BC98144;
          aBlock[5] = v10;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_26BC95DC8;
          aBlock[3] = &block_descriptor_15;
          v11 = _Block_copy(aBlock);

          dispatch_sync(queue, v11);
          _Block_release(v11);
          LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

          if (v11)
          {
            break;
          }

          v12 = OBJC_IVAR____TtC15StrokeAnimation20StrokeAnimatingLayer_strokePathData;
          v13 = *&v9[OBJC_IVAR____TtC15StrokeAnimation20StrokeAnimatingLayer_strokePathData];

          v14 = sub_26BC8351C();

          v15 = v14 * 1000.0;
          if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_19;
          }

          if (v15 <= -9.22337204e18)
          {
            goto LABEL_20;
          }

          if (v15 >= 9.22337204e18)
          {
            goto LABEL_21;
          }

          if (__OFADD__(v22, v15))
          {
            goto LABEL_22;
          }

          v22 += v15;
          v16 = *&v9[v12];

          v17 = sub_26BC83588();

          if (__OFADD__(v21, v17))
          {
            goto LABEL_23;
          }

          v21 += v17;
          if (v18 == i)
          {

            return;
          }

          v3 = sub_26BC98114;
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      __break(1u);
    }
  }
}

id StrokeView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_1();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

id StrokeView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_1();
  swift_getObjectType();
  v2 = sub_26BC99A18();
  v3 = OUTLINED_FUNCTION_1_4(v2);
  v29 = v4;
  v30 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v28 = v7;
  v8 = sub_26BC999F8();
  v9 = OUTLINED_FUNCTION_7_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_15_0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = 0;
  v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v17 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v18 = objc_allocWithZone(type metadata accessor for StrokeData());
  *(v1 + v17) = OUTLINED_FUNCTION_8_0(&unk_287CA76E0);
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = 0;
  v19 = (v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue;
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  OUTLINED_FUNCTION_2_2();
  sub_26BC98218(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC9816C(&qword_280444820, &qword_2804443F0);
  sub_26BC99B18();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  *(v1 + v20) = sub_26BC99A48();
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers) = MEMORY[0x277D84F90];
  v23 = OUTLINED_FUNCTION_3_1();
  v26 = objc_msgSendSuper2(v24, v25, v23);
  sub_26BC920A4();
  sub_26BC9426C();

  return v26;
}

void sub_26BC9426C()
{
  v3[3] = swift_getObjectType();
  v3[0] = v0;
  objc_allocWithZone(MEMORY[0x277D75B80]);
  v1 = v0;
  v2 = sub_26BC974B0(v3, sel__didTapView_);
  [v1 addGestureRecognizer_];
}

id StrokeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StrokeView.init(coder:)()
{
  v1 = v0;
  v2 = sub_26BC99A18();
  v3 = OUTLINED_FUNCTION_1_4(v2);
  v24 = v4;
  v25 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v23 = v7;
  v8 = sub_26BC999F8();
  v9 = OUTLINED_FUNCTION_7_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_15_0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = 0;
  v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v17 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v18 = objc_allocWithZone(type metadata accessor for StrokeData());
  *(v1 + v17) = OUTLINED_FUNCTION_8_0(&unk_287CA7710);
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = 0;
  v19 = (v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue;
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  OUTLINED_FUNCTION_2_2();
  sub_26BC98218(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC9816C(&qword_280444820, &qword_2804443F0);
  sub_26BC99B18();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  *(v1 + v20) = sub_26BC99A48();
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers) = MEMORY[0x277D84F90];
  sub_26BC99BA8();
  __break(1u);
}

void sub_26BC9473C(char a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  v6 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];
  v7 = sub_26BC90204();
  sub_26BC90204();
  v9 = v8 + 40.0;
  if ((a1 & 1) == 0)
  {
    v9 = v8;
  }

  [v6 setFrame_];

  [*&v2[v5] bounds];
  v14 = [objc_opt_self() bezierPathWithRoundedRect:v10 cornerRadius:{v11, v12, v13, 5.0}];
  v15 = [v14 CGPath];

  MutableCopy = CGPathCreateMutableCopy(v15);
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [*&v2[v5] bounds];
  MinX = CGRectGetMinX(v32);
  [*&v2[v5] bounds];
  [v16 moveToPoint_];
  [*&v2[v5] bounds];
  MaxX = CGRectGetMaxX(v34);
  [*&v2[v5] bounds];
  [v16 addLineToPoint_];
  if (MutableCopy)
  {
    v19 = MutableCopy;
    v20 = [v16 CGPath];
    sub_26BC999B8();

LABEL_6:
    v21 = MutableCopy;
    goto LABEL_7;
  }

  v21 = 0;
LABEL_7:
  [v4 setPath_];
  v22 = [objc_opt_self() tertiaryLabelColor];
  v23 = [v22 CGColor];

  [v4 setStrokeColor_];
  v24 = [v2 layer];
  v25 = [v24 backgroundColor];

  [v4 setFillColor_];
  v26 = [*&v2[v5] layer];
  [v26 addSublayer_];

  v27 = *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer];
  *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer] = v4;
  v28 = v4;

  v29 = 40.0;
  if ((a1 & 1) == 0)
  {
    v29 = 0.0;
  }

  sub_26BC94EE0(v29);
  [v2 addSubview_];
}

void sub_26BC94AD4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl + 8];
  if (!v2)
  {
    v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
    v15 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];
    v16 = sub_26BC90204();
    sub_26BC90204();
    [v15 setFrame_];

    [*&v1[v14] bounds];
    v22 = [objc_opt_self() bezierPathWithRoundedRect:v18 cornerRadius:{v19, v20, v21, 5.0}];
    v23 = [v22 CGPath];

    MutableCopy = CGPathCreateMutableCopy(v23);
    v24 = sub_26BC97ECC([*&v1[v14] layer]);
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v24;
    v26 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer];
    if (v26)
    {
      [v26 setPath_];
    }

    v27 = sub_26BC97664(v25);
    if (!v27)
    {
LABEL_21:

LABEL_24:
      sub_26BC94EE0(0.0);
      goto LABEL_25;
    }

    v28 = v27;
    v29 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26D6933C0](v29, v25);
      }

      else
      {
        if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v30 = *(v25 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = sub_26BC97F44(v30);
      if (v34)
      {
        if (v33 == 0x645F656B6F727473 && v34 == 0xEA0000000000746FLL)
        {

LABEL_23:

          [v31 removeFromSuperlayer];

          goto LABEL_24;
        }

        v36 = sub_26BC99BD8();

        if (v36)
        {
          goto LABEL_23;
        }
      }

      ++v29;
      if (v32 == v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl];
  swift_getObjectType();
  v4 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];

  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  v6 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView];
  sub_26BC983CC(0, &qword_280444760, 0x277D755B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_26BC951F4(26466, 0xE200000000000000, v9, 0);
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = v10;
  sub_26BC90BF0(v3, v2, v10);

  [*&v1[v5] setContentMode_];
  [v1 insertSubview:*&v1[v5] belowSubview:*&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView]];
  MutableCopy = *&v1[v5];
  v12 = sub_26BC90204() + 60.0;
  sub_26BC90204();
  [(CGPath *)MutableCopy setFrame:0.0, 10.0, v12, v13 + 60.0];
LABEL_25:
}

void sub_26BC94EE0(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  Mutable = CGPathCreateMutable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804449D0, &qword_26BC9B4C8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26BC9A870;
  v7 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  [*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView) bounds];
  MinX = CGRectGetMinX(v22);
  [*(v1 + v7) bounds];
  MidY = CGRectGetMidY(v23);
  *(v6 + 32) = MinX;
  *(v6 + 40) = a1 * 0.5 + MidY;
  [*(v1 + v7) bounds];
  MaxX = CGRectGetMaxX(v24);
  [*(v1 + v7) bounds];
  v11 = CGRectGetMidY(v25);
  *(v6 + 48) = MaxX;
  *(v6 + 56) = a1 * 0.5 + v11;
  sub_26BC999E8();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BC9A870;
  [*(v1 + v7) bounds];
  MidX = CGRectGetMidX(v26);
  [*(v1 + v7) bounds];
  MinY = CGRectGetMinY(v27);
  *(v12 + 32) = MidX;
  *(v12 + 40) = MinY + a1;
  [*(v1 + v7) bounds];
  v15 = CGRectGetMidX(v28);
  [*(v1 + v7) bounds];
  MaxY = CGRectGetMaxY(v29);
  *(v12 + 48) = v15;
  *(v12 + 56) = MaxY;
  sub_26BC999E8();

  [v4 setPath_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26BC9B470;
  sub_26BC983CC(0, &unk_280444850, 0x277CCABB0);
  *(v17 + 32) = sub_26BC99AD8();
  *(v17 + 40) = sub_26BC99AD8();
  sub_26BC97E40(v17, v4, &selRef_setLineDashPattern_);
  v18 = [objc_opt_self() tertiaryLabelColor];
  v19 = [v18 CGColor];

  [v4 setStrokeColor_];
  sub_26BC90B24(0x645F656B6F727473, 0xEA0000000000746FLL, v4);
  v20 = [*(v2 + v7) layer];
  [v20 addSublayer_];
}

id sub_26BC951F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_26BC99878();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_26BC95278(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26BC99548();
  v6 = [v4 initWithData_];

  sub_26BC91680(a1, a2);
  return v6;
}

void sub_26BC952F0(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), void *a4, uint64_t a5)
{
  v66 = a5;
  v64 = a4;
  v72 = a2;
  v73 = a3;
  v6 = sub_26BC997F8();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_26BC99818();
  v65 = *(v68 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26BC997E8();
  v61 = *(v62 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x28223BE20](v62);
  v60 = (v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v57 = (v55 - v14);
  v59 = sub_26BC99838();
  v58 = *(v59 - 8);
  v15 = *(v58 + 64);
  v16 = MEMORY[0x28223BE20](v59);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = v55 - v19;
  v20 = sub_26BC99A58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v71 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v27 = Strong;
    v28 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers;
    swift_beginAccess();
    v29 = *&v27[v28];
    *&v27[v28] = v26;
  }

  sub_26BC983CC(0, &qword_2804449A8, 0x277D85CA0);
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  v30 = sub_26BC99A28();
  aBlock[0] = v26;
  sub_26BC98218(&qword_2804449B0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804449B8, &qword_26BC9B4C0);
  sub_26BC9816C(&unk_2804449C0, &qword_2804449B8);
  sub_26BC99B18();
  v31 = sub_26BC99A68();

  (*(v21 + 8))(v24, v20);
  ObjectType = swift_getObjectType();
  v33 = v18;
  sub_26BC99828();
  if (__OFADD__(*v72, *v73))
  {
    __break(1u);
  }

  else
  {
    v34 = v57;
    *v57 = *v72 + *v73;
    v35 = v61;
    v36 = v62;
    (*(v61 + 104))(v34, *MEMORY[0x277D85178], v62);
    v37 = v56;
    MEMORY[0x26D6930D0](v33, v34);
    v38 = *(v35 + 8);
    v38(v34, v36);
    v73 = *(v58 + 8);
    v39 = v33;
    v40 = v59;
    v73(v39, v59);
    sub_26BC95AA0(v34);
    v41 = ObjectType;
    v42 = v60;
    v43 = v41;
    v55[1] = v41;
    sub_26BC95B14(v60);
    MEMORY[0x26D693350](v37, v34, v42, v43);
    v38(v42, v36);
    v38(v34, v36);
    v73(v37, v40);
    v44 = swift_allocObject();
    v45 = v64;
    v44[2] = v64;
    v44[3] = v31;
    v46 = v71;
    v44[4] = v66;
    v44[5] = v46;
    aBlock[4] = sub_26BC9820C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BC91B2C;
    aBlock[3] = &block_descriptor_21;
    v47 = _Block_copy(aBlock);
    v48 = v45;
    swift_unknownObjectRetain();

    v49 = v63;
    sub_26BC99808();
    v50 = v67;
    sub_26BC95CF0();
    sub_26BC99A78();
    _Block_release(v47);
    (*(v69 + 8))(v50, v70);
    (*(v65 + 8))(v49, v68);

    sub_26BC99A98();
    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers;
      v54 = swift_beginAccess();
      MEMORY[0x26D6931A0](v54);
      sub_26BC9768C(*((*(v52 + v53) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_26BC99968();
      swift_endAccess();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_26BC95AA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_26BC997E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26BC95B14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_26BC997E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_26BC95B8C(void *a1, uint64_t a2, unint64_t a3)
{
  sub_26BC904B4();
  swift_getObjectType();
  sub_26BC99A88();
  v5 = sub_26BC95C5C(a3);
  if (v5)
  {
    v6 = v5;
    type metadata accessor for StrokeAnimatingLayer();
    v7 = a1;
    v8 = sub_26BC99AE8();

    if (v8)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating] = 0;
      }
    }
  }
}

char *sub_26BC95C5C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26BC9763C((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D6933C0](v3, a1);
  }

  result = sub_26BC99BB8();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_26BC95CF0()
{
  sub_26BC997F8();
  sub_26BC98218(&qword_280444830, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444768, &qword_26BC9B448);
  sub_26BC9816C(&qword_280444840, &qword_280444768);
  return sub_26BC99B18();
}

void sub_26BC95DF0(void *a1)
{
  [a1 locationInView_];
  v3 = v2;
  v5 = v4;
  [*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView) frame];
  v20.x = v3;
  v20.y = v5;
  if (CGRectContainsPoint(v21, v20) && (*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers);
    if (v6)
    {
      v7 = sub_26BC97664(*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers));
      v8 = v6 & 0xC000000000000001;

      v9 = 0;
      do
      {
        if (v7 == v9)
        {
          for (i = 0; v7 != i; ++i)
          {
            if (v8)
            {
              v15 = MEMORY[0x26D6933C0](i, v6);
            }

            else
            {
              if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v15 = *(v6 + 8 * i + 32);
            }

            v16 = v15;
            if (__OFADD__(i, 1))
            {
              goto LABEL_30;
            }

            [v15 removeAllAnimations];
          }

          goto LABEL_25;
        }

        if (v8)
        {
          v10 = MEMORY[0x26D6933C0](v9, v6);
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        if (__OFADD__(v9, 1))
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
          return;
        }

        v12 = sub_26BC99878();
        v13 = [v11 animationForKey_];

        ++v9;
      }

      while (!v13);

      v17 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos);
      if (!v17)
      {
        goto LABEL_32;
      }

      v18 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos);

      sub_26BC936D4(v17);
LABEL_25:

      StrokeView.startAnimationRepeating(_:)(0);
    }
  }
}

Swift::Void __swiftcall StrokeView.startAnimationRepeating(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = sub_26BC997F8();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v59 = v9;
  v10 = OUTLINED_FUNCTION_15_0();
  v11 = OUTLINED_FUNCTION_1_4(v10);
  v58 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v17 = v16 - v15;
  v18 = sub_26BC997E8();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v26 = (v25 - v24);
  v27 = sub_26BC99838();
  v28 = OUTLINED_FUNCTION_1_4(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v37 = &v52 - v36;
  if ((v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating] & 1) == 0)
  {
    v57 = v10;
    v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating] = 1;
    v38 = *(*&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData] + OBJC_IVAR___SAStrokeDataInternal_strokeNames);
    if (v38)
    {
      v53 = v35;
      v54 = v34;
      v55 = v6;
      v56 = v3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = Strong;
        v41 = [Strong respondsToSelector_];

        if (v41)
        {
          [v40 animationDidStart];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v42 = *(v38 + 16);

      v43 = 3090;
      if (v42 > 0x14)
      {
        v43 = 3400;
      }

      if (v42 >= 0xA)
      {
        v44 = v43;
      }

      else
      {
        v44 = 2450;
      }

      sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
      v52 = sub_26BC99A28();
      sub_26BC99828();
      *v26 = v44;
      (*(v21 + 104))(v26, *MEMORY[0x277D85178], v18);
      MEMORY[0x26D6930D0](v33, v26);
      (*(v21 + 8))(v26, v18);
      v45 = v54;
      v53 = *(v53 + 8);
      (v53)(v33, v54);
      OUTLINED_FUNCTION_13_0();
      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      aBlock[4] = sub_26BC9780C;
      aBlock[5] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BC91B2C;
      aBlock[3] = &block_descriptor_1;
      v47 = _Block_copy(aBlock);
      v48 = v2;

      sub_26BC99808();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26BC98218(&qword_280444830, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444768, &qword_26BC9B448);
      sub_26BC9816C(&qword_280444840, &qword_280444768);
      v49 = v59;
      v50 = v56;
      sub_26BC99B18();
      v51 = v52;
      MEMORY[0x26D693290](v37, v17, v49, v47);
      _Block_release(v47);

      (*(v55 + 8))(v49, v50);
      (*(v58 + 8))(v17, v57);
      (v53)(v37, v45);
    }

    else
    {

      sub_26BC93AE4();
    }
  }
}

Swift::Void __swiftcall StrokeView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];
  [v0 center];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();

  v2 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();

  v3 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel];
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
  }

  v5 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();

  sub_26BC9426C();
}

CGSize __swiftcall StrokeView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  sub_26BC90204();
  v4 = v3 + 40.0 + 10.0;
  v5 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel);
  if (v5)
  {
    v6 = v5;
    [v6 bounds];
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 0.0;
    v12.size.height = 0.0;
    v7 = CGRectEqualToRect(v11, v12);

    if (!v7)
    {
      v4 = v4 + 40.0;
    }
  }

  v8 = width;
  v9 = v4;
  result.height = v9;
  result.width = v8;
  return result;
}

Swift::Void __swiftcall StrokeView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v43.receiver = v1;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_traitCollectionDidChange_, isa);
  v4 = [v1 traitCollection];
  LODWORD(isa) = [v4 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (isa)
  {
    v5 = *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers];
    if (v5)
    {
      v6 = sub_26BC97664(*&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers]);
      if (v6)
      {
        v7 = v6;
        v42 = v2;
        if (v6 < 1)
        {
          goto LABEL_37;
        }

        sub_26BC983CC(0, &qword_280444848, 0x277CD9EC8);
        sub_26BC983CC(0, &unk_280444850, 0x277CCABB0);

        v8 = objc_opt_self();
        v9 = 0;
        v10 = *MEMORY[0x277CDA238];
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x26D6933C0](v9, v5);
          }

          else
          {
            v11 = *(v5 + 8 * v9 + 32);
          }

          v12 = v11;
          ++v9;
          v13 = sub_26BC97440(0x6F43656B6F727473, 0xEB00000000726F6CLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_26BC9A6C0;
          *(v14 + 32) = sub_26BC99AD8();
          sub_26BC97E40(v14, v13, &selRef_setKeyTimes_);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444860, &qword_26BC9B480);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_26BC9A880;
          v16 = [v8 labelColor];
          v17 = [v16 CGColor];

          type metadata accessor for CGColor(0);
          *(v15 + 56) = v18;
          *(v15 + 32) = v17;
          sub_26BC97D4C(v15, v13);
          v19 = v13;
          [v19 setFillMode_];
          [v19 setRemovedOnCompletion_];

          sub_26BC97DC8(v19, 0x656B6F7274535253, 0xED0000726F6C6F43, v12);
        }

        while (v7 != v9);

        v2 = v42;
      }

      v20 = *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer];
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = v20;
        v23 = [v21 tertiaryLabelColor];
        v24 = [v23 CGColor];

        [v22 setStrokeColor_];
      }

      v25 = sub_26BC97ECC([*&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView] layer]);
      if (v25)
      {
        v26 = v25;
        v27 = sub_26BC97664(v25);
        if (!v27)
        {
LABEL_32:

          return;
        }

        v28 = v27;
        v29 = 0;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x26D6933C0](v29, v26);
          }

          else
          {
            if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v30 = *(v26 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            return;
          }

          v33 = sub_26BC97F44(v30);
          if (v34)
          {
            if (v33 == 0x645F656B6F727473 && v34 == 0xEA0000000000746FLL)
            {
            }

            else
            {
              v36 = sub_26BC99BD8();

              if ((v36 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            objc_opt_self();
            v37 = swift_dynamicCastObjCClass();
            if (!v37)
            {

              return;
            }

            v38 = v37;
            v39 = objc_opt_self();
            v40 = v31;
            v41 = [v39 tertiaryLabelColor];
            v31 = [v41 CGColor];

            [v38 setStrokeColor_];
          }

LABEL_31:

          ++v29;
          if (v32 == v28)
          {
            goto LABEL_32;
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall StrokeView.updateStrokeAnimation(with:)(Swift::String with)
{
  sub_26BC921D8();
  if (*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos))
  {
    v2 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos);

    sub_26BC936D4(v3);

    sub_26BC93AE4();
  }
}

id StrokeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StrokeView.update(with:)(SAStrokeData with)
{
  v2 = [(objc_class *)with.super.isa underlyingObject];
  v3 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v4 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData];
  *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData] = v2;

  v5 = (*&v1[v3] + OBJC_IVAR___SAStrokeDataInternal_strokeAnimationRepresention);
  v7 = *v5;
  v6 = v5[1];
  v8 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    sub_26BC921D8();
    sub_26BC93554();
    if (*&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos])
    {
      v10 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos];

      sub_26BC936D4(v11);
    }

    [v1 setNeedsLayout];

    StrokeView.startAnimationRepeating(_:)(0);
  }

  else
  {
    if (qword_2804443B0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v12 = sub_26BC997C8();
    __swift_project_value_buffer(v12, qword_280444AF0);
    oslog = sub_26BC997B8();
    v13 = sub_26BC999A8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26BC81000, oslog, v13, "strokeAnimationRepresention is empty,so can't render animation!", v14, 2u);
      OUTLINED_FUNCTION_14_0();
    }
  }
}

uint64_t StrokeView.interactionDelegate.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*StrokeView.interactionDelegate.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationDelegate;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_26BC97250;
}

uint64_t sub_26BC97250(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall StrokeView.endAnimation()()
{
  v1 = v0;
  if (qword_2804443B0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = sub_26BC997C8();
  __swift_project_value_buffer(v2, qword_280444AF0);
  v3 = sub_26BC997B8();
  v4 = sub_26BC99988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BC81000, v3, v4, "stop stroke animation and tell the delegate to cancel tts readout.", v5, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v7 animationDidEnd];
    }

    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
}

id sub_26BC97440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_26BC99878();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

id sub_26BC974B0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_26BC99BC8();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_26BC975F4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26BC97604(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = OUTLINED_FUNCTION_12_0(a1, a2);
  return v5(v4);
}

unint64_t sub_26BC9763C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BC97664(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26BC99BB8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26BC9768C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_26BC99958();
  }

  return result;
}

_BYTE **sub_26BC976B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26BC976C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BC97848(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26BC98038(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t sub_26BC977D8()
{
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BC97848(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BC97948(a5, a6);
    *a1 = v9;
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
    result = sub_26BC99B48();
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

uint64_t sub_26BC97948(uint64_t a1, unint64_t a2)
{
  v4 = sub_26BC97994(a1, a2);
  sub_26BC97AAC(&unk_287CA7688);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26BC97994(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26BC998E8())
  {
    result = sub_26BC97B90(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26BC99B28();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26BC99B48();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26BC97AAC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26BC97C00(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BC97B90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444998, &qword_26BC9B4B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26BC97C00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444998, &qword_26BC9B4B8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_26BC97CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26BC99878();
  [a3 setText_];
}

void sub_26BC97D4C(uint64_t a1, void *a2)
{
  v3 = sub_26BC99928();

  [a2 setValues_];
}

void sub_26BC97DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_12_0(a1, a2);
  v6 = sub_26BC99878();

  [a4 addAnimation:a1 forKey:v6];
}

void sub_26BC97E40(uint64_t a1, void *a2, SEL *a3)
{
  sub_26BC983CC(0, &unk_280444850, 0x277CCABB0);
  v5 = sub_26BC99928();

  [a2 *a3];
}

uint64_t sub_26BC97ECC(void *a1)
{
  v2 = [a1 sublayers];

  if (!v2)
  {
    return 0;
  }

  sub_26BC983CC(0, &qword_280444990, 0x277CD9ED0);
  v3 = sub_26BC99938();

  return v3;
}

uint64_t sub_26BC97F44(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BC99888();

  return v3;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26BC98038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26BC98098()
{
  MEMORY[0x26D693B80](v0 + 16);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26BC980CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BC98124(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26BC98144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26BC9816C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_12_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BC981BC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BC98218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BC98260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26BC982C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_7_0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_26BC98314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BC9836C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26BC983CC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

id OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return StrokeData.init(characters:strokeAnimationRepresention:strokeNames:pronunciations:)(a1, 0, 0xE000000000000000, 0, 0);
}

id OUTLINED_FUNCTION_9_0()
{

  return [v0 (v1 + 1925)];
}

id OUTLINED_FUNCTION_10_0()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_11_0()
{

  return [v0 (v1 + 1925)];
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D693B30);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_26BC99818();
}

double sub_26BC98580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = sub_26BC998B8();
    if ((v3 - 1) >= 5)
    {
      return 0.9;
    }

    else
    {
      return dbl_26BC9B538[v3 - 1];
    }
  }

  else
  {
    result = a3 * 0.06;
    if (result <= 0.55)
    {
      result = 0.55;
    }

    if (result > 1.1)
    {
      return 1.1;
    }
  }

  return result;
}

id sub_26BC985F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_26BC993E4(0, &qword_280444848, 0x277CD9EC8);
  v9 = OUTLINED_FUNCTION_2_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444860, &qword_26BC9B480);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D83B88];
  *(v10 + 16) = xmmword_26BC9A870;
  *(v10 + 32) = 0;
  *(v10 + 88) = v11;
  *(v10 + 56) = v11;
  *(v10 + 64) = 1;
  sub_26BC97D4C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BC9B470;
  sub_26BC993E4(0, &unk_280444850, 0x277CCABB0);
  *(v12 + 32) = sub_26BC99AD8();
  *(v12 + 40) = sub_26BC99AD8();
  sub_26BC97DBC(v12, v9);
  v13 = v9;
  [v13 setDuration_];
  [v13 setFillMode_];
  [v13 setRemovedOnCompletion_];

  v14 = sub_26BC988A4(a3, a4, a5);
  sub_26BC992E4(v14, v13);
  [v13 setCalculationMode_];
  return v13;
}

id sub_26BC9879C(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_26BC993E4(0, &qword_280444848, 0x277CD9EC8);
  v11 = OUTLINED_FUNCTION_2_3();
  v12 = sub_26BC98D20(a3);
  sub_26BC97D4C(v12, v11);
  sub_26BC99368(a3, v11);
  v13 = v11;
  [v13 setDuration_];
  [v13 setFillMode_];
  [v13 setRemovedOnCompletion_];

  v14 = sub_26BC988A4(a4, a5, a6);
  sub_26BC992E4(v14, v13);
  [v13 setCalculationMode_];
  return v13;
}

uint64_t sub_26BC988A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = *(a1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9A6C0;
      if (v4 == 4)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = *(a1 + 56);
        v10 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
        *&v11 = v6;
        *&v12 = v7;
        *&v13 = v8;
        *&v14 = v9;
        v15 = [v10 initWithControlPoints__:v11 :{v12, v13, v14}];
LABEL_27:
        *(v5 + 32) = v15;
        return v5;
      }

      v21 = [objc_opt_self() functionWithName_];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9A6C0;
      v21 = [objc_opt_self() functionWithName_];
    }

LABEL_26:
    v15 = v21;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
  switch(a2)
  {
    case 2:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B470;
      if (qword_2804443D8 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v17 = qword_280444B30;
      *(v5 + 32) = qword_280444B30;
      v18 = qword_2804443D0;
      v19 = v17;
      if (v18 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      v20 = qword_280444B28;
      *(v5 + 40) = qword_280444B28;
      break;
    case 3:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B510;
      if (qword_2804443D8 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    case 4:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B510;
      if (qword_2804443D8 == -1)
      {
        goto LABEL_21;
      }

LABEL_29:
      OUTLINED_FUNCTION_0_6();
LABEL_21:
      v26 = qword_280444B30;
      *(v5 + 32) = qword_280444B30;
      v27 = *MEMORY[0x277CDA7C8];
      v28 = objc_opt_self();
      v29 = v26;
      *(v5 + 40) = [v28 functionWithName_];
      if (qword_2804443D0 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      v20 = qword_280444B28;
      *(v5 + 48) = qword_280444B28;
      break;
    case 5:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B500;
      if (qword_2804443D8 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v22 = qword_280444B30;
      *(v5 + 32) = qword_280444B30;
      v23 = *MEMORY[0x277CDA7C8];
      v24 = objc_opt_self();
      v25 = v22;
      *(v5 + 40) = [v24 functionWithName_];
      *(v5 + 48) = v25;
      if (qword_2804443D0 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      v20 = qword_280444B28;
      *(v5 + 56) = qword_280444B28;
      break;
    default:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9A6C0;
      v21 = [objc_opt_self() functionWithName_];
      goto LABEL_26;
  }

  v30 = v20;
  return v5;
}

char *sub_26BC98D20(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26BC99BB8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_26BC991B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6933C0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_26BC993E4(0, &unk_280444850, 0x277CCABB0);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26BC991B8((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_26BC99424(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC98EB0(char a1)
{
  result = 68;
  switch(a1)
  {
    case 1:
      result = 72;
      break;
    case 2:
      result = 83;
      break;
    case 3:
      result = 84;
      break;
    case 4:
      result = 80;
      break;
    case 5:
      result = 78;
      break;
    case 6:
      result = 23112;
      break;
    case 7:
      result = 18248;
      break;
    case 8:
      result = 20552;
      break;
    case 9:
      result = 4676168;
      break;
    case 10:
      result = 5921352;
      break;
    case 11:
      result = 5724744;
      break;
    case 12:
      result = 5528136;
      break;
    case 13:
      result = 4675656;
      break;
    case 14:
      result = 1196907080;
      break;
    case 15:
      result = 1197103688;
      break;
    case 16:
      result = 1348098632;
      break;
    case 17:
      result = 1515870792;
      break;
    case 18:
      result = 1196904520;
      break;
    case 19:
      result = 17488;
      break;
    case 20:
      result = 23120;
      break;
    case 21:
      result = 18256;
      break;
    case 22:
      result = 18259;
      break;
    case 23:
      result = 20563;
      break;
    case 24:
      result = 21587;
      break;
    case 25:
      result = 22355;
      break;
    case 26:
      result = 5921363;
      break;
    case 27:
      result = 4675411;
      break;
    case 28:
      result = 5266003;
      break;
    case 29:
      result = 1197103699;
      break;
    case 30:
      result = 18263;
      break;
    case 31:
      result = 18264;
      break;
    case 32:
      result = 4681559;
      break;
    default:
      return result;
  }

  return result;
}

id sub_26BC99118()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1055957975;
  LODWORD(v2) = 1061075026;
  LODWORD(v3) = 1060571709;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_280444B28 = result;
  return result;
}

id sub_26BC99168()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1053273620;
  LODWORD(v2) = 1058222899;
  LODWORD(v3) = 1058055127;
  LODWORD(v4) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{v2, v3, v4}];
  qword_280444B30 = result;
  return result;
}

char *sub_26BC991B8(char *a1, int64_t a2, char a3)
{
  result = sub_26BC991D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BC991D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444860, &qword_26BC9B480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26BC992E4(uint64_t a1, void *a2)
{
  sub_26BC993E4(0, &qword_280444A00, 0x277CD9EF8);
  v3 = sub_26BC99928();

  [a2 setTimingFunctions_];
}

void sub_26BC99368(uint64_t a1, void *a2)
{
  sub_26BC993E4(0, &unk_280444850, 0x277CCABB0);
  v3 = sub_26BC99928();
  [a2 setKeyTimes_];
}

uint64_t sub_26BC993E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_OWORD *sub_26BC99424(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_3()
{

  return sub_26BC97440(0x6E45656B6F727473, 0xE900000000000064);
}