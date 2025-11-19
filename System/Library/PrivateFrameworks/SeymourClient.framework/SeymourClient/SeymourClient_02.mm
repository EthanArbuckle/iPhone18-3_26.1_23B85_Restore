uint64_t SourceLocation.file.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SourceLocation.function.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall SourceLocation.init(file:line:function:)(SeymourClient::SourceLocation *__return_ptr retstr, Swift::String file, Swift::Int line, Swift::String function)
{
  retstr->file = file;
  retstr->line = line;
  retstr->function = function;
}

uint64_t SourceLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v0[2]);
  v3 = v0[3];
  v4 = v0[4];

  return sub_1B4F67FE4();
}

uint64_t SourceLocation.hashValue.getter()
{
  sub_1B4F68E84();
  v1 = *v0;
  v2 = v0[1];
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v0[2]);
  v3 = v0[3];
  v4 = v0[4];
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF5728()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B4F68E84();
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v3);
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF57A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v3);

  return sub_1B4F67FE4();
}

uint64_t sub_1B4DF5810()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B4F68E84();
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v3);
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF588C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s13SeymourClient14SourceLocationV2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s13SeymourClient14SourceLocationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4F68D54() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_1B4F68D54();
}

unint64_t sub_1B4DF5974()
{
  result = qword_1EB8F41E0;
  if (!qword_1EB8F41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F41E0);
  }

  return result;
}

uint64_t sub_1B4DF59C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B4DF5A10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Void __swiftcall TransactionCoordinating.beginTransaction(label:file:line:function:)(Swift::String label, Swift::String file, Swift::Int line, Swift::String function)
{
  v5 = file;
  v6 = line;
  v7 = function;
  (*(v8 + 16))(label._countAndFlagsBits, label._object, &v5, v4, v8);
}

Swift::Void __swiftcall TransactionCoordinating.endTransaction(label:file:line:function:)(Swift::String label, Swift::String file, Swift::Int line, Swift::String function)
{
  v5 = file;
  v6 = line;
  v7 = function;
  (*(v8 + 24))(label._countAndFlagsBits, label._object, &v5, v4, v8);
}

uint64_t TransactionCoordinating.beginTransaction<A>(label:file:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B4F68144();
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  (*(a9 + 16))(v16, v17, v18, a7, a9);
}

uint64_t TransactionCoordinating.endTransaction<A>(label:file:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B4F68144();
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  (*(a9 + 24))(v16, v17, v18, a7, a9);
}

uint64_t dispatch thunk of TransactionCoordinating.beginTransaction(label:sourceLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v6 = *(a5 + 16);
  v7 = *(a3 + 32);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 16);
  v11 = v7;
  return v6(a1, a2, v9);
}

uint64_t dispatch thunk of TransactionCoordinating.endTransaction(label:sourceLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v6 = *(a5 + 24);
  v7 = *(a3 + 32);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 16);
  v11 = v7;
  return v6(a1, a2, v9);
}

