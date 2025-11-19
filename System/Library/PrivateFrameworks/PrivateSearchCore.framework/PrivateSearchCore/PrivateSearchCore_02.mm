uint64_t sub_25F73F7FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s17PrivateSearchCore14TestDataBundleV09SearchingE0V5TokenV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.SearchingData.Token(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_25F743904();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  sub_25F7431C4();
  sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8]);
  return sub_25F7433F4() & 1;
}

uint64_t _s17PrivateSearchCore14TestDataBundleV08IndexingE0V8DocumentV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.IndexingData.Document(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_25F743904();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_25F743904();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_25F743904() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_25F7431C4();
    sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8]);
    return sub_25F7433F4() & 1;
  }

  return 0;
}

uint64_t sub_25F740094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F7431C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25F740200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F7431C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_25F740364()
{
  sub_25F7431C4();
  if (v0 <= 0x3F)
  {
    sub_25F740460(319, &qword_27FDACE20, type metadata accessor for TestDataBundle.IndexingData, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25F740460(319, &qword_27FDACE28, type metadata accessor for TestDataBundle.SearchingData, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F740460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25F740544()
{
  sub_25F7431C4();
  if (v0 <= 0x3F)
  {
    sub_25F740934(319, &qword_27FDACAF8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F740628(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_25F740460(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_25F7431C4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F7431C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F7431C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25F740878()
{
  sub_25F7431C4();
  if (v0 <= 0x3F)
  {
    sub_25F740934(319, &qword_27FDACAF8);
    if (v1 <= 0x3F)
    {
      sub_25F740934(319, &qword_27FDACE80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F740934(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25F7437A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_25F7409AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_27FDACEC0 = v0;
  return result;
}

uint64_t TimeDelta.init(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = __OFADD__(result, v6);
  v8 = result + v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t TimeDelta.prettyDescription.getter(uint64_t a1)
{
  if ((a1 + 59999) < 0x1D4BF)
  {
    goto LABEL_6;
  }

  if (qword_27FDAC9B8 != -1)
  {
    swift_once();
  }

  v2 = [qword_27FDACEC0 stringFromTimeInterval_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_25F743414();

    return v4;
  }

  else
  {
LABEL_6:
    sub_25F7436F4();
    MEMORY[0x25F8E6560](115, 0xE100000000000000);
    return 0;
  }
}

uint64_t TimeDelta.debugDescription.getter(uint64_t a1)
{
  v1 = TimeDelta.prettyDescription.getter(a1);
  MEMORY[0x25F8E6560](v1);

  MEMORY[0x25F8E6560](41, 0xE100000000000000);
  return 0x28748688E2;
}

Swift::Void __swiftcall TimeDelta.sleep()()
{
  v1 = v0;
  v2 = 1000 * v0;
  if ((v1 * 1000) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v2))
  {
    usleep(v2);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_25F740D38()
{
  result = qword_27FDACEC8;
  if (!qword_27FDACEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEC8);
  }

  return result;
}

uint64_t sub_25F740DDC()
{
  v1 = TimeDelta.prettyDescription.getter(*v0);
  MEMORY[0x25F8E6560](v1);

  MEMORY[0x25F8E6560](41, 0xE100000000000000);
  return 0x28748688E2;
}

void static Timestamp.now()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_25F740F00()
{
  v0 = sub_25F743114();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F7430D4();
  sub_25F7430F4();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    qword_27FDACED0 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_25F741034()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_25F743404();
  [v0 setDateFormat_];

  qword_27FDACED8 = v0;
}

uint64_t static Timestamp.fromCFAbsoluteTime(_:)(double a1)
{
  v2 = a1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v1 = v2;
    if (qword_27FDAC9C0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  result = v1 + qword_27FDACED0;
  if (__OFADD__(v1, qword_27FDACED0))
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall Timestamp.toCFAbsoluteTime()()
{
  if (qword_27FDAC9C0 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  if (!__OFSUB__(v0, qword_27FDACED0))
  {
    return (v0 - qword_27FDACED0) / 1000.0;
  }

  __break(1u);
  return result;
}

NSNumber __swiftcall Timestamp.toNSNumber()()
{
  if (qword_27FDAC9C0 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  if (__OFSUB__(v0, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    v2.n128_f64[0] = (v0 - qword_27FDACED0) / 1000.0;
  }

  return MEMORY[0x28211EAC0](v2);
}

uint64_t Timestamp.toDate()(uint64_t result)
{
  if (qword_27FDAC9C0 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (__OFSUB__(result, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {

    return sub_25F7430D4();
  }

  return result;
}

uint64_t Timestamp.hourOfDay(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v30 = a1;
  v32 = sub_25F743144();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_25F743194();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v28 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v31 = sub_25F743164();
  v17 = *(v31 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v31);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25F743114();
  v21 = *(v29 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v29);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FDAC9C0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v33, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    sub_25F743124();
    sub_25F7417CC(v30, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_25F74183C(v9);
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v28, v16, v10);
      sub_25F743134();
      (*(v11 + 8))(v16, v10);
    }

    v26 = v32;
    (*(v2 + 104))(v5, *MEMORY[0x277CC9980], v32);
    v27 = sub_25F743154();
    (*(v2 + 8))(v5, v26);
    (*(v17 + 8))(v20, v31);
    (*(v21 + 8))(v25, v29);
    return v27;
  }

  return result;
}

uint64_t sub_25F7417CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F74183C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Timestamp.dayOfWeek(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v32 = a1;
  v34 = sub_25F743144();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_25F743194();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v33 = sub_25F743164();
  v17 = *(v33 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v33);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25F743114();
  v21 = *(v31 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v31);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FDAC9C0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v35, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    sub_25F743124();
    sub_25F7417CC(v32, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_25F74183C(v9);
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v30, v16, v10);
      sub_25F743134();
      (*(v11 + 8))(v16, v10);
    }

    v26 = v34;
    (*(v2 + 104))(v5, *MEMORY[0x277CC99B8], v34);
    v27 = sub_25F743154();
    (*(v2 + 8))(v5, v26);
    _s17PrivateSearchCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(v27);
    v29 = v28;
    (*(v17 + 8))(v20, v33);
    (*(v21 + 8))(v25, v31);
    return v29;
  }

  return result;
}

uint64_t Timestamp.subtract(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 - v17;
  if (__OFSUB__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t Timestamp.add(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 + v17;
  if (__OFADD__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t Timestamp.debugDescription.getter()
{
  sub_25F743814();

  v0 = sub_25F7438E4();
  MEMORY[0x25F8E6560](v0);

  MEMORY[0x25F8E6560](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

Swift::String __swiftcall Timestamp.toHumanReadable()()
{
  v1 = v0;
  v2 = sub_25F743114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  if (qword_27FDAC9C8 != -1)
  {
    swift_once();
  }

  v11 = qword_27FDACED8;
  sub_25F743174();
  v12 = sub_25F743194();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_25F743184();
    (*(v13 + 8))(v10, v12);
  }

  [v11 setTimeZone_];

  if (qword_27FDAC9C0 != -1)
  {
    v15 = swift_once();
  }

  if (__OFSUB__(v1, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    v17 = sub_25F7430E4();
    (*(v3 + 8))(v6, v2);
    v18 = [v11 stringFromDate_];

    v19 = sub_25F743414();
    v21 = v20;

    v15 = v19;
    v16 = v21;
  }

  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t Timestamp.toDateIntervalSince(days:weeks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F743114();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  v16 = 86400000 * a1;
  if ((a1 * 86400000) >> 64 != (86400000 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = 604800000 * a2;
  if ((a2 * 604800000) >> 64 != (604800000 * a2) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  a1 = a3 - v19;
  if (!__OFSUB__(a3, v19))
  {
    if (qword_27FDAC9C0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  result = swift_once();
LABEL_6:
  v20 = qword_27FDACED0;
  if (__OFSUB__(a1, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    result = (*(v7 + 16))(v12, v15, v6);
    if (!__OFSUB__(a3, v20))
    {
      sub_25F7430D4();
      sub_25F743044();
      return (*(v7 + 8))(v15, v6);
    }
  }

  __break(1u);
  return result;
}

void _s17PrivateSearchCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(unint64_t a1)
{
  if (a1 - 8 >= 0xFFFFFFFFFFFFFFF9)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v3 = sub_25F743404();
    [v2 setDateFormat_];

    v4 = [v2 weekdaySymbols];
    if (v4)
    {
      v5 = v4;
      v6 = sub_25F7435A4();

      if (*(v6 + 16) >= a1)
      {
        v7 = (v6 + 16 + 16 * a1);
        v8 = *v7;
        v9 = v7[1];

        sub_25F743484();

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_25F742540()
{
  result = qword_27FDACEE8;
  if (!qword_27FDACEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEE8);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.toMillis(_:)(Swift::Int64 a1)
{
  v3 = qword_25F745D50[v1];
  result = a1 * v3;
  if ((a1 * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.from(millis:secs:mins:hours:days:weeks:)(Swift::Int64 millis, Swift::Int64 secs, Swift::Int64 mins, Swift::Int64 hours, Swift::Int64 days, Swift::Int64 weeks)
{
  if ((secs * 1000) >> 64 != (1000 * secs) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = qword_25F745D50[v6];
  v8 = 1000 * secs / v7;
  v9 = __OFADD__(millis / v7, v8);
  v10 = millis / v7 + v8;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((mins * 60000) >> 64 != (60000 * mins) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 60000 * mins / v7;
  v9 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((hours * 3600000) >> 64 != (3600000 * hours) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 3600000 * hours / v7;
  v9 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((days * 86400000) >> 64 != (86400000 * days) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = 86400000 * days / v7;
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((weeks * 604800000) >> 64 != (604800000 * weeks) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = 604800000 * weeks / v7;
  millis = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_21:
    __break(1u);
  }

  return millis;
}

uint64_t static TimeUnit.convert(from:in:to:)(uint64_t result, char a2, char a3)
{
  v3 = qword_25F745D50[a2];
  if ((result * v3) >> 64 == (result * v3) >> 63)
  {
    return result * v3 / qword_25F745D50[a3];
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toSecs(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 1000;
  }

  __break(1u);
  return result;
}

uint64_t TimeUnit.hashValue.getter(unsigned __int8 a1)
{
  sub_25F743994();
  MEMORY[0x25F8E6A00](a1);
  return sub_25F7439B4();
}

uint64_t sub_25F7427D8()
{
  v1 = *v0;
  sub_25F743994();
  MEMORY[0x25F8E6A00](v1);
  return sub_25F7439B4();
}

uint64_t sub_25F74284C()
{
  v1 = *v0;
  sub_25F743994();
  MEMORY[0x25F8E6A00](v1);
  return sub_25F7439B4();
}

Swift::Int64 __swiftcall TimeUnit.toMinutes(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 60000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toHours(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 3600000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toDays(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 86400000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toWeeks(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 604800000;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F7429B4()
{
  result = qword_27FDACEF0;
  if (!qword_27FDACEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEF0);
  }

  return result;
}

unint64_t sub_25F742A0C()
{
  result = qword_27FDACEF8;
  if (!qword_27FDACEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDACF00, &qword_25F745CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimeUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Array<A>.parseUInt32BigEndian()()
{

  v1 = sub_25F71A024(v0);
  v3 = v2;

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_15;
    }

    v6 = *(v1 + 16);
    v7 = sub_25F743064();
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v9 = sub_25F743084();
    if (!__OFSUB__(v6, v9))
    {
      v10 = (v6 - v9 + v8);
      sub_25F743074();
      if (v10)
      {
LABEL_13:
        v5 = *v10;
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v4)
  {
    v5 = v1;
LABEL_15:
    sub_25F71A0D4(v1, v3);
    return bswap32(v5);
  }

  if (v1 > v1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_25F743074();
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = sub_25F743064();
  if (!v11)
  {
LABEL_21:
    result = sub_25F743074();
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = sub_25F743084();
  if (__OFSUB__(v1, v13))
  {
    goto LABEL_18;
  }

  v10 = (v1 - v13 + v12);
  result = sub_25F743074();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Array<A>.parseUInt64BigEndian()()
{

  v1 = sub_25F71A024(v0);
  v3 = v2;

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
LABEL_8:
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v10 = *(v1 + 16);
    v11 = sub_25F743064();
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = v11;
    v13 = sub_25F743084();
    if (!__OFSUB__(v10, v13))
    {
      v9 = (v10 - v13 + v12);
      sub_25F743074();
      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v5 = v1;
  if (!v4)
  {
LABEL_14:
    sub_25F71A0D4(v1, v3);
    return bswap64(v5);
  }

  if (v1 > v1 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = sub_25F743064();
  if (v6)
  {
    v7 = v6;
    v8 = sub_25F743084();
    if (__OFSUB__(v1, v8))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      sub_25F743074();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v9 = (v1 - v8 + v7);
    sub_25F743074();
    if (v9)
    {
LABEL_12:
      v5 = *v9;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_20:
  result = sub_25F743074();
  __break(1u);
  return result;
}

uint64_t Array<A>.parseUInt32LittleEndian()()
{

  v1 = sub_25F71A024(v0);
  v3 = v2;

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_15;
    }

    v6 = *(v1 + 16);
    v7 = sub_25F743064();
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v9 = sub_25F743084();
    if (!__OFSUB__(v6, v9))
    {
      v10 = (v6 - v9 + v8);
      sub_25F743074();
      if (v10)
      {
LABEL_13:
        v5 = *v10;
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v4)
  {
    v5 = v1;
LABEL_15:
    sub_25F71A0D4(v1, v3);
    return v5;
  }

  if (v1 > v1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_25F743074();
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = sub_25F743064();
  if (!v11)
  {
LABEL_21:
    result = sub_25F743074();
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = sub_25F743084();
  if (__OFSUB__(v1, v13))
  {
    goto LABEL_18;
  }

  v10 = (v1 - v13 + v12);
  result = sub_25F743074();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Array<A>.toData()()
{

  v1 = sub_25F71A024(v0);

  return v1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F742FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F742FE8(uint64_t result, unsigned int a2, unsigned int a3)
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