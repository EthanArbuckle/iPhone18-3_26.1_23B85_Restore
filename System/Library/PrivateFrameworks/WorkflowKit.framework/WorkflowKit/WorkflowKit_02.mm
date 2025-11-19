void sub_1CA28CFEC(void *a1)
{
  OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444850, qword_1CA984318);
  sub_1CA94C228();
  swift_endAccess();
  OUTLINED_FUNCTION_59_3();
  sub_1CA3667DC();
  v37 = v1;
  sub_1CA28CBA8();
  v3 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CD0];
  v4 = [a1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v5 = OUTLINED_FUNCTION_53_3();

  v40 = sub_1CA25B410(v5);
  if (v40)
  {
    v6 = 0;
    v41 = v5 & 0xC000000000000001;
    v38 = v5 + 32;
    v39 = v5 & 0xFFFFFFFFFFFFFF8;
    v7 = &selRef_metaDataDeviceQueryOperation;
    while (1)
    {
      if (v41)
      {
        v8 = OUTLINED_FUNCTION_134();
        v9 = MEMORY[0x1CCAA22D0](v8);
      }

      else
      {
        if (v6 >= *(v39 + 16))
        {
          goto LABEL_53;
        }

        v9 = *(v38 + 8 * v6);
      }

      v10 = v9;
      v11 = __OFADD__(v6, 1);
      v12 = v6 + 1;
      if (v11)
      {
        break;
      }

      v13 = [v9 parameters];
      sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
      v14 = OUTLINED_FUNCTION_53_3();

      if (v14 >> 62)
      {
        v15 = sub_1CA94D328();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v12;
      if (v15)
      {
        v16 = 0;
        v47 = v10;
        v48 = v14 & 0xC000000000000001;
        v43 = v14 + 32;
        v44 = v14 & 0xFFFFFFFFFFFFFF8;
        v45 = v15;
        v46 = v14;
        while (1)
        {
          if (v48)
          {
            v17 = MEMORY[0x1CCAA22D0](v16, v14);
          }

          else
          {
            if (v16 >= *(v44 + 16))
            {
              goto LABEL_51;
            }

            v17 = *(v43 + 8 * v16);
          }

          v18 = v17;
          v11 = __OFADD__(v16++, 1);
          if (v11)
          {
            break;
          }

          v19 = [v17 key];
          if (!v19)
          {
            sub_1CA94C3A8();
            v19 = sub_1CA94C368();
          }

          v20 = [v10 v7[357]];

          if (v20)
          {
            v50 = v18;
            v21 = [v20 containedVariables];
            sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
            OUTLINED_FUNCTION_5_3();
            v22 = sub_1CA94C658();

            if (v22 >> 62)
            {
              v23 = sub_1CA94D328();
              if (v23)
              {
LABEL_22:
                v24 = 0;
                v25 = 0;
LABEL_23:
                v49 = v24;
                while (1)
                {
                  if ((v22 & 0xC000000000000001) != 0)
                  {
                    v26 = MEMORY[0x1CCAA22D0](v25, v22);
                  }

                  else
                  {
                    if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_49;
                    }

                    v26 = *(v22 + 8 * v25 + 32);
                  }

                  v27 = v25 + 1;
                  if (__OFADD__(v25, 1))
                  {
                    break;
                  }

                  v28 = v26;
                  MEMORY[0x1CCAA1490]();
                  v29 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
                  {
                    OUTLINED_FUNCTION_64(v29);
                    sub_1CA94C698();
                  }

                  OUTLINED_FUNCTION_194_0();
                  sub_1CA94C6E8();
                  v3 = v52;
                  objc_opt_self();
                  v30 = swift_dynamicCastObjCClass();

                  if (v30)
                  {
                    v24 = 1;
                    ++v25;
                    if (v27 != v23)
                    {
                      goto LABEL_23;
                    }

                    swift_unknownObjectRelease();

LABEL_38:
                    v31 = [v50 key];
                    v32 = sub_1CA94C3A8();
                    v34 = v33;

                    v10 = v47;
                    sub_1CA3692B0(&v53, v47, v32, v34);

                    v7 = &selRef_metaDataDeviceQueryOperation;
LABEL_40:
                    v15 = v45;
                    v14 = v46;
                    goto LABEL_43;
                  }

                  ++v25;
                  if (v27 == v23)
                  {
                    swift_unknownObjectRelease();

                    if (v49)
                    {
                      goto LABEL_38;
                    }

                    v7 = &selRef_metaDataDeviceQueryOperation;
                    v10 = v47;
                    goto LABEL_40;
                  }
                }

                __break(1u);
LABEL_49:
                __break(1u);
                break;
              }
            }

            else
            {
              v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v23)
              {
                goto LABEL_22;
              }
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

LABEL_43:
          if (v16 == v15)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
        break;
      }

LABEL_44:

      v6 = v42;
      if (v42 == v40)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_47:

    v35 = *(v37 + 72);
    *(v37 + 72) = v3;

    swift_beginAccess();
    v36 = *(v37 + 80);
    *(v37 + 80) = v51;
  }
}

unint64_t sub_1CA28D4F8()
{
  result = qword_1EC441700;
  if (!qword_1EC441700)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F5D0, off_1E836DCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441700);
  }

  return result;
}

uint64_t WFWorkflowActionTree.notifyVariablesOfChanges.setter(char a1)
{
  v3 = OBJC_IVAR___WFWorkflowActionTree_notifyVariablesOfChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WFWorkflowTypesContainsInputType(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL WFWorkflowTypesContainsInputType(NSArray<WFWorkflowTypeName> * _Nonnull __strong)"];
    [v7 handleFailureInFunction:v8 file:@"WFWorkflow.m" lineNumber:1470 description:{@"Invalid parameter not satisfying: %@", @"workflowTypes"}];
  }

  v2 = [MEMORY[0x1E695DFD8] setWithArray:v1];
  v3 = *MEMORY[0x1E69E1458];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E1440], *MEMORY[0x1E69E1458], *MEMORY[0x1E69E1450], *MEMORY[0x1E69E1448], 0}];
  v5 = [v2 intersectsSet:v4];

  return v5;
}

BOOL WFWorkflowActionTree.isShortcutInputVariableUsed.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFWorkflowActionTree_variableAvailability);
  OUTLINED_FUNCTION_27_2();
  return *(*(v1 + 80) + 16) != 0;
}

void sub_1CA28E970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WFProgressUnitsBetweenActions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [v5 indexOfObject:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = v7 ? [v5 indexOfObject:v7] + 1 : objc_msgSend(v5, "count");
    if (v8 >= v10)
    {
      break;
    }

    v11 = [v5 objectAtIndex:v8];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (![v11 mode] && v11 != v6)
    {
      v12 = [v11 groupedCloseAction];
      v13 = [v5 indexOfObject:v12];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v13;
      }

LABEL_15:
      ++v9;
    }

    ++v8;
  }

  return v9;
}

void sub_1CA28F670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_27608();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAssertion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:42 description:{@"Unable to find class %s", "RBSAssertion"}];

    __break(1u);
  }
}

void __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_27608();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTarget");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:44 description:{@"Unable to find class %s", "RBSTarget"}];

    __break(1u);
  }
}

void __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_27608();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSDomainAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSDomainAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:43 description:{@"Unable to find class %s", "RBSDomainAttribute"}];

    __break(1u);
  }
}

uint64_t sub_1CA29054C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1CA2905E4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1CA290608(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1CA290698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA29B66C();
  *a1 = result;
  return result;
}