Swift::Int_optional __swiftcall NullTransactionCoordinator.queryTransactionCount(label:)(Swift::String label)
{
  v2 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_1B4DF5D9C(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 6);
  v3 = v5;
  v4 = v6;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall NullTransactionCoordinator.beginTransaction(label:sourceLocation:)(Swift::String label, SeymourClient::SourceLocation *sourceLocation)
{
  v3 = *v2;
  os_unfair_lock_lock(*v2 + 6);
  sub_1B4DF5EB8(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

unint64_t sub_1B4DF5E08(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    result = sub_1B4DF4344(a2, a3);
    if (v8)
    {
      v7 = *(*(v6 + 56) + 8 * result);
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    result = sub_1B4E5E444(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    *v5 = v12;
  }

  return result;
}

Swift::Void __swiftcall NullTransactionCoordinator.endTransaction(label:sourceLocation:)(Swift::String label, SeymourClient::SourceLocation *sourceLocation)
{
  v3 = *v2;
  os_unfair_lock_lock(*v2 + 6);
  sub_1B4DF5FF4(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1B4DF5F28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v6 = result;
    result = sub_1B4DF4344(a2, a3);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * result);
      if (v8 < 2)
      {

        return sub_1B4E467B8(0, 1, a2, a3);
      }

      else
      {
        v9 = v8 - 1;
        v10 = *v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *v6;
        result = sub_1B4E5E444(v9, a2, a3, isUniquelyReferenced_nonNull_native);
        *v6 = v12;
      }
    }
  }

  return result;
}

uint64_t sub_1B4DF6010()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1B4DF632C(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_1B4DF6070()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1B4DF635C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1B4DF60C4()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1B4DF6344(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t static TransactionCoordinating<>.null.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41E8, &qword_1B4F6C980);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a1 = result;
  return result;
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

uint64_t getEnumTagSinglePayload for NullTransactionCoordinator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NullTransactionCoordinator(uint64_t result, int a2, int a3)
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

unint64_t sub_1B4DF62B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1B4DF4344(*(v3 + 16), *(v3 + 24));
    if (v6)
    {
      v7 = 0;
      v8 = *(*(v5 + 56) + 8 * result);
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

uint64_t HKActivitySummary.activityRings()@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_1B4F64EF4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1B4F65CA4();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v51 - v13;
  sub_1B4DF6AB4(23, 0, 0);
  v15 = v14;

  if (v15 && sub_1B4F65C74() != 2)
  {
    v29 = [v1 activeEnergyBurned];
    v30 = [v1 activeEnergyBurned];
    v52 = v7;
    v31 = v30;
    v32 = [v30 _unit];

    [v29 doubleValueForUnit_];
    v33 = [v1 activeEnergyBurnedGoal];
    v34 = [v1 activeEnergyBurnedGoal];
    v35 = [v34 _unit];

    [v33 doubleValueForUnit_];
    v7 = v52;
    sub_1B4F64EE4();
    goto LABEL_8;
  }

  v16 = [v1 activityMoveMode];
  if (v16 == 2)
  {
    v17 = [v1 appleMoveTime];
    v18 = [v1 appleMoveTime];
    v19 = [v18 _unit];

    [v17 doubleValueForUnit_];
    v20 = [v1 appleMoveTimeGoal];
    v21 = [v1 appleMoveTimeGoal];
    v22 = [v21 _unit];

    [v20 doubleValueForUnit_];
    sub_1B4F64EE4();
LABEL_8:
    v36 = v53;
    sub_1B4F65C84();
    v37 = [v1 appleExerciseTime];
    v38 = [v1 appleExerciseTime];
    v39 = [v38 _unit];

    [v37 doubleValueForUnit_];
    v40 = [v1 appleExerciseTimeGoal];
    v41 = [v1 appleExerciseTimeGoal];
    v42 = [v41 _unit];

    [v40 doubleValueForUnit_];
    v43 = [v1 appleStandHours];
    v44 = [v1 appleStandHours];
    v45 = [v44 _unit];

    [v43 doubleValueForUnit_];
    v46 = [v1 appleStandHoursGoal];
    v47 = [v1 appleStandHoursGoal];
    v48 = [v47 _unit];

    [v46 doubleValueForUnit_];
    [v1 _isStandalonePhoneSummary];
    v49 = v55;
    (*(v55 + 16))(v56, v36, v7);
    sub_1B4F64EE4();
    sub_1B4F64EE4();
    [v1 paused];
    sub_1B4F684B4();
    sub_1B4F65154();
    return (*(v49 + 8))(v36, v7);
  }

  if (v16 == 1)
  {
    v23 = [v1 activeEnergyBurned];
    v24 = [v1 activeEnergyBurned];
    v25 = [v24 _unit];

    [v23 doubleValueForUnit_];
    v26 = [v1 activeEnergyBurnedGoal];
    v27 = [v1 activeEnergyBurnedGoal];
    v28 = [v27 _unit];

    [v26 doubleValueForUnit_];
    sub_1B4F64EE4();
    goto LABEL_8;
  }

  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

id sub_1B4DF6AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    MobileGestalt_get_deviceClassNumber();

    if ((Platform.internalInstall.getter() & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v8 = sub_1B4F67F64();
    v9 = [v7 initWithSuiteName_];

    if (!v9)
    {
      goto LABEL_13;
    }

    UserDefaultsKeys.rawValue.getter();
    v10 = sub_1B4F67F64();

    v11 = [v9 stringForKey_];

    if (v11)
    {
      v12 = sub_1B4F67F74();
      v14 = v13;

      if (a3 && (v12 == a2 && v14 == a3 || (sub_1B4F68D54() & 1) != 0))
      {

LABEL_12:

LABEL_13:

        return a2;
      }
    }

    else
    {
      if (!a3)
      {
        goto LABEL_12;
      }

      v12 = 0;
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4F67C54();
    __swift_project_value_buffer(v15, qword_1EDB72490);
    swift_bridgeObjectRetain_n();
    v16 = sub_1B4F67C34();
    v17 = sub_1B4F685E4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      v20 = UserDefaultsKeys.rawValue.getter();
      v22 = sub_1B4DC4F88(v20, v21, &v26);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7690, qword_1B4F6C9F0);
      v23 = sub_1B4F67F94();
      v25 = sub_1B4DC4F88(v23, v24, &v26);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1B4DC2000, v16, v17, "Non default value set for %s: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v19, -1, -1);
      MEMORY[0x1B8C831D0](v18, -1, -1);
    }

    else
    {
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4DF6DE8(char a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_deviceClassNumber();

    if ((Platform.internalInstall.getter() & 1) == 0)
    {
      return a2;
    }

    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1B4F67F64();
    v8 = [v6 initWithSuiteName_];

    if (!v8)
    {
      return a2;
    }

    v22 = a1;
    UserDefaultsKeys.rawValue.getter();
    v9 = _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v8);

    if (v9 == 2)
    {
      if (a2 == 2)
      {

        return 2;
      }
    }

    else if (a2 != 2 && ((v9 ^ a2) & 1) == 0)
    {

      return a2;
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4F67C54();
    __swift_project_value_buffer(v10, qword_1EDB72490);
    v11 = sub_1B4F67C34();
    v12 = sub_1B4F685E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      v15 = UserDefaultsKeys.rawValue.getter();
      v17 = sub_1B4DC4F88(v15, v16, &v21);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F0, &qword_1B4F6C9E8);
      v18 = sub_1B4F67F94();
      v20 = sub_1B4DC4F88(v18, v19, &v21);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1B4DC2000, v11, v12, "Non default value set for %s: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v14, -1, -1);
      MEMORY[0x1B8C831D0](v13, -1, -1);
    }

    return v9;
  }

  __break(1u);
  return result;
}

id sub_1B4DF7094(char a1, int a2)
{
  LODWORD(v2) = a2;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter())
    {
      v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v7 = sub_1B4F67F64();
      v8 = [v6 initWithSuiteName_];

      if (v8)
      {
        v21 = a1;
        UserDefaultsKeys.rawValue.getter();
        v9 = _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v8);

        if (v9 == 2 || ((v9 ^ v2) & 1) == 0)
        {
        }

        else
        {
          if (qword_1EDB724A8 != -1)
          {
            swift_once();
          }

          v10 = sub_1B4F67C54();
          __swift_project_value_buffer(v10, qword_1EDB72490);
          v2 = sub_1B4F67C34();
          v11 = sub_1B4F685E4();
          if (os_log_type_enabled(v2, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v20 = v13;
            *v12 = 136315394;
            v14 = UserDefaultsKeys.rawValue.getter();
            v16 = sub_1B4DC4F88(v14, v15, &v20);

            *(v12 + 4) = v16;
            *(v12 + 12) = 2080;
            v17 = sub_1B4F67F94();
            v19 = sub_1B4DC4F88(v17, v18, &v20);

            *(v12 + 14) = v19;
            _os_log_impl(&dword_1B4DC2000, v2, v11, "Non default value set for %s: %s", v12, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B8C831D0](v13, -1, -1);
            MEMORY[0x1B8C831D0](v12, -1, -1);
          }

          LOBYTE(v2) = v9;
        }
      }
    }

    return (v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B4DF7310(char a1, double a2)
{
  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter())
    {
      v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v7 = sub_1B4F67F64();
      v8 = [v6 initWithSuiteName_];

      if (v8)
      {
        LOBYTE(v25) = a1;
        v9 = UserDefaultsKeys.rawValue.getter();
        v11 = COERCE_DOUBLE(sub_1B4DD7F90(v8, v9, v10));
        v13 = v12;

        if ((v13 & 1) != 0 || v11 == a2)
        {
        }

        else
        {
          if (qword_1EDB724A8 != -1)
          {
            swift_once();
          }

          v14 = sub_1B4F67C54();
          __swift_project_value_buffer(v14, qword_1EDB72490);
          v15 = sub_1B4F67C34();
          v16 = sub_1B4F685E4();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v25 = v18;
            *v17 = 136315394;
            v19 = UserDefaultsKeys.rawValue.getter();
            v21 = sub_1B4DC4F88(v19, v20, &v25);

            *(v17 + 4) = v21;
            *(v17 + 12) = 2080;
            v22 = sub_1B4F67F94();
            v24 = sub_1B4DC4F88(v22, v23, &v25);

            *(v17 + 14) = v24;
            _os_log_impl(&dword_1B4DC2000, v15, v16, "Non default value set for %s: %s", v17, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B8C831D0](v18, -1, -1);
            MEMORY[0x1B8C831D0](v17, -1, -1);
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id NSURLSessionConfiguration.forBundleAttribution(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1B4F67F64();
  }

  else
  {
    v2 = 0;
  }

  [v4 set:v2 sourceApplicationBundleIdentifier:?];

  return v4;
}

id NSURLSession.forBundleAttribution(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v9 = v2;
  v4 = [v2 configuration];
  v5 = a2;
  v6 = v4;
  if (v5)
  {
    v7 = sub_1B4F67F64();
  }

  else
  {
    v7 = 0;
  }

  [v6 set:v7 sourceApplicationBundleIdentifier:?];

  return v9;
}

uint64_t ScoreSummary.scale(by:)()
{
  v0 = sub_1B4F65104();
  sub_1B4F650E4();
  v2 = v1;
  sub_1B4F66074();
  *&v3 = v3;
  v4 = v2 * *&v3;
  sub_1B4F650A4();
  v6 = v5;
  sub_1B4F66074();
  *&v7 = v7;
  v8 = v6 * *&v7;
  sub_1B4F650C4();
  v10 = v9;
  sub_1B4F66074();
  *&v11 = v11;
  v12 = v10 * *&v11;
  sub_1B4F650D4();
  v14 = v13;
  sub_1B4F66074();
  *&v15 = v15;
  v16 = v14 * *&v15;
  sub_1B4F650B4();
  v18 = v17;
  sub_1B4F66074();
  v20.n128_f32[0] = v20.n128_f64[0];
  v19.n128_f32[0] = v18 * v20.n128_f32[0];
  v20.n128_f32[0] = v4;
  v21.n128_f32[0] = v8;
  v22.n128_f32[0] = v12;
  v23.n128_f32[0] = v16;

  return MEMORY[0x1EEE34E18](v0, v20, v21, v22, v23, v19);
}

uint64_t SubscriptionToken.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t SubscriptionToken.deinit()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_1B4DF7BEC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  sub_1B4DDC964(v0 + 16);

  return v0;
}

uint64_t sub_1B4DF7964(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for Subscription();
  (*(*(v5 - 8) + 16))(v12, a2, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1B4DC8B60(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v8 = v4[3];
  if (v7 >= v8 >> 1)
  {
    v11 = v4[2];
    v4 = sub_1B4DC8B60((v8 > 1), v7 + 1, 1, v4);
    v7 = v11;
    *a1 = v4;
  }

  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v13 = *(a2 + 32);
  result = sub_1B4DC92A4(v7, v12, a1, v5, &protocol witness table for Subscription<A>);
  *a1 = v4;
  return result;
}

uint64_t sub_1B4DF7A90(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v5 = *a1 + 32;
    do
    {
      sub_1B4DC40A0(v5, v9);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(a2 + 24);
        ObjectType = swift_getObjectType();
        (*(v6 + 56))(v9, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B4DF7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = a4;
  *(a2 + 32) = v6;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_1B4DF7C34(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B4DF7964(a1, v1[4]);
}

uint64_t ScoreMetric.applyingTimestampOffset(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v7[-v3];
  sub_1B4F64DD4();
  v5 = sub_1B4F65A94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7[28] = 1;
  v7[24] = 1;
  v7[20] = 1;
  v7[16] = 1;
  v7[12] = 1;
  sub_1B4F64DF4();
  return sub_1B4DF7DC8(v4);
}

uint64_t sub_1B4DF7DC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4DF7E30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v7[-v3];
  sub_1B4F64DD4();
  v5 = sub_1B4F65A94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7[28] = 1;
  v7[24] = 1;
  v7[20] = 1;
  v7[16] = 1;
  v7[12] = 1;
  sub_1B4F64DF4();
  return sub_1B4DF7DC8(v4);
}

uint64_t getEnumTagSinglePayload for MediaPlayerPlaybackStarting(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlayerPlaybackStarting(uint64_t result, int a2, int a3)
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

uint64_t EnergyMetric.applyingTimestampOffset(_:)()
{
  sub_1B4F64F94();

  return sub_1B4F64FC4();
}

uint64_t sub_1B4DF8190()
{
  sub_1B4F64F94();

  return sub_1B4F64FC4();
}

uint64_t SessionTerminated.termination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64E44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionTerminated.init(termination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64E44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B4DF8330(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x1E69E86C8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_1B4DF8418;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4DF8418()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *MetricClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *MetricClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t MetricClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MetricClient.recordMetricClickStream(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FC90;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 152;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65EB4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CBAD0], MEMORY[0x1E69CBAD8], ObjectType, v8);
}

uint64_t MetricClient.recordMetricPerformanceStream(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._object = 0x80000001B4F7FC60;
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x80000001B4F7FCB0;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 159;
  v10 = *(v8 + 16);
  v11 = sub_1B4F668A4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CC728], MEMORY[0x1E69CC730], ObjectType, v8);
}

uint64_t MetricClient.recordMetricPlayStream(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FCE0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 153;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65D84();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB790], MEMORY[0x1E69CB798], ObjectType, v8);
}

uint64_t MetricClient.flushMetrics()()
{
  v1 = v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0x74654D6873756C66;
  v3._object = 0xEE00292873636972;
  v4._object = 0x80000001B4F7FC60;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 154;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t MetricClient.queryUserIdentifier(for:)(char a1)
{
  v2 = v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FD00;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 155;
  v11 = a1;
  return (*(v8 + 32))(&v12, &v11, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t MetricClient.queryClientIdentifier(for:)(char a1)
{
  v2 = v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FD20;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 156;
  v11 = a1;
  return (*(v8 + 32))(&v12, &v11, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t MetricClient.updateMetricIdentifiers()()
{
  v1 = v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FD40;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 157;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t MetricClient.resetMetricIdentifiers()()
{
  v1 = v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FD60;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 158;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t MetricClient.queryLastBackgroundAccountEvent()()
{
  v1 = v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._object = 0x80000001B4F7FC60;
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F7FD80;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 162;
  v8 = *(v6 + 24);
  v9 = sub_1B4F67104();
  return v8(&v11, v9, MEMORY[0x1E69CCE10], MEMORY[0x1E69CCE18], ObjectType, v6);
}

uint64_t MetricClient.recordBackgroundAccountEvent()()
{
  v1 = v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FDB0;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 160;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t MetricClient.resetBackgroundAccountEvent()()
{
  v1 = v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FDD0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 161;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4DF92E8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FC90;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 152;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65EB4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CBAD0], MEMORY[0x1E69CBAD8], ObjectType, v8);
}

uint64_t sub_1B4DF940C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._object = 0x80000001B4F7FC60;
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x80000001B4F7FCB0;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 159;
  v10 = *(v8 + 16);
  v11 = sub_1B4F668A4();
  return v10(&v13, a1, v11, MEMORY[0x1E69CC728], MEMORY[0x1E69CC730], ObjectType, v8);
}

uint64_t sub_1B4DF9530(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FCE0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 153;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65D84();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB790], MEMORY[0x1E69CB798], ObjectType, v8);
}

uint64_t sub_1B4DF9654()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0x74654D6873756C66;
  v3._object = 0xEE00292873636972;
  v4._object = 0x80000001B4F7FC60;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 154;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4DF9744()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FD40;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 157;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4DF9830()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FD60;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 158;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4DF991C()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._object = 0x80000001B4F7FC60;
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F7FD80;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 162;
  v8 = *(v6 + 24);
  v9 = sub_1B4F67104();
  return v8(&v11, v9, MEMORY[0x1E69CCE10], MEMORY[0x1E69CCE18], ObjectType, v6);
}

uint64_t sub_1B4DF9A30()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FDB0;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 160;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4DF9B1C()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FDD0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 161;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

void *sub_1B4DF9C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a4;
  result[4] = a5;
  return result;
}

void *RemoteBrowsingClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E20AB8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4DF9DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 40);
    v17 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v19 = a4(0);
    (*(*(v19 - 8) + 16))(v14, a1, v19);
    (*(v17 + 8))(v14, v10, a5, ObjectType, v17);
    swift_unknownObjectRelease();
    return sub_1B4E21CBC(v14, a6);
  }

  return result;
}

uint64_t sub_1B4DF9F5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 40);
    v1 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, &type metadata for RemoteBrowsingGuestVerificationCompleted, &protocol witness table for RemoteBrowsingGuestVerificationCompleted, ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RemoteBrowsingClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RemoteBrowsingClient.insertConnectionRecord(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_1B4F64964();
  v114 = *(v120 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v120, v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v96 - v9;
  v10 = sub_1B4F67BD4();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 1);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v119 = *(v111 - 8);
  v18 = v119[8];
  MEMORY[0x1EEE9AC00](v111, v19);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v118 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v96 - v29;
  v102 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v96 - v33;
  v35 = sub_1B4F67274();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityTracer();
  v42 = __swift_project_value_buffer(v41, qword_1EB8F5550);
  v43 = *(v36 + 16);
  v108 = v40;
  v43(v40, a1, v35);
  v109 = v36;
  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 179;
  (*(v45 + 16))(v124, v40, v35, MEMORY[0x1E69CCF68], MEMORY[0x1E69CCF70], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertConnectionRecord";
  *(v47 + 24) = 44;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertConnectionRecord", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v115 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v34;
  v52 = v105;
  v103 = v35;
  v53 = *(v105 + 16);
  v54 = v104;
  v55 = v106;
  v53(v104, v42, v106);
  v56 = type metadata accessor for Signpost();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v60 = "RemoteBrowsingClient::insertConnectionRecord";
  *(v60 + 8) = 44;
  *(v60 + 16) = 2;
  v61 = v100;
  v62 = v101;
  (*(v100 + 16))(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v17, v101);
  v63 = v59;
  *(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v53((v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v52 + 8))(v54, v55);
  (*(v61 + 8))(v17, v62);
  *(v64 + 16) = 0;
  v99 = v63;
  *(v63 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v115;
  v123 = v115;
  v66 = sub_1B4F67F94();
  v106 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v63;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v105 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertConnectionRecord";
  *(v69 + 56) = 44;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v70 = v119;
  v71 = (v119 + 2);
  v72 = v119[2];
  v73 = v117;
  v74 = v111;
  v72(v117, v116, v111);
  v101 = v72;
  v104 = v71;
  v97 = *(v70 + 80);
  v75 = (v97 + 16) & ~v97;
  v76 = v102 + v75;
  v77 = swift_allocObject();
  v78 = v70[4];
  v100 = v75;
  v78(v77 + v75, v73, v74);
  v102 = v70 + 4;
  v98 = v78;
  v79 = v107;
  v72(v107, v121, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E20DC8;
  v82[1] = v77;
  sub_1B4F675F4();
  v83 = v114;
  v84 = v112;
  v85 = v120;
  (*(v114 + 16))(v112, v122, v120);
  v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
  v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::insertConnectionRecord";
  *(v88 + 40) = 44;
  *(v88 + 48) = 2;
  (*(v83 + 32))(v88 + v86, v84, v85);
  *(v88 + v87) = v99;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v91 = v117;
  v90 = v118;
  (v101)(v117, v118, v74);
  v92 = swift_allocObject();
  v98(v92 + v100, v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E20DDC;
  v93[1] = v88;

  sub_1B4F675F4();
  v94 = v119[1];
  v94(v90, v74);
  v94(v121, v74);
  (*(v83 + 8))(v122, v120);
  v94(v116, v74);
  (*(v109 + 8))(v108, v103);
}

uint64_t RemoteBrowsingClient.queryConnectionRecord()@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v118 - 8);
  v2 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v118, v3);
  v103 = v4;
  v104 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v117 = v92 - v7;
  v116 = sub_1B4F64964();
  v108 = *(v116 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v116, v9);
  v107 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = v92 - v13;
  v101 = sub_1B4F67BD4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1B4F67BA4();
  v17 = *(v97 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v97, v19);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4208, &qword_1B4F6CC28);
  v106 = *(v115 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v115, v23);
  v114 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v102 = v92 - v27;
  v98 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v92 - v31;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer();
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  v36 = *(v1 + 16);
  v35 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v121[0] = 193;
  v38 = *(v35 + 24);
  v113 = sub_1B4F67274();
  v112 = v32;
  v38(v121, v113, MEMORY[0x1E69CCF68], MEMORY[0x1E69CCF70], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v39 = swift_allocObject();
  *(v39 + 16) = "RemoteBrowsingClient::queryConnectionRecord";
  *(v39 + 24) = 43;
  *(v39 + 32) = 2;
  v40 = v39;
  v41 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v42 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::queryConnectionRecord", v41, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v43 = swift_allocObject();
  *(v43 + 44) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = 0;
  *(v40 + 40) = v43;
  v111 = v40;

  sub_1B4F67BC4();
  v44 = v21;
  sub_1B4F67B84();
  v45 = v100;
  v46 = *(v100 + 16);
  v47 = v99;
  v48 = v101;
  v46(v99, v34, v101);
  v49 = type metadata accessor for Signpost();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::queryConnectionRecord";
  *(v53 + 8) = 43;
  *(v53 + 16) = 2;
  v54 = v21;
  v55 = v97;
  (*(v17 + 16))(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v54, v97);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v46((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v45 + 8))(v47, v48);
  (*(v17 + 8))(v44, v55);
  *(v56 + 16) = 0;
  v93 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v57 = v111;
  v120 = v111;
  v58 = sub_1B4F67F94();
  v101 = v58;
  v60 = v59;
  sub_1B4F64944();
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  *(v61 + 24) = v52;
  *(v61 + 32) = v58;
  *(v61 + 40) = v60;
  v100 = v60;
  *(v61 + 48) = "RemoteBrowsingClient::queryConnectionRecord";
  *(v61 + 56) = 43;
  *(v61 + 64) = 2;

  v62 = v117;
  sub_1B4F675F4();
  v63 = v106;
  v64 = *(v106 + 16);
  v97 = v106 + 16;
  v99 = v64;
  v66 = v114;
  v65 = v115;
  (v64)(v114, v112, v115);
  v96 = *(v63 + 80);
  v94 = &v98[(v96 + 16) & ~v96];
  v67 = (v96 + 16) & ~v96;
  v95 = v67;
  v68 = swift_allocObject();
  v69 = *(v63 + 32);
  v92[1] = v63 + 32;
  v98 = v69;
  (v69)(v68 + v67, v66, v65);
  v70 = v110;
  v71 = v104;
  v72 = v118;
  (*(v110 + 16))(v104, v62, v118);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v103 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v70 + 32))(v75 + v73, v71, v72);
  v76 = (v75 + v74);
  *v76 = sub_1B4E20E24;
  v76[1] = v68;
  v77 = v102;
  sub_1B4F675F4();
  v79 = v107;
  v78 = v108;
  v80 = v116;
  (*(v108 + 16))(v107, v119, v116);
  v81 = (*(v78 + 80) + 49) & ~*(v78 + 80);
  v82 = (v105 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v100;
  *(v83 + 16) = v101;
  *(v83 + 24) = v84;
  *(v83 + 32) = "RemoteBrowsingClient::queryConnectionRecord";
  *(v83 + 40) = 43;
  *(v83 + 48) = 2;
  (*(v78 + 32))(v83 + v81, v79, v80);
  *(v83 + v82) = v93;
  *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v111;
  v86 = v114;
  v85 = v115;
  (v99)(v114, v77, v115);
  v87 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (v98)(v88 + v95, v86, v85);
  v89 = (v88 + v87);
  *v89 = sub_1B4E20E68;
  v89[1] = v83;

  sub_1B4F675F4();
  v90 = *(v63 + 8);
  v90(v77, v85);
  (*(v70 + 8))(v117, v118);
  (*(v78 + 8))(v119, v116);
  v90(v112, v85);
}

uint64_t RemoteBrowsingClient.requestEnvironment(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4210, &unk_1B4F6CC30);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F65F84();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 181;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F66DD4();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CCB00], MEMORY[0x1E69CCB08], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteBrowsingClient::requestEnvironment";
  *(v45 + 24) = 40;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestEnvironment", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteBrowsingClient::requestEnvironment";
  *(v58 + 8) = 40;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteBrowsingClient::requestEnvironment";
  *(v66 + 56) = 40;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4E20EB0;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::requestEnvironment";
  *(v88 + 40) = 40;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4E20EF4;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteBrowsingClient.requestEnvironmentWithConfirmation(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4210, &unk_1B4F6CC30);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F65F84();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 180;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F66DD4();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CCB00], MEMORY[0x1E69CCB08], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v45 + 24) = 56;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestEnvironmentWithConfirmation", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v58 + 8) = 56;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v66 + 56) = 56;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4E21D48;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v88 + 40) = 56;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4E21D20;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteBrowsingClient.cancelRemoteBrowsingEnvironmentRequest(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_1B4F64964();
  v114 = *(v120 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v120, v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v96 - v9;
  v10 = sub_1B4F67BD4();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 1);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v119 = *(v111 - 8);
  v18 = v119[8];
  MEMORY[0x1EEE9AC00](v111, v19);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v118 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v96 - v29;
  v102 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v96 - v33;
  v35 = sub_1B4F65F84();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityTracer();
  v42 = __swift_project_value_buffer(v41, qword_1EB8F5550);
  v43 = *(v36 + 16);
  v108 = v40;
  v43(v40, a1, v35);
  v109 = v36;
  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 198;
  (*(v45 + 16))(v124, v40, v35, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v47 + 24) = 60;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v115 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v34;
  v52 = v105;
  v103 = v35;
  v53 = *(v105 + 16);
  v54 = v104;
  v55 = v106;
  v53(v104, v42, v106);
  v56 = type metadata accessor for Signpost();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v60 = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v60 + 8) = 60;
  *(v60 + 16) = 2;
  v61 = v100;
  v62 = v101;
  (*(v100 + 16))(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v17, v101);
  v63 = v59;
  *(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v53((v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v52 + 8))(v54, v55);
  (*(v61 + 8))(v17, v62);
  *(v64 + 16) = 0;
  v99 = v63;
  *(v63 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v115;
  v123 = v115;
  v66 = sub_1B4F67F94();
  v106 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v63;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v105 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v69 + 56) = 60;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v70 = v119;
  v71 = (v119 + 2);
  v72 = v119[2];
  v73 = v117;
  v74 = v111;
  v72(v117, v116, v111);
  v101 = v72;
  v104 = v71;
  v97 = *(v70 + 80);
  v75 = (v97 + 16) & ~v97;
  v76 = v102 + v75;
  v77 = swift_allocObject();
  v78 = v70[4];
  v100 = v75;
  v78(v77 + v75, v73, v74);
  v102 = v70 + 4;
  v98 = v78;
  v79 = v107;
  v72(v107, v121, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  sub_1B4F675F4();
  v83 = v114;
  v84 = v112;
  v85 = v120;
  (*(v114 + 16))(v112, v122, v120);
  v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
  v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v88 + 40) = 60;
  *(v88 + 48) = 2;
  (*(v83 + 32))(v88 + v86, v84, v85);
  *(v88 + v87) = v99;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v91 = v117;
  v90 = v118;
  (v101)(v117, v118, v74);
  v92 = swift_allocObject();
  v98(v92 + v100, v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v88;

  sub_1B4F675F4();
  v94 = v119[1];
  v94(v90, v74);
  v94(v121, v74);
  (*(v83 + 8))(v122, v120);
  v94(v116, v74);
  (*(v109 + 8))(v108, v103);
}

uint64_t RemoteBrowsingClient.requestServiceSubscription(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F65F84();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 183;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F66354();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteBrowsingClient::requestServiceSubscription";
  *(v45 + 24) = 48;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestServiceSubscription", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteBrowsingClient::requestServiceSubscription";
  *(v58 + 8) = 48;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteBrowsingClient::requestServiceSubscription";
  *(v66 + 56) = 48;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4E20F3C;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::requestServiceSubscription";
  *(v88 + 40) = 48;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4E20F80;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteBrowsingClient.requestGuestAuthentication(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_1B4F64964();
  v114 = *(v120 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v120, v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v96 - v9;
  v10 = sub_1B4F67BD4();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v103 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 1);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v119 = *(v111 - 8);
  v18 = v119[8];
  MEMORY[0x1EEE9AC00](v111, v19);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v118 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v96 - v29;
  v102 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v96 - v33;
  v35 = sub_1B4F65F84();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityTracer();
  v42 = __swift_project_value_buffer(v41, qword_1EB8F5550);
  v43 = *(v36 + 16);
  v108 = v40;
  v43(v40, a1, v35);
  v109 = v36;
  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 186;
  (*(v45 + 16))(v124, v40, v35, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v47 + 24) = 48;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestGuestAuthentication", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v115 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v34;
  v53 = v105;
  v52 = v106;
  v104 = v35;
  v54 = *(v105 + 16);
  v55 = v103;
  v54(v103, v42, v106);
  v56 = type metadata accessor for Signpost();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v60 = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v60 + 8) = 48;
  *(v60 + 16) = 2;
  v61 = v100;
  v62 = v101;
  (*(v100 + 16))(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v17, v101);
  v63 = v59;
  *(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v53 + 8))(v55, v52);
  (*(v61 + 8))(v17, v62);
  *(v64 + 16) = 0;
  v99 = v63;
  *(v63 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v115;
  v123 = v115;
  v66 = sub_1B4F67F94();
  v106 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v63;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v105 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v69 + 56) = 48;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v70 = v119;
  v71 = (v119 + 2);
  v72 = v119[2];
  v73 = v117;
  v74 = v111;
  v72(v117, v116, v111);
  v101 = v72;
  v103 = v71;
  v97 = *(v70 + 80);
  v75 = (v97 + 16) & ~v97;
  v76 = v102 + v75;
  v77 = swift_allocObject();
  v78 = v70[4];
  v100 = v75;
  v78(v77 + v75, v73, v74);
  v102 = v70 + 4;
  v98 = v78;
  v79 = v107;
  v72(v107, v121, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  sub_1B4F675F4();
  v83 = v114;
  v84 = v112;
  v85 = v120;
  (*(v114 + 16))(v112, v122, v120);
  v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
  v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v88 + 40) = 48;
  *(v88 + 48) = 2;
  (*(v83 + 32))(v88 + v86, v84, v85);
  *(v88 + v87) = v99;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v91 = v117;
  v90 = v118;
  (v101)(v117, v118, v74);
  v92 = swift_allocObject();
  v98(v92 + v100, v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v88;

  sub_1B4F675F4();
  v94 = v119[1];
  v94(v90, v74);
  v94(v121, v74);
  (*(v83 + 8))(v122, v120);
  v94(v116, v74);
  (*(v109 + 8))(v108, v104);
}

uint64_t RemoteBrowsingClient.allowPendingConfirmationRequest()@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_1B4F64964();
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v103 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v91 - v8;
  v99 = sub_1B4F67BD4();
  v9 = *(v99 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v99, v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F67BA4();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = v97[8];
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v111 = *(v102 - 8);
  v19 = v111[8];
  MEMORY[0x1EEE9AC00](v102, v20);
  v100 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v109 = &v91 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v112 = &v91 - v30;
  v96 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v91 - v34;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer();
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v1 + 16);
  v39 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 184;
  (*(v39 + 8))(v115, ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v41 + 24) = 53;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::allowPendingConfirmationRequest", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v107 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v108 = v35;
  v46 = v9;
  v47 = *(v9 + 16);
  v48 = v37;
  v49 = v99;
  v47(v13, v48, v99);
  v50 = type metadata accessor for Signpost();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  v53 = swift_allocObject();
  v54 = v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v54 = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v54 + 8) = 53;
  *(v54 + 16) = 2;
  v56 = v97;
  v55 = v98;
  (v97[2])(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v18, v98);
  *(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v13, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v57 = swift_allocObject();
  *(v57 + 24) = 0;
  (*(v46 + 8))(v13, v49);
  (v56[1])(v18, v55);
  *(v57 + 16) = 0;
  *(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v57;
  v58 = v107;
  v114 = v107;
  v59 = sub_1B4F67F94();
  v99 = v59;
  v61 = v60;
  sub_1B4F64944();
  v62 = swift_allocObject();
  *(v62 + 16) = v58;
  *(v62 + 24) = v53;
  v95 = v53;
  *(v62 + 32) = v59;
  *(v62 + 40) = v61;
  v98 = v61;
  *(v62 + 48) = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v62 + 56) = 53;
  *(v62 + 64) = 2;

  sub_1B4F675F4();
  v63 = v111;
  v64 = v111 + 2;
  v65 = v111[2];
  v66 = v109;
  v67 = v102;
  v65(v109, v108, v102);
  v94 = v65;
  v97 = v64;
  v91 = *(v63 + 80);
  v68 = (v91 + 16) & ~v91;
  v69 = v96 + v68;
  v70 = swift_allocObject();
  v71 = v63[4];
  v93 = v68;
  v71(v70 + v68, v66, v67);
  v96 = v63 + 4;
  v92 = v71;
  v72 = v100;
  v65(v100, v112, v67);
  v73 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v71(v74 + v68, v72, v67);
  v75 = (v74 + v73);
  *v75 = sub_1B4E21D54;
  v75[1] = v70;
  sub_1B4F675F4();
  v77 = v105;
  v76 = v106;
  v78 = v103;
  (*(v105 + 16))(v103, v113, v106);
  v79 = (*(v77 + 80) + 49) & ~*(v77 + 80);
  v80 = (v101 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v98;
  *(v81 + 16) = v99;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v81 + 40) = 53;
  *(v81 + 48) = 2;
  v83 = v81 + v79;
  v84 = v76;
  (*(v77 + 32))(v83, v78, v76);
  *(v81 + v80) = v95;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v107;
  v85 = v109;
  v86 = v110;
  v94(v109, v110, v67);
  v87 = swift_allocObject();
  v92(v87 + v93, v85, v67);
  v88 = (v87 + v73);
  *v88 = sub_1B4E21D24;
  v88[1] = v81;

  sub_1B4F675F4();
  v89 = v111[1];
  v89(v86, v67);
  v89(v112, v67);
  (*(v77 + 8))(v113, v84);
  v89(v108, v67);
}

uint64_t RemoteBrowsingClient.denyPendingConfirmationRequest()@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_1B4F64964();
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v103 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v91 - v8;
  v99 = sub_1B4F67BD4();
  v9 = *(v99 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v99, v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F67BA4();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = v97[8];
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v111 = *(v102 - 8);
  v19 = v111[8];
  MEMORY[0x1EEE9AC00](v102, v20);
  v100 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v109 = &v91 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v112 = &v91 - v30;
  v96 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v91 - v34;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer();
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v1 + 16);
  v39 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 185;
  (*(v39 + 8))(v115, ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v41 + 24) = 52;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::denyPendingConfirmationRequest", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v107 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v108 = v35;
  v46 = v9;
  v47 = *(v9 + 16);
  v48 = v37;
  v49 = v99;
  v47(v13, v48, v99);
  v50 = type metadata accessor for Signpost();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  v53 = swift_allocObject();
  v54 = v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v54 = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v54 + 8) = 52;
  *(v54 + 16) = 2;
  v56 = v97;
  v55 = v98;
  (v97[2])(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v18, v98);
  *(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v13, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v57 = swift_allocObject();
  *(v57 + 24) = 0;
  (*(v46 + 8))(v13, v49);
  (v56[1])(v18, v55);
  *(v57 + 16) = 0;
  *(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v57;
  v58 = v107;
  v114 = v107;
  v59 = sub_1B4F67F94();
  v99 = v59;
  v61 = v60;
  sub_1B4F64944();
  v62 = swift_allocObject();
  *(v62 + 16) = v58;
  *(v62 + 24) = v53;
  v95 = v53;
  *(v62 + 32) = v59;
  *(v62 + 40) = v61;
  v98 = v61;
  *(v62 + 48) = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v62 + 56) = 52;
  *(v62 + 64) = 2;

  sub_1B4F675F4();
  v63 = v111;
  v64 = v111 + 2;
  v65 = v111[2];
  v66 = v109;
  v67 = v102;
  v65(v109, v108, v102);
  v94 = v65;
  v97 = v64;
  v91 = *(v63 + 80);
  v68 = (v91 + 16) & ~v91;
  v69 = v96 + v68;
  v70 = swift_allocObject();
  v71 = v63[4];
  v93 = v68;
  v71(v70 + v68, v66, v67);
  v96 = v63 + 4;
  v92 = v71;
  v72 = v100;
  v65(v100, v112, v67);
  v73 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v71(v74 + v68, v72, v67);
  v75 = (v74 + v73);
  *v75 = sub_1B4E21D54;
  v75[1] = v70;
  sub_1B4F675F4();
  v77 = v105;
  v76 = v106;
  v78 = v103;
  (*(v105 + 16))(v103, v113, v106);
  v79 = (*(v77 + 80) + 49) & ~*(v77 + 80);
  v80 = (v101 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v98;
  *(v81 + 16) = v99;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v81 + 40) = 52;
  *(v81 + 48) = 2;
  v83 = v81 + v79;
  v84 = v76;
  (*(v77 + 32))(v83, v78, v76);
  *(v81 + v80) = v95;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v107;
  v85 = v109;
  v86 = v110;
  v94(v109, v110, v67);
  v87 = swift_allocObject();
  v92(v87 + v93, v85, v67);
  v88 = (v87 + v73);
  *v88 = sub_1B4E21D24;
  v88[1] = v81;

  sub_1B4F675F4();
  v89 = v111[1];
  v89(v86, v67);
  v89(v112, v67);
  (*(v77 + 8))(v113, v84);
  v89(v108, v67);
}