uint64_t sub_1CA29072C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA2905D4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA290754(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA2905DC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA2907DC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA290630(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA29087C(uint64_t *a1)
{
  v1 = *a1;
  sub_1CA2908A8();
  return OUTLINED_FUNCTION_2_5(v2, v3);
}

void *sub_1CA2908B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CA2908CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA29054C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA290924(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CA29ABC0() & 1;
}

uint64_t sub_1CA2909DC()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA290A2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA290A74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1CA290AE4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CA290BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_40();
  v6 = sub_1CA94ADC8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_1CA94B168();
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1CA290C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_40();
  v8 = sub_1CA94ADC8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_1CA94B168();
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1CA290D1C()
{
  v2 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  OUTLINED_FUNCTION_38_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = *(v1 + v5 + 8);

  v11 = *(v0 + 28);
  v12 = sub_1CA94B168();
  OUTLINED_FUNCTION_52(v12);
  (*(v13 + 8))(v1 + v5 + v11);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1CA290E18()
{
  v2 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  OUTLINED_FUNCTION_38_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_52(v10);
  (*(v11 + 8))(v1 + v5);
  v12 = *(v0 + 28);
  v13 = sub_1CA94B168();
  OUTLINED_FUNCTION_52(v13);
  (*(v14 + 8))(v1 + v5 + v12);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1CA290F3C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA2910CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA2DA11C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CA2910FC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1CA291180@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1CA2C9578(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CA2911F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CA94AD08();
  v7 = OUTLINED_FUNCTION_27_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1CA94B728();
  v12 = OUTLINED_FUNCTION_27_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
    v14 = a3[8];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[6] + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1CA29130C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CA94AD08();
  v9 = OUTLINED_FUNCTION_27_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1CA94B728();
    result = OUTLINED_FUNCTION_27_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 24) = (a2 - 1);
        return result;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1CA291488()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2914F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA291530()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA291568()
{
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_4_12();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA291624()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_4_12();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA2916D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA291718()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA2917B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA29189C()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA2918F4()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA291944()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA291994()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA2919DC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA291ACC@<X0>(uint64_t *a1@<X8>)
{
  result = PropertyUpdateOperator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA291BC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA291C00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA291E68@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryModel.FolderCollection.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA291EF8@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryModel.FolderCollection.glyphCharacter.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA291FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  v7 = OUTLINED_FUNCTION_27_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_1CA29209C()
{
  OUTLINED_FUNCTION_23_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  result = OUTLINED_FUNCTION_27_1(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1CA2921C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CA94B1C8();
  v7 = OUTLINED_FUNCTION_27_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1CA94B668();
  v12 = OUTLINED_FUNCTION_27_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_1CA94B728();
  v16 = OUTLINED_FUNCTION_27_1(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[7]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

uint64_t sub_1CA292300(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CA94B1C8();
  v9 = OUTLINED_FUNCTION_27_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1CA94B668();
    v14 = OUTLINED_FUNCTION_27_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1CA94B728();
      result = OUTLINED_FUNCTION_27_1(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v11 = result;
      v16 = a4[6];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1CA292428()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA292478()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA29254C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA292588()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA2925D0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA29260C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 9)
  {
    return EnumTagSinglePayload - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA292660(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
  v5 = OUTLINED_FUNCTION_121_1();

  return __swift_storeEnumTagSinglePayload(v5, v4, a3, v6);
}

uint64_t sub_1CA2926C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_9_15(*(a1 + a2 - 8), *(a1 + a2 - 16));
  result = v5(v4);
  *a3 = result;
  return result;
}

__n128 sub_1CA292710(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA29271C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_9_15(*(*(a1 + a2 - 8) + 16), *(a1 + a2 - 24));
  result = v5(v4);
  *a3 = result;
  return result;
}

__n128 sub_1CA29276C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CA292778()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1CA2927D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA292814()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA29284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_15(a1, a2, a3);
  result = (*(v4 + 32))(v5);
  *v3 = result;
  return result;
}

__n128 sub_1CA29288C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA292898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_15(a1, a2, a3);
  result = (*(v4 + 56))(v5);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2929B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40();
  v4 = sub_1CA948D28();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1CA2929F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40();
  v4 = sub_1CA948D28();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1CA292A60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA292A98@<X0>(_BYTE *a1@<X8>)
{
  result = DrawerAction.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA292AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v7 = OUTLINED_FUNCTION_27_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v12 = OUTLINED_FUNCTION_27_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1CA292BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v9 = OUTLINED_FUNCTION_27_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
    result = OUTLINED_FUNCTION_27_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1CA292E8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA292EC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA41A3B4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CA292EF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA41A658();
  *a2 = result;
  return result;
}

uint64_t sub_1CA292F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA41A6F8();
  *a2 = result;
  return result;
}

id sub_1CA292F58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA41B950();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA292FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_30();
  v7 = type metadata accessor for DrawerAction(v6);
  v8 = OUTLINED_FUNCTION_27_1(v7);
  if (*(v9 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(v3 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v8);
}

uint64_t sub_1CA293048(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for DrawerAction(v8);
  result = OUTLINED_FUNCTION_27_1(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = OUTLINED_FUNCTION_124_3();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CA2930E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_30();
  v7 = type metadata accessor for DrawerAction(v6);
  v8 = OUTLINED_FUNCTION_27_1(v7);
  if (*(v9 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v8);
}

uint64_t sub_1CA293178(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for DrawerAction(v8);
  result = OUTLINED_FUNCTION_27_1(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = OUTLINED_FUNCTION_124_3();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CA29321C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293254(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA293264()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  type metadata accessor for DrawerSearchIndexItem(0);
  OUTLINED_FUNCTION_186_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CA94B1C8();
    OUTLINED_FUNCTION_52(v5);
    (*(v6 + 8))(v0 + v2);
    goto LABEL_13;
  }

  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_186_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_1CA94A4E8();
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (!EnumCaseMultiPayload)
      {
      }

      goto LABEL_10;
    }

    v8 = sub_1CA94A288();
  }

  OUTLINED_FUNCTION_52(v8);
  (*(v9 + 8))(v0 + v2);
LABEL_10:
  v10 = type metadata accessor for DrawerAction(0);
  v11 = *(v4 + v10[5]);
  swift_unknownObjectRelease();
  v12 = v10[6];
  v13 = sub_1CA94B1C8();
  if (!__swift_getEnumTagSinglePayload(v4 + v12, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  v14 = *(v4 + v10[7] + 8);

  v15 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48));

LABEL_13:
  v16 = *(v4 + *(v1 + 36));

  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_1CA293478()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1CA2934BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1CA293544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

uint64_t sub_1CA293568()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA2935B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA43D784();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1CA293630()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_64_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA293674()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA293710(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CA94B168();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA293798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CA94B168();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA293818()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA293858()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293890(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_1CA2BC3E0(a1);
}

uint64_t get_enum_tag_for_layout_string_ypSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA293A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA293B00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA293B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA293BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1CA293C54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA293CE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA293D30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293D68()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA293DA0()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA293E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA293E20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA293EB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA293F04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA293FAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293FE4()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA294020()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA294060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_50_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA294098()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2940D4()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA294154(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s17ControlFlowBranchVMa(0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA2941DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s17ControlFlowBranchVMa(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA294288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA50E54C();
  *a2 = result;
  return result;
}

uint64_t sub_1CA2942B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA50F99C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CA294350(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA294398()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2943D0()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA294474()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2944AC()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA2944E0()
{
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA294518()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294558()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2945FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA9491F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 40);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CA2946A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CA9491F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  return result;
}

uint64_t sub_1CA294778()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2947E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA29495C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2949A4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294A78()
{
  OUTLINED_FUNCTION_55();
  sub_1CA578E88();
  return (v0 == 2) | v0 & 1u;
}

uint64_t sub_1CA294AF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA294B3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA294B74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294BDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA294C50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA294C8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA294D10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA59E244();
  *a2 = result;
  return result;
}

uint64_t sub_1CA294DB8()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA294E08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA294E40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294E90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA5B8CB8();
  *a2 = result;
  return result;
}

uint64_t sub_1CA294F44(char a1)
{
  if (a1)
  {
    return 0x5472657461657267;
  }

  else
  {
    return 0x6E6168547373656CLL;
  }
}

uint64_t sub_1CA294F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA5C1C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA294FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA5C0AB4();
  *a1 = result;
  return result;
}

unint64_t sub_1CA294FFC(uint64_t a1)
{
  result = sub_1CA5C3104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA295024(uint64_t a1)
{
  result = sub_1CA5C31D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA29504C(uint64_t a1)
{
  result = sub_1CA5C32A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA295074(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA2950B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2950EC(uint64_t a1)
{
  result = sub_1CA5C3494();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA2951A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1CA295208@<X0>(void *a1@<X8>)
{
  result = RowTemplatePropertySetterParameterState.subject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA295244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE69830](v4, v5, a3, v6, v7);
}

uint64_t sub_1CA2952B4()
{
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();

  return sub_1CA94C998();
}

uint64_t sub_1CA295328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE69840](v4, v5, a3, v6, v7);
}

__n128 sub_1CA2953A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1CA2953C8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA295410()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA2954A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA2954E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA29554C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_40();
  v6 = sub_1CA94B668();
  v7 = OUTLINED_FUNCTION_27_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    v11 = sub_1CA94B728();
    v12 = OUTLINED_FUNCTION_27_1(v11);
    if (*(v13 + 84) != a2)
    {
      return OUTLINED_FUNCTION_26_0(*(v3 + a3[7]));
    }

    v9 = v12;
    v10 = a3[6];
  }

  return __swift_getEnumTagSinglePayload(v3 + v10, a2, v9);
}

uint64_t sub_1CA295628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_40();
  v8 = sub_1CA94B668();
  v9 = OUTLINED_FUNCTION_27_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_1CA94B728();
    result = OUTLINED_FUNCTION_27_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + a4[7]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[6];
  }

  return __swift_storeEnumTagSinglePayload(v4 + v12, a2, a2, v11);
}

uint64_t sub_1CA29570C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_40();
  v6 = sub_1CA94B668();
  v7 = OUTLINED_FUNCTION_27_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1CA94B728();
    v12 = OUTLINED_FUNCTION_27_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
      v16 = OUTLINED_FUNCTION_27_1(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_26_0(*(v3 + a3[7] + 24));
        }

        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
        v14 = a3[9];
      }
    }

    v10 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1CA295864(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_40();
  v8 = sub_1CA94B668();
  OUTLINED_FUNCTION_27_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_121_1();
  }

  else
  {
    v12 = sub_1CA94B728();
    v13 = OUTLINED_FUNCTION_27_1(v12);
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
      result = OUTLINED_FUNCTION_27_1(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = result;
        v15 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[7] + 24) = (a2 - 1);
          return result;
        }

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
        v15 = a4[9];
      }
    }

    v10 = v4 + v15;
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v11);
}

uint64_t sub_1CA2959D8()
{
  v1 = *(v0 + 24);
  sub_1CA5EFFF4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1CA295A2C()
{
  v1 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = sub_1CA94B668();
  OUTLINED_FUNCTION_52(v8);
  (*(v9 + 8))(v0 + v3);
  v10 = v1[5];
  v11 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v11);
  (*(v12 + 8))(v0 + v3 + v10);
  v13 = v1[6];
  v14 = sub_1CA94AD08();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v13, 1, v14))
  {
    OUTLINED_FUNCTION_39(v14);
    (*(v15 + 8))(v7 + v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_0((v7 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v7 + v1[8]));
  v16 = v1[9];
  v17 = sub_1CA948BA8();
  if (!__swift_getEnumTagSinglePayload(v7 + v16, 1, v17))
  {
    OUTLINED_FUNCTION_39(v17);
    (*(v18 + 8))(v7 + v16, v17);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CA295C08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA295C40()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA295C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  OUTLINED_FUNCTION_7_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA295D10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  OUTLINED_FUNCTION_7_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CA295ECC()
{
  v1 = v0[4];

  v2 = v0[8];

  v3 = v0[10];

  OUTLINED_FUNCTION_70_11();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1CA295F10()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[15];

  v6 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1CA295F70()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA295FA0()
{
  OUTLINED_FUNCTION_34_16();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA295FDC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA296024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_48_7();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA29607C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA2960B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1CA2960F4()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA29612C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA29617C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA2961B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_48_7();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA2961EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA296268()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2962A8()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[13];

  v4 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1CA296374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  OUTLINED_FUNCTION_7_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CA296418@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA630314();
  *a2 = result;
  return result;
}

uint64_t sub_1CA2964AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94B168();
  OUTLINED_FUNCTION_27_1(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(a1 + *(a3 + 20) + 24));
  }

  v8 = OUTLINED_FUNCTION_6_45();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_1CA296548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CA94B168();
  result = OUTLINED_FUNCTION_27_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CA2965F0()
{
  OUTLINED_FUNCTION_4_53();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_26_0(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_27_1(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = *(v5 + 20);
  }

  else
  {
    sub_1CA94B728();
    v9 = *(v5 + 24);
  }

  v10 = OUTLINED_FUNCTION_5_48(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1CA2966A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_1CA94B1C8();
    OUTLINED_FUNCTION_27_1(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 20);
    }

    else
    {
      sub_1CA94B728();
      v11 = *(v7 + 24);
    }

    v12 = OUTLINED_FUNCTION_5_48(v11);

    __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }
}

uint64_t sub_1CA296760()
{
  OUTLINED_FUNCTION_4_53();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_26_0(*v0);
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  v6 = OUTLINED_FUNCTION_5_48(*(v5 + 20));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1CA2967E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
    v8 = OUTLINED_FUNCTION_5_48(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

id sub_1CA296864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tableTemplateCompoundType];
  *a2 = result;
  return result;
}

uint64_t sub_1CA2968AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA2968F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA296988()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA2969D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1CA296AC4@<X0>(void *a1@<X8>)
{
  result = RowTemplateFindFilterParameterState.subject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA296B84()
{
  v1 = v0[4];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1CA296BD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA296C10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA296C50()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1CA296C9C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA296CD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_51_9();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA296D0C()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1CA296DD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1CA296E40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA296E84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA296EC0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1CA296F6C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notifyVariablesOfChanges];
  *a2 = result;
  return result;
}

uint64_t sub_1CA296FBC()
{
  OUTLINED_FUNCTION_4_53();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_93_5();
  }

  v4 = v0;
  sub_1CA9491F8();
  v5 = OUTLINED_FUNCTION_5_48(*(v4 + 40));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1CA29702C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1CA9491F8();
    v8 = OUTLINED_FUNCTION_5_48(*(v7 + 40));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1CA2970A4()
{
  OUTLINED_FUNCTION_4_53();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_93_5();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  v5 = OUTLINED_FUNCTION_5_48(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1CA297120(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v8 = OUTLINED_FUNCTION_5_48(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1CA2974B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1CA297550()
{
  OUTLINED_FUNCTION_1_6();
  result = sub_1CA2905AC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

Swift::Void __swiftcall WFVisualIntelligenceCameraAvailabilityResource.configure(withRunSource:)(__C::WFWorkflowRunSource withRunSource)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource);
  *(v1 + OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource) = withRunSource;
  v2 = withRunSource._rawValue;
}

Swift::Void __swiftcall WFVisualIntelligenceCameraAvailabilityResource.refreshAvailability()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource];
  v8 = *MEMORY[0x1E69E1368];
  v9 = sub_1CA94C3A8();
  v11 = v10;
  if (v9 == sub_1CA94C3A8() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1CA94D7F8();

    if ((v14 & 1) == 0)
    {
      if ([objc_opt_self() isVisualIntelligenceEnabled])
      {

        [v1 updateAvailability:1 withError:0];
      }

      else
      {
        v23 = sub_1CA94C3A8();
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CA97EDF0;
        v27 = *MEMORY[0x1E696A578];
        *(inited + 32) = sub_1CA94C3A8();
        *(inited + 40) = v28;
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v29 = qword_1EDB9F690;
        v30 = sub_1CA94C368();
        v31 = sub_1CA94C368();

        v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

        v33 = sub_1CA94C3A8();
        v35 = v34;

        v36 = MEMORY[0x1E69E6158];
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v33;
        *(inited + 56) = v35;
        v37 = *MEMORY[0x1E696A588];
        *(inited + 80) = sub_1CA94C3A8();
        *(inited + 88) = v38;
        sub_1CA94C438();
        v39 = sub_1CA94C368();
        v40 = sub_1CA94C368();

        v41 = [v29 localizedStringForKey:v39 value:v40 table:0];

        v42 = sub_1CA94C3A8();
        v44 = v43;

        *(inited + 120) = v36;
        *(inited + 96) = v42;
        *(inited + 104) = v44;
        v45 = sub_1CA94C1E8();
        v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v47 = sub_1CA298568(v23, v25, 1, v45);
        v48 = sub_1CA948AC8();

        [v1 updateAvailability:0 withError:v48];
      }

      return;
    }
  }

  v15 = *MEMORY[0x1E69E1078];
  sub_1CA949C58();
  v16 = sub_1CA949F68();
  v17 = sub_1CA94CC08();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = v19;
    *v18 = 136315138;
    v20 = sub_1CA94DA18();
    v22 = sub_1CA26B54C(v20, v21, &v50);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1CA256000, v16, v17, "Skipping %s check because the action button triggered this action", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1CCAA4BF0](v19, -1, -1);
    MEMORY[0x1CCAA4BF0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  [v1 updateAvailability:1 withError:0];
}

id WFVisualIntelligenceCameraAvailabilityResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFVisualIntelligenceCameraAvailabilityResource.init(definition:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E1428];
  *&v1[OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource] = *MEMORY[0x1E69E1428];
  v5 = v4;
  if (a1)
  {
    v6 = sub_1CA94C1A8();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithDefinition_, v6);

  if (v7)
  {
  }

  return v7;
}

id WFVisualIntelligenceCameraAvailabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFVisualIntelligenceCameraAvailabilityResource.init()()
{
  ObjectType = swift_getObjectType();
  v2 = *MEMORY[0x1E69E1428];
  *&v0[OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource] = *MEMORY[0x1E69E1428];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id WFVisualIntelligenceCameraAvailabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA297E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t default argument 1 of WFContentItem.ToolKitTypeResolutionContext.init(measurementUnitTypeProvider:requiredCoercion:displayRepresentationConfig:localizationContext:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DB488];
  v3 = sub_1CA94B668();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CA297F0C(char a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1 & 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA297F4C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA297F98(char a1)
{
  OUTLINED_FUNCTION_3_2();
  sub_1CA624210(a1);
  OUTLINED_FUNCTION_4();

  return sub_1CA94D968();
}

uint64_t sub_1CA297FE0()
{
  OUTLINED_FUNCTION_3_2();
  sub_1CA94D938();
  return sub_1CA94D968();
}

uint64_t sub_1CA298050(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_3_2();
  a2(v5, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA298098(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1 + 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA2980DC()
{
  sub_1CA94D918();
  sub_1CA94D948();
  return sub_1CA94D968();
}

uint64_t sub_1CA298124(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA298164()
{
  OUTLINED_FUNCTION_6_6();
  sub_1CA94D948();
  return sub_1CA94D968();
}

uint64_t sub_1CA2981A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2 + 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA298218(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1CA94D918();
  a3(v6, a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA298264()
{
  OUTLINED_FUNCTION_6_6();
  sub_1CA94D938();
  return sub_1CA94D968();
}

uint64_t sub_1CA2982A0()
{
  OUTLINED_FUNCTION_6_6();
  sub_1CA624210(v0);
  OUTLINED_FUNCTION_4();

  return sub_1CA94D968();
}

uint64_t sub_1CA2982E4()
{
  OUTLINED_FUNCTION_6_6();
  sub_1CA94C458();

  return sub_1CA94D968();
}

uint64_t sub_1CA298394(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA2983D8(uint64_t a1, char a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2 & 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA29841C(uint64_t a1, unsigned __int8 a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2);
  return sub_1CA94D968();
}

id default argument 0 of TypedValueRepresentableParameterStateTypeResolutionContext.init(localizationContext:)()
{
  v0 = [objc_opt_self() defaultContext];

  return v0;
}

uint64_t sub_1CA2984E8(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return OUTLINED_FUNCTION_5_6((v2 & a1));
}

uint64_t sub_1CA298510(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return OUTLINED_FUNCTION_5_6((v2 & a1));
}

id sub_1CA298568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA94C368();

  if (a4)
  {
    v8 = sub_1CA94C1A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
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

uint64_t sub_1CA298660@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_4_26();
  *a1 = result;
  return result;
}

uint64_t sub_1CA298688(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA52A4E0(v2, v3);
  *v1 = result;
  return result;
}

void sub_1CA29880C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1CA2908A8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1CA298840()
{
  v1 = OUTLINED_FUNCTION_1_6();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1CA2989BC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA4F0808(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1CA2989F0@<X0>(_WORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1CA298B04(void *a1)
{
  sub_1CA299E20(&qword_1EC443350, type metadata accessor for WFResourceError);
  v2 = a1;
  return sub_1CA948A68();
}

uint64_t sub_1CA298C04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1CA32342C();
}

uint64_t sub_1CA298CF8(void *a1)
{
  sub_1CA299E20(&qword_1EC443698, type metadata accessor for WFDatabaseError);
  v2 = a1;
  return sub_1CA948A68();
}

uint64_t sub_1CA298DEC()
{
  v2 = *v0;
  sub_1CA94D918();
  sub_1CA94C298();
  return sub_1CA94D968();
}

uint64_t sub_1CA298E4C(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC443378, type metadata accessor for WFWorkflowRunSource);
  v3 = sub_1CA299E20(&qword_1EC443380, type metadata accessor for WFWorkflowRunSource);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA298F08(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EDB9FB10, type metadata accessor for Key);
  v3 = sub_1CA299E20(&qword_1EC4433E0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA298FC4(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v3 = sub_1CA299E20(&qword_1EC443400, _s3__C3KeyVMa_0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299080(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC441830, type metadata accessor for DescriptionKey);
  v3 = sub_1CA299E20(&qword_1EC4436D8, type metadata accessor for DescriptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA29913C(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC4433A8, type metadata accessor for WFMeasurementUnitType);
  v3 = sub_1CA299E20(&qword_1EC4433B0, type metadata accessor for WFMeasurementUnitType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA2991F8(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC441A60, type metadata accessor for WFVariableType);
  v3 = sub_1CA299E20(&unk_1EC4433D0, type metadata accessor for WFVariableType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299330(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC4433E8, type metadata accessor for WFExecutionPlatform);
  v3 = sub_1CA299E20(&unk_1EC4433F0, type metadata accessor for WFExecutionPlatform);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA2993EC(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC443368, type metadata accessor for LNInterfaceIdiom);
  v3 = sub_1CA299E20(&qword_1EC443370, type metadata accessor for LNInterfaceIdiom);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA2994A8(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC443358, type metadata accessor for WFContentCategory);
  v3 = sub_1CA299E20(&qword_1EC443360, type metadata accessor for WFContentCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299564(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC443388, type metadata accessor for WFWorkflowTypeName);
  v3 = sub_1CA299E20(&unk_1EC443390, type metadata accessor for WFWorkflowTypeName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299620(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC4436A0, type metadata accessor for WFContentItemListThumbnailOption);
  v3 = sub_1CA299E20(&qword_1EC4436A8, type metadata accessor for WFContentItemListThumbnailOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA2996DC(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC4436B0, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v3 = sub_1CA299E20(&unk_1EC4436B8, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299798(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC4433B8, type metadata accessor for WFWorkflowActionKey);
  v3 = sub_1CA299E20(&unk_1EC4433C0, type metadata accessor for WFWorkflowActionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299854(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EDB9FAF0, type metadata accessor for LNPlatformName);
  v3 = sub_1CA299E20(&unk_1EC4436C8, type metadata accessor for LNPlatformName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA299910@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CA94C368();

  *a2 = v5;
  return result;
}

uint64_t sub_1CA299958@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CA2905AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CA299984(uint64_t a1)
{
  v2 = sub_1CA299E20(&qword_1EC4417E0, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = sub_1CA299E20(&qword_1EC4433A0, type metadata accessor for LNSystemProtocolIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1CA299ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443590, &qword_1CA9806A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1CA299BB0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1CA299E20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA29AADC()
{
  result = qword_1EC443340;
  if (!qword_1EC443340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443340);
  }

  return result;
}

uint64_t sub_1CA29ABC0()
{
  v0 = sub_1CA94C3A8();
  v2 = v1;
  if (v0 == sub_1CA94C3A8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CA94D7F8();
  }

  return v5 & 1;
}

uint64_t sub_1CA29AC44()
{
  sub_1CA94C3A8();
  sub_1CA94D918();
  sub_1CA94C458();
  v0 = sub_1CA94D968();

  return v0;
}

uint64_t sub_1CA29ACB8()
{
  sub_1CA94C3A8();
  sub_1CA94C458();
}

uint64_t sub_1CA29AD0C(uint64_t a1, id *a2)
{
  v3 = sub_1CA94C398();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CA29AD8C()
{
  v0 = sub_1CA94C3A8();
  v1 = MEMORY[0x1CCAA13A0](v0);

  return v1;
}

uint64_t sub_1CA29ADC4(uint64_t a1, id *a2)
{
  result = sub_1CA94C388();
  *a2 = 0;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CA29AE78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA29AE98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1CA29B66C()
{
  sub_1CA94C3A8();
  v0 = sub_1CA94C368();

  return v0;
}

id sub_1CA29B784()
{
  v36 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x4669577465534657;
  *(inited + 48) = 0xEF6E6F6974634169;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v23;
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 1768319351;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v23;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 304) = v23;
  *(inited + 272) = v29;
  *(inited + 280) = 0xD00000000000004FLL;
  *(inited + 288) = 0x80000001CA99AEC0;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v35 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x6574617473;
  *(v30 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v35;
  *(v31 + 64) = v23;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0x65756C61566E4FLL;
  *(v31 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v32 = @"Key";
  sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C();
  v33 = sub_1CA94C1E8();
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v33;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA29BCE4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA29BD60()
{
  v0 = sub_1CA949D18();
  v152 = *(v0 - 8);
  v153 = v0;
  v1 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v151 = v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFShareAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v159 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v162 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v163 = v14;
  v15 = v141 - v162;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v158 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v160 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v161 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v141 - v161;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v159, v8, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v159 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v157 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v150 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v155 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v156 = v141;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v141 - v162;
  sub_1CA948D98();
  v33 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v141 - v161;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v155, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v159;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v157;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v37;
  *(inited + 152) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F19D8;
  *(inited + 184) = v38;
  *(inited + 192) = @"IconColor";
  v155 = v38;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000013;
  *(inited + 248) = 0x80000001CA99AFE0;
  *(inited + 264) = v39;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v39;
  *(inited + 312) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 216) = v38;
  *(v40 + 184) = 0xE500000000000000;
  *(v40 + 192) = &unk_1F49F1A08;
  v42 = @"DisabledOnPlatforms";
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v47;
  *(inited + 344) = v48;
  *(inited + 352) = @"InputPassthrough";
  *(inited + 360) = 1;
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  v157 = v141;
  MEMORY[0x1EEE9AC00](v54);
  v57 = v141 - v162;
  sub_1CA948D98();
  v58 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v141 - v161;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  *(inited + 424) = v159;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v157 = swift_allocObject();
  *(v157 + 1) = xmmword_1CA981360;
  v156 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CA981370;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD000000000000019;
  *(v61 + 48) = 0x80000001CA99B030;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 64) = MEMORY[0x1E69E6158];
  *(v61 + 72) = @"Key";
  *(v61 + 80) = 0x7475706E494657;
  *(v61 + 88) = 0xE700000000000000;
  *(v61 + 104) = v62;
  *(v61 + 112) = @"Label";
  v63 = @"Class";
  v64 = @"Key";
  v65 = @"Label";
  v146 = v63;
  v147 = v64;
  v148 = v65;
  v66 = @"Parameters";
  v67 = sub_1CA94C438();
  v143 = v68;
  v144 = v67;
  v69 = sub_1CA94C438();
  v142 = v70;
  v145 = v141;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v162;
  sub_1CA948D98();
  v72 = v158;
  v73 = [v158 bundleURL];
  v141[1] = v141;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v141 - v161;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 120) = sub_1CA2F9F14(v144, v143, v69, v142, 0, 0, v141 - v71, v74);
  v76 = v159;
  *(v61 + 144) = v159;
  *(v61 + 152) = @"Placeholder";
  v77 = @"Placeholder";
  v78 = sub_1CA94C438();
  v143 = v79;
  v144 = v78;
  v142 = sub_1CA94C438();
  v81 = v80;
  v145 = v141;
  MEMORY[0x1EEE9AC00](v142);
  v82 = v141 - v71;
  sub_1CA948D98();
  v83 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v141 - v161;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 160) = sub_1CA2F9F14(v144, v143, v142, v81, 0, 0, v82, v84);
  *(v61 + 184) = v76;
  *(v61 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v86 = swift_allocObject();
  *(v86 + 16) = v150;
  v87 = @"PreferredTypes";
  v88 = v151;
  sub_1CA949CA8();
  v89 = sub_1CA949C68();
  v91 = v90;
  (*(v152 + 8))(v88, v153);
  *(v86 + 32) = v89;
  *(v86 + 40) = v91;
  v92 = v155;
  *(v61 + 224) = v155;
  *(v61 + 200) = v86;
  _s3__C3KeyVMa_0(0);
  v153 = v93;
  v152 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v157[4] = sub_1CA2F864C();
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1CA981380;
  *(v94 + 32) = v146;
  *(v94 + 40) = 0xD000000000000014;
  *(v94 + 48) = 0x80000001CA99B070;
  v95 = MEMORY[0x1E69E6158];
  *(v94 + 64) = MEMORY[0x1E69E6158];
  *(v94 + 72) = @"DisallowedVariableTypes";
  *(v94 + 80) = &unk_1F49F1A38;
  v96 = v147;
  *(v94 + 104) = v92;
  *(v94 + 112) = v96;
  *(v94 + 120) = 0x7070414657;
  *(v94 + 128) = 0xE500000000000000;
  v97 = v148;
  *(v94 + 144) = v95;
  *(v94 + 152) = v97;
  v98 = @"DisallowedVariableTypes";
  v99 = sub_1CA94C438();
  v149 = v100;
  *&v150 = v99;
  v101 = sub_1CA94C438();
  v148 = v102;
  v151 = v141;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v141 - v162;
  sub_1CA948D98();
  v104 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v161;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 160) = sub_1CA2F9F14(v150, v149, v101, v148, 0, 0, v103, v141 - v105);
  *(v94 + 184) = v159;
  *(v94 + 192) = @"LegacyKey";
  *(v94 + 200) = 0x6564497070414657;
  *(v94 + 208) = 0xEF7265696669746ELL;
  *(v94 + 224) = MEMORY[0x1E69E6158];
  *(v94 + 232) = @"Prompt";
  v107 = @"LegacyKey";
  v108 = @"Prompt";
  v109 = sub_1CA94C438();
  v149 = v110;
  *&v150 = v109;
  v111 = sub_1CA94C438();
  v113 = v112;
  v151 = v141;
  MEMORY[0x1EEE9AC00](v111);
  v114 = v141 - v162;
  sub_1CA948D98();
  v115 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v150, v149, v111, v113, 0, 0, v114, v141 - v105);
  *(v94 + 264) = v159;
  *(v94 + 240) = v117;
  sub_1CA94C1E8();
  v118 = sub_1CA2F864C();
  v119 = v157;
  v157[5] = v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v119;
  *(inited + 464) = v120;
  *(inited + 472) = @"ParameterSummary";
  v121 = @"ParameterSummary";
  v122 = sub_1CA94C438();
  v124 = v123;
  v125 = sub_1CA94C438();
  v127 = v126;
  v159 = v141;
  MEMORY[0x1EEE9AC00](v125);
  v128 = v141 - v162;
  sub_1CA948D98();
  v129 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v141 - v161;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v122, v124, v125, v127, 0, 0, v128, v130);
  v133 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v134 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v133;
  *(inited + 504) = v134;
  *(inited + 512) = @"RequiredResources";
  v135 = v155;
  *(inited + 544) = v155;
  *(inited + 520) = &unk_1F49F1A78;
  *(inited + 552) = @"UserInterfaceClasses";
  v136 = @"RequiredResources";
  v137 = @"UserInterfaceClasses";
  v138 = sub_1CA94C1E8();
  *(inited + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 560) = v138;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v135;
  *(inited + 600) = &unk_1F49F1B08;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v139 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA29CF44(unint64_t *a1, void (*a2)(uint64_t))
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

id WFHomeScreenController.add(entry:name:symbolName:backgroundColor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_1CA94C368();
  v12 = sub_1CA94C368();
  v18[0] = 0;
  if (v10)
  {
    v13 = [v7 addAppShortcutToHomeScreen:v9 withName:v11 symbolName:v12 backgroundColor:a6 error:v18];
  }

  else
  {
    v13 = [v7 addWorkflowToHomeScreen:v9 withName:v11 symbolName:v12 backgroundColor:a6 error:v18];
  }

  v14 = v13;

  if (v14)
  {
    result = v18[0];
  }

  else
  {
    v16 = v18[0];
    sub_1CA948AD8();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

id WFHomeScreenController.add(entry:name:image:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = sub_1CA94C368();
  v15[0] = 0;
  if (v8)
  {
    v10 = [v5 addAppShortcutToHomeScreen:v7 withName:v9 image:a4 error:v15];
  }

  else
  {
    v10 = [v5 addWorkflowToHomeScreen:v7 withName:v9 image:a4 error:v15];
  }

  v11 = v10;

  if (v11)
  {
    result = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_1CA948AD8();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

id WFHomeScreenController.add(entry:name:lightImage:darkImage:tintableImage:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = sub_1CA94C368();
  v19[0] = 0;
  if (v12)
  {
    v14 = [v7 addAppShortcutToHomeScreen:v11 withName:v13 image:a4 darkImage:a5 tintableImage:a6 error:v19];
  }

  else
  {
    v14 = [v7 addWorkflowToHomeScreen:v11 withName:v13 image:a4 darkImage:a5 tintableImage:a6 error:v19];
  }

  v15 = v14;

  if (v15)
  {
    result = v19[0];
  }

  else
  {
    v17 = v19[0];
    sub_1CA948AD8();

    result = swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1CA29D2E8()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFFileAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v12;
  v13 = &v113 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v125 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v123 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v124 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v113 - v124;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v119 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v121 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = &v113;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v113 - v126;
  sub_1CA948D98();
  v33 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v113 - v124;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v122;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v119;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C6C69662E636F64;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v119 = &v113;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v113 - v126;
  sub_1CA948D98();
  v50 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v113 - v124;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 344) = v122;
  *(inited + 352) = @"Output";
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 96) = 1;
  *(v53 + 120) = v54;
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v117 = v57;
  v58 = sub_1CA94C438();
  v60 = v59;
  v118 = &v113;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v113 - v126;
  sub_1CA948D98();
  v62 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v113 - v124;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v56, v117, v58, v60, 0, 0, v61, v63);
  *(v53 + 168) = v122;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v65;
  v66 = v65;
  v118 = v65;
  *(v53 + 192) = &unk_1F49F1B78;
  v67 = MEMORY[0x1E69E6158];
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v68;
  *(inited + 384) = v69;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981380;
  *(v70 + 32) = @"AllowsMultipleValues";
  *(v70 + 40) = 1;
  *(v70 + 64) = MEMORY[0x1E69E6370];
  *(v70 + 72) = @"Class";
  *(v70 + 80) = 0xD000000000000015;
  *(v70 + 88) = 0x80000001CA99B1E0;
  *(v70 + 104) = v67;
  *(v70 + 112) = @"FilePickerSupportedTypes";
  *(v70 + 120) = &unk_1F49F1BA8;
  *(v70 + 144) = v66;
  *(v70 + 152) = @"Key";
  *(v70 + 160) = 0x656C69464657;
  *(v70 + 168) = 0xE600000000000000;
  *(v70 + 184) = v67;
  *(v70 + 192) = @"Label";
  v71 = @"Parameters";
  v72 = @"AllowsMultipleValues";
  v73 = @"Class";
  v74 = @"FilePickerSupportedTypes";
  v75 = @"Key";
  v76 = @"Label";
  v77 = sub_1CA94C438();
  v114 = v78;
  v79 = sub_1CA94C438();
  v81 = v80;
  v115 = &v113;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v113 - v126;
  sub_1CA948D98();
  v83 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v113 - v124;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 200) = sub_1CA2F9F14(v77, v114, v79, v81, 0, 0, v82, v84);
  *(v70 + 224) = v122;
  *(v70 + 232) = @"ShowsFullContextualPath";
  *(v70 + 264) = MEMORY[0x1E69E6370];
  *(v70 + 240) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v86 = @"ShowsFullContextualPath";
  sub_1CA94C1E8();
  v87 = sub_1CA2F864C();
  v88 = v117;
  *(v117 + 32) = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v88;
  *(inited + 424) = v89;
  *(inited + 432) = @"ParameterSummary";
  v90 = @"ParameterSummary";
  v91 = sub_1CA94C438();
  v93 = v92;
  v94 = sub_1CA94C438();
  v96 = v95;
  v122 = &v113;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v113 - v126;
  sub_1CA948D98();
  v98 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v113 - v124;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  v102 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v103 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v102;
  *(inited + 464) = v103;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F49F1BE8;
  *(inited + 504) = v118;
  *(inited + 512) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v104 = swift_allocObject();
  *(v104 + 16) = v121;
  v105 = swift_initStackObject();
  *(v105 + 16) = xmmword_1CA97EDF0;
  *(v105 + 32) = 0xD000000000000011;
  *(v105 + 40) = 0x80000001CA99B240;
  v106 = swift_allocObject();
  *(v106 + 16) = v121;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1CA9813C0;
  strcpy((v107 + 32), "WFParameterKey");
  *(v107 + 47) = -18;
  *(v107 + 48) = 0xD000000000000010;
  *(v107 + 56) = 0x80000001CA99B260;
  v108 = MEMORY[0x1E69E6158];
  *(v107 + 72) = MEMORY[0x1E69E6158];
  *(v107 + 80) = 0xD000000000000010;
  *(v107 + 88) = 0x80000001CA993570;
  *(v107 + 96) = 1;
  *(v107 + 120) = MEMORY[0x1E69E6370];
  *(v107 + 128) = 0x72756F7365524657;
  *(v107 + 168) = v108;
  *(v107 + 136) = 0xEF7373616C436563;
  *(v107 + 144) = 0xD00000000000001BLL;
  *(v107 + 152) = 0x80000001CA993590;
  v109 = @"RemoteExecuteOnPlatforms";
  v110 = @"RequiredResources";
  *(v106 + 32) = sub_1CA94C1E8();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v105 + 48) = v106;
  *(v105 + 72) = v111;
  *(v105 + 80) = 0x72756F7365524657;
  *(v105 + 120) = v108;
  *(v105 + 88) = 0xEF7373616C436563;
  *(v105 + 96) = 0xD000000000000019;
  *(v105 + 104) = 0x80000001CA9932D0;
  *(v104 + 32) = sub_1CA94C1E8();
  *(inited + 544) = v111;
  *(inited + 520) = v104;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA29E2D4()
{
  v74 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99B290;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v75 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = v11;
  v12 = &v70 - v79;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v76 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v77 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v70 - v78;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v75, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v75 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v73 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v71 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v72 = &v70;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - v79;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v70 - v78;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v71, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v75;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v73;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1802398032;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6569762E74786574;
  *(inited + 208) = 0xEF7265646E696677;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v73 = &v70;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v70 - v79;
  sub_1CA948D98();
  v46 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v70 - v78;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v75;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA9813C0;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 96) = 1;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x7365707954;
  *(v49 + 136) = 0xE500000000000000;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 168) = v75;
  *(v49 + 144) = &unk_1F49F1C18;
  v51 = @"Output";
  v52 = sub_1CA94C1E8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v52;
  *(inited + 304) = v53;
  *(inited + 312) = @"ParameterSummary";
  v54 = @"ParameterSummary";
  v55 = sub_1CA94C438();
  v57 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v73 = &v70;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v70 - v79;
  sub_1CA948D98();
  v62 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v70 - v78;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v63);
  v66 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v67 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v66;
  *(inited + 344) = v67;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = v75;
  *(inited + 360) = &unk_1F49F1C48;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v68 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA29EBDC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA29EC58()
{
  v111 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA99B3B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = v12;
  v117 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v103 - v117;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v112 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v115 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v116 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v103 - v116;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v113 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v110 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v108 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v109 = &v103;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v103 - v117;
  sub_1CA948D98();
  v30 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v103 - v116;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v108, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v113;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v110;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA99B480;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000022;
  *(inited + 208) = 0x80000001CA99B4A0;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 1954047316;
  *(v36 + 104) = 0xE400000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  v38 = v37;
  *(v36 + 184) = 0xE500000000000000;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v110;
  *(v36 + 192) = &unk_1F49F1C78;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v109 = &v103;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v103 - v117;
  sub_1CA948D98();
  v53 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v103 - v116;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v113;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v109 = swift_allocObject();
  *(v109 + 1) = xmmword_1CA9813B0;
  v108 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981400;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"DefaultValue";
  *(v56 + 80) = 0;
  *(v56 + 88) = 0xE000000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Key";
  *(v56 + 120) = 1954047316;
  *(v56 + 128) = 0xE400000000000000;
  *(v56 + 144) = v57;
  *(v56 + 152) = @"Label";
  v58 = @"Parameters";
  v59 = @"Class";
  v60 = @"DefaultValue";
  v61 = @"Key";
  v62 = @"Label";
  v63 = sub_1CA94C438();
  v105 = v64;
  v106 = v63;
  v65 = sub_1CA94C438();
  v104 = v66;
  v107 = &v103;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v103 - v117;
  sub_1CA948D98();
  v68 = v112;
  v69 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v103 - v116;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 160) = sub_1CA2F9F14(v106, v105, v65, v104, 0, 0, v67, v70);
  *(v56 + 184) = v113;
  *(v56 + 192) = @"Multiline";
  *(v56 + 200) = 1;
  *(v56 + 224) = MEMORY[0x1E69E6370];
  *(v56 + 232) = @"Placeholder";
  v72 = @"Multiline";
  v73 = @"Placeholder";
  v74 = sub_1CA94C438();
  v105 = v75;
  v106 = v74;
  v76 = sub_1CA94C438();
  v78 = v77;
  v107 = &v103;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v103 - v117;
  sub_1CA948D98();
  v80 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v103 - v116;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v106, v105, v76, v78, 0, 0, v79, v81);
  *(v56 + 264) = v113;
  *(v56 + 240) = v83;
  *(v56 + 272) = sub_1CA94C368();
  *(v56 + 304) = MEMORY[0x1E69E6370];
  *(v56 + 280) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v84 = sub_1CA2F864C();
  v85 = v109;
  v109[4] = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v85;
  *(inited + 384) = v86;
  *(inited + 392) = @"ParameterSummary";
  v87 = @"ParameterSummary";
  v88 = sub_1CA94C438();
  v90 = v89;
  v91 = sub_1CA94C438();
  v93 = v92;
  v113 = &v103;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v103 - v117;
  sub_1CA948D98();
  v95 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v103 - v116;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v88, v90, v91, v93, 0, 0, v94, v96);
  v99 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v100 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v99;
  *(inited + 424) = v100;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v110;
  *(inited + 440) = &unk_1F49F1CF8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v101 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA29F9D8()
{
  v261 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA99B590;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v280 = v12;
  v276 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v252 - v276;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v278 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v279 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v277 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v252 - v277;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *&v281 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v275 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v270 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v274 = &v252;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v252 - v276;
  sub_1CA948D98();
  v31 = [v278 bundleURL];
  v269 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v252 - v277;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v281;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v275;
  v37 = sub_1CA6B3784();
  v38 = v269;
  v269[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 1953392980;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0x772E657275676966;
  v38[26] = 0xEB00000000657661;
  v38[28] = v39;
  v38[29] = @"IconSymbolColor";
  v38[30] = 0x6E65657247;
  v38[31] = 0xE500000000000000;
  v38[33] = v39;
  v38[34] = @"Input";
  v40 = v39;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 0;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x4C66664F706F7244;
  *(v41 + 104) = 0xEF6E6F697461636FLL;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 0;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 184) = 0xE500000000000000;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v273;
  *(v41 + 192) = &unk_1F49F1D28;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v38[38] = v275;
  v38[35] = v47;
  v38[39] = sub_1CA94C368();
  v38[40] = 0xD000000000000025;
  v38[41] = 0x80000001CA99B630;
  v38[43] = v40;
  v38[44] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v274 = &v252;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v252 - v276;
  sub_1CA948D98();
  v56 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v252 - v277;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38[45] = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v38[48] = v281;
  v38[49] = @"Output";
  v59 = swift_allocObject();
  v266 = xmmword_1CA9813C0;
  *(v59 + 16) = xmmword_1CA9813C0;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 0;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x7365707954;
  v61 = v273;
  *(v59 + 168) = v273;
  *(v59 + 136) = 0xE500000000000000;
  *(v59 + 144) = &unk_1F49F1D58;
  v62 = @"Output";
  v38[50] = sub_1CA94C1E8();
  v38[53] = v275;
  v38[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v275 = swift_allocObject();
  *(v275 + 16) = xmmword_1CA981410;
  v274 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_allocObject();
  v260 = xmmword_1CA981370;
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD00000000000001ALL;
  *(v63 + 48) = 0x80000001CA99B690;
  *(v63 + 64) = v60;
  *(v63 + 72) = @"DisallowedVariableTypes";
  *(v63 + 104) = v61;
  *(v63 + 80) = &unk_1F49F1D88;
  v267 = @"Class";
  v64 = @"Parameters";
  v65 = @"DisallowedVariableTypes";
  v66 = sub_1CA94C368();
  v265 = 0xD000000000000013;
  *(v63 + 112) = v66;
  *(v63 + 120) = 0xD000000000000013;
  *(v63 + 128) = 0x80000001CA99B6B0;
  *(v63 + 144) = v60;
  *(v63 + 152) = @"Key";
  *(v63 + 160) = 0xD000000000000013;
  *(v63 + 168) = 0x80000001CA99B6D0;
  *(v63 + 184) = v60;
  *(v63 + 192) = @"Label";
  v67 = @"Key";
  v68 = @"Label";
  v69 = v67;
  v70 = v68;
  v258 = v69;
  v259 = v70;
  v71 = sub_1CA94C438();
  v73 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  v273 = &v252;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v252 - v276;
  sub_1CA948D98();
  v78 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v252 - v277;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v71, v73, v74, v76, 0, 0, v77, v79);
  *(v63 + 224) = v281;
  *(v63 + 200) = v81;
  _s3__C3KeyVMa_0(0);
  v273 = v82;
  v272 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v275 + 32) = sub_1CA2F864C();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CA9813E0;
  *(v83 + 32) = sub_1CA94C368();
  *(v83 + 40) = 1;
  v84 = MEMORY[0x1E69E6370];
  *(v83 + 64) = MEMORY[0x1E69E6370];
  *(v83 + 72) = @"AllowsMultipleValues";
  *(v83 + 80) = 0;
  v85 = v84;
  v86 = v267;
  *(v83 + 104) = v84;
  *(v83 + 112) = v86;
  v264 = 0x80000001CA99B730;
  v87 = MEMORY[0x1E69E6158];
  *(v83 + 144) = MEMORY[0x1E69E6158];
  *(v83 + 120) = v265;
  *(v83 + 128) = 0x80000001CA99B730;
  v88 = @"AllowsMultipleValues";
  v263 = v86;
  v262 = v88;
  v89 = sub_1CA94C368();
  *(v83 + 184) = v87;
  *(v83 + 152) = v89;
  *(v83 + 160) = 0xD000000000000010;
  *(v83 + 168) = 0x80000001CA99B770;
  v267 = 0xD000000000000018;
  *(v83 + 192) = sub_1CA94C368();
  *(v83 + 200) = 1;
  *(v83 + 224) = v85;
  *(v83 + 232) = @"IntentSlotName";
  strcpy((v83 + 240), "pickupLocation");
  *(v83 + 255) = -18;
  v90 = v258;
  v91 = v259;
  *(v83 + 264) = v87;
  *(v83 + 272) = v90;
  strcpy((v83 + 280), "PickupLocation");
  *(v83 + 295) = -18;
  *(v83 + 304) = v87;
  *(v83 + 312) = v91;
  v92 = @"IntentSlotName";
  v257 = v90;
  v258 = v91;
  v255 = v92;
  *&v256 = sub_1CA94C438();
  v254 = v93;
  v253 = sub_1CA94C438();
  v95 = v94;
  v259 = &v252;
  MEMORY[0x1EEE9AC00](v253);
  v96 = v276;
  sub_1CA948D98();
  v97 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v277;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 320) = sub_1CA2F9F14(v256, v254, v253, v95, 0, 0, &v252 - v96, &v252 - v98);
  *(v83 + 344) = v281;
  *(v83 + 352) = @"Prompt";
  v259 = @"Prompt";
  v100 = sub_1CA94C438();
  v253 = v101;
  v254 = v100;
  v102 = sub_1CA94C438();
  v252 = v103;
  *&v256 = &v252;
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948D98();
  v104 = v278;
  v105 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v254, v253, v102, v252, 0, 0, &v252 - v96, &v252 - v98);
  *(v83 + 384) = v281;
  *(v83 + 360) = v107;
  sub_1CA94C1E8();
  *(v275 + 40) = sub_1CA2F864C();
  v108 = swift_allocObject();
  v256 = xmmword_1CA981380;
  *(v108 + 16) = xmmword_1CA981380;
  v109 = v263;
  *(v108 + 32) = v262;
  *(v108 + 40) = 0;
  *(v108 + 64) = MEMORY[0x1E69E6370];
  *(v108 + 72) = v109;
  v110 = v264;
  *(v108 + 80) = v265;
  *(v108 + 88) = v110;
  v111 = MEMORY[0x1E69E6158];
  v112 = v255;
  *(v108 + 104) = MEMORY[0x1E69E6158];
  *(v108 + 112) = v112;
  *(v108 + 120) = 0x4C66664F706F7264;
  *(v108 + 128) = 0xEF6E6F697461636FLL;
  v113 = v257;
  v114 = v258;
  *(v108 + 144) = v111;
  *(v108 + 152) = v113;
  *(v108 + 160) = 0x4C66664F706F7244;
  *(v108 + 168) = 0xEF6E6F697461636FLL;
  *(v108 + 184) = v111;
  *(v108 + 192) = v114;
  v263 = v109;
  v265 = v113;
  v264 = v114;
  v258 = v112;
  v257 = sub_1CA94C438();
  v255 = v115;
  v254 = sub_1CA94C438();
  v117 = v116;
  v262 = &v252;
  MEMORY[0x1EEE9AC00](v254);
  sub_1CA948D98();
  v118 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v277;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 200) = sub_1CA2F9F14(v257, v255, v254, v117, 0, 0, &v252 - v96, &v252 - v119);
  v121 = v281;
  v122 = v259;
  *(v108 + 224) = v281;
  *(v108 + 232) = v122;
  v259 = sub_1CA94C438();
  v257 = v123;
  v124 = sub_1CA94C438();
  v255 = v125;
  v262 = &v252;
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948D98();
  v126 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v259, v257, v124, v255, 0, 0, &v252 - v96, &v252 - v119);
  *(v108 + 264) = v121;
  *(v108 + 240) = v128;
  sub_1CA94C1E8();
  *(v275 + 48) = sub_1CA2F864C();
  v129 = swift_allocObject();
  *(v129 + 16) = v256;
  v130 = v263;
  *(v129 + 32) = v263;
  *(v129 + 40) = 0xD000000000000015;
  *(v129 + 48) = 0x80000001CA99B8E0;
  v131 = MEMORY[0x1E69E6158];
  v132 = v258;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = v132;
  strcpy((v129 + 80), "rideOptionName");
  *(v129 + 95) = -18;
  v134 = v264;
  v133 = v265;
  *(v129 + 104) = v131;
  *(v129 + 112) = v133;
  *(v129 + 120) = 0x6974704F65646952;
  *(v129 + 128) = 0xEA00000000006E6FLL;
  *(v129 + 144) = v131;
  *(v129 + 152) = v134;
  v262 = v130;
  v265 = v133;
  v264 = v134;
  v263 = v132;
  v135 = sub_1CA94C438();
  v137 = v136;
  v138 = sub_1CA94C438();
  v140 = v139;
  v259 = &v252;
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v252 - v276;
  sub_1CA948D98();
  v142 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v252 - v277;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v135, v137, v138, v140, 0, 0, v141, v143);
  *(v129 + 184) = v281;
  *(v129 + 160) = v145;
  *(v129 + 192) = sub_1CA94C368();
  *(v129 + 200) = 0x7A69537974726150;
  *(v129 + 208) = 0xE900000000000065;
  v146 = MEMORY[0x1E69E6158];
  *(v129 + 224) = MEMORY[0x1E69E6158];
  *(v129 + 232) = @"RequiredResources";
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v147 = swift_allocObject();
  *(v147 + 16) = v270;
  v258 = @"RequiredResources";
  *(v147 + 32) = sub_1CA94C1E8();
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v129 + 264) = v257;
  *(v129 + 240) = v147;
  sub_1CA94C1E8();
  *(v275 + 56) = sub_1CA2F864C();
  v148 = swift_allocObject();
  *(v148 + 16) = v260;
  v149 = v267;
  *(v148 + 32) = v262;
  *(v148 + 40) = v149;
  *(v148 + 48) = 0x80000001CA99B930;
  v150 = v263;
  *(v148 + 64) = v146;
  *(v148 + 72) = v150;
  strcpy((v148 + 80), "paymentMethod");
  *(v148 + 94) = -4864;
  v151 = v265;
  *(v148 + 104) = v146;
  *(v148 + 112) = v151;
  strcpy((v148 + 120), "PaymentMethod");
  *(v148 + 134) = -4864;
  v152 = v264;
  *(v148 + 144) = v146;
  *(v148 + 152) = v152;
  v153 = sub_1CA94C438();
  v155 = v154;
  v156 = sub_1CA94C438();
  v158 = v157;
  *&v260 = &v252;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v252 - v276;
  sub_1CA948D98();
  v160 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v252 - v277;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v148 + 160) = sub_1CA2F9F14(v153, v155, v156, v158, 0, 0, v159, v161);
  v163 = v258;
  *(v148 + 184) = v281;
  *(v148 + 192) = v163;
  v164 = swift_allocObject();
  *(v164 + 16) = v270;
  v165 = MEMORY[0x1E69E6158];
  *(v164 + 32) = sub_1CA94C1E8();
  *(v148 + 224) = v257;
  *(v148 + 200) = v164;
  sub_1CA94C1E8();
  *(v275 + 64) = sub_1CA2F864C();
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_1CA981420;
  *(v166 + 32) = @"AllowsDecimalNumbers";
  *(v166 + 40) = 0;
  v167 = v262;
  *(v166 + 64) = MEMORY[0x1E69E6370];
  *(v166 + 72) = v167;
  *(v166 + 80) = 0xD000000000000012;
  *(v166 + 88) = 0x80000001CA99B980;
  *(v166 + 104) = v165;
  *(v166 + 112) = @"DefaultValue";
  v168 = MEMORY[0x1E69E6530];
  *(v166 + 120) = 1;
  v169 = v263;
  *(v166 + 144) = v168;
  *(v166 + 152) = v169;
  *(v166 + 160) = 0x7A69537974726170;
  *(v166 + 168) = 0xE900000000000065;
  v170 = v265;
  *(v166 + 184) = v165;
  *(v166 + 192) = v170;
  *(v166 + 200) = 0x7A69537974726150;
  *(v166 + 208) = 0xE900000000000065;
  v171 = v264;
  *(v166 + 224) = v165;
  *(v166 + 232) = v171;
  v172 = @"AllowsDecimalNumbers";
  v173 = @"DefaultValue";
  v174 = sub_1CA94C438();
  v264 = v175;
  v265 = v174;
  v176 = sub_1CA94C438();
  v263 = v177;
  v271 = &v252;
  MEMORY[0x1EEE9AC00](v176);
  v178 = &v252 - v276;
  sub_1CA948D98();
  v179 = v278;
  v180 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = v277;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 240) = sub_1CA2F9F14(v265, v264, v176, v263, 0, 0, v178, &v252 - v181);
  *(v166 + 264) = v281;
  *(v166 + 272) = @"MinimumValue";
  *(v166 + 280) = 1;
  *(v166 + 304) = MEMORY[0x1E69E6530];
  *(v166 + 312) = @"StepperDescription";
  v183 = @"MinimumValue";
  v184 = @"StepperDescription";
  v185 = sub_1CA94C438();
  v264 = v186;
  v265 = v185;
  v187 = sub_1CA94C438();
  v263 = v188;
  v271 = &v252;
  MEMORY[0x1EEE9AC00](v187);
  v189 = v276;
  sub_1CA948D98();
  v190 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 320) = sub_1CA2F9F14(v265, v264, v187, v263, 0, 0, &v252 - v189, &v252 - v181);
  *(v166 + 344) = v281;
  *(v166 + 352) = @"StepperNoun";
  v192 = @"StepperNoun";
  v193 = sub_1CA94C438();
  v271 = v193;
  v195 = v194;
  v265 = v194;
  v286 = 0;
  v287 = 0xE000000000000000;
  sub_1CA94D408();

  v286 = v193;
  v287 = v195;
  v284 = 10;
  v285 = 0xE100000000000000;
  v282 = 32;
  v283 = 0xE100000000000000;
  sub_1CA27BAF0();
  v286 = sub_1CA94D1B8();
  v287 = v196;
  v197 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v264 = &v252;
  v198 = v286;
  v263 = v287;
  MEMORY[0x1EEE9AC00](v197);
  sub_1CA948D98();
  v199 = v278;
  v200 = [v278 bundleURL];
  v262 = &v252;
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v252 - v277;
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 360) = sub_1CA2F9F14(v198, v263, v271, v265, 0, 0, &v252 - v189, v201);
  *(v166 + 384) = v281;
  *(v166 + 392) = @"StepperPrefix";
  v203 = @"StepperPrefix";
  v204 = sub_1CA94C438();
  v264 = v205;
  v265 = v204;
  v263 = sub_1CA94C438();
  v207 = v206;
  v271 = &v252;
  MEMORY[0x1EEE9AC00](v263);
  sub_1CA948D98();
  v208 = [v199 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v252 - v277;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v265, v264, v263, v207, 0, 0, &v252 - v189, v209);
  *(v166 + 424) = v281;
  *(v166 + 400) = v211;
  sub_1CA94C1E8();
  v212 = sub_1CA2F864C();
  v213 = v275;
  *(v275 + 72) = v212;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v215 = v269;
  v269[55] = v213;
  v215[58] = v214;
  v215[59] = @"ParameterSummary";
  v216 = @"ParameterSummary";
  v217 = sub_1CA94C438();
  v219 = v218;
  v220 = sub_1CA94C438();
  v222 = v221;
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v252 - v276;
  sub_1CA948D98();
  v224 = [v278 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v252 - v277;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v227 = sub_1CA2F9F14(v217, v219, v220, v222, 0, 0, v223, v225);
  v228 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v229 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v230 = v269;
  v269[60] = v228;
  v230[63] = v229;
  v230[64] = @"RequiredResources";
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v280 = swift_allocObject();
  v281 = xmmword_1CA97EDF0;
  *(v280 + 16) = xmmword_1CA97EDF0;
  v231 = swift_allocObject();
  *(v231 + 16) = v281;
  v278 = 0xD000000000000011;
  v279 = 0x80000001CA99B240;
  *(v231 + 32) = 0xD000000000000011;
  *(v231 + 40) = 0x80000001CA99B240;
  v232 = swift_allocObject();
  *(v232 + 16) = v270;
  v233 = swift_allocObject();
  *(v233 + 16) = v266;
  strcpy((v233 + 32), "WFParameterKey");
  *(v233 + 47) = -18;
  strcpy((v233 + 48), "PickupLocation");
  *(v233 + 63) = -18;
  v277 = 0x80000001CA993570;
  v234 = MEMORY[0x1E69E6158];
  *(v233 + 72) = MEMORY[0x1E69E6158];
  *(v233 + 80) = 0xD000000000000010;
  *(v233 + 88) = 0x80000001CA993570;
  v235 = @"RequiredResources";
  v236 = sub_1CA94C1E8();
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v233 + 96) = v236;
  *(v233 + 120) = v237;
  *(v233 + 128) = 0x72756F7365524657;
  v275 = 0x80000001CA993590;
  v276 = v237;
  *(v233 + 168) = v234;
  *(v233 + 136) = 0xEF7373616C436563;
  *(v233 + 144) = 0xD00000000000001BLL;
  *(v233 + 152) = 0x80000001CA993590;
  *(v232 + 32) = sub_1CA94C1E8();
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v231 + 48) = v232;
  *(v231 + 72) = v238;
  *(v231 + 80) = 0x72756F7365524657;
  v273 = 0x80000001CA994040;
  v239 = MEMORY[0x1E69E6158];
  *(v231 + 120) = MEMORY[0x1E69E6158];
  v240 = v267;
  *(v231 + 88) = 0xEF7373616C436563;
  *(v231 + 96) = v240;
  *(v231 + 104) = 0x80000001CA994040;
  v241 = v239;
  *(v280 + 32) = sub_1CA94C1E8();
  v242 = swift_allocObject();
  *(v242 + 16) = v281;
  v243 = v279;
  *(v242 + 32) = v278;
  *(v242 + 40) = v243;
  v244 = swift_allocObject();
  *(v244 + 16) = v270;
  v245 = swift_allocObject();
  *(v245 + 16) = v266;
  strcpy((v245 + 32), "WFParameterKey");
  *(v245 + 47) = -18;
  *(v245 + 48) = 0x4C66664F706F7244;
  *(v245 + 56) = 0xEF6E6F697461636FLL;
  *(v245 + 72) = v241;
  *(v245 + 80) = 0xD000000000000010;
  *(v245 + 88) = v277;
  *(v245 + 96) = sub_1CA94C1E8();
  v246 = v275;
  *(v245 + 120) = v276;
  *(v245 + 128) = 0x72756F7365524657;
  *(v245 + 168) = v241;
  *(v245 + 136) = 0xEF7373616C436563;
  *(v245 + 144) = 0xD00000000000001BLL;
  *(v245 + 152) = v246;
  *(v244 + 32) = sub_1CA94C1E8();
  *(v242 + 48) = v244;
  *(v242 + 72) = v238;
  *(v242 + 80) = 0x72756F7365524657;
  *(v242 + 120) = v241;
  v247 = v267;
  *(v242 + 88) = 0xEF7373616C436563;
  *(v242 + 96) = v247;
  *(v242 + 104) = v273;
  v248 = sub_1CA94C1E8();
  v249 = v280;
  *(v280 + 40) = v248;
  v250 = v269;
  v269[68] = v238;
  v250[65] = v249;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2A1CC0()
{
  v183 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA99BB20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v193 = v12;
  v191 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v176 - v191;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v189 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v192 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v190 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v176 - v190;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v188 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v186 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v184 = sub_1CA94C438();
  v182 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v185 = &v176;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v191;
  sub_1CA948D98();
  v29 = v189;
  v30 = [v189 bundleURL];
  v187 = inited;
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v176 - v190;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v184, v182, v25, v27, 0, 0, &v176 - v28, v31);
  *(v21 + 64) = v188;
  *(v21 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v184 = sub_1CA94C438();
  v182 = v34;
  v35 = sub_1CA94C438();
  v37 = v36;
  v185 = &v176;
  MEMORY[0x1EEE9AC00](v35);
  sub_1CA948D98();
  v38 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = v190;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v184, v182, v35, v37, 0, 0, &v176 - v28, &v176 - v39);
  v41 = v188;
  *(v21 + 104) = v188;
  *(v21 + 112) = @"DescriptionSummary";
  v42 = @"DescriptionSummary";
  v184 = sub_1CA94C438();
  v182 = v43;
  v181 = sub_1CA94C438();
  v45 = v44;
  v185 = &v176;
  MEMORY[0x1EEE9AC00](v181);
  v46 = &v176 - v191;
  sub_1CA948D98();
  v47 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v184, v182, v181, v45, 0, 0, v46, &v176 - v39);
  *(v21 + 144) = v41;
  *(v21 + 120) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v50 = v186;
  v51 = sub_1CA6B3784();
  v52 = v187;
  v187[15] = v51;
  v52[18] = v50;
  v52[19] = @"IconColor";
  v52[20] = 0x656C70727550;
  v52[21] = 0xE600000000000000;
  v53 = MEMORY[0x1E69E6158];
  v52[23] = MEMORY[0x1E69E6158];
  v52[24] = @"IconSymbol";
  v52[25] = 0xD000000000000027;
  v52[26] = 0x80000001CA99BB90;
  v52[28] = v53;
  v52[29] = @"Input";
  v54 = v52;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v186 = xmmword_1CA981350;
  *(v55 + 16) = xmmword_1CA981350;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 48) = 0;
  *(v55 + 72) = v56;
  strcpy((v55 + 80), "ParameterKey");
  *(v55 + 93) = 0;
  *(v55 + 94) = -5120;
  *(v55 + 96) = 0x477475706E494657;
  *(v55 + 104) = 0xEA00000000004649;
  *(v55 + 120) = v53;
  *(v55 + 128) = 0x6465726975716552;
  *(v55 + 136) = 0xE800000000000000;
  *(v55 + 144) = 1;
  *(v55 + 168) = v56;
  *(v55 + 176) = 0x7365707954;
  v57 = v56;
  *(v55 + 184) = 0xE500000000000000;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 216) = v185;
  *(v55 + 192) = &unk_1F49F1EB8;
  v58 = @"IconColor";
  v59 = @"IconSymbol";
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v184 = v62;
  v54[30] = v61;
  v54[33] = v62;
  v54[34] = @"InputPassthrough";
  *(v54 + 280) = 0;
  v54[38] = v57;
  v54[39] = @"Name";
  v63 = @"InputPassthrough";
  v64 = @"Name";
  v180 = sub_1CA94C438();
  v66 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v181 = &v176;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v191;
  sub_1CA948D98();
  v71 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v176 - v190;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v180, v66, v67, v69, 0, 0, &v176 - v70, v72);
  v75 = v187;
  v76 = v188;
  v187[40] = v74;
  v75[43] = v76;
  v75[44] = @"Output";
  v77 = swift_allocObject();
  *(v77 + 16) = v186;
  *(v77 + 32) = 0x75736F6C63736944;
  *(v77 + 40) = 0xEF6C6576654C6572;
  *(v77 + 48) = 0x63696C627550;
  *(v77 + 56) = 0xE600000000000000;
  *(v77 + 72) = MEMORY[0x1E69E6158];
  *(v77 + 80) = 0x656C7069746C754DLL;
  *(v77 + 88) = 0xE800000000000000;
  *(v77 + 96) = 0;
  *(v77 + 120) = MEMORY[0x1E69E6370];
  *(v77 + 128) = 0x614E74757074754FLL;
  *(v77 + 136) = 0xEA0000000000656DLL;
  v78 = @"Output";
  v79 = sub_1CA94C438();
  v180 = v80;
  v181 = v79;
  v179 = sub_1CA94C438();
  v82 = v81;
  v182 = &v176;
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948D98();
  v83 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v176 - v190;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 144) = sub_1CA2F9F14(v181, v180, v179, v82, 0, 0, &v176 - v70, v84);
  *(v77 + 168) = v76;
  *(v77 + 176) = 0x7365707954;
  *(v77 + 216) = v185;
  *(v77 + 184) = 0xE500000000000000;
  *(v77 + 192) = &unk_1F49F1EE8;
  v86 = MEMORY[0x1E69E6158];
  v87 = sub_1CA94C1E8();
  v88 = v187;
  v187[45] = v87;
  v88[48] = v184;
  v88[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 1) = xmmword_1CA981360;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981380;
  *(v89 + 32) = @"Class";
  *(v89 + 40) = 0xD000000000000012;
  *(v89 + 48) = 0x80000001CA99B980;
  *(v89 + 64) = v86;
  *(v89 + 72) = @"DefaultValue";
  v90 = MEMORY[0x1E69E6530];
  *(v89 + 80) = 1;
  *(v89 + 104) = v90;
  *(v89 + 112) = @"Key";
  *(v89 + 120) = 0xD000000000000021;
  *(v89 + 128) = 0x80000001CA99BC40;
  *(v89 + 144) = v86;
  *(v89 + 152) = @"StepperDescription";
  v91 = @"Class";
  v92 = @"Key";
  v181 = v91;
  v180 = v92;
  v93 = @"Parameters";
  v94 = @"DefaultValue";
  v95 = @"StepperDescription";
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v179 = &v176;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v176 - v191;
  sub_1CA948D98();
  v103 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v176 - v190;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 160) = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  *(v89 + 184) = v188;
  *(v89 + 192) = @"StepperNoun";
  v106 = @"StepperNoun";
  v107 = sub_1CA94C438();
  v178 = v108;
  v179 = v107;
  v109 = v108;
  v198 = 0;
  v199 = 0xE000000000000000;
  sub_1CA94D408();

  v198 = v107;
  v199 = v109;
  v196 = 10;
  v197 = 0xE100000000000000;
  v194 = 32;
  v195 = 0xE100000000000000;
  sub_1CA27BAF0();
  v198 = sub_1CA94D1B8();
  v199 = v110;
  v111 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v177 = &v176;
  v112 = v198;
  v113 = v199;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v176 - v191;
  sub_1CA948D98();
  v115 = v189;
  v116 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v176 - v190;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 200) = sub_1CA2F9F14(v112, v113, v179, v178, 0, 0, v114, v117);
  v119 = v188;
  *(v89 + 224) = v188;
  *(v89 + 232) = @"StepperPrefix";
  v120 = @"StepperPrefix";
  v121 = sub_1CA94C438();
  v177 = v122;
  v178 = v121;
  v123 = sub_1CA94C438();
  v125 = v124;
  v179 = &v176;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v176 - v191;
  sub_1CA948D98();
  v127 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v190;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v178, v177, v123, v125, 0, 0, v126, &v176 - v128);
  *(v89 + 264) = v119;
  *(v89 + 240) = v130;
  _s3__C3KeyVMa_0(0);
  v179 = v131;
  v178 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v185[4] = sub_1CA2F864C();
  v132 = swift_allocObject();
  *(v132 + 16) = v186;
  *(v132 + 32) = v181;
  *(v132 + 40) = 0xD000000000000019;
  *(v132 + 48) = 0x80000001CA99B030;
  v133 = MEMORY[0x1E69E6158];
  v134 = v180;
  *(v132 + 64) = MEMORY[0x1E69E6158];
  *(v132 + 72) = v134;
  *(v132 + 80) = 0x477475706E494657;
  *(v132 + 88) = 0xEA00000000004649;
  *(v132 + 104) = v133;
  *(v132 + 112) = @"Label";
  v135 = @"Label";
  v136 = sub_1CA94C438();
  v181 = v137;
  v182 = v136;
  v138 = sub_1CA94C438();
  v180 = v139;
  *&v186 = &v176;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v191;
  sub_1CA948D98();
  v141 = v189;
  v142 = [v189 bundleURL];
  v177 = &v176;
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 120) = sub_1CA2F9F14(v182, v181, v138, v180, 0, 0, &v176 - v140, &v176 - v128);
  v144 = v188;
  *(v132 + 144) = v188;
  *(v132 + 152) = @"Placeholder";
  v145 = @"Placeholder";
  v146 = sub_1CA94C438();
  v181 = v147;
  v182 = v146;
  v148 = sub_1CA94C438();
  v150 = v149;
  *&v186 = &v176;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v176 - v140;
  sub_1CA948D98();
  v152 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v182, v181, v148, v150, 0, 0, v151, &v176 - v128);
  *(v132 + 184) = v144;
  *(v132 + 160) = v154;
  sub_1CA94C1E8();
  v155 = sub_1CA2F864C();
  v156 = v185;
  v185[5] = v155;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v158 = v187;
  v187[50] = v156;
  v158[53] = v157;
  v158[54] = @"ParameterSummary";
  v159 = @"ParameterSummary";
  v160 = sub_1CA94C438();
  v162 = v161;
  v163 = sub_1CA94C438();
  v165 = v164;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v176 - v191;
  sub_1CA948D98();
  v167 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v176 - v190;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v160, v162, v163, v165, 0, 0, v166, v168);
  v171 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v172 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v173 = v187;
  v187[55] = v171;
  v173[58] = v172;
  v173[59] = @"ResidentCompatible";
  v173[63] = MEMORY[0x1E69E6370];
  *(v173 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v174 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFChooseFromMenuItemSynonym.init(identity:synonym:)(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA948CD8();
  v6 = [v4 initWithIdentity:v5 synonym:v3];

  v7 = sub_1CA948D28();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id WFChooseFromMenuItemSynonym.synonym.getter@<X0>(void *a1@<X8>)
{
  result = [v1 synonym];
  *a1 = result;
  return result;
}

void __swiftcall WFChooseFromMenuItemParameterState.init(variableString:synonyms:subtitle:)(WFChooseFromMenuItemParameterState *__return_ptr retstr, WorkflowKit::WFVariableString variableString, Swift::OpaquePointer synonyms, WorkflowKit::WFVariableString subtitle)
{
  v4 = *variableString.variableString.super.isa;
  v5 = *synonyms._rawValue;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA2A3458();
  v7 = sub_1CA94C648();

  [v6 initWithVariableString:v4 synonyms:v7 subtitle:v5];
}

id WFChooseFromMenuItemParameterState.subtitle.getter@<X0>(void *a1@<X8>)
{
  result = [v1 subtitle];
  *a1 = result;
  return result;
}

unint64_t sub_1CA2A3458()
{
  result = qword_1EC443808;
  if (!qword_1EC443808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC443808);
  }

  return result;
}

id sub_1CA2A34D0()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = v12;
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v112 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v122 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v112 - v121;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA993510;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  *&v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v27 = sub_1CA94C438();
  v115 = v28;
  v116 = v27;
  v29 = sub_1CA94C438();
  v114 = v30;
  v117 = &v112;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v112 - v125;
  sub_1CA948D98();
  v32 = v123;
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v112 - v121;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v116, v115, v29, v114, 0, 0, v31, v34);
  *(v24 + 64) = v120;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438();
  v115 = v38;
  v116 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v117 = &v112;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v112 - v125;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v112 - v121;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v116, v115, v39, v41, 0, 0, v42, v44);
  *(v24 + 104) = v120;
  *(v24 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v118;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v47;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x65676E61724FLL;
  *(inited + 248) = 0xE600000000000000;
  v48 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x697261666173;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v48;
  *(inited + 312) = @"Input";
  v49 = v48;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v118 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x6761506265574657;
  *(v50 + 104) = 0xE900000000000065;
  *(v50 + 120) = v49;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v117;
  *(v50 + 192) = &unk_1F49F1F58;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v116 = v56;
  *(inited + 320) = v55;
  *(inited + 344) = v56;
  *(inited + 352) = @"InputPassthrough";
  *(inited + 360) = 0;
  *(inited + 384) = v51;
  *(inited + 392) = @"Name";
  v57 = @"InputPassthrough";
  v58 = @"Name";
  v59 = sub_1CA94C438();
  v112 = v60;
  v113 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  v114 = &v112;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v112 - v125;
  sub_1CA948D98();
  v65 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v121;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v113, v112, v61, v63, 0, 0, v64, &v112 - v66);
  v68 = v120;
  *(inited + 424) = v120;
  *(inited + 432) = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA9813C0;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x614E74757074754FLL;
  *(v69 + 88) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v113 = v72;
  v114 = v71;
  v112 = sub_1CA94C438();
  v74 = v73;
  v115 = &v112;
  MEMORY[0x1EEE9AC00](v112);
  v75 = &v112 - v125;
  sub_1CA948D98();
  v76 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 96) = sub_1CA2F9F14(v114, v113, v112, v74, 0, 0, v75, &v112 - v66);
  *(v69 + 120) = v68;
  *(v69 + 128) = 0x7365707954;
  *(v69 + 168) = v117;
  *(v69 + 136) = 0xE500000000000000;
  *(v69 + 144) = &unk_1F49F1F88;
  v78 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v116;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v79 = swift_allocObject();
  *(v79 + 16) = v118;
  *(v79 + 32) = @"Class";
  *(v79 + 40) = 0xD000000000000014;
  *(v79 + 48) = 0x80000001CA99B500;
  *(v79 + 64) = v78;
  *(v79 + 72) = @"Key";
  *(v79 + 80) = 0x6761506265574657;
  *(v79 + 88) = 0xE900000000000065;
  *(v79 + 104) = v78;
  *(v79 + 112) = @"KeyboardType";
  *(v79 + 120) = 5001813;
  *(v79 + 128) = 0xE300000000000000;
  *(v79 + 144) = v78;
  *(v79 + 152) = @"Label";
  v80 = @"Parameters";
  v81 = @"Class";
  v82 = @"Key";
  v83 = @"KeyboardType";
  v84 = @"Label";
  v85 = sub_1CA94C438();
  v115 = v86;
  v87 = sub_1CA94C438();
  v89 = v88;
  *&v118 = &v112;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v112 - v125;
  sub_1CA948D98();
  v91 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v112 - v121;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v85, v115, v87, v89, 0, 0, v90, v92);
  *(v79 + 184) = v120;
  *(v79 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v117;
  v117[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v96;
  *(inited + 504) = v97;
  *(inited + 512) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v120 = &v112;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v112 - v125;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v112 - v121;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v110;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2A4450()
{
  v177 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA99C050;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v192 = v12;
  v193 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v168 - v193;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v191 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v190 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v189 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v168 - v189;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v188 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v186 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v185 = &v168;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v168 - v193;
  sub_1CA948D98();
  v31 = [v191 bundleURL];
  v187 = inited;
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v168 - v189;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v32);
  *(v21 + 64) = v188;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v186;
  v36 = sub_1CA6B3784();
  v37 = v187;
  v187[15] = v36;
  v37[18] = v35;
  v37[19] = @"IconColor";
  v37[20] = 1702194242;
  v37[21] = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  v37[23] = MEMORY[0x1E69E6158];
  v37[24] = @"IconSymbol";
  v37[25] = 0xD000000000000015;
  v37[26] = 0x80000001CA99C0D0;
  v37[28] = v38;
  v37[29] = @"Input";
  v39 = v37;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v183 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v38;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  v42 = v41;
  *(v40 + 184) = 0xE500000000000000;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v186;
  *(v40 + 192) = &unk_1F49F1FB8;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v185 = v47;
  v39[30] = v46;
  v39[33] = v47;
  v39[34] = @"InputPassthrough";
  *(v39 + 280) = 0;
  v39[38] = v42;
  v39[39] = @"Name";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v181 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v182 = &v168;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v168 - v193;
  sub_1CA948D98();
  v56 = [v191 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v168 - v189;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v181, v51, v52, v54, 0, 0, v55, v57);
  v60 = v187;
  v61 = v188;
  v187[40] = v59;
  v60[43] = v61;
  v60[44] = @"Output";
  v62 = swift_initStackObject();
  *(v62 + 16) = v183;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 1;
  *(v62 + 120) = MEMORY[0x1E69E6370];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438();
  v181 = v65;
  v182 = v64;
  v180 = sub_1CA94C438();
  v67 = v66;
  v184 = &v168;
  MEMORY[0x1EEE9AC00](v180);
  v68 = &v168 - v193;
  sub_1CA948D98();
  v69 = [v191 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v189;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v182, v181, v180, v67, 0, 0, v68, &v168 - v70);
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 216) = v186;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 192) = &unk_1F49F1FF8;
  v72 = MEMORY[0x1E69E6158];
  v73 = sub_1CA94C1E8();
  v74 = v187;
  v187[45] = v73;
  v74[48] = v185;
  v74[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_1CA981470;
  v185 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v75 = swift_allocObject();
  *(v75 + 16) = v183;
  *(v75 + 32) = @"Class";
  *(v75 + 40) = 0xD000000000000019;
  *(v75 + 48) = 0x80000001CA99B030;
  *(v75 + 64) = v72;
  *(v75 + 72) = @"Key";
  *(v75 + 80) = 0x7475706E494657;
  *(v75 + 88) = 0xE700000000000000;
  *(v75 + 104) = v72;
  *(v75 + 112) = @"Label";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"Label";
  v79 = v76;
  v80 = v77;
  v81 = v78;
  v181 = v79;
  v182 = v80;
  *&v183 = v81;
  v82 = @"Parameters";
  v83 = sub_1CA94C438();
  v178 = v84;
  v179 = v83;
  v85 = sub_1CA94C438();
  *&v176 = v86;
  v180 = &v168;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v193;
  sub_1CA948D98();
  v88 = v191;
  v89 = [v191 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 120) = sub_1CA2F9F14(v179, v178, v85, v176, 0, 0, &v168 - v87, &v168 - v70);
  v91 = v188;
  *(v75 + 144) = v188;
  *(v75 + 152) = @"Placeholder";
  v180 = @"Placeholder";
  v178 = sub_1CA94C438();
  *&v176 = v92;
  v175 = sub_1CA94C438();
  v94 = v93;
  v179 = &v168;
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948D98();
  v95 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v178, v176, v175, v94, 0, 0, &v168 - v87, &v168 - v70);
  *(v75 + 184) = v91;
  *(v75 + 160) = v97;
  _s3__C3KeyVMa_0(0);
  v179 = v98;
  v178 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v186 + 32) = sub_1CA2F864C();
  v99 = swift_allocObject();
  v176 = xmmword_1CA981380;
  *(v99 + 16) = xmmword_1CA981380;
  *(v99 + 32) = @"AllowsDecimalNumbers";
  *(v99 + 40) = 0;
  v100 = v181;
  *(v99 + 64) = MEMORY[0x1E69E6370];
  *(v99 + 72) = v100;
  v175 = 0x80000001CA99C180;
  *(v99 + 80) = 0xD000000000000016;
  *(v99 + 88) = 0x80000001CA99C180;
  v101 = MEMORY[0x1E69E6158];
  *(v99 + 104) = MEMORY[0x1E69E6158];
  *(v99 + 112) = @"DefaultValue";
  v102 = MEMORY[0x1E69E6530];
  *(v99 + 120) = 1024;
  v103 = v182;
  *(v99 + 144) = v102;
  *(v99 + 152) = v103;
  *(v99 + 160) = 0x68746469574657;
  *(v99 + 168) = 0xE700000000000000;
  v104 = v183;
  *(v99 + 184) = v101;
  *(v99 + 192) = v104;
  v105 = @"AllowsDecimalNumbers";
  v106 = @"DefaultValue";
  v173 = v105;
  v174 = v106;
  v107 = sub_1CA94C438();
  v170 = v108;
  v171 = v107;
  v109 = sub_1CA94C438();
  v169 = v110;
  v172 = &v168;
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v168 - v193;
  sub_1CA948D98();
  v112 = v191;
  v113 = [v191 bundleURL];
  v168 = &v168;
  MEMORY[0x1EEE9AC00](v113);
  v114 = v189;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 200) = sub_1CA2F9F14(v171, v170, v109, v169, 0, 0, v111, &v168 - v114);
  v116 = v188;
  v117 = v180;
  *(v99 + 224) = v188;
  *(v99 + 232) = v117;
  v118 = sub_1CA94C438();
  v170 = v119;
  v171 = v118;
  v169 = sub_1CA94C438();
  v121 = v120;
  v172 = &v168;
  MEMORY[0x1EEE9AC00](v169);
  v122 = &v168 - v193;
  sub_1CA948D98();
  v123 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v171, v170, v169, v121, 0, 0, v122, &v168 - v114);
  *(v99 + 264) = v116;
  *(v99 + 240) = v125;
  sub_1CA94C1E8();
  *(v186 + 40) = sub_1CA2F864C();
  v126 = swift_allocObject();
  *(v126 + 16) = v176;
  *(v126 + 32) = v173;
  *(v126 + 40) = 0;
  v127 = v181;
  *(v126 + 64) = MEMORY[0x1E69E6370];
  *(v126 + 72) = v127;
  *(v126 + 80) = 0xD000000000000016;
  v128 = v174;
  *(v126 + 88) = v175;
  v129 = MEMORY[0x1E69E6158];
  *(v126 + 104) = MEMORY[0x1E69E6158];
  *(v126 + 112) = v128;
  *(v126 + 120) = 768;
  v130 = v182;
  *(v126 + 144) = MEMORY[0x1E69E6530];
  *(v126 + 152) = v130;
  *(v126 + 160) = 0x7468676965484657;
  *(v126 + 168) = 0xE800000000000000;
  v131 = v183;
  *(v126 + 184) = v129;
  *(v126 + 192) = v131;
  v132 = sub_1CA94C438();
  v182 = v133;
  *&v183 = v132;
  v134 = sub_1CA94C438();
  v181 = v135;
  v184 = &v168;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v193;
  sub_1CA948D98();
  v137 = v191;
  v138 = [v191 bundleURL];
  *&v176 = &v168;
  MEMORY[0x1EEE9AC00](v138);
  v139 = v189;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v126 + 200) = sub_1CA2F9F14(v183, v182, v134, v181, 0, 0, &v168 - v136, &v168 - v139);
  v141 = v188;
  v142 = v180;
  *(v126 + 224) = v188;
  *(v126 + 232) = v142;
  v143 = sub_1CA94C438();
  v182 = v144;
  *&v183 = v143;
  v181 = sub_1CA94C438();
  v146 = v145;
  v184 = &v168;
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948D98();
  v147 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v183, v182, v181, v146, 0, 0, &v168 - v136, &v168 - v139);
  *(v126 + 264) = v141;
  *(v126 + 240) = v149;
  sub_1CA94C1E8();
  v150 = sub_1CA2F864C();
  v151 = v186;
  *(v186 + 48) = v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v153 = v187;
  v187[50] = v151;
  v153[53] = v152;
  v153[54] = @"ParameterSummary";
  v154 = @"ParameterSummary";
  v155 = sub_1CA94C438();
  v157 = v156;
  v158 = sub_1CA94C438();
  v160 = v159;
  v188 = &v168;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v168 - v193;
  sub_1CA948D98();
  v162 = [v191 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v168 - v189;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v166 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v153[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v153[55] = v166;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2A5948(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CA2A5988(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1CA2A59D8(void *a1)
{
  sub_1CA677620(a1);
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() unitFromString_];

  if (v4)
  {
    v5 = [a1 magnitude];
    [v5 doubleValue];
    v7 = v6;

    v8 = [objc_allocWithZone(MEMORY[0x1E696AD28]) initWithDoubleValue:v4 unit:v7];
    return v8;
  }

  else
  {
    sub_1CA2A741C();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    v11 = v10;
    *(v10 + 24) = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
    *v11 = a1;
    *(v11 + 32) = 2;
    swift_willThrow();
    return a1;
  }
}

uint64_t sub_1CA2A5B18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = a4;
  v48 = a2;
  v49 = a3;
  v46 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = @"Label";
  v9 = @"Key";
  sub_1CA94C218();
  v10 = @"Label";
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA94C438();
  v16 = v15;
  v17 = sub_1CA948E58();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v11, v13, v14, v16, 0, 0, v20, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v27;
  *(inited + 104) = v28;
  *(inited + 112) = @"AllowsNegativeNumbers";
  v29 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v29;
  *(inited + 152) = @"FallbackToAllSupportedUnits";
  *(inited + 184) = v29;
  *(inited + 160) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v30 = @"AllowsNegativeNumbers";
  v31 = @"FallbackToAllSupportedUnits";
  sub_1CA94C1E8();
  v32 = sub_1CA2F864C();
  v33 = v47;
  if (v47)
  {
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_1CA981310;
    *(v34 + 32) = @"WFUnitType";
    type metadata accessor for WFMeasurementUnitType(0);
    *(v34 + 64) = v35;
    *(v34 + 40) = v33;
    v36 = v33;
    v37 = @"WFUnitType";
    sub_1CA94C1E8();
    v38 = sub_1CA94C1A8();

    v39 = [v32 definitionByAddingEntriesInDictionary_];

    v32 = v39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1CA981310;
  v41 = v49;
  *(v40 + 32) = v48;
  *(v40 + 40) = v41;
  v42 = objc_allocWithZone(WFUnitQuantityFieldParameter);
  sub_1CA94C218();
  *(v40 + 48) = [v42 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v43 = sub_1CA94C1E8();

  return v43;
}

uint64_t sub_1CA2A5F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA2A5F70, 0, 0);
}

uint64_t sub_1CA2A5F70()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0) && (v0[6] = *(*(v0[2] + 56) + 8 * v3), objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1CA2A60B4;
    v6 = v0[3];

    return sub_1CA32B3B4(v6);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v8(0);
  }
}