uint64_t RemoteBrowsingClient.tryPassword(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v109 = a3;
  v7 = sub_1B4F64964();
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v118 = &v95 - v13;
  v14 = sub_1B4F67BD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4F67BA4();
  v103 = *(v20 - 8);
  v104 = v20;
  v21 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v116 = *(v107 - 8);
  v25 = v116[8];
  MEMORY[0x1EEE9AC00](v107, v26);
  v105 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v114 = &v95 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v115 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v117 = &v95 - v36;
  v102 = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v95 - v40;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for ActivityTracer();
  v43 = __swift_project_value_buffer(v42, qword_1EB8F5550);
  v44 = *(v3 + 16);
  v45 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v120[0] = 229;
  v119[0] = a1;
  v119[1] = a2;
  (*(v45 + 16))(v120, v119, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::tryPassword";
  *(v47 + 24) = 33;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::tryPassword", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v112 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v113 = v41;
  v52 = v15;
  v53 = *(v15 + 16);
  v53(v19, v43, v14);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteBrowsingClient::tryPassword";
  *(v58 + 8) = 33;
  *(v58 + 16) = 2;
  v59 = v103;
  v60 = v104;
  (*(v103 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v24, v104);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v53((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v19, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v52 + 8))(v19, v14);
  (*(v59 + 8))(v24, v60);
  *(v61 + 16) = 0;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v112;
  v119[0] = v112;
  v63 = sub_1B4F67F94();
  v104 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  v101 = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v103 = v65;
  *(v66 + 48) = "RemoteBrowsingClient::tryPassword";
  *(v66 + 56) = 33;
  *(v66 + 64) = 2;

  sub_1B4F675F4();
  v67 = v116;
  v68 = v116 + 2;
  v69 = v116[2];
  v70 = v114;
  v71 = v107;
  v69(v114, v113, v107);
  v99 = v69;
  v100 = v68;
  v96 = *(v67 + 80);
  v72 = (v96 + 16) & ~v96;
  v73 = v102 + v72;
  v74 = swift_allocObject();
  v75 = v67[4];
  v98 = v72;
  v75(v74 + v72, v70, v71);
  v102 = v67 + 4;
  v97 = v75;
  v76 = v105;
  v69(v105, v117, v71);
  v77 = (v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v75(v78 + v72, v76, v71);
  v79 = (v78 + v77);
  *v79 = sub_1B4E21D54;
  v79[1] = v74;
  sub_1B4F675F4();
  v81 = v110;
  v80 = v111;
  v82 = v108;
  (*(v110 + 16))(v108, v118, v111);
  v83 = (*(v81 + 80) + 49) & ~*(v81 + 80);
  v84 = (v106 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  v86 = v103;
  *(v85 + 16) = v104;
  *(v85 + 24) = v86;
  *(v85 + 32) = "RemoteBrowsingClient::tryPassword";
  *(v85 + 40) = 33;
  *(v85 + 48) = 2;
  v87 = v85 + v83;
  v88 = v80;
  (*(v81 + 32))(v87, v82, v80);
  *(v85 + v84) = v101;
  *(v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
  v89 = v114;
  v90 = v115;
  v99(v114, v115, v71);
  v91 = swift_allocObject();
  v97(v91 + v98, v89, v71);
  v92 = (v91 + v77);
  *v92 = sub_1B4E21D24;
  v92[1] = v85;

  sub_1B4F675F4();
  v93 = v116[1];
  v93(v90, v71);
  v93(v117, v71);
  (*(v81 + 8))(v118, v88);
  v93(v113, v71);
}

uint64_t RemoteBrowsingClient.cancelPendingGuestPairingVerification()@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_1B4F64964();
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v103 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v91 - v8;
  v99 = sub_1B4F67BD4();
  v9 = *(v99 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v99, v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F67BA4();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = v97[8];
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v111 = *(v102 - 8);
  v19 = v111[8];
  MEMORY[0x1EEE9AC00](v102, v20);
  v100 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v109 = &v91 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v112 = &v91 - v30;
  v96 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v91 - v34;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer();
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v1 + 16);
  v39 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 221;
  (*(v39 + 8))(v115, ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v41 + 24) = 59;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::cancelPendingGuestPairingVerification", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v107 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v108 = v35;
  v46 = v9;
  v47 = *(v9 + 16);
  v48 = v37;
  v49 = v99;
  v47(v13, v48, v99);
  v50 = type metadata accessor for Signpost();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  v53 = swift_allocObject();
  v54 = v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v54 = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v54 + 8) = 59;
  *(v54 + 16) = 2;
  v56 = v97;
  v55 = v98;
  (v97[2])(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v18, v98);
  *(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v13, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v57 = swift_allocObject();
  *(v57 + 24) = 0;
  (*(v46 + 8))(v13, v49);
  (v56[1])(v18, v55);
  *(v57 + 16) = 0;
  *(v53 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v57;
  v58 = v107;
  v114 = v107;
  v59 = sub_1B4F67F94();
  v99 = v59;
  v61 = v60;
  sub_1B4F64944();
  v62 = swift_allocObject();
  *(v62 + 16) = v58;
  *(v62 + 24) = v53;
  v95 = v53;
  *(v62 + 32) = v59;
  *(v62 + 40) = v61;
  v98 = v61;
  *(v62 + 48) = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v62 + 56) = 59;
  *(v62 + 64) = 2;

  sub_1B4F675F4();
  v63 = v111;
  v64 = v111 + 2;
  v65 = v111[2];
  v66 = v109;
  v67 = v102;
  v65(v109, v108, v102);
  v94 = v65;
  v97 = v64;
  v91 = *(v63 + 80);
  v68 = (v91 + 16) & ~v91;
  v69 = v96 + v68;
  v70 = swift_allocObject();
  v71 = v63[4];
  v93 = v68;
  v71(v70 + v68, v66, v67);
  v96 = v63 + 4;
  v92 = v71;
  v72 = v100;
  v65(v100, v112, v67);
  v73 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v71(v74 + v68, v72, v67);
  v75 = (v74 + v73);
  *v75 = sub_1B4E21D54;
  v75[1] = v70;
  sub_1B4F675F4();
  v77 = v105;
  v76 = v106;
  v78 = v103;
  (*(v105 + 16))(v103, v113, v106);
  v79 = (*(v77 + 80) + 49) & ~*(v77 + 80);
  v80 = (v101 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v98;
  *(v81 + 16) = v99;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v81 + 40) = 59;
  *(v81 + 48) = 2;
  v83 = v81 + v79;
  v84 = v76;
  (*(v77 + 32))(v83, v78, v76);
  *(v81 + v80) = v95;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v107;
  v85 = v109;
  v86 = v110;
  v94(v109, v110, v67);
  v87 = swift_allocObject();
  v92(v87 + v93, v85, v67);
  v88 = (v87 + v73);
  *v88 = sub_1B4E21D24;
  v88[1] = v81;

  sub_1B4F675F4();
  v89 = v111[1];
  v89(v86, v67);
  v89(v112, v67);
  (*(v77 + 8))(v113, v84);
  v89(v108, v67);
}

uint64_t RemoteBrowsingClient.updateAudioFocusSelection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4220, &qword_1B4F6CC40);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 214;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4228, &qword_1EB8F4220, &qword_1B4F6CC40);
  v46 = sub_1B4E21468(&qword_1EB8F4230, &qword_1EB8F4220, &qword_1B4F6CC40);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v47 + 24) = 47;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateAudioFocusSelection", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v62 + 8) = 47;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v69 + 56) = 47;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v89 + 40) = 47;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateAudioLanguageEngagementSheetAcknowledgment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4238, &qword_1B4F6CC48);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 223;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4240, &qword_1EB8F4238, &qword_1B4F6CC48);
  v46 = sub_1B4E21468(&qword_1EB8F4248, &qword_1EB8F4238, &qword_1B4F6CC48);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v47 + 24) = 70;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v62 + 8) = 70;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v69 + 56) = 70;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v89 + 40) = 70;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateAudioLanguagePreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4250, &qword_1B4F6CC50);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 222;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4258, &qword_1EB8F4250, &qword_1B4F6CC50);
  v46 = sub_1B4E21468(&qword_1EB8F4260, &qword_1EB8F4250, &qword_1B4F6CC50);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v47 + 24) = 51;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateAudioLanguagePreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v62 + 8) = 51;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v69 + 56) = 51;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v89 + 40) = 51;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateBurnBarDisplayPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4268, &qword_1B4F6CC58);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 188;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4270, &qword_1EB8F4268, &qword_1B4F6CC58);
  v46 = sub_1B4E21468(&qword_1EB8F4278, &qword_1EB8F4268, &qword_1B4F6CC58);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v47 + 24) = 52;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateBurnBarDisplayPreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v62 + 8) = 52;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v69 + 56) = 52;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v89 + 40) = 52;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateMetricsDisplayPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4280, &qword_1B4F6CC60);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 189;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4288, &qword_1EB8F4280, &qword_1B4F6CC60);
  v46 = sub_1B4E21468(&qword_1EB8F4290, &qword_1EB8F4280, &qword_1B4F6CC60);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v47 + 24) = 52;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateMetricsDisplayPreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v62 + 8) = 52;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v69 + 56) = 52;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v89 + 40) = 52;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateProgressDisplayPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4298, &qword_1B4F6CC68);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 192;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F42A0, &qword_1EB8F4298, &qword_1B4F6CC68);
  v46 = sub_1B4E21468(&qword_1EB8F42A8, &qword_1EB8F4298, &qword_1B4F6CC68);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v47 + 24) = 53;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateProgressDisplayPreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v62 + 8) = 53;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v69 + 56) = 53;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v89 + 40) = 53;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateNoticePrivacyPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42B0, &qword_1B4F6CC70);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 190;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F42B8, &qword_1EB8F42B0, &qword_1B4F6CC70);
  v46 = sub_1B4E21468(&qword_1EB8F42C0, &qword_1EB8F42B0, &qword_1B4F6CC70);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v47 + 24) = 51;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateNoticePrivacyPreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v62 + 8) = 51;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v69 + 56) = 51;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v89 + 40) = 51;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateOptInPrivacyPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42C8, &qword_1B4F6CC78);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 191;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F42D0, &qword_1EB8F42C8, &qword_1B4F6CC78);
  v46 = sub_1B4E21468(&qword_1EB8F42D8, &qword_1EB8F42C8, &qword_1B4F6CC78);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v47 + 24) = 50;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateOptInPrivacyPreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v62 + 8) = 50;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v69 + 56) = 50;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v89 + 40) = 50;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.queryAllPrivacyAcknowledgements()@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v112 = *(v120 - 8);
  v2 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v120, v3);
  v105 = v4;
  v106 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v119 = v94 - v7;
  v118 = sub_1B4F64964();
  v110 = *(v118 - 8);
  v8 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v118, v9);
  v109 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v121 = v94 - v13;
  v103 = sub_1B4F67BD4();
  v102 = *(v103 - 8);
  v14 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103, v15);
  v101 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1B4F67BA4();
  v98 = *(v100 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100, v18);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v108 = *(v117 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v117, v22);
  v116 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v104 = v94 - v26;
  v99 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v94 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer();
  v33 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  v35 = *(v1 + 16);
  v34 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v123[0] = 273;
  v37 = *(v34 + 24);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
  v115 = v38;
  v39 = sub_1B4E21010();
  v40 = sub_1B4E21094();
  v114 = v31;
  v37(v123, v38, v39, v40, ObjectType, v34);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v41 + 24) = 53;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::queryAllPrivacyAcknowledgements", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v113 = v42;

  sub_1B4F67BC4();
  v46 = v20;
  sub_1B4F67B84();
  v47 = v102;
  v48 = *(v102 + 16);
  v49 = v101;
  v50 = v103;
  v48(v101, v33, v103);
  v51 = type metadata accessor for Signpost();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  v55 = v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v55 = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v55 + 8) = 53;
  *(v55 + 16) = 2;
  v56 = v98;
  v57 = v100;
  (*(v98 + 16))(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v100);
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  (*(v47 + 8))(v49, v50);
  (*(v56 + 8))(v46, v57);
  *(v58 + 16) = 0;
  v95 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v58;
  v59 = v113;
  v122 = v113;
  v60 = sub_1B4F67F94();
  v103 = v60;
  v62 = v61;
  sub_1B4F64944();
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v54;
  *(v63 + 32) = v60;
  *(v63 + 40) = v62;
  v102 = v62;
  *(v63 + 48) = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v63 + 56) = 53;
  *(v63 + 64) = 2;

  v64 = v119;
  sub_1B4F675F4();
  v65 = v108;
  v66 = *(v108 + 16);
  v100 = v108 + 16;
  v101 = v66;
  v68 = v116;
  v67 = v117;
  (v66)(v116, v114, v117);
  v98 = *(v65 + 80);
  v96 = &v99[(v98 + 16) & ~v98];
  v69 = (v98 + 16) & ~v98;
  v97 = v69;
  v70 = swift_allocObject();
  v71 = *(v65 + 32);
  v94[1] = v65 + 32;
  v99 = v71;
  (v71)(v70 + v69, v68, v67);
  v72 = v112;
  v73 = v106;
  v74 = v120;
  (*(v112 + 16))(v106, v64, v120);
  v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v76 = (v105 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  (*(v72 + 32))(v77 + v75, v73, v74);
  v78 = (v77 + v76);
  *v78 = sub_1B4E21170;
  v78[1] = v70;
  v79 = v104;
  sub_1B4F675F4();
  v81 = v109;
  v80 = v110;
  v82 = v118;
  (*(v110 + 16))(v109, v121, v118);
  v83 = (*(v80 + 80) + 49) & ~*(v80 + 80);
  v84 = (v107 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  v86 = v102;
  *(v85 + 16) = v103;
  *(v85 + 24) = v86;
  *(v85 + 32) = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v85 + 40) = 53;
  *(v85 + 48) = 2;
  (*(v80 + 32))(v85 + v83, v81, v82);
  *(v85 + v84) = v95;
  *(v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v113;
  v88 = v116;
  v87 = v117;
  (v101)(v116, v79, v117);
  v89 = (v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  (v99)(v90 + v97, v88, v87);
  v91 = (v90 + v89);
  *v91 = sub_1B4E211B4;
  v91[1] = v85;

  sub_1B4F675F4();
  v92 = *(v65 + 8);
  v92(v79, v87);
  (*(v72 + 8))(v119, v120);
  (*(v80 + 8))(v121, v118);
  v92(v114, v87);
}

uint64_t RemoteBrowsingClient.insertPrivacyAcknowledgement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4308, &qword_1B4F6CC90);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 194;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4310, &qword_1EB8F4308, &qword_1B4F6CC90);
  v46 = sub_1B4E21468(&qword_1EB8F4318, &qword_1EB8F4308, &qword_1B4F6CC90);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v47 + 24) = 50;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertPrivacyAcknowledgement", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v62 + 8) = 50;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v69 + 56) = 50;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v89 + 40) = 50;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertBookmarks(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4320, &qword_1B4F6CC98);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 195;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4328, &qword_1EB8F4320, &qword_1B4F6CC98);
  v46 = sub_1B4E21468(&qword_1EB8F4330, &qword_1EB8F4320, &qword_1B4F6CC98);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertBookmarks";
  *(v47 + 24) = 37;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertBookmarks", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertBookmarks";
  *(v62 + 8) = 37;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertBookmarks";
  *(v69 + 56) = 37;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertBookmarks";
  *(v89 + 40) = 37;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.removeBookmarks(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4320, &qword_1B4F6CC98);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 196;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4328, &qword_1EB8F4320, &qword_1B4F6CC98);
  v46 = sub_1B4E21468(&qword_1EB8F4330, &qword_1EB8F4320, &qword_1B4F6CC98);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::removeBookmark";
  *(v47 + 24) = 36;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::removeBookmark", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::removeBookmark";
  *(v62 + 8) = 36;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::removeBookmark";
  *(v69 + 56) = 36;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::removeBookmark";
  *(v89 + 40) = 36;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertPlaylist(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4338, &qword_1B4F6CCA0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 200;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4340, &qword_1EB8F4338, &qword_1B4F6CCA0);
  v46 = sub_1B4E21468(&qword_1EB8F4348, &qword_1EB8F4338, &qword_1B4F6CCA0);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertPlaylist";
  *(v47 + 24) = 36;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertPlaylist", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertPlaylist";
  *(v62 + 8) = 36;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertPlaylist";
  *(v69 + 56) = 36;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertPlaylist";
  *(v89 + 40) = 36;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.deletePlaylist(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4338, &qword_1B4F6CCA0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 201;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4340, &qword_1EB8F4338, &qword_1B4F6CCA0);
  v46 = sub_1B4E21468(&qword_1EB8F4348, &qword_1EB8F4338, &qword_1B4F6CCA0);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::deletePlaylist";
  *(v47 + 24) = 36;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::deletePlaylist", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::deletePlaylist";
  *(v62 + 8) = 36;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::deletePlaylist";
  *(v69 + 56) = 36;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::deletePlaylist";
  *(v89 + 40) = 36;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertArchivedSession(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4350, &qword_1B4F6CCA8);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 199;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4358, &qword_1EB8F4350, &qword_1B4F6CCA8);
  v46 = sub_1B4E21468(&qword_1EB8F4360, &qword_1EB8F4350, &qword_1B4F6CCA8);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertArchivedSession";
  *(v47 + 24) = 43;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertArchivedSession", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertArchivedSession";
  *(v62 + 8) = 43;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertArchivedSession";
  *(v69 + 56) = 43;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertArchivedSession";
  *(v89 + 40) = 43;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertCatalogTipJournal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4368, &qword_1B4F6CCB0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 204;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4370, &qword_1EB8F4368, &qword_1B4F6CCB0);
  v46 = sub_1B4E21468(&qword_1EB8F4378, &qword_1EB8F4368, &qword_1B4F6CCB0);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v47 + 24) = 45;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertCatalogTipJournal", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v62 + 8) = 45;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v69 + 56) = 45;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v89 + 40) = 45;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertCompletedMarketingVideo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4380, &qword_1B4F6CCB8);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 197;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4388, &qword_1EB8F4380, &qword_1B4F6CCB8);
  v46 = sub_1B4E21468(&qword_1EB8F4390, &qword_1EB8F4380, &qword_1B4F6CCB8);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v47 + 24) = 51;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertCompletedMarketingVideo", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v62 + 8) = 51;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v69 + 56) = 51;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v89 + 40) = 51;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.processUpNextQueueUpdates(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4398, &unk_1B4F6CCC0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 212;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F43A0, &qword_1EB8F4398, &unk_1B4F6CCC0);
  v46 = sub_1B4E21468(&qword_1EB8F43A8, &qword_1EB8F4398, &unk_1B4F6CCC0);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v47 + 24) = 47;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::processUpNextQueueUpdates", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v62 + 8) = 47;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v69 + 56) = 47;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v89 + 40) = 47;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.repeatWorkoutPlan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v121 = *(v128 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v128, v5);
  v114 = v6;
  v115 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v127 = &v100 - v9;
  v126 = sub_1B4F64964();
  v119 = *(v126 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v126, v11);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = &v100 - v15;
  v108 = sub_1B4F67BD4();
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108, v17);
  v106 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1B4F67BA4();
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105, v20);
  v103 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v117 = *(v125 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v125, v23);
  v124 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v113 = &v100 - v27;
  v109 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v129 = &v100 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B8, &qword_1B4F6CCD0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v100 - v36;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for ActivityTracer();
  v102 = __swift_project_value_buffer(v38, qword_1EB8F5550);
  (*(v33 + 16))(v37, a1, v32);
  v40 = *(v2 + 16);
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v132 = 341;
  v111 = v32;
  v122 = *(v39 + 32);
  v42 = sub_1B4F64ED4();
  v123 = v42;
  v112 = v33;
  v43 = sub_1B4E21468(&qword_1EB8F43C0, &qword_1EB8F43B8, &qword_1B4F6CCD0);
  v110 = v37;
  v44 = v43;
  v45 = sub_1B4E21468(&qword_1EB8F43C8, &qword_1EB8F43B8, &qword_1B4F6CCD0);
  v122(&v132, v37, v32, v42, v44, v45, MEMORY[0x1E69CB0C8], MEMORY[0x1E69CB0D0], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v46 = swift_allocObject();
  *(v46 + 16) = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v46 + 24) = 39;
  *(v46 + 32) = 2;
  v47 = v46;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::repeatWorkoutPlan", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;
  v122 = v47;

  v51 = v102;
  sub_1B4F67BC4();
  v52 = v103;
  sub_1B4F67B84();
  v53 = v107;
  v54 = *(v107 + 16);
  v55 = v106;
  v56 = v108;
  v54(v106, v51, v108);
  v57 = type metadata accessor for Signpost();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  v61 = v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v61 = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v61 + 8) = 39;
  *(v61 + 16) = 2;
  v62 = v104;
  v63 = v105;
  (*(v104 + 16))(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v105);
  *(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v53 + 8))(v55, v56);
  (*(v62 + 8))(v52, v63);
  *(v64 + 16) = 0;
  v101 = v60;
  *(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v122;
  v131 = v122;
  v66 = sub_1B4F67F94();
  v108 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v60;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v107 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v69 + 56) = 39;
  *(v69 + 64) = 2;

  v70 = v127;
  sub_1B4F675F4();
  v71 = v117;
  v72 = *(v117 + 16);
  v105 = v117 + 16;
  v106 = v72;
  v74 = v124;
  v73 = v125;
  (v72)(v124, v129, v125);
  v104 = *(v71 + 80);
  v102 = v109 + ((v104 + 16) & ~v104);
  v75 = (v104 + 16) & ~v104;
  v103 = v75;
  v76 = swift_allocObject();
  v77 = *(v71 + 32);
  v100 = v71 + 32;
  v109 = v77;
  v77((v76 + v75), v74, v73);
  v78 = v121;
  v79 = v115;
  v80 = v128;
  (*(v121 + 16))(v115, v70, v128);
  v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v82 = (v114 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (*(v78 + 32))(v83 + v81, v79, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E211FC;
  v84[1] = v76;
  v85 = v113;
  sub_1B4F675F4();
  v87 = v118;
  v86 = v119;
  v88 = v126;
  (*(v119 + 16))(v118, v130, v126);
  v89 = (*(v86 + 80) + 49) & ~*(v86 + 80);
  v90 = (v116 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v107;
  *(v91 + 16) = v108;
  *(v91 + 24) = v92;
  *(v91 + 32) = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v91 + 40) = 39;
  *(v91 + 48) = 2;
  (*(v86 + 32))(v91 + v89, v87, v88);
  *(v91 + v90) = v101;
  *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v122;
  v94 = v124;
  v93 = v125;
  (v106)(v124, v85, v125);
  v95 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  v109(&v103[v96], v94, v93);
  v97 = (v96 + v95);
  *v97 = sub_1B4E21240;
  v97[1] = v91;

  sub_1B4F675F4();
  v98 = *(v71 + 8);
  v98(v85, v93);
  (*(v78 + 8))(v127, v128);
  (*(v86 + 8))(v130, v126);
  v98(v129, v93);
  (*(v112 + 8))(v110, v111);
}

uint64_t RemoteBrowsingClient.updateWorkoutPlan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v121 = *(v128 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v128, v5);
  v114 = v6;
  v115 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v127 = &v100 - v9;
  v126 = sub_1B4F64964();
  v119 = *(v126 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v126, v11);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = &v100 - v15;
  v108 = sub_1B4F67BD4();
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108, v17);
  v106 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1B4F67BA4();
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105, v20);
  v103 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v117 = *(v125 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v125, v23);
  v124 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v113 = &v100 - v27;
  v109 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v129 = &v100 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43D0, &qword_1B4F6CCD8);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v100 - v36;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for ActivityTracer();
  v102 = __swift_project_value_buffer(v38, qword_1EB8F5550);
  (*(v33 + 16))(v37, a1, v32);
  v40 = *(v2 + 16);
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v132 = 211;
  v111 = v32;
  v122 = *(v39 + 32);
  v42 = sub_1B4F64ED4();
  v123 = v42;
  v112 = v33;
  v43 = sub_1B4E21468(&qword_1EB8F43D8, &qword_1EB8F43D0, &qword_1B4F6CCD8);
  v110 = v37;
  v44 = v43;
  v45 = sub_1B4E21468(&qword_1EB8F43E0, &qword_1EB8F43D0, &qword_1B4F6CCD8);
  v122(&v132, v37, v32, v42, v44, v45, MEMORY[0x1E69CB0C8], MEMORY[0x1E69CB0D0], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v46 = swift_allocObject();
  *(v46 + 16) = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v46 + 24) = 39;
  *(v46 + 32) = 2;
  v47 = v46;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateWorkoutPlan", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;
  v122 = v47;

  v51 = v102;
  sub_1B4F67BC4();
  v52 = v103;
  sub_1B4F67B84();
  v53 = v107;
  v54 = *(v107 + 16);
  v55 = v106;
  v56 = v108;
  v54(v106, v51, v108);
  v57 = type metadata accessor for Signpost();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  v61 = v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v61 = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v61 + 8) = 39;
  *(v61 + 16) = 2;
  v62 = v104;
  v63 = v105;
  (*(v104 + 16))(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v105);
  *(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v53 + 8))(v55, v56);
  (*(v62 + 8))(v52, v63);
  *(v64 + 16) = 0;
  v101 = v60;
  *(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v122;
  v131 = v122;
  v66 = sub_1B4F67F94();
  v108 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v60;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v107 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v69 + 56) = 39;
  *(v69 + 64) = 2;

  v70 = v127;
  sub_1B4F675F4();
  v71 = v117;
  v72 = *(v117 + 16);
  v105 = v117 + 16;
  v106 = v72;
  v74 = v124;
  v73 = v125;
  (v72)(v124, v129, v125);
  v104 = *(v71 + 80);
  v102 = v109 + ((v104 + 16) & ~v104);
  v75 = (v104 + 16) & ~v104;
  v103 = v75;
  v76 = swift_allocObject();
  v77 = *(v71 + 32);
  v100 = v71 + 32;
  v109 = v77;
  v77((v76 + v75), v74, v73);
  v78 = v121;
  v79 = v115;
  v80 = v128;
  (*(v121 + 16))(v115, v70, v128);
  v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v82 = (v114 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (*(v78 + 32))(v83 + v81, v79, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E21D60;
  v84[1] = v76;
  v85 = v113;
  sub_1B4F675F4();
  v87 = v118;
  v86 = v119;
  v88 = v126;
  (*(v119 + 16))(v118, v130, v126);
  v89 = (*(v86 + 80) + 49) & ~*(v86 + 80);
  v90 = (v116 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v107;
  *(v91 + 16) = v108;
  *(v91 + 24) = v92;
  *(v91 + 32) = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v91 + 40) = 39;
  *(v91 + 48) = 2;
  (*(v86 + 32))(v91 + v89, v87, v88);
  *(v91 + v90) = v101;
  *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v122;
  v94 = v124;
  v93 = v125;
  (v106)(v124, v85, v125);
  v95 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  v109(&v103[v96], v94, v93);
  v97 = (v96 + v95);
  *v97 = sub_1B4E21D28;
  v97[1] = v91;

  sub_1B4F675F4();
  v98 = *(v71 + 8);
  v98(v85, v93);
  (*(v78 + 8))(v127, v128);
  (*(v86 + 8))(v130, v126);
  v98(v129, v93);
  (*(v112 + 8))(v110, v111);
}

uint64_t RemoteBrowsingClient.requestWorkoutPlanAlternatives(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43E8, &qword_1B4F6CCE0);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F672A4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 328;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F66974();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CCF90], MEMORY[0x1E69CCF98], MEMORY[0x1E69CC7E8], MEMORY[0x1E69CC7F0], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v45 + 24) = 52;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestWorkoutPlanAlternatives", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v58 + 8) = 52;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v66 + 56) = 52;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4E21288;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v88 + 40) = 52;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4E212CC;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteBrowsingClient.showWorkoutPlanCreationPrompt(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_1B4F64964();
  v114 = *(v120 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v120, v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v96 - v9;
  v10 = sub_1B4F67BD4();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 1);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v119 = *(v111 - 8);
  v18 = v119[8];
  MEMORY[0x1EEE9AC00](v111, v19);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v118 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v96 - v29;
  v102 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v96 - v33;
  v35 = sub_1B4F65F84();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityTracer();
  v42 = __swift_project_value_buffer(v41, qword_1EB8F5550);
  v43 = *(v36 + 16);
  v108 = v40;
  v43(v40, a1, v35);
  v109 = v36;
  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 329;
  (*(v45 + 16))(v124, v40, v35, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v47 + 24) = 51;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::showWorkoutPlanCreationPrompt", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v115 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v34;
  v52 = v105;
  v103 = v35;
  v53 = *(v105 + 16);
  v54 = v104;
  v55 = v106;
  v53(v104, v42, v106);
  v56 = type metadata accessor for Signpost();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v60 = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v60 + 8) = 51;
  *(v60 + 16) = 2;
  v61 = v100;
  v62 = v101;
  (*(v100 + 16))(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v17, v101);
  v63 = v59;
  *(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v53((v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v52 + 8))(v54, v55);
  (*(v61 + 8))(v17, v62);
  *(v64 + 16) = 0;
  v99 = v63;
  *(v63 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v115;
  v123 = v115;
  v66 = sub_1B4F67F94();
  v106 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v63;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v105 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v69 + 56) = 51;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v70 = v119;
  v71 = (v119 + 2);
  v72 = v119[2];
  v73 = v117;
  v74 = v111;
  v72(v117, v116, v111);
  v101 = v72;
  v104 = v71;
  v97 = *(v70 + 80);
  v75 = (v97 + 16) & ~v97;
  v76 = v102 + v75;
  v77 = swift_allocObject();
  v78 = v70[4];
  v100 = v75;
  v78(v77 + v75, v73, v74);
  v102 = v70 + 4;
  v98 = v78;
  v79 = v107;
  v72(v107, v121, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  sub_1B4F675F4();
  v83 = v114;
  v84 = v112;
  v85 = v120;
  (*(v114 + 16))(v112, v122, v120);
  v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
  v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v88 + 40) = 51;
  *(v88 + 48) = 2;
  (*(v83 + 32))(v88 + v86, v84, v85);
  *(v88 + v87) = v99;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v91 = v117;
  v90 = v118;
  (v101)(v117, v118, v74);
  v92 = swift_allocObject();
  v98(v92 + v100, v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v88;

  sub_1B4F675F4();
  v94 = v119[1];
  v94(v90, v74);
  v94(v121, v74);
  (*(v83 + 8))(v122, v120);
  v94(v116, v74);
  (*(v109 + 8))(v108, v103);
}

uint64_t RemoteBrowsingClient.showPersonalizedWorkoutPlanCreationPrompt(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_1B4F64964();
  v114 = *(v120 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v120, v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v96 - v9;
  v10 = sub_1B4F67BD4();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 1);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v119 = *(v111 - 8);
  v18 = v119[8];
  MEMORY[0x1EEE9AC00](v111, v19);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v118 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v96 - v29;
  v102 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v96 - v33;
  v35 = sub_1B4F675A4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityTracer();
  v42 = __swift_project_value_buffer(v41, qword_1EB8F5550);
  v43 = *(v36 + 16);
  v108 = v40;
  v43(v40, a1, v35);
  v109 = v36;
  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 357;
  (*(v45 + 16))(v124, v40, v35, MEMORY[0x1E69CD250], MEMORY[0x1E69CD258], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v47 + 24) = 63;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v115 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v34;
  v52 = v105;
  v103 = v35;
  v53 = *(v105 + 16);
  v54 = v104;
  v55 = v106;
  v53(v104, v42, v106);
  v56 = type metadata accessor for Signpost();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v60 = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v60 + 8) = 63;
  *(v60 + 16) = 2;
  v61 = v100;
  v62 = v101;
  (*(v100 + 16))(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v17, v101);
  v63 = v59;
  *(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v53((v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v52 + 8))(v54, v55);
  (*(v61 + 8))(v17, v62);
  *(v64 + 16) = 0;
  v99 = v63;
  *(v63 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v115;
  v123 = v115;
  v66 = sub_1B4F67F94();
  v106 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v63;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v105 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v69 + 56) = 63;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v70 = v119;
  v71 = (v119 + 2);
  v72 = v119[2];
  v73 = v117;
  v74 = v111;
  v72(v117, v116, v111);
  v101 = v72;
  v104 = v71;
  v97 = *(v70 + 80);
  v75 = (v97 + 16) & ~v97;
  v76 = v102 + v75;
  v77 = swift_allocObject();
  v78 = v70[4];
  v100 = v75;
  v78(v77 + v75, v73, v74);
  v102 = v70 + 4;
  v98 = v78;
  v79 = v107;
  v72(v107, v121, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  sub_1B4F675F4();
  v83 = v114;
  v84 = v112;
  v85 = v120;
  (*(v114 + 16))(v112, v122, v120);
  v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
  v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v88 + 40) = 63;
  *(v88 + 48) = 2;
  (*(v83 + 32))(v88 + v86, v84, v85);
  *(v88 + v87) = v99;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v91 = v117;
  v90 = v118;
  (v101)(v117, v118, v74);
  v92 = swift_allocObject();
  v98(v92 + v100, v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v88;

  sub_1B4F675F4();
  v94 = v119[1];
  v94(v90, v74);
  v94(v121, v74);
  (*(v83 + 8))(v122, v120);
  v94(v116, v74);
  (*(v109 + 8))(v108, v103);
}

uint64_t RemoteBrowsingClient.requireActiveWorkoutPlan(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43F0, &qword_1B4F6CCE8);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F65F84();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 203;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F669C4();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CC808], MEMORY[0x1E69CC810], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v45 + 24) = 46;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requireActiveWorkoutPlan", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v58 + 8) = 46;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v66 + 56) = 46;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4E21314;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v88 + 40) = 46;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4E21358;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteBrowsingClient.insertWorkoutPlanSummaryViewed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43F8, &qword_1B4F6CCF0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 210;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4400, &qword_1EB8F43F8, &qword_1B4F6CCF0);
  v46 = sub_1B4E21468(&qword_1EB8F4408, &qword_1EB8F43F8, &qword_1B4F6CCF0);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v47 + 24) = 52;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v62 + 8) = 52;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v69 + 56) = 52;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v89 + 40) = 52;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertArchivedWorkoutPlanSession(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4410, &qword_1B4F6CCF8);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 213;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4418, &qword_1EB8F4410, &qword_1B4F6CCF8);
  v46 = sub_1B4E21468(&qword_1EB8F4420, &qword_1EB8F4410, &qword_1B4F6CCF8);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v47 + 24) = 54;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertArchivedWorkoutPlanSession", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v62 + 8) = 54;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v69 + 56) = 54;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v89 + 40) = 54;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.requestWorkoutPlanTemplateUpdate(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4428, &qword_1B4F6CD00);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 206;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4430, &qword_1EB8F4428, &qword_1B4F6CD00);
  v46 = sub_1B4E21468(&qword_1EB8F4438, &qword_1EB8F4428, &qword_1B4F6CD00);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v47 + 24) = 54;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v62 + 8) = 54;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v69 + 56) = 54;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v89 + 40) = 54;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.requestEndWorkoutPlan(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4440, &qword_1B4F6CD08);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 205;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4448, &qword_1EB8F4440, &qword_1B4F6CD08);
  v46 = sub_1B4E21468(&qword_1EB8F4450, &qword_1EB8F4440, &qword_1B4F6CD08);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v47 + 24) = 43;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestEndWorkoutPlan", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v62 + 8) = 43;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v69 + 56) = 43;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v89 + 40) = 43;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.updateOnboardingSurveyResult(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4458, &qword_1B4F6CD10);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 218;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4460, &qword_1EB8F4458, &qword_1B4F6CD10);
  v46 = sub_1B4E21468(&qword_1EB8F4468, &qword_1EB8F4458, &qword_1B4F6CD10);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v47 + 24) = 50;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateOnboardingSurveyResult", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v62 + 8) = 50;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v69 + 56) = 50;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v89 + 40) = 50;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertRecentSearchTerm(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4470, &qword_1B4F6CD18);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 215;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4478, &qword_1EB8F4470, &qword_1B4F6CD18);
  v46 = sub_1B4E21468(&qword_1EB8F4480, &qword_1EB8F4470, &qword_1B4F6CD18);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v47 + 24) = 44;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertRecentSearchTerm", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v62 + 8) = 44;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v69 + 56) = 44;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v89 + 40) = 44;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.deleteRecentSearchTerms(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4488, &qword_1B4F6CD20);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 216;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F4490, &qword_1EB8F4488, &qword_1B4F6CD20);
  v46 = sub_1B4E21468(&qword_1EB8F4498, &qword_1EB8F4488, &qword_1B4F6CD20);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v47 + 24) = 44;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::deleteRecentSearchTerm", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v62 + 8) = 44;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v69 + 56) = 44;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v89 + 40) = 44;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertAchievementNotificationRecord(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44A0, &qword_1B4F6CD28);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 217;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F44A8, &qword_1EB8F44A0, &qword_1B4F6CD28);
  v46 = sub_1B4E21468(&qword_1EB8F44B0, &qword_1EB8F44A0, &qword_1B4F6CD28);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v47 + 24) = 57;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertAchievementNotificationRecord", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v62 + 8) = 57;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v69 + 56) = 57;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v89 + 40) = 57;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}