uint64_t sub_1CA2A60B4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1CA2A630C;
  }

  else
  {
    v7 = sub_1CA2A61BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1CA2A61BC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[8];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v0[9];
      v5 = v0[6];
      swift_unknownObjectRelease();
      sub_1CA2A59D8(v3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v4)
      {
LABEL_6:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_9_2();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
      v9 = v0[6];
      sub_1CA2A741C();
      OUTLINED_FUNCTION_4_0();
      swift_allocError();
      v11 = v10;
      v10[3] = swift_getObjectType();
      *v11 = v1;
      OUTLINED_FUNCTION_7_3();
      swift_unknownObjectRelease();
      v12 = v0[6];
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[6];
  swift_unknownObjectRelease_n();
  goto LABEL_6;
}

uint64_t sub_1CA2A630C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA2A6370()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = *v5;
  v6 = sub_1CA25B3D0(0, &qword_1EC443810, 0x1E696AD28);
  *(v0 + 64) = v6;
  v7 = *(MEMORY[0x1E6996C50] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1CA2A6434;

  return MEMORY[0x1EEDF81A0](v6);
}

uint64_t sub_1CA2A6434()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X2, X16 }
  }

  *(v5 + 80) = v3;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA2A6578()
{
  OUTLINED_FUNCTION_6();
  if (v0[10])
  {
    v1 = v0[10];
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[11] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v3[1] = sub_1CA2A66E4;
      v5 = v0[6];
      v4 = v0[7];
      v6 = v0[3];
      v7 = v0[4];

      return sub_1CA2A5F4C(v5, v4, v6, v7);
    }

    swift_unknownObjectRelease();
  }

  v9 = v0[2];
  sub_1CA2A741C();
  OUTLINED_FUNCTION_4_0();
  swift_allocError();
  v11 = v10;
  v10[3] = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  *v11 = v9;
  OUTLINED_FUNCTION_7_3();
  v12 = v9;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v13(0);
}

uint64_t sub_1CA2A66E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {
    v8 = sub_1CA2A689C;
  }

  else
  {
    v9 = v3[10];
    swift_unknownObjectRelease();
    v8 = sub_1CA2A67F4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA2A67F4()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[8];
    swift_unknownObjectRetain();
    v5 = sub_1CA94CFD8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[10];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v7(v5 & 1);
}

uint64_t sub_1CA2A689C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA2A6900()
{
  OUTLINED_FUNCTION_0();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_1CA25B3D0(0, &qword_1EC443810, 0x1E696AD28);
  v0[8] = v7;
  v8 = *(MEMORY[0x1E6996C50] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1CA2A69C0;

  return MEMORY[0x1EEDF81A0](v7);
}

uint64_t sub_1CA2A69C0()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 80) = v3;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA2A6B00()
{
  OUTLINED_FUNCTION_6();
  if (v0[10])
  {
    v1 = v0[10];
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[11] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v3[1] = sub_1CA2A6C6C;
      v4 = v0[5];
      v5 = v0[6];
      v6 = v0[4];
      v7 = v0[2];

      return sub_1CA2A5F4C(v7, v6, v4, v5);
    }

    swift_unknownObjectRelease();
  }

  v9 = v0[3];
  sub_1CA2A741C();
  OUTLINED_FUNCTION_4_0();
  swift_allocError();
  v11 = v10;
  v10[3] = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  *v11 = v9;
  OUTLINED_FUNCTION_7_3();
  v12 = v9;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA2A6C6C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;
  *(v2 + 112) = v0;

  if (v0)
  {
    v7 = sub_1CA2A703C;
  }

  else
  {
    v7 = sub_1CA2A6D74;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA2A6D74()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[11];
    swift_unknownObjectRelease();
    v4 = [v3 unit];
    if ([v1 canBeConvertedToUnit_])
    {
      v5 = v0[10];
      v6 = v0[11];
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
      v8 = *(v7 - 8);
      v9 = *(v8 + 64) + 15;
      v10 = swift_task_alloc();
      v11 = [v1 measurementByConvertingToUnit_];
      sub_1CA25B3D0(0, &qword_1EC443828, 0x1E696AFD0);
      sub_1CA948808();

      sub_1CA948828();
      v12 = sub_1CA94C8B8();
      (*(v8 + 8))(v10, v7);

      v13 = v12;
      [v6 doubleValue];
      v14 = sub_1CA94C8B8();
      v15 = [v14 compare_];

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_4();

      return v16(v15);
    }

    v20 = v0[10];
    v21 = v0[8];
    sub_1CA2A741C();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    *(v22 + 24) = v21;
    *v22 = v1;
    *(v22 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v0[10];
    sub_1CA2A741C();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_5();

  return v23();
}

uint64_t sub_1CA2A703C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2A709C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2A715C;

  return sub_1CA2A6370();
}