uint64_t RemoteBrowsingClient.insertPersonalizationPrivacyPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = sub_1B4F64964();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v121 = v96 - v10;
  v116 = sub_1B4F67BD4();
  v103 = *(v116 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v116, v12);
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v111 - 8);
  v17 = v118[8];
  MEMORY[0x1EEE9AC00](v111, v18);
  v107 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = v96 - v28;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = v96 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44B8, &qword_1B4F6CD30);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = v96 - v37;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v97 = __swift_project_value_buffer(v39, qword_1EB8F5550);
  (*(v34 + 16))(v38, a1, v33);
  v40 = *(v2 + 16);
  v41 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v105 = v38;
  v106 = v33;
  v43 = ObjectType;
  v123[0] = 219;
  v108 = v34;
  v44 = *(v41 + 16);
  v45 = sub_1B4E21468(&qword_1EB8F44C0, &qword_1EB8F44B8, &qword_1B4F6CD30);
  v46 = sub_1B4E21468(&qword_1EB8F44C8, &qword_1EB8F44B8, &qword_1B4F6CD30);
  v44(v123, v38, v33, v45, v46, v43, v41);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v47 + 24) = 60;
  *(v47 + 32) = 2;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertPersonalizationPrivacyPreference", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;

  v51 = v97;
  sub_1B4F67BC4();
  v52 = v99;
  sub_1B4F67B84();
  v53 = v103;
  v54 = *(v103 + 16);
  v55 = v102;
  v56 = v51;
  v57 = v116;
  v54(v102, v56, v116);
  v58 = type metadata accessor for Signpost();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v62 = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v62 + 8) = 60;
  *(v62 + 16) = 2;
  v63 = v100;
  v64 = v101;
  (*(v100 + 2))(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v101);
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  (*(v53 + 8))(v55, v57);
  (*(v63 + 1))(v52, v64);
  *(v65 + 16) = 0;
  v97 = v61;
  *(v61 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v65;
  v122 = v47;
  v66 = sub_1B4F67F94();
  v103 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  v98 = v47;
  *(v69 + 16) = v47;
  *(v69 + 24) = v61;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v102 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v69 + 56) = 60;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v71 = v117;
  v70 = v118;
  v72 = v118 + 2;
  v73 = v118[2];
  v74 = v111;
  v73(v117, v120, v111);
  v100 = v73;
  v101 = v72;
  v116 = *(v70 + 80);
  v75 = (v116 + 16) & ~v116;
  v76 = &v104[v75];
  v77 = swift_allocObject();
  v78 = v70[4];
  v99 = v75;
  v78(v77 + v75, v71, v74);
  v96[1] = v70 + 4;
  v104 = v78;
  v79 = v107;
  v73(v107, v119, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4E21D54;
  v82[1] = v77;
  v83 = v109;
  sub_1B4F675F4();
  v85 = v114;
  v84 = v115;
  v86 = v112;
  (*(v114 + 16))(v112, v121, v115);
  v87 = (*(v85 + 80) + 49) & ~*(v85 + 80);
  v88 = (v110 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v102;
  *(v89 + 16) = v103;
  *(v89 + 24) = v90;
  *(v89 + 32) = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v89 + 40) = 60;
  *(v89 + 48) = 2;
  (*(v85 + 32))(v89 + v87, v86, v84);
  *(v89 + v88) = v97;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
  v91 = v117;
  v100(v117, v83, v74);
  v92 = swift_allocObject();
  (v104)(&v99[v92], v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4E21D24;
  v93[1] = v89;

  sub_1B4F675F4();
  v94 = v118[1];
  v94(v83, v74);
  v94(v119, v74);
  (*(v85 + 8))(v121, v84);
  v94(v120, v74);
  (*(v108 + 8))(v105, v106);
}