uint64_t sub_1CA2A715C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1CA2A7254()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2A731C;

  return sub_1CA2A6900();
}

uint64_t sub_1CA2A731C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_1CA2A741C()
{
  result = qword_1EC443818;
  if (!qword_1EC443818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443818);
  }

  return result;
}

unint64_t sub_1CA2A7470()
{
  result = qword_1EDB9F780;
  if (!qword_1EDB9F780)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F780);
  }

  return result;
}

id sub_1CA2A74FC()
{
  v288 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v295 = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99C250;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *&v310 = v12;
  v307 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v280 - v307;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  *&v306 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v308 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v309 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v280 - v309;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v305 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v303 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v301 = xmmword_1CA9813C0;
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v299 = v28;
  v300 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v302 = &v280;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v280 - v307;
  sub_1CA948D98();
  v33 = v306;
  v34 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v304 = inited;
  v35 = v309;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v300, v299, v29, v31, 0, 0, v32, &v280 - v35);
  *(v24 + 64) = v305;
  *(v24 + 72) = @"DescriptionResult";
  v37 = @"DescriptionResult";
  v38 = sub_1CA94C438();
  v299 = v39;
  v300 = v38;
  v298 = sub_1CA94C438();
  v41 = v40;
  v302 = &v280;
  MEMORY[0x1EEE9AC00](v298);
  v42 = &v280 - v307;
  sub_1CA948D98();
  v43 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v300, v299, v298, v41, 0, 0, v42, &v280 - v35);
  v45 = v305;
  *(v24 + 104) = v305;
  *(v24 + 112) = @"DescriptionSummary";
  v46 = @"DescriptionSummary";
  v47 = sub_1CA94C438();
  v299 = v48;
  v300 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v302 = &v280;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v280 - v307;
  sub_1CA948D98();
  v53 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v280 - v309;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v300, v299, v49, v51, 0, 0, v52, v54);
  *(v24 + 144) = v45;
  *(v24 + 120) = v56;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v57 = v303;
  v58 = sub_1CA6B3784();
  v59 = v304;
  v304[20] = v58;
  v59[23] = v57;
  v59[24] = @"IconColor";
  v59[25] = 1953392980;
  v59[26] = 0xE400000000000000;
  v60 = MEMORY[0x1E69E6158];
  v59[28] = MEMORY[0x1E69E6158];
  v59[29] = @"IconSymbol";
  v59[30] = 0xD000000000000030;
  v59[31] = 0x80000001CA99C320;
  v59[33] = v60;
  v59[34] = @"IconSymbolColor";
  v59[35] = 0x6E65657247;
  v59[36] = 0xE500000000000000;
  v59[38] = v60;
  v59[39] = @"Input";
  v61 = v60;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v292 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 48) = 0;
  *(v62 + 72) = v63;
  strcpy((v62 + 80), "ParameterKey");
  v294 = 0x80000001CA99C360;
  *(v62 + 93) = 0;
  *(v62 + 94) = -5120;
  *(v62 + 96) = 0xD000000000000018;
  *(v62 + 104) = 0x80000001CA99C360;
  *(v62 + 120) = v61;
  *(v62 + 128) = 0x6465726975716552;
  *(v62 + 136) = 0xE800000000000000;
  *(v62 + 144) = 1;
  *(v62 + 168) = v63;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v303;
  *(v62 + 192) = &unk_1F49F2068;
  v64 = @"IconColor";
  v65 = @"IconSymbol";
  v66 = @"IconSymbolColor";
  v67 = @"Input";
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v293 = v69;
  v59[40] = v68;
  v59[43] = v69;
  v59[44] = @"Name";
  v70 = @"Name";
  v71 = sub_1CA94C438();
  v73 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  v302 = &v280;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v307;
  sub_1CA948D98();
  v78 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v280 - v309;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v71, v73, v74, v76, 0, 0, &v280 - v77, v79);
  v82 = v304;
  v83 = v305;
  v304[45] = v81;
  v82[48] = v83;
  v82[49] = @"Output";
  v84 = swift_allocObject();
  *(v84 + 16) = v292;
  *(v84 + 32) = 0x75736F6C63736944;
  *(v84 + 40) = 0xEF6C6576654C6572;
  *(v84 + 48) = 0x63696C627550;
  *(v84 + 56) = 0xE600000000000000;
  *(v84 + 72) = MEMORY[0x1E69E6158];
  *(v84 + 80) = 0x656C7069746C754DLL;
  *(v84 + 88) = 0xE800000000000000;
  *(v84 + 96) = 0;
  *(v84 + 120) = MEMORY[0x1E69E6370];
  *(v84 + 128) = 0x614E74757074754FLL;
  *(v84 + 136) = 0xEA0000000000656DLL;
  v85 = @"Output";
  v86 = sub_1CA94C438();
  v300 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v302 = &v280;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v91 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v280 - v309;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 144) = sub_1CA2F9F14(v86, v300, v88, v90, 0, 0, &v280 - v77, v92);
  *(v84 + 168) = v83;
  *(v84 + 176) = 0x7365707954;
  *(v84 + 216) = v303;
  *(v84 + 184) = 0xE500000000000000;
  *(v84 + 192) = &unk_1F49F20B8;
  v94 = MEMORY[0x1E69E6158];
  v95 = sub_1CA94C1E8();
  v96 = v304;
  v304[50] = v95;
  v96[53] = v293;
  v96[54] = @"Parameters";
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_1CA981560;
  v302 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v97 = swift_allocObject();
  v290 = xmmword_1CA981380;
  *(v97 + 16) = xmmword_1CA981380;
  v289 = 0x80000001CA99B730;
  *(v97 + 64) = v94;
  v98 = v295;
  *(v97 + 32) = @"Class";
  *(v97 + 40) = v98;
  *(v97 + 48) = 0x80000001CA99B730;
  v286 = "WFLocationParameter";
  v284 = @"Class";
  v99 = @"Parameters";
  v285 = 0xD000000000000017;
  v100 = sub_1CA94C368();
  *(v97 + 104) = v94;
  *(v97 + 72) = v100;
  strcpy((v97 + 80), "HundredMeters");
  *(v97 + 94) = -4864;
  v283 = "NearestTenMeters";
  *(v97 + 112) = sub_1CA94C368();
  *(v97 + 120) = 1;
  *(v97 + 144) = MEMORY[0x1E69E6370];
  *(v97 + 152) = @"Key";
  v287 = 0x80000001CA99C3E0;
  v296 = 0xD00000000000001DLL;
  *(v97 + 160) = 0xD00000000000001DLL;
  *(v97 + 168) = 0x80000001CA99C3E0;
  *(v97 + 184) = v94;
  *(v97 + 192) = @"Label";
  v101 = @"Key";
  v102 = @"Label";
  v103 = v101;
  v104 = v102;
  v281 = v103;
  v280 = v104;
  v105 = sub_1CA94C438();
  v107 = v106;
  v108 = sub_1CA94C438();
  v110 = v109;
  v299 = &v280;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v280 - v307;
  sub_1CA948D98();
  v112 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v280 - v309;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v105, v107, v108, v110, 0, 0, v111, v113);
  *(v97 + 224) = v305;
  *(v97 + 200) = v115;
  v282 = "ustomLocation)";
  *(v97 + 232) = sub_1CA94C368();
  v116 = MEMORY[0x1E69E6370];
  *(v97 + 264) = MEMORY[0x1E69E6370];
  *(v97 + 240) = 1;
  _s3__C3KeyVMa_0(0);
  v299 = v117;
  v298 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v303 + 32) = sub_1CA2F864C();
  v118 = swift_allocObject();
  *(v118 + 16) = v290;
  v119 = MEMORY[0x1E69E6158];
  *(v118 + 64) = MEMORY[0x1E69E6158];
  v120 = v284;
  v121 = v295;
  *(v118 + 32) = v284;
  *(v118 + 40) = v121;
  *(v118 + 48) = v289;
  *&v290 = v120;
  v122 = sub_1CA94C368();
  *(v118 + 104) = v119;
  *(v118 + 72) = v122;
  strcpy((v118 + 80), "HundredMeters");
  *(v118 + 94) = -4864;
  *(v118 + 112) = sub_1CA94C368();
  *(v118 + 120) = 0;
  v123 = v281;
  *(v118 + 144) = v116;
  *(v118 + 152) = v123;
  *(v118 + 160) = 0xD000000000000018;
  *(v118 + 168) = v294;
  *(v118 + 184) = v119;
  v124 = v280;
  *(v118 + 192) = v280;
  v289 = v123;
  v286 = v124;
  v125 = sub_1CA94C438();
  v127 = v126;
  v128 = sub_1CA94C438();
  v130 = v129;
  v295 = &v280;
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v280 - v307;
  sub_1CA948D98();
  v132 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v280 - v309;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v125, v127, v128, v130, 0, 0, v131, v133);
  *(v118 + 224) = v305;
  *(v118 + 200) = v135;
  *(v118 + 232) = sub_1CA94C368();
  *(v118 + 264) = MEMORY[0x1E69E6370];
  *(v118 + 240) = 1;
  sub_1CA94C1E8();
  *(v303 + 40) = sub_1CA2F864C();
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1CA981370;
  v137 = v290;
  *(v136 + 32) = v290;
  *(v136 + 40) = 0xD000000000000016;
  *(v136 + 48) = 0x80000001CA99C4A0;
  v138 = MEMORY[0x1E69E6158];
  *(v136 + 64) = MEMORY[0x1E69E6158];
  *(v136 + 72) = @"DefaultValue";
  *(v136 + 80) = 0x746365726944;
  *(v136 + 88) = 0xE600000000000000;
  *(v136 + 104) = v138;
  *(v136 + 112) = @"Items";
  v295 = swift_allocObject();
  *(v295 + 1) = xmmword_1CA981570;
  v139 = @"Items";
  *&v290 = v137;
  v285 = v139;
  v140 = @"DefaultValue";
  v141 = sub_1CA94C438();
  v282 = v142;
  v283 = v141;
  v143 = sub_1CA94C438();
  v281 = v144;
  v284 = &v280;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v307;
  sub_1CA948D98();
  v146 = v306;
  v147 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v280 - v309;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v283, v282, v143, v281, 0, 0, &v280 - v145, v148);
  v151 = v295;
  v295[4] = v150;
  v152 = sub_1CA94C438();
  v282 = v153;
  v283 = v152;
  v154 = sub_1CA94C438();
  v281 = v155;
  v284 = &v280;
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948D98();
  v156 = [v146 bundleURL];
  v280 = &v280;
  MEMORY[0x1EEE9AC00](v156);
  v157 = v309;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151[5] = sub_1CA2F9F14(v283, v282, v154, v281, 0, 0, &v280 - v145, &v280 - v157);
  v159 = sub_1CA94C438();
  v282 = v160;
  v283 = v159;
  v161 = sub_1CA94C438();
  v281 = v162;
  v284 = &v280;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v163 = v306;
  v164 = [v306 bundleURL];
  v280 = &v280;
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v283, v282, v161, v281, 0, 0, &v280 - v145, &v280 - v157);
  v295[6] = v166;
  v167 = sub_1CA94C438();
  v282 = v168;
  v283 = v167;
  v281 = sub_1CA94C438();
  v170 = v169;
  v284 = &v280;
  MEMORY[0x1EEE9AC00](v281);
  v171 = v307;
  sub_1CA948D98();
  v172 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v283, v282, v281, v170, 0, 0, &v280 - v171, &v280 - v157);
  v175 = v295;
  v295[7] = v174;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v284 = v176;
  *(v136 + 120) = v175;
  v177 = v289;
  *(v136 + 144) = v176;
  *(v136 + 152) = v177;
  *(v136 + 160) = 0xD000000000000019;
  *(v136 + 168) = 0x80000001CA99C580;
  v178 = v286;
  *(v136 + 184) = MEMORY[0x1E69E6158];
  *(v136 + 192) = v178;
  v289 = v177;
  v295 = v178;
  v179 = sub_1CA94C438();
  v283 = v180;
  v181 = sub_1CA94C438();
  v183 = v182;
  v286 = &v280;
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948D98();
  v184 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v280 - v309;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v179, v283, v181, v183, 0, 0, &v280 - v171, v185);
  *(v136 + 224) = v305;
  *(v136 + 200) = v187;
  sub_1CA94C1E8();
  *(v303 + 48) = sub_1CA2F864C();
  v188 = swift_allocObject();
  *(v188 + 16) = v292;
  *(v188 + 32) = v290;
  *(v188 + 40) = 0xD000000000000020;
  *(v188 + 48) = 0x80000001CA99C5E0;
  v189 = v285;
  *(v188 + 64) = MEMORY[0x1E69E6158];
  *(v188 + 72) = v189;
  *&v292 = swift_allocObject();
  *(v292 + 16) = xmmword_1CA981360;
  v190 = sub_1CA94C438();
  v285 = v191;
  v286 = v190;
  v192 = sub_1CA94C438();
  v283 = v193;
  v291 = &v280;
  MEMORY[0x1EEE9AC00](v192);
  v194 = &v280 - v307;
  sub_1CA948D98();
  v195 = v306;
  v196 = [v306 bundleURL];
  v282 = &v280;
  MEMORY[0x1EEE9AC00](v196);
  v197 = v309;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v286, v285, v192, v283, 0, 0, v194, &v280 - v197);
  *(v292 + 32) = v199;
  v200 = sub_1CA94C438();
  v285 = v201;
  v286 = v200;
  v202 = sub_1CA94C438();
  v283 = v203;
  v291 = &v280;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v307;
  sub_1CA948D98();
  v205 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v286, v285, v202, v283, 0, 0, &v280 - v204, &v280 - v197);
  v208 = v292;
  *(v292 + 40) = v207;
  *(v188 + 80) = v208;
  v209 = v289;
  *(v188 + 104) = v284;
  *(v188 + 112) = v209;
  strcpy((v188 + 120), "WFDistanceUnit");
  *(v188 + 135) = -18;
  v210 = v295;
  *(v188 + 144) = MEMORY[0x1E69E6158];
  *(v188 + 152) = v210;
  v211 = sub_1CA94C438();
  v291 = v212;
  v213 = sub_1CA94C438();
  v215 = v214;
  *&v292 = &v280;
  MEMORY[0x1EEE9AC00](v213);
  sub_1CA948D98();
  v216 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v280 - v309;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v219 = sub_1CA2F9F14(v211, v291, v213, v215, 0, 0, &v280 - v204, v217);
  *(v188 + 184) = v305;
  *(v188 + 160) = v219;
  sub_1CA94C1E8();
  *(v303 + 56) = sub_1CA2F864C();
  v220 = swift_allocObject();
  *(v220 + 16) = v301;
  v300 = 0xD00000000000001BLL;
  *(v220 + 32) = v290;
  *(v220 + 40) = 0xD00000000000001BLL;
  *(v220 + 48) = 0x80000001CA99C680;
  v221 = MEMORY[0x1E69E6158];
  v222 = v289;
  *(v220 + 64) = MEMORY[0x1E69E6158];
  *(v220 + 72) = v222;
  *(v220 + 80) = 0x7963617275636341;
  *(v220 + 88) = 0xE800000000000000;
  v223 = v295;
  *(v220 + 104) = v221;
  *(v220 + 112) = v223;
  v224 = sub_1CA94C438();
  v226 = v225;
  v227 = sub_1CA94C438();
  v229 = v228;
  v295 = &v280;
  MEMORY[0x1EEE9AC00](v227);
  v230 = &v280 - v307;
  sub_1CA948D98();
  v231 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v231);
  v232 = &v280 - v309;
  sub_1CA948B68();

  v233 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v234 = sub_1CA2F9F14(v224, v226, v227, v229, 0, 0, v230, v232);
  *(v220 + 144) = v305;
  *(v220 + 120) = v234;
  sub_1CA94C1E8();
  v235 = sub_1CA2F864C();
  v236 = v303;
  *(v303 + 64) = v235;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v238 = v304;
  v304[55] = v236;
  v238[58] = v237;
  v238[59] = @"ParameterSummary";
  v239 = @"ParameterSummary";
  v240 = sub_1CA94C438();
  v242 = v241;
  v243 = sub_1CA94C438();
  v245 = v244;
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v280 - v307;
  sub_1CA948D98();
  v247 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v280 - v309;
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v250 = sub_1CA2F9F14(v240, v242, v243, v245, 0, 0, v246, v248);
  v251 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v252 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v253 = v304;
  v304[60] = v251;
  v253[63] = v252;
  v253[64] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v254 = swift_allocObject();
  *(v254 + 16) = v301;
  v255 = MEMORY[0x1E69E6158];
  *(v254 + 56) = MEMORY[0x1E69E6158];
  *(v254 + 32) = 0xD000000000000014;
  *(v254 + 40) = 0x80000001CA993450;
  v256 = swift_allocObject();
  v310 = xmmword_1CA97EDF0;
  *(v256 + 16) = xmmword_1CA97EDF0;
  v308 = 0xD000000000000011;
  v309 = 0x80000001CA99B240;
  *(v256 + 32) = 0xD000000000000011;
  *(v256 + 40) = 0x80000001CA99B240;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v257 = swift_allocObject();
  v306 = xmmword_1CA981310;
  *(v257 + 16) = xmmword_1CA981310;
  v258 = swift_allocObject();
  *(v258 + 16) = v301;
  strcpy((v258 + 32), "WFParameterKey");
  *(v258 + 47) = -18;
  v259 = v287;
  *(v258 + 48) = v296;
  *(v258 + 56) = v259;
  v305 = 0x80000001CA993570;
  v303 = 0xD000000000000010;
  *(v258 + 72) = v255;
  *(v258 + 80) = 0xD000000000000010;
  *(v258 + 88) = 0x80000001CA993570;
  v260 = @"RequiredResources";
  v261 = v255;
  v262 = sub_1CA94C1E8();
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  v302 = v263;
  *(v258 + 96) = v262;
  *(v258 + 120) = v263;
  *(v258 + 128) = 0x72756F7365524657;
  v299 = 0x80000001CA993590;
  *(v258 + 168) = v261;
  v264 = v300;
  *(v258 + 136) = 0xEF7373616C436563;
  *(v258 + 144) = v264;
  *(v258 + 152) = 0x80000001CA993590;
  *(v257 + 32) = sub_1CA94C1E8();
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v298 = v265;
  *(v256 + 48) = v257;
  *(v256 + 72) = v265;
  *(v256 + 80) = 0x72756F7365524657;
  *(v256 + 120) = v261;
  *(v256 + 88) = 0xEF7373616C436563;
  *(v256 + 96) = 0xD000000000000018;
  *(v256 + 104) = 0x80000001CA994040;
  v266 = sub_1CA94C1E8();
  v267 = v293;
  *(v254 + 88) = v293;
  *(v254 + 64) = v266;
  v268 = swift_allocObject();
  *(v268 + 16) = v310;
  v269 = v309;
  *(v268 + 32) = v308;
  *(v268 + 40) = v269;
  v270 = swift_allocObject();
  *(v270 + 16) = v306;
  v271 = swift_allocObject();
  *(v271 + 16) = v301;
  strcpy((v271 + 32), "WFParameterKey");
  *(v271 + 47) = -18;
  *(v271 + 48) = 0xD000000000000018;
  *(v271 + 56) = v294;
  v272 = v303;
  *(v271 + 72) = v261;
  *(v271 + 80) = v272;
  *(v271 + 88) = v305;
  *(v271 + 96) = sub_1CA94C1E8();
  *(v271 + 120) = v302;
  *(v271 + 128) = 0x72756F7365524657;
  *(v271 + 168) = v261;
  v273 = v299;
  v274 = v300;
  *(v271 + 136) = 0xEF7373616C436563;
  *(v271 + 144) = v274;
  *(v271 + 152) = v273;
  *(v270 + 32) = sub_1CA94C1E8();
  *(v268 + 48) = v270;
  *(v268 + 72) = v298;
  *(v268 + 80) = 0x72756F7365524657;
  *(v268 + 120) = v261;
  *(v268 + 88) = 0xEF7373616C436563;
  *(v268 + 96) = 0xD000000000000018;
  *(v268 + 104) = 0x80000001CA994040;
  v275 = sub_1CA94C1E8();
  *(v254 + 120) = v267;
  *(v254 + 96) = v275;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v277 = v304;
  v304[68] = v276;
  v277[65] = v254;
  v277[69] = @"ResidentCompatible";
  v277[73] = MEMORY[0x1E69E6370];
  *(v277 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v278 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2A98A0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v11, sel_initWithDefinition_enableDistributedNotifications_, 0, 1);
  v7 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = v6;
  sub_1CA30C708();

  return v9;
}

uint64_t sub_1CA2A99B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1CA949F78();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_1CA9494F8();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443888, &unk_1CA981640) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_1CA949568();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = sub_1CA949558();
  v4[15] = v15;
  v16 = *(v15 - 8);
  v4[16] = v16;
  v17 = *(v16 + 64) + 15;
  v4[17] = swift_task_alloc();
  v18 = sub_1CA949578();
  v4[18] = v18;
  v19 = *(v18 - 8);
  v4[19] = v19;
  v20 = *(v19 + 64) + 15;
  v4[20] = swift_task_alloc();
  v21 = sub_1CA949528();
  v4[21] = v21;
  v22 = *(v21 - 8);
  v4[22] = v22;
  v23 = *(v22 + 64) + 15;
  v4[23] = swift_task_alloc();
  v24 = sub_1CA9495A8();
  v4[24] = v24;
  v25 = *(v24 - 8);
  v4[25] = v25;
  v26 = *(v25 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2A9CE4, 0, 0);
}

uint64_t sub_1CA2A9CE4()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x1E69A12B8], v0[18]);
  sub_1CA949518();
  sub_1CA949598();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_20_0();
  v11(v10);
  sub_1CA949588();
  sub_1CA949548();
  (*(v7 + 8))(v6, v8);
  v0[27] = *MEMORY[0x1E69E1078];
  OUTLINED_FUNCTION_10();
  sub_1CA2AD9B4(v12, v13);
  v14 = *(MEMORY[0x1E69E85A8] + 4);
  v15 = swift_task_alloc();
  v0[28] = v15;
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_7_4(v15);

  return MEMORY[0x1EEE6D8C8](v16);
}

uint64_t sub_1CA2A9E50()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = *(v2 + 224);
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 232) = v0;

  if (v0)
  {
    v7 = sub_1CA2AA31C;
  }

  else
  {
    v7 = sub_1CA2A9F54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA2A9F70()
{
  v50 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 160);
    v8 = *(v0 + 112);
    v9 = *(v0 + 72);
    v47 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v10 = *(v4 + 8);
    v11 = OUTLINED_FUNCTION_20_0();
    v12(v11);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 216);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    (*(v18 + 32))(v16, v1, v2);
    sub_1CA949C58();
    (*(v18 + 16))(v17, v16, v2);
    v20 = sub_1CA949F68();
    v21 = sub_1CA94CC08();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v28 = *(v0 + 32);
    v27 = *(v0 + 40);
    if (v22)
    {
      v48 = *(v0 + 32);
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v29 = 136315138;
      sub_1CA2AD9B4(&unk_1EC4438A0, MEMORY[0x1E69A11A8]);
      v30 = sub_1CA94D798();
      v45 = v25;
      v32 = v31;
      v44 = v21;
      v33 = *(v24 + 8);
      v33(v23, v26);
      v34 = sub_1CA26B54C(v30, v32, &v49);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1CA256000, v20, v44, "GenerativeModelsAvailability changed: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v27 + 8))(v45, v48);
    }

    else
    {

      v33 = *(v24 + 8);
      v33(v23, v26);
      (*(v27 + 8))(v25, v28);
    }

    v35 = *(v0 + 80);
    v36 = *(v0 + 56);
    v37 = *(v0 + 64) + 8;
    [*(v0 + 24) refreshAvailabilityWithNotification];
    v38 = OUTLINED_FUNCTION_3_3();
    (v33)(v38);
    OUTLINED_FUNCTION_10();
    sub_1CA2AD9B4(v39, v40);
    v41 = *(MEMORY[0x1E69E85A8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v43 = OUTLINED_FUNCTION_7_4();

    return MEMORY[0x1EEE6D8C8](v43);
  }
}

uint64_t sub_1CA2AA31C()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void *sub_1CA2AA43C()
{
  sub_1CA94C438();
  OUTLINED_FUNCTION_5_0();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_3();
  v1 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  sub_1CA94C368();
  v2 = OUTLINED_FUNCTION_14_2();
  v3 = OUTLINED_FUNCTION_2(v2, sel_localizedStringForKey_value_table_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_21_2();
  return v0;
}

id sub_1CA2AA52C()
{
  sub_1CA25B3D0(0, &qword_1EC443870, 0x1E69E0B58);
  sub_1CA25B3D0(0, &qword_1EC443878, 0x1E696AAE8);
  v0 = sub_1CA2AA5CC();
  return sub_1CA2AA630(0xD000000000000011, 0x80000001CA99D4A0, v0);
}

id sub_1CA2AA5CC()
{
  v0 = sub_1CA94C368();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

id sub_1CA2AA630(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

uint64_t sub_1CA2AA6D4()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  if (VCIsInternalBuild())
  {
    v10 = sub_1CA94C368();
    v11 = MGGetBoolAnswer();

    if (v11)
    {
      return 4;
    }
  }

  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 hasCapability_];

  if (v13)
  {
    v14 = [objc_opt_self() shared];
    if ([v14 isAppleIntelligenceEnabled])
    {

      return 4;
    }

    v20 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v21 = sub_1CA949F68();
    v22 = sub_1CA94CC08();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1CA256000, v21, v22, "Apple Intelligence not enabled, returning .notDetermined", v23, 2u);
      OUTLINED_FUNCTION_26();
    }

    v24 = *(v3 + 8);
    v25 = OUTLINED_FUNCTION_3_3();
    v26(v25);
    return 1;
  }

  else
  {
    v16 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC08();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CA256000, v17, v18, "Greymatter capability not available, returning .unsupported", v19, 2u);
      OUTLINED_FUNCTION_26();
    }

    (*(v3 + 8))(v8, v0);
    return 0;
  }
}

uint64_t sub_1CA2AAA14(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1CA2AAAAC;

  return sub_1CA297508();
}

uint64_t sub_1CA2AAAAC(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v8 = *(v5 + 24);
  v9 = *v2;
  *v7 = *v2;

  v10 = *(v5 + 16);
  if (v3)
  {
    v11 = sub_1CA948AC8();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1CA2AAC1C(uint64_t a1)
{
  v181 = a1;
  ObjectType = swift_getObjectType();
  v174 = sub_1CA9494C8();
  v1 = OUTLINED_FUNCTION_1_0(v174);
  v164 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19();
  v163 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v170 = &v163 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v167 = &v163 - v11;
  OUTLINED_FUNCTION_25_0();
  v12 = sub_1CA9494E8();
  v172 = OUTLINED_FUNCTION_1_0(v12);
  v173 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_6_0();
  v171 = v17 - v16;
  OUTLINED_FUNCTION_25_0();
  v179 = sub_1CA949498();
  v18 = OUTLINED_FUNCTION_1_0(v179);
  v169 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19();
  v168 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v180 = &v163 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443860, &qword_1CA981600);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v178 = &v163 - v28;
  OUTLINED_FUNCTION_25_0();
  v29 = sub_1CA9494B8();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v176 = v31;
  v177 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  v175 = (v35 - v34);
  OUTLINED_FUNCTION_25_0();
  v36 = sub_1CA9494F8();
  v37 = OUTLINED_FUNCTION_1_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_0();
  v44 = v43 - v42;
  v45 = sub_1CA949578();
  v46 = OUTLINED_FUNCTION_1_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6_0();
  v53 = v52 - v51;
  v54 = sub_1CA949528();
  v55 = OUTLINED_FUNCTION_1_0(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_6_0();
  v62 = v61 - v60;
  v63 = sub_1CA9495A8();
  v182 = OUTLINED_FUNCTION_1_0(v63);
  v183 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_6_0();
  v69 = v68 - v67;
  (*(v48 + 104))(v53, *MEMORY[0x1E69A12B8], v45);
  sub_1CA949518();
  sub_1CA949598();
  (*(v57 + 8))(v62, v54);
  v70 = v69;
  sub_1CA949538();
  v71 = v39[11];
  v72 = OUTLINED_FUNCTION_16_1();
  v74 = v73(v72);
  if (v74 != *MEMORY[0x1E69A0EF8])
  {
    if (v74 != *MEMORY[0x1E69A0F00])
    {
      if (v74 == *MEMORY[0x1E69A11A0])
      {
        goto LABEL_13;
      }

      v102 = v39[1];
      v93 = OUTLINED_FUNCTION_16_1();
      goto LABEL_12;
    }

    v86 = v39[12];
    v87 = OUTLINED_FUNCTION_16_1();
    v88(v87);
    v89 = v173;
    (*(v173 + 32))(v171, v44, v172);
    v90 = sub_1CA9494D8();
    v91 = v167;
    sub_1CA2ECCE8(v90, v167);

    v70 = v174;
    if (__swift_getEnumTagSinglePayload(v91, 1, v174) == 1)
    {
      v92 = *(v89 + 8);
      v93 = OUTLINED_FUNCTION_24_3();
LABEL_12:
      v94(v93);
      goto LABEL_13;
    }

    v106 = v164;
    v107 = *(v164 + 32);
    v108 = v170;
    v109 = OUTLINED_FUNCTION_20_0();
    v110(v109);
    v111 = v163;
    (*(v106 + 16))(v163, v108, v70);
    v112 = (*(v106 + 88))(v111, v70);
    if (v112 == *MEMORY[0x1E69A0FE8])
    {
      v113 = OUTLINED_FUNCTION_22_1();
      v114(v113);
      goto LABEL_23;
    }

    v117 = v112;
    if (v112 == *MEMORY[0x1E69A0FF0])
    {
      v118 = OUTLINED_FUNCTION_22_1();
      v119(v118);
LABEL_31:
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_109;
    }

    if (v112 == *MEMORY[0x1E69A1000])
    {
      (*(v106 + 96))(v111, v70);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443868, &qword_1CA981608) + 48);
      v120 = sub_1CA948E28();
      v121 = *(*(v120 - 8) + 8);
      v121(v111 + v70, v120);
      v121(v111, v120);
LABEL_39:
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_109;
    }

    if (v112 == *MEMORY[0x1E69A1070])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_109;
    }

    if (v112 == *MEMORY[0x1E69A1078])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_57:
        OUTLINED_FUNCTION_3_3();
        v124 = sub_1CA94C368();
        OUTLINED_FUNCTION_3_3();
        sub_1CA94C368();
        v125 = OUTLINED_FUNCTION_14_2();
        v126 = OUTLINED_FUNCTION_2(v125, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        OUTLINED_FUNCTION_21_2();
        (*(v106 + 8))(v170, v174);
LABEL_58:
        v127 = *(v89 + 8);
        v128 = OUTLINED_FUNCTION_24_3();
        v129(v128);
        goto LABEL_59;
      }

LABEL_109:
      OUTLINED_FUNCTION_0_3();
      goto LABEL_57;
    }

    if (v112 == *MEMORY[0x1E69A1108])
    {
LABEL_23:
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_109;
    }

    if (v112 == *MEMORY[0x1E69A1120])
    {
      goto LABEL_31;
    }

    if (v112 == *MEMORY[0x1E69A0FF8])
    {
      goto LABEL_39;
    }

    if (v112 == *MEMORY[0x1E69A1090])
    {
      goto LABEL_68;
    }

    if (v112 == *MEMORY[0x1E69A1088])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_81:
        OUTLINED_FUNCTION_3_3();
        v131 = sub_1CA94C368();
        OUTLINED_FUNCTION_3_3();
        sub_1CA94C368();
        v132 = OUTLINED_FUNCTION_14_2();
        v133 = OUTLINED_FUNCTION_2(v132, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        OUTLINED_FUNCTION_21_2();
        v134 = OUTLINED_FUNCTION_8_0();
        v135(v134);
        goto LABEL_58;
      }

LABEL_130:
      OUTLINED_FUNCTION_0_3();
      goto LABEL_81;
    }

    if (v112 == *MEMORY[0x1E69A1100])
    {
      goto LABEL_68;
    }

    if (v112 == *MEMORY[0x1E69A10A0])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A1018])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A10E8])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A1118])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A1098])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A1048])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A10D0])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A1028])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A10C0])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A10D8])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_129:
        OUTLINED_FUNCTION_3_3();
        v142 = sub_1CA94C368();
        OUTLINED_FUNCTION_3_3();
        sub_1CA94C368();
        v143 = OUTLINED_FUNCTION_14_2();
        v144 = OUTLINED_FUNCTION_2(v143, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        OUTLINED_FUNCTION_21_2();
        v145 = OUTLINED_FUNCTION_8_0();
        v146(v145);
        v147 = OUTLINED_FUNCTION_18_3();
        v148(v147);
        (*(v183 + 8))(v69, v182);
        return v70;
      }

LABEL_140:
      OUTLINED_FUNCTION_0_3();
      goto LABEL_129;
    }

    v89 = v173;
    if (v112 == *MEMORY[0x1E69A1030])
    {
      goto LABEL_68;
    }

    if (v112 == *MEMORY[0x1E69A10E0])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    v89 = v173;
    if (v112 == *MEMORY[0x1E69A10F8])
    {
LABEL_68:
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_81;
      }

      goto LABEL_130;
    }

    if (v112 == *MEMORY[0x1E69A1128])
    {
LABEL_138:
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A10B8])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 == *MEMORY[0x1E69A1008] || v112 == *MEMORY[0x1E69A1068] || v112 == *MEMORY[0x1E69A0FD8])
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_5_0();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_140;
    }

    if (v112 != *MEMORY[0x1E69A1010])
    {
      if (v112 == *MEMORY[0x1E69A1058])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A10B0] || v112 == *MEMORY[0x1E69A10C8])
      {
        goto LABEL_138;
      }

      if (v112 == *MEMORY[0x1E69A1040])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A1050])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A1060])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A1148])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A1130])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A1150])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A1140])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 == *MEMORY[0x1E69A10A8] || v112 == *MEMORY[0x1E69A1038] || v112 == *MEMORY[0x1E69A1110] || v112 == *MEMORY[0x1E69A0FE0] || v112 == *MEMORY[0x1E69A10F0])
      {
        sub_1CA94C438();
        OUTLINED_FUNCTION_5_0();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_140;
      }

      if (v112 != *MEMORY[0x1E69A1160])
      {
        v160 = *MEMORY[0x1E69A1158];
        v70 = *(v164 + 8);
        (v70)(v170, v174);
        v161 = OUTLINED_FUNCTION_18_3();
        v162(v161);
        if (v117 != v160)
        {
          (v70)(v163, v174);
        }

        goto LABEL_13;
      }
    }

    v151 = OUTLINED_FUNCTION_8_0();
    v152(v151);
    v153 = OUTLINED_FUNCTION_18_3();
    v154(v153);
    goto LABEL_13;
  }

  v75 = v39[12];
  v76 = OUTLINED_FUNCTION_16_1();
  v77(v76);
  v78 = v175;
  v79 = v176;
  v80 = v177;
  (*(v176 + 32))(v175, v44, v177);
  v81 = sub_1CA9494A8();
  v70 = v178;
  sub_1CA2ECCA8(v81, v178);

  v82 = v179;
  if (__swift_getEnumTagSinglePayload(v70, 1, v179) == 1)
  {
    v83 = *(v79 + 8);
    v84 = OUTLINED_FUNCTION_16_1();
    v85(v84);
    goto LABEL_13;
  }

  v95 = v169;
  v96 = v180;
  (*(v169 + 32))(v180, v70, v82);
  (*(v95 + 16))(v168, v96, v82);
  v97 = *(v95 + 88);
  v98 = OUTLINED_FUNCTION_24_3();
  v100 = v99(v98);
  if (v100 == *MEMORY[0x1E69A0F38])
  {
LABEL_8:
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  v70 = v100;
  if (v100 == *MEMORY[0x1E69A0F58])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
LABEL_27:
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_11();

      v116 = OUTLINED_FUNCTION_4_1(v115, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_21_2();
      (*(v95 + 8))(v180, v82);
      (*(v79 + 8))(v101, v80);
      goto LABEL_59;
    }

LABEL_91:
    OUTLINED_FUNCTION_0_3();
    goto LABEL_27;
  }

  if (v100 == *MEMORY[0x1E69A0F60])
  {
    goto LABEL_8;
  }

  if (v100 == *MEMORY[0x1E69A0F28])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  if (v100 == *MEMORY[0x1E69A0F78])
  {
    goto LABEL_8;
  }

  if (v100 == *MEMORY[0x1E69A0F40] || v100 == *MEMORY[0x1E69A0F50] || v100 == *MEMORY[0x1E69A0F20])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  if (v100 == *MEMORY[0x1E69A0F70])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  if (v100 == *MEMORY[0x1E69A0F48])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  if (v100 == *MEMORY[0x1E69A0F30])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  if (v100 == *MEMORY[0x1E69A0F68])
  {
    v101 = v78;
    sub_1CA94C438();
    OUTLINED_FUNCTION_12_1();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_91;
  }

  v136 = *MEMORY[0x1E69A0F88];
  v137 = *(v95 + 8);
  v137(v180, v82);
  v138 = *(v79 + 8);
  v139 = OUTLINED_FUNCTION_16_1();
  v140(v139);
  if (v70 != v136)
  {
    v141 = OUTLINED_FUNCTION_24_3();
    (v137)(v141);
  }

LABEL_13:
  if (v181 == 1)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
LABEL_18:
      OUTLINED_FUNCTION_3_3();
      v103 = sub_1CA94C368();
      OUTLINED_FUNCTION_3_3();
      sub_1CA94C368();
      v104 = OUTLINED_FUNCTION_14_2();
      v105 = OUTLINED_FUNCTION_2(v104, sel_localizedStringForKey_value_table_);

LABEL_20:
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_21_2();
LABEL_59:
      (*(v183 + 8))(v69, v182);
      return v70;
    }

LABEL_88:
    OUTLINED_FUNCTION_0_3();
    goto LABEL_18;
  }

  if (!v181)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_88;
  }

  v184.receiver = v166;
  v184.super_class = ObjectType;
  if (objc_msgSendSuper2(&v184, sel_localizedErrorReasonForStatus_))
  {
    goto LABEL_20;
  }

  (*(v183 + 8))(v69, v182);
  return 0;
}

uint64_t sub_1CA2ACB84(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981310;
  sub_1CA94C438();
  OUTLINED_FUNCTION_12_1();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = qword_1EDB9F690;
  v4 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_11();

  v5 = [v3 localizedStringForKey:v4 value:v1 table:0];

  v6 = sub_1CA94C3A8();
  v8 = v7;

  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  return v2;
}

uint64_t sub_1CA2ACD00()
{
  OUTLINED_FUNCTION_0();
  v1 = sub_1CA9486C8();
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2ACDB8, 0, 0);
}

uint64_t sub_1CA2ACDB8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = [objc_opt_self() sharedContext];
  v0[21] = v4;
  v5 = sub_1CA948BA8();
  OUTLINED_FUNCTION_1_0(v5);
  v7 = v6;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v2 + 104))(v1, *MEMORY[0x1E6996C18], v3);
  v11 = [objc_allocWithZone(sub_1CA948708()) init];
  sub_1CA948678();

  (*(v2 + 8))(v1, v3);
  v12 = sub_1CA948B48();
  v0[22] = v12;
  (*(v7 + 8))(v10, v5);

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1CA2AD010;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA610AB0;
  v0[13] = &block_descriptor;
  v0[14] = v13;
  [v4 openURL:v12 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA2AD010()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 184) = v4;
  if (v4)
  {
    v5 = sub_1CA2AD18C;
  }

  else
  {
    v5 = sub_1CA2AD118;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA2AD118()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1CA2AD18C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[23];

  return v5(0);
}

uint64_t sub_1CA2AD2EC(void *a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1CA2AD3B4;

  return sub_1CA2ACD00();
}