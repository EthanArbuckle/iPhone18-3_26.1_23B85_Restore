uint64_t sub_188CFE924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void _UIAssertValidUpdateIndexPath(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = dyld_program_sdk_at_least();
  v3 = [v1 section];
  if (v2)
  {
    if (v3 < 0 || [v1 row] < 0)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIAssertValidUpdateIndexPath(NSIndexPath * _Nullable __strong)"];
      [v4 handleFailureInFunction:v5 file:@"UITableViewSupport.m" lineNumber:2669 description:{@"Attempted to perform update with invalid index path: %@", v1}];
    }
  }

  else if (v3 < 0 || [v1 row] < 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_UIAssertValidUpdateIndexPath___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v1;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Attempted to perform update with invalid index path: %@", buf, 0xCu);
    }
  }
}

double sub_188CFEFC0()
{
  if (qword_1ED48D080 != -1)
  {
    swift_once();
  }

  result = *&qword_1ED4A3498 * *&qword_1ED4A3498;
  *&qword_1ED4A34A0 = *&qword_1ED4A3498 * *&qword_1ED4A3498;
  return result;
}

double sub_188CFF01C()
{
  objc_opt_self();
  v0 = +[UIScreen _mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1ED4A3498 = 1.0 / v2;
  return result;
}

double sub_188CFF080()
{
  objc_opt_self();
  v0 = +[UIScreen _mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&xmmword_1ED4A3470 = 1.0 / v2;
  *(&xmmword_1ED4A3470 + 1) = result + result;
  return result;
}

void _UIDataSourceUpdateFromUpdateItem(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      v4 = 0;
      v5 = *(a1 + 20);
      switch(v5)
      {
        case 0:
          v5 = 2;
          goto LABEL_8;
        case 1:
LABEL_8:
          v6 = *(a1 + 24);
          goto LABEL_9;
        case 3:
          v4 = 1;
          v5 = 3;
          goto LABEL_8;
      }
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v4 = 0;
  v6 = 0;
  v5 = 2;
LABEL_9:
  v21 = v6;
  v7 = [v21 section];
  v8 = [v21 item];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v11 = [(UIRowMoveUpdateItem *)a1 newIndexPath];
    v10 = [v11 section];
    v9 = [v11 item];
  }

  *a2 = v5;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v7))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v13 handleFailureInFunction:v14 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v7}];

LABEL_12:
    LODWORD(v7) = -1;
  }

  *(a2 + 8) = v7;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    LODWORD(v8) = -1;
    goto LABEL_17;
  }

  if (HIDWORD(v8))
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v15 handleFailureInFunction:v16 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v8}];

    goto LABEL_15;
  }

LABEL_17:
  *(a2 + 12) = v8;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    LODWORD(v10) = -1;
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v17 handleFailureInFunction:v18 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v10}];

    goto LABEL_18;
  }

LABEL_20:
  *(a2 + 16) = v10;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_21:
    LODWORD(v9) = -1;
    goto LABEL_23;
  }

  if (HIDWORD(v9))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v19 handleFailureInFunction:v20 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v9}];

    goto LABEL_21;
  }

LABEL_23:
  *(a2 + 20) = v9;
  if (a1)
  {
    v12 = *(a1 + 16) & 1;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 24) = v12;
}

void __BarButtonItemSystemItemCanBeSet_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:21];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:22];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:23];
  v7 = [v0 initWithObjects:{v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = _MergedGlobals_1022;
  _MergedGlobals_1022 = v7;
}

uint64_t BarButtonItemSystemItemCanBeSet(void *a1)
{
  v1 = qword_1ED49CBB0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED49CBB0, &__block_literal_global_83);
  }

  v3 = [_MergedGlobals_1022 containsObject:v2];

  return v3 ^ 1u;
}

id _UISceneOpenURLContextsFromActionsSessionAndTransitionContext(void *a1, void *a2, void *a3, void **a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v35 = a2;
  v37 = a3;
  *a4 = objc_opt_new();
  v6 = v37;
  if ([v37 isUISubclass])
  {
    v39 = [v37 payload];
    v6 = v37;
  }

  else
  {
    v39 = 0;
  }

  v7 = [v6 originatingProcess];
  v40 = [UISceneOpenURLOptions _optionsFromPayload:v39 sourceProcessHandle:v7];

  v36 = [v38 objectsPassingTest:&__block_literal_global_625];
  if (![v36 count])
  {
    v14 = 0;
    goto LABEL_45;
  }

  v41 = [v39 objectForKey:*MEMORY[0x1E6963568]];
  if (v41)
  {
    if ([v40 openInPlace])
    {
      v8 = v41;
      v9 = v40;
      v10 = v8;
      v49 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v11 = off_1ED4A2368;
      v53 = off_1ED4A2368;
      if (!off_1ED4A2368)
      {
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 3221225472;
        *&aBlock[16] = __getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_block_invoke_0;
        v56 = &unk_1E70F2F20;
        v57 = &v50;
        __getFPCreateDocumentURLFromBookmarkableStringSymbolLoc_block_invoke_0(aBlock);
        v11 = v51[3];
      }

      _Block_object_dispose(&v50, 8);
      if (!v11)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFURLRef _FPCreateDocumentURLFromBookmarkableString(CFStringRef, CFErrorRef *)"}];
        [v33 handleFailureInFunction:v34 file:@"_UISceneOpenURLBSActionsHandler.m" lineNumber:29 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v12 = v11(v10, &v49);
      if (v12)
      {

        v13 = [[UIOpenURLContext alloc] initWithURL:v12 options:v9];
      }

      else
      {
        v21 = v49;
        v22 = *(__UILogGetCategoryCachedImpl("Application", &_MergedGlobals_1333) + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *aBlock = 138412546;
          *&aBlock[4] = v10;
          *&aBlock[12] = 2112;
          *&aBlock[14] = v21;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Error resolving bookmark; bookmark: %@; error: %@", aBlock, 0x16u);
        }

        v13 = 0;
      }

      if (v13)
      {
        v48 = 0;
        __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v48, v13);
        v20 = v48;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_25;
    }

    v15 = v41;
    v16 = v35;
    v17 = v40;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = ___UISceneScheduleNonOpenInPlaceURLResolution_block_invoke;
    v56 = &unk_1E70F6228;
    v57 = v16;
    v58 = v15;
    v59 = v17;
    v18 = _Block_copy(aBlock);
    v19 = [v16 scene];

    if (v19)
    {
      v18[2](v18);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v18);
    }
  }

  v20 = 0;
LABEL_25:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v38;
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = *v45;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v45 != v25)
      {
        objc_enumerationMutation(v23);
      }

      v27 = *(*(&v44 + 1) + 8 * i);
      if ([v27 UIActionType] == 1)
      {
        v28 = [v27 url];
        if (([UIApp _shouldHandleTestURL:v28] & 1) == 0 && (objc_msgSend(v28, "isInternalUIKitURL") & 1) == 0)
        {
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(a4, v27);
          if (v41)
          {
            if ([*a4 count] >= 2)
            {
              v29 = [MEMORY[0x1E696AAA8] currentHandler];
              v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<UIOpenURLContext *> *_UISceneOpenURLContextsFromActionsSessionAndTransitionContext(NSSet<BSAction *> *__strong, UISceneSession *__strong, FBSSceneTransitionContext *__strong, NSMutableSet<BSAction *> *__autoreleasing *)"}];
              [v29 handleFailureInFunction:v30 file:@"_UISceneOpenURLBSActionsHandler.m" lineNumber:193 description:{@"bookmarkString = %@; handledActions = %@", v41, *a4}];
              goto LABEL_40;
            }
          }

          else
          {
            if ((objc_opt_respondsToSelector() & 1) == 0 || ([v27 localOpenURLOptions], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v29 = v40;
            }

            v30 = [[UIOpenURLContext alloc] initWithURL:v28 options:v29];
            v43 = v20;
            __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v43, v30);
            v31 = v43;

            v20 = v31;
LABEL_40:
          }
        }

        continue;
      }
    }

    v24 = [v23 countByEnumeratingWithState:&v44 objects:v54 count:16];
  }

  while (v24);
LABEL_44:

  v14 = v20;
LABEL_45:

  return v14;
}

unint64_t sub_188D06B5C()
{
  result = qword_1ED48FD90;
  if (!qword_1ED48FD90)
  {
    sub_188A34624(255, &qword_1ED48FD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48FD90);
  }

  return result;
}

void sub_188D06BC4(uint64_t a1, void *a2)
{
  v2 = a1;
  v54 = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_188A34624(0, &qword_1ED48FD98);
    sub_188D06B5C();
    sub_18A4A77D8();
    v2 = v55;
    v3 = v56;
    v4 = v57;
    v5 = v58;
    v6 = v59;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
LABEL_10:
  while (2)
  {
    if (v2 < 0)
    {
      while (1)
      {
        v16 = sub_18A4A7FB8();
        if (!v16)
        {
          goto LABEL_39;
        }

        *&v48 = v16;
        sub_188A34624(0, &qword_1ED48FD98);
        swift_dynamicCast();
        v15 = v51[0];
        v13 = v5;
        v14 = v6;
        if (!v51[0])
        {
          goto LABEL_39;
        }

LABEL_19:
        v47 = v14;
        v17 = [v15 info];
        if (v17)
        {
          v18 = v17;
          v51[0] = &type metadata for _UISceneConnectionOptionCoder._MarkerSetting;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D80);
          sub_18A4A7308();
          v19 = sub_18A4A7258();

          v20 = MEMORY[0x18CFE4050](v19);

          v21 = [v18 flagForSetting_];
          if (v21 == 1)
          {
            break;
          }
        }

        if ([v15 UIActionType] == 66)
        {
          type metadata accessor for UISSceneConnectionValueError(0);
          *&v48 = 1;
          sub_1891D802C();
          sub_18A4A27A8();
          v22 = v51[0];
          swift_willThrow();
LABEL_35:
          if ([v15 canSendResponse])
          {
            v36 = v22;
            v37 = sub_18A4A27C8();

            v38 = [objc_opt_self() responseForError_];
            [v15 sendResponse_];
          }

          else
          {
          }

          v5 = v13;
          v6 = v47;
          goto LABEL_10;
        }

        sub_188D071DC(v51, v15);

        v5 = v13;
        v6 = v47;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }

      v23 = [v15 info];
      if (v23)
      {
        v24 = v23;
        sub_188DCBC90(&v48);
        v25 = *(&v48 + 1);
        if (*(&v48 + 1))
        {
          v46 = v2;
          v26 = v48;
          v27 = v49;
          v28 = v50;
          v43 = sub_188DCCB70();
          v44 = v29;
          if (v29 >> 60 == 15)
          {
            sub_188DBF498(v26, v25);
            sub_1891BFE98();
            v22 = swift_allocError();
            *v30 = 3;
            swift_willThrow();
          }

          else
          {
            v42 = v24;
            if (qword_1EA92F858 != -1)
            {
              swift_once();
            }

            *&v48 = v26;
            *(&v48 + 1) = v25;
            v49 = v27;
            v50 = v28;
            v33 = sub_188DCD968(&v48);
            v35 = v34;

            if (v33)
            {

              sub_1891BF42C(v43, v44, v15, a2, v33, v35, &v48);
              v2 = v46;
              sub_188DBF840(v43, v44);
              sub_188A5EBAC(&v48, v51);
              v40 = v52;
              v41 = v53;
              __swift_project_boxed_opaque_existential_0(v51, v52);
              (*(v41 + 8))(v40, v41);
              __swift_destroy_boxed_opaque_existential_0Tm(v51);

              v5 = v13;
              v6 = v47;
              continue;
            }

            sub_1891BFE98();
            v22 = swift_allocError();
            *v39 = 1;
            swift_willThrow();
            sub_188DBF840(v43, v44);
            v24 = v42;
          }

          v2 = v46;
        }

        else
        {
          sub_1891BFE98();
          v22 = swift_allocError();
          *v32 = 2;
          swift_willThrow();
        }
      }

      else
      {
        sub_1891BFE98();
        v22 = swift_allocError();
        *v31 = 0;
        swift_willThrow();
      }

      goto LABEL_35;
    }

    break;
  }

LABEL_11:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_39:
    sub_188E036A4();
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_39;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

BOOL _tableViewIsAnimatingSwipeToDelete(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && [v4 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v3 indexPath];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [v3 currentAction];
      v13 = [v12 style] == 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

CGSize CGSizeFromString(NSString *string)
{
  v1 = string;
  DoubleValue = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  if ([(NSString *)v1 length]>= 5)
  {
    v8 = 0;
    str = 0;
    if (SplitBracesAndComma(v1, &str, &v8))
    {
      v4 = str;
      DoubleValue = CFStringGetDoubleValue(str);
      v5 = v8;
      v3 = CFStringGetDoubleValue(v8);
      CFRelease(v4);
      CFRelease(v5);
    }
  }

  v6 = DoubleValue;
  v7 = v3;
  result.height = v7;
  result.width = v6;
  return result;
}

uint64_t SplitBracesAndComma(void *a1, CFStringRef *a2, CFStringRef *a3)
{
  v5 = a1;
  v16 = 0;
  v17 = 0;
  v14 = 1;
  v15 = 0;
  ParseBracesWithDelimiter(v5, &v17, &v16, &v15, &v14);
  v6 = v16;
  v9 = v17 != -1 && v16 != -1 && v14 == 1 && v17 < v16;
  if (v9 && ((v10 = v15, v15 > v17 + 1) ? (v11 = v15 < v16 - 1) : (v11 = 0), v11))
  {
    v18.length = v15 + ~v17;
    v18.location = v17 + 1;
    *a2 = CFStringCreateWithSubstring(0, v5, v18);
    v19.location = v10 + 1;
    v19.length = v6 + ~v10;
    *a3 = CFStringCreateWithSubstring(0, v5, v19);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t UIBackgroundConfiguration.updated(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = v4;
  v8 = [v7 updatedConfigurationForState_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a2 = result;
  return result;
}

UIColor __swiftcall UIBackgroundConfiguration.resolvedBackgroundColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) resolvedBackgroundColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

void static UIListSeparatorConfiguration._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    [v3 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188CE625C();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
    v4 = swift_allocObject();
    *(v4 + 16) = v6;

    *a2 = v4;
  }

  else
  {
    sub_18A4A80E8();

    sub_188CE625C();
    v5 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v5);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0xD00000000000001CLL, 0x800000018A658B80);
    sub_18A4A8398();
    __break(1u);
  }
}

void __swiftcall UIListSeparatorConfiguration._bridgeToObjectiveC()(UIListSeparatorConfiguration *__return_ptr retstr)
{
  [*(*v1 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188CE625C();
  swift_dynamicCast();
}

void UIBarButtonItem._badge.setter(__int128 *a1)
{
  v1 = *(a1 + 3);
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  else
  {
    v4 = a1[2];
    v2 = *(a1 + 16);
    v3 = *a1;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v4;
  UIBarButtonItem.badge.setter(&v5);
}

uint64_t _UICollectionViewCellContextMenuSuppressesSelectionState()
{
  LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CollectionViewCellContextMenuSuppressesSelectionState, @"CollectionViewCellContextMenuSuppressesSelectionState");
  if (byte_1ED48AAE4)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void UIListSeparatorConfiguration.color.setter(void *a1)
{
  sub_188D0A72C(a1, &selRef_setColor_);
}

id sub_188D0A72C(uint64_t a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188CE625C();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

__n128 RecordPathElements(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  ++*a1;
  v4 = v2 + 56 * v3;
  v5 = *a2;
  *v4 = *a2;
  if (v5 < 2)
  {
    v7 = *(a2 + 8);
    result = *v7;
    *(v4 + 8) = *v7;
  }

  else if (v5 == 2)
  {
    *(v4 + 8) = *(*(a2 + 8) + 16);
    v8 = *(a2 + 8);
    result = *v8;
    *(v4 + 24) = *v8;
  }

  else if (v5 == 3)
  {
    *(v4 + 8) = *(*(a2 + 8) + 32);
    *(v4 + 24) = **(a2 + 8);
    result = *(*(a2 + 8) + 16);
    *(v4 + 40) = result;
  }

  return result;
}

id UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldExpandItem.setter(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 8);
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = a3[2];
    *(v9 + 16) = a3[1];
    *(v9 + 32) = v10;
    *(v9 + 48) = a3[3];
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    v14[4] = sub_188FAD624;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188FAC37C;
    v14[3] = &block_descriptor_54;
    v11 = _Block_copy(v14);

    [v8 setShouldExpandItemHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setShouldExpandItemHandler_];
  }
}

uint64_t sub_188D0B8F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

id UIContentUnavailableView.init(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *(v1 + 16);

  v4 = [v2 initWithConfiguration_];

  return v4;
}

Swift::Void __swiftcall NSDiffableDataSourceSnapshot.deleteAllItems()()
{
  v0 = sub_188BE91B0();

  [v0 deleteAllItems];
}

__CFData *_UIImageDataRepresentation(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 _rasterizedImage];
  v8 = [v7 content];
  if ([v8 canWriteToImageIO])
  {
    v9 = objc_opt_new();
    v10 = v9;
    if (v9 && (v11 = CGImageDestinationCreateWithData(v9, v5, 1uLL, 0)) != 0)
    {
      v12 = v11;
      v13 = objc_opt_new();
      v14 = MEMORY[0x1E696AD98];
      v15 = [v7 imageOrientation];
      if (v15 >= 8)
      {
        v16 = 0;
      }

      else
      {
        v16 = (0x75426831u >> (4 * v15)) & 0xF;
      }

      v17 = [v14 numberWithUnsignedInteger:v16];
      [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696DE78]];

      [v7 scale];
      v19 = fmax(fmin(v18 * 72.0, 7200.0), 7.2);
      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      [v13 setObject:v20 forKeyedSubscript:*MEMORY[0x1E696D888]];

      v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      [v13 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696D880]];

      if (v6)
      {
        v6[2](v6, v13);
      }

      if (![v8 addContentToDestination:v12 properties:v13] || !CGImageDestinationFinalize(v12))
      {

        v10 = 0;
      }

      CFRelease(v12);
      v10 = v10;

      v22 = v10;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __UIImagePNGRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696DEA0];
  v6[0] = &unk_1EFE2F440;
  v2 = MEMORY[0x1E695DF20];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696DEB0]];

  [v3 setObject:&unk_1EFE2F458 forKeyedSubscript:*MEMORY[0x1E696DE88]];
}

unint64_t sub_188D0CBBC()
{
  result = qword_1EA92FB70;
  if (!qword_1EA92FB70)
  {
    type metadata accessor for UIConfigurationStateCustomKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FB70);
  }

  return result;
}

uint64_t sub_188D0CC5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D98);
  v40 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(*(v5 + 48) + 8 * v22);
      v25 = v23 + 40 * v22;
      if (v40)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v43 = *(v25 + 32);
        v41 = v26;
        v42 = v27;
      }

      else
      {
        sub_188BBA230(v25, &v41);
        v28 = v24;
      }

      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v29 = sub_18A4A88E8();

      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
      v5 = v39;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_188D0D030(unsigned __int8 *a1, SEL *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

uint64_t __displayLinksWillFire_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2 <= *(v1 + 672) / 2;
  v4 = v2 - *(v1 + 672) / 2;
  if (v3)
  {
    v4 = 0;
  }

  if (*(v1 + 384) < v4)
  {
    v4 = *(v1 + 384);
  }

  *(v1 + 384) = v4;
  *(v1 + 376) = 2;
  return _UIUpdateInputSetInputChanged(*(v1 + 424), v1 + 376);
}

void UIBackgroundConfiguration.visualEffect.setter(void *a1)
{
  sub_188BC7090(a1, &selRef_setVisualEffect_);
}

void (*UIBackgroundConfiguration.shadowProperties.modify(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = [*(*v1 + 16) shadowProperties];
  v6 = &v5[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 3);
  v4[2] = *(v6 + 2);
  v4[3] = v9;
  *v4 = v7;
  v4[1] = v8;
  v10 = *v6;
  v11 = *(v6 + 1);
  v12 = *(v6 + 3);
  v4[6] = *(v6 + 2);
  v4[7] = v12;
  v4[4] = v10;
  v4[5] = v11;
  sub_188BFAE70(v4, (v4 + 8));

  return sub_188D0D61C;
}

id UIShadowProperties.init()()
{
  v1 = [objc_opt_self() blackColor];
  v2 = &v0[OBJC_IVAR___UIShadowProperties__backingProperties];
  *v2 = v1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 7) = 0;
  v4.receiver = v0;
  v4.super_class = UIShadowProperties;
  return objc_msgSendSuper2(&v4, sel_init);
}

void UIShadowProperties.color.setter(uint64_t a1)
{
  *v1 = a1;
  v3 = *(v1 + 48);
  if ((v3 & 1) == 0)
  {
    *(v1 + 48) = v3 | 1;
  }
}

void sub_188D0D61C(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[5];
    v2[16] = v2[4];
    v2[17] = v3;
    v4 = v2[7];
    v2[18] = v2[6];
    v2[19] = v4;
    sub_188BFAE70((v2 + 16), (v2 + 20));
    v5 = sub_188D0D804();
    v6 = objc_allocWithZone(UIShadowProperties);
    v7 = v5;
    v8 = [v6 init];
    v9 = &v8[OBJC_IVAR___UIShadowProperties__backingProperties];
    swift_beginAccess();
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 3);
    v2[14] = *(v9 + 2);
    v2[15] = v12;
    v2[12] = v10;
    v2[13] = v11;
    v13 = v2[16];
    v14 = v2[17];
    v15 = v2[19];
    *(v9 + 2) = v2[18];
    *(v9 + 3) = v15;
    *v9 = v13;
    *(v9 + 1) = v14;
    v16 = v8;
    sub_188D0D8D0((v2 + 12));

    [v7 _setShadowProperties_];
    v17 = v2[5];
    v2[8] = v2[4];
    v2[9] = v17;
    v18 = v2[7];
    v2[10] = v2[6];
    v2[11] = v18;
    sub_188D0D8D0((v2 + 8));
  }

  else
  {
    v28 = v2[4];
    v29 = v2[5];
    v30 = v2[6];
    v31 = v2[7];
    v19 = sub_188D0D804();
    v20 = objc_allocWithZone(UIShadowProperties);
    v21 = v19;
    v22 = [v20 init];
    v23 = &v22[OBJC_IVAR___UIShadowProperties__backingProperties];
    swift_beginAccess();
    v24 = *v23;
    v25 = *(v23 + 1);
    v26 = *(v23 + 3);
    v2[10] = *(v23 + 2);
    v2[11] = v26;
    v2[8] = v24;
    v2[9] = v25;
    *v23 = v28;
    *(v23 + 1) = v29;
    *(v23 + 2) = v30;
    *(v23 + 3) = v31;
    v27 = v22;
    sub_188D0D8D0((v2 + 8));

    [v21 _setShadowProperties_];
  }

  free(v2);
}

uint64_t sub_188D0D804()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_18923EC58();
  swift_dynamicCast();
  v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

void UIShadowProperties.opacity.setter(double a1)
{
  *(v1 + 8) = a1;
  v2 = *(v1 + 48);
  if ((v2 & 2) == 0)
  {
    *(v1 + 48) = v2 | 2;
  }
}

void UIShadowProperties.radius.setter(double a1)
{
  *(v1 + 16) = a1;
  v2 = *(v1 + 48);
  if ((v2 & 4) == 0)
  {
    *(v1 + 48) = v2 | 4;
  }
}

uint64_t (*UIShadowProperties.offset.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return sub_188D0D9A8;
}

uint64_t sub_188D0D9A8(uint64_t result)
{
  v1 = *(result + 16);
  *(v1 + 24) = *result;
  v2 = *(v1 + 48);
  if ((v2 & 8) == 0)
  {
    *(v1 + 48) = v2 | 8;
  }

  return result;
}

double sub_188D0DBFC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_188D0DCD4()
{
  v1 = v0 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (v2)
  {
    [v2 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  swift_endAccess();
  return v3;
}

double _UIBaselineLayoutBoundsConsultingContentSizeConstraints(_BYTE *a1)
{
  if ([a1 _wantsAutolayout])
  {
    [a1 _nsis_bounds];
    v3 = v2;
    v4 = [(UIView *)a1 _currentContentSizeHeightConstraint];
    if (v4)
    {
      [v4 constant];
    }
  }

  else if (a1)
  {
    [a1 bounds];
    return v5;
  }

  else
  {
    return *MEMORY[0x1E695F058];
  }

  return v3;
}

uint64_t UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = sub_18A4A2B08();
  v5 = [v2 dequeueConfiguredReusableSupplementaryViewWithRegistration:v3 forIndexPath:v4];

  return swift_dynamicCastUnknownClassUnconditional();
}

void (*UIListContentConfiguration.directionalLayoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  [*(*v1 + 16) directionalLayoutMargins];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_188D0E654;
}

void sub_188D0E654(double **a1)
{
  v1 = *a1;
  UIListContentConfiguration.directionalLayoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

id (*UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) axesPreservingSuperviewLayoutMargins];
  return sub_188D0E7E0;
}

id UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAxesPreservingSuperviewLayoutMargins_];
}

unint64_t sub_188D0E8FC()
{
  result = qword_1EA92FEB8;
  if (!qword_1EA92FEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA935D40);
    sub_188C623C8(&unk_1EA92FEA8, sub_188D0EA14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FEB8);
  }

  return result;
}

uint64_t sub_188D0E9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_188D0E8FC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_188D0EA14()
{
  result = qword_1ED490410;
  if (!qword_1ED490410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED490410);
  }

  return result;
}

uint64_t _UIEventHIDPathIndexForDigitizerEvent()
{
  IntegerValue = IOHIDEventGetIntegerValue();
  if (IOHIDEventGetIntegerValue())
  {
    v1 = IntegerValue;
  }

  else
  {
    v1 = IntegerValue + 128;
  }

  if (IOHIDEventGetIntegerValue())
  {
    return v1;
  }

  else
  {
    return v1 + 256;
  }
}

id _UIEventHIDPathAttributesForChild(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  IntegerValue = IOHIDEventGetIntegerValue();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v1 pathAttributes];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 pathIndex] == IntegerValue)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void _ClearReferencesToView(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 view];
  v7 = [v5 view];

  if (v6 == v7)
  {
    v8 = [v4 gestureRecognizers];
    [v4 _clearGestureRecognizers];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 view];
          v16 = [v4 view];

          if (v15 != v16)
          {
            [(UITouch *)v4 _addGestureRecognizer:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v17 = [v4 gestureRecognizers];
    v18 = [v17 count];

    if (v18)
    {
      [v4 setView:0];
    }

    else
    {
      v19 = [v4 view];
      v20 = [v19 _window];
      v21 = v20;
      if (!v20)
      {
        v21 = [v5 window];
      }

      [objc_msgSend(UIApp _touchesEventForWindow:{v21), "_removeTouch:", v4}];
    }
  }
}

uint64_t _UIScrollViewNotifyForScrollView()
{
  result = [UIApp isFrontBoard];
  if (result)
  {

    return _UIQOSExpectComplexCommit("FrontBoard");
  }

  return result;
}

uint64_t _UIEventHIDPressTypeForKeyboardHIDEvent()
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v1 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 12)
  {
    v2 = 0;
    if (v1 > 547)
    {
      if (v1 == 548)
      {
        return 7;
      }

      if (v1 == 562)
      {
        return 416;
      }
    }

    else
    {
      v3 = 4;
      if (v1 == 65 || v1 == 128)
      {
        return v3;
      }
    }
  }

  else
  {
    v2 = IntegerValue == 1;
    if (IntegerValue == 1 && v1 == 137)
    {
      return 4;
    }
  }

  v5 = (v1 == 134 || v1 == 136) && v2;
  v7 = IntegerValue == 12 && v1 == 70;
  v3 = 5;
  if (!v5 && !v7)
  {
    v9 = v1 == 205 || v1 == 102;
    if (IntegerValue == 12 && v9)
    {
      return 6;
    }

    else
    {
      v3 = 0;
      v11 = v1 == 140 && v2;
      v13 = IntegerValue == 12 && v1 == 66;
      if (!v11 && !v13)
      {
        v14 = v1 == 141 && v2;
        v15 = IntegerValue == 12 && v1 == 67;
        v16 = v15;
        v3 = 1;
        if (!v14 && !v16)
        {
          v17 = v1 == 139 && v2;
          v18 = IntegerValue == 12 && v1 == 68;
          v19 = v18;
          v3 = 2;
          if (!v17 && !v19)
          {
            v20 = v1 == 138 && v2;
            v21 = IntegerValue == 12 && v1 == 69;
            v22 = v21;
            v3 = 3;
            if (!v20 && !v22)
            {
              v24 = v1 == 64 || v1 == 547;
              if (IntegerValue == 12 && v24)
              {
                return 101;
              }

              else if (IntegerValue == 12 && v1 == 233)
              {
                return 102;
              }

              else if (IntegerValue == 12 && v1 == 234)
              {
                return 103;
              }

              else if (IntegerValue == 12 && v1 == 48)
              {
                return 104;
              }

              else if (IntegerValue == 12 && v1 == 149)
              {
                return 300;
              }

              else if (IntegerValue == 11 && v1 == 33)
              {
                return 400;
              }

              else if (IntegerValue == 11 && v1 == 32)
              {
                return 401;
              }

              else if (IntegerValue == 11 && v1 == 38)
              {
                return 402;
              }

              else if (IntegerValue == 11 && v1 == 176)
              {
                return 403;
              }

              else if (IntegerValue == 11 && v1 == 177)
              {
                return 404;
              }

              else if (IntegerValue == 11 && v1 == 178)
              {
                return 405;
              }

              else if (IntegerValue == 11 && v1 == 179)
              {
                return 406;
              }

              else if (IntegerValue == 11 && v1 == 180)
              {
                return 407;
              }

              else if (IntegerValue == 11 && v1 == 181)
              {
                return 408;
              }

              else if (IntegerValue == 11 && v1 == 182)
              {
                return 409;
              }

              else if (IntegerValue == 11 && v1 == 183)
              {
                return 410;
              }

              else if (IntegerValue == 11 && v1 == 184)
              {
                return 411;
              }

              else if (IntegerValue == 11 && v1 == 185)
              {
                return 412;
              }

              else if (IntegerValue == 11 && v1 == 186)
              {
                return 413;
              }

              else if (IntegerValue == 11 && v1 == 187)
              {
                return 414;
              }

              else if (IntegerValue == 11 && v1 == 47)
              {
                return 415;
              }

              else
              {
                v26 = IntegerValue == 12 && v1 == 448;
                v27 = v1 == 4 && IntegerValue == 65281;
                v3 = 500;
                if (!v27 && !v26)
                {
                  if (IntegerValue == 65281 && v1 == 16)
                  {
                    return 501;
                  }

                  else if (IntegerValue == 144 && v1 == 33)
                  {
                    return 601;
                  }

                  else if (v1 == 155 && v2)
                  {
                    return 503;
                  }

                  else if (IntegerValue == 12 && v1 == 414)
                  {
                    return 502;
                  }

                  else
                  {
                    v29 = v1 == 207 && IntegerValue == 12;
                    v3 = 504;
                    if (!v29)
                    {
                      return -1;
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

  return v3;
}

id _UIEventHIDUIScreenForHIDEvent(uint64_t a1)
{
  if (a1)
  {
    v1 = BKSHIDEventGetBaseAttributes();
    v2 = [v1 contextID];
    if (!v2 || (+[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", v2), v3 = objc_claimAutoreleasedReturnValue(), [v3 screen], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
    {
      v5 = [v1 display];
      v4 = [UIScreen _screenWithEventDisplay:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _UIGestureNodeUpdateEventTracking(void *a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [a1 setTracking:a3 eventsWithIdentifiers:v6];
}

uint64_t isDescendantOfContainer(void *a1, id a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = a1;
    v7 = 0;
    while (1)
    {
      v8 = v6;
      if (v6 == a2)
      {
        break;
      }

      v9 = [v6 _actingParentGestureRecognizerContainer];
      if (v9)
      {
        if (!v7)
        {
          v7 = [MEMORY[0x1E695DF70] array];
        }

        [v7 addObject:v9];
      }

      v6 = [v6 _parentGestureRecognizerContainer];

      if (a3 && v6)
      {
        [a3 addObject:v6];
      }

      if (!v6)
      {
        while (1)
        {
          if (![v7 count])
          {
            v3 = 0;
            goto LABEL_25;
          }

          v10 = [v7 lastObject];
          [v7 removeLastObject];
          v11 = v10;
          v8 = v11;
          if (v11)
          {
            break;
          }

LABEL_20:
        }

        v12 = v11;
        while (v12 != a2)
        {
          v13 = [v12 _actingParentGestureRecognizerContainer];
          if (v13)
          {
            [v7 addObject:v13];
          }

          v14 = [v12 _parentGestureRecognizerContainer];

          v12 = v14;
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        break;
      }
    }

    v3 = 1;
LABEL_25:
  }

  return v3;
}

uint64_t sub_188D0FECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _UIGestureRecognizerContainerCompare(void *a1, void *a2, int a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v5)
    {
      v50 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v50, OS_LOG_TYPE_FAULT, "Unexpected nil gesture container", buf, 2u);
      }
    }
  }

  else if (!v5)
  {
    v52 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1160) + 8);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "Unexpected nil gesture container", buf, 2u);
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (!v6)
    {
      v51 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v51, OS_LOG_TYPE_FAULT, "Unexpected nil other container", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v53 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49ED80) + 8);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v53, OS_LOG_TYPE_ERROR, "Unexpected nil other container", buf, 2u);
    }
  }

  if (v5 != v6)
  {
    v7 = [v5 _eventReceivingWindow];
    v8 = [v6 _eventReceivingWindow];
    if (v7 != v8)
    {
      v9 = [v7 windowScene];
      v10 = [v8 windowScene];
      if (v9 == v10)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v21 = [v9 _allWindows];
        v22 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v63;
          v20 = 1;
          v61 = v9;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v63 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v62 + 1) + 8 * i);
              if (v26 == v7)
              {
                goto LABEL_35;
              }

              if (v26 == v8)
              {
                v20 = -1;
LABEL_35:

                goto LABEL_68;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
            v9 = v61;
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v20 = 0;
      }

      else
      {
        v11 = [v9 _FBSScene];
        v12 = [v11 settings];
        [v12 level];
        v14 = v13;

        v15 = [v10 _FBSScene];
        v16 = [v15 settings];
        [v16 level];
        v18 = v17;

        if (v14 >= v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = -1;
        }

        if (v14 > v18)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }
      }

      goto LABEL_69;
    }

    v9 = objc_opt_new();
    v10 = objc_opt_new();
    if (isDescendantOfContainer(v5, v6, v9))
    {
      v20 = 1;
LABEL_69:

      goto LABEL_70;
    }

    if (isDescendantOfContainer(v6, v5, v10))
    {
      v20 = -1;
      goto LABEL_69;
    }

    v27 = v5;
    v28 = v6;
    v61 = v9;
    if ([v10 count])
    {
      v29 = [v27 _parentGestureRecognizerContainer];
      if (v29)
      {
        while (([v10 containsObject:v29] & 1) == 0)
        {
          v30 = v29;

          v29 = [v30 _parentGestureRecognizerContainer];

          v27 = v30;
          if (!v29)
          {
            v20 = 0;
            v27 = v30;
            goto LABEL_67;
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      v31 = [v9 lastObject];
      if (v31 == v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = 0;
      }

      v29 = v32;

      if (v29)
      {
        v29 = v28;
LABEL_41:
        while (1)
        {
          v33 = [v28 _parentGestureRecognizerContainer];
          if (!v33 || v33 == v29)
          {
            break;
          }

          v34 = v28;
          v28 = v33;
        }

        if (_IsKindOfUIView(v27) && _IsKindOfUIView(v28) && (v27[112] & 0x40) != 0 && ([v27 superview], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 == v28))
        {
          v20 = 1;
        }

        else if (_IsKindOfUIView(v28) && _IsKindOfUIView(v27) && (v28[112] & 0x40) != 0 && ([v28 superview], v36 = objc_claimAutoreleasedReturnValue(), v36, v36 == v27))
        {
          v20 = -1;
        }

        else
        {
          v59 = a3;
          v37 = [v29 _childGestureRecognizerContainers];
          v38 = [v37 indexOfObject:v27];
          v60 = v37;
          v39 = [v37 indexOfObject:v28];
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          v41 = v39;
          v42 = v38;
          v44 = v38 == 0x7FFFFFFFFFFFFFFFLL || v41 == 0x7FFFFFFFFFFFFFFFLL;
          v45 = v41;
          if (has_internal_diagnostics)
          {
            if (v44)
            {
              log = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_188A29000, log, OS_LOG_TYPE_FAULT, "Failed to lookup child index from the common ancestor", buf, 2u);
              }
            }
          }

          else if (v44)
          {
            logb = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49ED88) + 8);
            if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, logb, OS_LOG_TYPE_ERROR, "Failed to lookup child index from the common ancestor", buf, 2u);
            }
          }

          v46 = os_variant_has_internal_diagnostics();
          v47 = v42;
          v48 = v45;
          if (v46)
          {
            if (v42 == v45)
            {
              loga = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_188A29000, loga, OS_LOG_TYPE_FAULT, "Unexpected equal node indexes", buf, 2u);
              }

              v47 = v42;
              v48 = v45;
            }
          }

          else if (v42 == v45)
          {
            logc = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49ED90) + 8);
            v54 = os_log_type_enabled(logc, OS_LOG_TYPE_ERROR);
            v48 = v45;
            v47 = v42;
            if (v54)
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, logc, OS_LOG_TYPE_ERROR, "Unexpected equal node indexes", buf, 2u);
              v48 = v45;
              v47 = v42;
            }
          }

          if (v47 < v48 != v59)
          {
            v20 = 1;
          }

          else
          {
            v20 = -1;
          }
        }

LABEL_67:

LABEL_68:
        v9 = v61;
        goto LABEL_69;
      }
    }

    v20 = 0;
    goto LABEL_67;
  }

  v20 = 0;
LABEL_70:

  return v20;
}

id _UIGestureNodeGetGestureRecognizer(void *a1)
{
  if ([a1 platformKey] == 1)
  {
    v2 = [a1 delegate];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _UIGestureRecognizerSendActions(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [(UIGestureRecognizer *)a1 _state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
    {
      if ((*(a1 + 8) & 0x1000000000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("GesturePerformance", &qword_1ED49E4F0);
      if (*CategoryCachedImpl)
      {
        v16 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = v16;
          v18 = [a1 _briefDescription];
          v19 = [*(a1 + 24) firstObject];
          v20 = NSStringFromSelector([v19 action]);
          v21 = [(UIGestureRecognizer *)a1 _state];
          v22 = _UIGestureRecognizerStateString(v21);
          v23 = (CACurrentMediaTime() - *(a1 + 64)) * 1000.0;
          *v24 = 138413058;
          *&v24[4] = v18;
          *&v24[12] = 2112;
          *&v24[14] = v20;
          v25 = 2112;
          v26 = v22;
          v27 = 2048;
          v28 = v23;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%@: sending action (%@) for state (%@) took (%.4f ms)", v24, 0x2Au);
        }
      }

      goto LABEL_10;
    }

    v6 = *(a1 + 8) & 0xFFFFFF7FFFFFFFFFLL;
  }

  else
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x2000000000) != 0)
    {
      return;
    }

    v6 = v5 | 0x2000000000;
  }

  *(a1 + 8) = v6;
  if ((v6 & 0x1000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(a1 + 8) |= 0x1000000000uLL;
  v8 = __UILogGetCategoryCachedImpl("Gesture", &qword_1ED49E4F8);
  if (*v8)
  {
    v10 = *(v8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [a1 _briefDescription];
      if (a2)
      {
        v13 = " (delayed)";
      }

      else
      {
        v13 = "";
      }

      v14 = [(UIGestureRecognizer *)a1 _state];
      v15 = _UIGestureRecognizerStateString(v14);
      *v24 = 138412802;
      *&v24[4] = v12;
      *&v24[12] = 2080;
      *&v24[14] = v13;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%@: performing action%s for state %@", v24, 0x20u);
    }
  }

  v9 = _os_activity_create(&dword_188A29000, "send gesture actions", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
  *v24 = 0;
  *&v24[8] = 0;
  if ([*(a1 + 24) count])
  {
    os_activity_scope_enter(v9, v24);
    _UIGestureRecognizerSendTargetActions(a1, *(a1 + 24));
    os_activity_scope_leave(v24);
  }
}

void _UIGestureRecognizerSendTargetActions(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a2 count];
  if (v4 == 1)
  {
    v10 = [a2 lastObject];
    [(UIGestureRecognizerTarget *)v10 _sendActionWithGestureRecognizer:a1];
  }

  else if (v4 >= 2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a2 copy];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(UIGestureRecognizerTarget *)*(*(&v11 + 1) + 8 * i) _sendActionWithGestureRecognizer:a1];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

__n128 sub_188D114DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, v8);
  sub_188A91E9C(v8, 0, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v4 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v4;
  *(a2 + 128) = v10;
  v5 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v5;
  v6 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v6;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t ___shouldFilterGESEvents_block_invoke()
{
  result = _UIApplicationSupportsGlobalEdgeSwipeTouches();
  _MergedGlobals_48 = result;
  return result;
}

uint64_t _UIViewAnimationDelegateAllowsUserInteraction(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v2 = [v1 layer];
  v3 = [v2 animationKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIViewAnimationDelegateAllowsUserInteraction_block_invoke;
  v7[3] = &unk_1E710C290;
  v4 = v1;
  v8 = v4;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:v7];

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_188D117CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

UITouch *__startNewUITouch(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, void *a10, uint64_t a11)
{
  v283 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F798);
  if (*CategoryCachedImpl)
  {
    v46 = a6;
    v47 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v281.a) = 134217984;
      *(&v281.a + 4) = a7;
      _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "\t\tStarting new touch for path index: %ld", &v281, 0xCu);
    }

    a6 = v46;
  }

  v268 = *MEMORY[0x1E695F060];
  v267 = 0.0;
  memset(&v266, 0, sizeof(v266));
  v265 = 0.0;
  v263 = 0;
  point = 0;
  v262 = 0;
  v231 = a6;
  __baseTouchLocationsForChild(&v262, a6, a5, a3, 0, &v268.width, &v266);
  v281 = v266;
  v282 = v267;
  _LogTouchLocationsIfNeeded("rawChildTouchLocations", &v281.a);
  *&v281.a = v262;
  *&v281.c = v263;
  *&v281.tx = point;
  v282 = v265;
  _LogTouchLocationsIfNeeded("childTouchSceneLocations", &v281.a);
  v18 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7A0);
  if (*v18)
  {
    v48 = *(v18 + 8);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromCGPoint(point);
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v49;
      _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "\t\tLooking for local hit test window at scene hitTestLocation %@ ", &v281, 0xCu);
    }
  }

  v19 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7A8);
  if (*v19)
  {
    v50 = *(v19 + 8);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = a3;
      if (v51)
      {
        v52 = MEMORY[0x1E696AEC0];
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = [v52 stringWithFormat:@"<%@: %p>", v54, v51];
      }

      else
      {
        v55 = @"(nil)";
      }

      v63 = v55;
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v63;
      _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "\t\t\tWindow server hit test window: %@", &v281, 0xCu);
    }
  }

  v20 = v265;
  x = point.x;
  y = point.y;
  if (_EventWindowExpectsExternalTouchInput(a3) && !IOHIDEventGetIntegerValue())
  {
    v26 = a3;
    goto LABEL_12;
  }

  if (![a3 _usesWindowServerHitTesting] || (-[UIWindow _fbsScene](a3), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a3, "_hitTestLocation:sceneLocationZ:inScene:withWindowServerHitTestWindow:event:", v23, a3, a4, x, y, v20), v24 = objc_claimAutoreleasedReturnValue(), v23, !v24) || (v25 = a3, v24, !v25))
  {
    v25 = [a3 _overrideTargetWindowForPathIndex:a7 forEvent:a4 windowServerHitTestWindow:a3];
    if (!v25)
    {
      v26 = [a3 _targetWindowForPathIndex:a7 atPoint:a4 scenePointZ:a3 forEvent:x windowServerHitTestWindow:{y, v20}];
LABEL_12:
      v25 = v26;
    }
  }

  v27 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7B0);
  if (*v27)
  {
    v56 = *(v27 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = v25;
      if (v57)
      {
        v58 = MEMORY[0x1E696AEC0];
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = [v58 stringWithFormat:@"<%@: %p>", v60, v57];
      }

      else
      {
        v61 = @"(nil)";
      }

      v64 = v61;
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v64;
      _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_ERROR, "\t\t\tFound local hit test window: %@", &v281, 0xCu);
    }
  }

  v230 = [(UIWindow *)a3 _fbsScene];
  v234 = _UIConvertScenePoint3DToWindow(v230, v25, v262.x, v262.y);
  v29 = v28;
  v262.x = v234;
  v262.y = v28;
  v30 = _UIConvertScenePoint3DToWindow(v230, v25, v263.x, v263.y);
  v32 = v31;
  v263.x = v30;
  v263.y = v31;
  v33 = _UIConvertScenePoint3DToWindow(v230, v25, x, y);
  v35 = v34;
  point.x = v33;
  point.y = v34;
  if (!_UIApplicationProcessIsSpringBoard() || ![v25 _isSystemGestureWindow])
  {
    goto LABEL_20;
  }

  if (v25)
  {
    [v25 _additionalRootLayerAffineTransform];
  }

  else
  {
    memset(&v281, 0, sizeof(v281));
  }

  if (CGAffineTransformIsIdentity(&v281))
  {
LABEL_20:
    [v25 _constrainTouchLocationToScene:{v234, v29}];
    v234 = v36;
    v29 = v37;
    [v25 _constrainTouchLocationToScene:{v30, v32}];
    v30 = v38;
    v32 = v39;
    [v25 _constrainTouchLocationToScene:{v33, v35}];
    v33 = v40;
    v35 = v41;
    v262.x = v234;
    v262.y = v29;
    v263.x = v30;
    v263.y = v32;
    point.x = v40;
    point.y = v41;
    v265 = v20;
  }

  *&v281.a = v262;
  *&v281.c = v263;
  *&v281.tx = point;
  v282 = v265;
  _LogTouchLocationsIfNeeded("childTouchWindowLocations", &v281.a);
  if (a1)
  {
    v42 = a1;
  }

  else
  {
    v42 = objc_alloc_init(UITouch);
  }

  v226 = BKSHIDEventGetDigitizerAttributes();
  v43 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7B8);
  if (*v43)
  {
    v62 = *(v43 + 8);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v281.a) = 134218240;
      *(&v281.a + 4) = v42;
      WORD2(v281.b) = 1024;
      *(&v281.b + 6) = a1 != 0;
      _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "\t\t\tNew touch: %p; used existing hover touch: %d", &v281, 0x12u);
    }
  }

  [(UIEventEnvironment *)a11 _setCurrentTouch:v42 forWindow:a3];
  [(UITouch *)v42 setTimestamp:a9];
  [v226 initialTouchTimestamp];
  [(UITouch *)v42 setInitialTouchTimestamp:?];
  [(UITouch *)v42 setPhase:0];
  if (v42)
  {
    *&v42->_touchFlags &= ~8u;
    [(UITouch *)v42 setWindow:v25];
    v42->_displacement = v268;
  }

  else
  {
    [0 setWindow:v25];
  }

  [(UITouch *)v42 _setWindowServerHitTestWindow:a3];
  v44 = [a4 _currentPointerEventSource];
  if (v42)
  {
    v42->_pointerSource = v44;
    if ([a4 _containsHIDPointerEvent])
    {
      v45 = v42->_pointerSource != 4;
      goto LABEL_55;
    }
  }

  else if ([a4 _containsHIDPointerEvent])
  {
    v45 = 1;
    goto LABEL_55;
  }

  v45 = 0;
LABEL_55:
  [(UITouch *)v42 _setIsPointerTouch:v45];
  _UITouchSetBasicTouchPropertiesFromEvent(v42, a2, a5, v231);
  if ([(UITouch *)v42 type]== UITouchTypePencil)
  {
    *(a11 + 96) = 1;
  }

  if (v42 && !v42->_type)
  {
    [v25 warpPoint:{v234, v29}];
    v234 = v66;
    v29 = v67;
    [v25 warpPoint:{v30, v32}];
    v30 = v68;
    v32 = v69;
    [v25 warpPoint:{v33, v35}];
    v33 = v70;
    v35 = v71;
    v65 = 1;
  }

  else
  {
    v65 = 0;
  }

  v72 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7C0);
  if (*v72)
  {
    v195 = *(v72 + 8);
    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      v285.x = v33;
      v285.y = v35;
      v196 = NSStringFromCGPoint(v285);
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v196;
      _os_log_impl(&dword_188A29000, v195, OS_LOG_TYPE_ERROR, "\t\tLooking for responder at %@", &v281, 0xCu);
    }
  }

  v224 = [a3 _focusSystem];
  HasExternalTouchInput = _UIDeviceHasExternalTouchInput();
  if (v224)
  {
    v74 = HasExternalTouchInput;
  }

  else
  {
    v74 = 0;
  }

  if (v74)
  {
    v75 = [v224 focusedItem];
    v76 = _UIFocusEnvironmentContainingView(v75);

    v77 = [MEMORY[0x1E695DF70] array];
    v78 = [v76 superview];
    if (v78)
    {
      do
      {
        [v77 insertObject:v78 atIndex:0];
        v79 = [v78 superview];

        v78 = v79;
      }

      while (v79);
    }

    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v80 = v77;
    v81 = [v80 countByEnumeratingWithState:&v258 objects:v280 count:16];
    if (v81)
    {
      v82 = *v259;
      while (2)
      {
        for (i = 0; i != v81; ++i)
        {
          if (*v259 != v82)
          {
            objc_enumerationMutation(v80);
          }

          if (UIViewIgnoresTouchEvents(*(*(&v258 + 1) + 8 * i)))
          {

            v84 = 0;
            goto LABEL_79;
          }
        }

        v81 = [v80 countByEnumeratingWithState:&v258 objects:v280 count:16];
        if (v81)
        {
          continue;
        }

        break;
      }
    }

    [v76 convertPoint:v25 fromView:{v33, v35}];
    v84 = [v76 hitTest:a4 withEvent:?];
LABEL_79:
  }

  else
  {
    v84 = 0;
  }

  if ([a2 _userInterfaceIdiom] == 3 && -[UITouch type](v42, "type") == UITouchTypeIndirect && v224 != 0)
  {
    v85 = [v224 focusedItem];
    v86 = _UIFocusEnvironmentContainingView(v85);

    v87 = v86;
    if (!v86)
    {
      v87 = a3;
      if (!v87)
      {
LABEL_86:
        if (v42)
        {
          windowServerHitTestWindow = v42->__windowServerHitTestWindow;
        }

        else
        {
          windowServerHitTestWindow = 0;
        }

        v89 = windowServerHitTestWindow;
        [(UITouch *)v42 majorRadius];
        v257[0] = MEMORY[0x1E69E9820];
        v257[1] = 3221225472;
        v257[2] = ____startNewUITouch_block_invoke;
        v257[3] = &__block_descriptor_88_e32__CAPoint3D_ddd_16__0__UIWindow_8l;
        *&v257[4] = v234;
        *&v257[5] = v29;
        *&v257[6] = v30;
        *&v257[7] = v32;
        *&v257[8] = v33;
        *&v257[9] = v35;
        *&v257[10] = v20;
        v91 = _UIHitTestGestureContainer(a4, v25, v89, 1, v257, v90);

        v87 = v91;
      }
    }
  }

  else
  {
    v87 = v84;
    if (!v84)
    {
      goto LABEL_86;
    }
  }

  v233 = v87;
  [(UITouch *)v42 _setResponder:?];
  if ([v25 _isTextEffectsWindow] && (v92 = objc_opt_class(), Name = class_getName(v92), !strcmp(Name, "UITextRangeView")))
  {
    v117 = [v233 _eventReceivingWindow];
    v118 = v117;
    if (!v117 || v117 == v25)
    {
      v225 = v25;
    }

    else
    {
      [v117 convertPoint:v25 fromWindow:{v262.x, v262.y}];
      v227 = v119;
      v121 = v120;
      v262.x = v120;
      v262.y = v119;
      [v118 convertPoint:v25 fromWindow:{v263.x, v263.y}];
      v223 = v122;
      v124 = v123;
      v263.x = v123;
      v263.y = v122;
      v225 = v118;

      [(UITouch *)v42 setWindow:v225];
      if (v65)
      {
        v125 = point.x;
        v126 = point.y;
        [v225 warpPoint:{v121, v227}];
        v234 = v127;
        v29 = v128;
        [v225 warpPoint:{v124, v223}];
        v30 = v129;
        v32 = v130;
        [v225 warpPoint:{v125, v126}];
        v33 = v131;
        v35 = v132;
      }
    }
  }

  else
  {
    v225 = v25;
  }

  IsKindOfUIView = _IsKindOfUIView(v233);
  if (v233 && (v65 & IsKindOfUIView) != 0)
  {
    v94 = v233;
    do
    {
      v95 = [(UITouch *)&v42->super.isa warpedIntoView];
      v96 = v95 == 0;

      if (!v96)
      {
        break;
      }

      [v94 charge];
      if (fabsf(v97) >= 2.2204e-16)
      {
        v98 = __lockWarpedPointToViewEdge(v94, v262.x, v262.y, v234, v29);
        v100 = v99;
        v101 = __lockWarpedPointToViewEdge(v94, v263.x, v263.y, v30, v32);
        v262.y = v100;
        v263.x = v101;
        v263.y = v102;
        v262.x = v98;
        point.x = v33;
        point.y = v35;
        v265 = 0.0;
        [(UITouch *)v42 setWarpedIntoView:v94];
        v103 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7C8);
        if (*v103)
        {
          v104 = *(v103 + 8);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v281.a) = 0;
            _os_log_impl(&dword_188A29000, v104, OS_LOG_TYPE_ERROR, "\t\tWarped point hit view with charge", &v281, 2u);
          }
        }
      }

      else
      {
        v94 = [v94 superview];
      }
    }

    while (v94);
  }

  v105 = [(UITouch *)v42 view];
  v106 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7D0);
  if (*v106)
  {
    v197 = *(v106 + 8);
    if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
    {
      v198 = a3;
      if (v198)
      {
        v199 = MEMORY[0x1E696AEC0];
        v200 = objc_opt_class();
        v201 = NSStringFromClass(v200);
        v202 = [v199 stringWithFormat:@"<%@: %p>", v201, v198];
      }

      else
      {
        v202 = @"(nil)";
      }

      v215 = v202;
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v215;
      _os_log_impl(&dword_188A29000, v197, OS_LOG_TYPE_ERROR, "\t\t\tWindow server hit test window: %@", &v281, 0xCu);
    }
  }

  v107 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7D8);
  if (*v107)
  {
    v203 = *(v107 + 8);
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      v204 = v105;
      if (v204)
      {
        v205 = MEMORY[0x1E696AEC0];
        v206 = objc_opt_class();
        v207 = NSStringFromClass(v206);
        v208 = [v205 stringWithFormat:@"<%@: %p>", v207, v204];
      }

      else
      {
        v208 = @"(nil)";
      }

      v216 = v208;
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v216;
      _os_log_impl(&dword_188A29000, v203, OS_LOG_TYPE_ERROR, "\t\t\tFound view: %@", &v281, 0xCu);
    }
  }

  v108 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7E0);
  if (*v108)
  {
    v209 = *(v108 + 8);
    if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
    {
      v210 = NSStringFromCGPoint(v262);
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v210;
      _os_log_impl(&dword_188A29000, v209, OS_LOG_TYPE_ERROR, "\t\t\tLocation in view: %@", &v281, 0xCu);
    }
  }

  v109 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F7E8);
  if (*v109)
  {
    v211 = *(v109 + 8);
    if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
    {
      v212 = NSStringFromCGPoint(v263);
      LODWORD(v281.a) = 138412290;
      *(&v281.a + 4) = v212;
      _os_log_impl(&dword_188A29000, v211, OS_LOG_TYPE_ERROR, "\t\t\tPrecise location in view: %@", &v281, 0xCu);
    }
  }

  if (!(v105 | v225) && [a3 _isSystemGestureWindow] && _UIApplicationProcessIsCarousel())
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v110 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1)
    {
      goto LABEL_114;
    }

    v217 = _UIInternalPreference_LogForMissingSystemGestureViewInCarousel;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_LogForMissingSystemGestureViewInCarousel)
    {
      goto LABEL_114;
    }

    while (v110 >= v217)
    {
      _UIInternalPreferenceSync(v110, &_UIInternalPreference_LogForMissingSystemGestureViewInCarousel, @"LogForMissingSystemGestureViewInCarousel", _UIInternalPreferenceUpdateBool);
      v217 = _UIInternalPreference_LogForMissingSystemGestureViewInCarousel;
      if (v110 == _UIInternalPreference_LogForMissingSystemGestureViewInCarousel)
      {
        goto LABEL_114;
      }
    }

    if (byte_1EA95E57C)
    {
LABEL_114:
      v111 = *(__UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F7F0) + 8);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v112 = a3;
        if (v112)
        {
          v113 = MEMORY[0x1E696AEC0];
          v114 = objc_opt_class();
          v115 = NSStringFromClass(v114);
          v116 = [v113 stringWithFormat:@"<%@: %p>", v115, v112];
        }

        else
        {
          v116 = @"(nil)";
        }

        v133 = v116;
        LODWORD(v281.a) = 138412290;
        *(&v281.a + 4) = v133;
        _os_log_impl(&dword_188A29000, v111, OS_LOG_TYPE_ERROR, "No hit test result for touch in render server hit tested window: %@", &v281, 0xCu);
      }

      v134 = *(__UILogGetCategoryCachedImpl("EventDispatch", &qword_1ED49F7F8) + 8);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        v135 = [a3 recursiveDescription];
        LODWORD(v281.a) = 138412290;
        *(&v281.a + 4) = v135;
        _os_log_impl(&dword_188A29000, v134, OS_LOG_TYPE_ERROR, "Recursive window description: \n%@", &v281, 0xCu);
      }
    }
  }

  v228 = [MEMORY[0x1E69DECA0] authenticationRecordForTouch:v42];
  if (v228)
  {
    [(UITouch *)v42 _setTouchAuthenticationRecord:v228];
    _UISTouchAuthenticationTelemetryReportRecord();
  }

  if (([v226 options] & 0x100) != 0)
  {
    v136 = objc_alloc_init(MEMORY[0x1E698E420]);
    [v136 setTouchIdentifier:{-[UITouch _touchIdentifier](v42, "_touchIdentifier")}];
    v137 = MEMORY[0x1E696AEC0];
    v138 = objc_opt_class();
    v139 = [v137 stringWithFormat:@"hit: %s %p", class_getName(v138), v105];
    [v136 setText:v139];

    [v136 setUniqueIdentifier:@"hitTest"];
    v140 = [MEMORY[0x1E698E428] sharedInstance];
    v279 = v136;
    v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v279 count:1];
    [v140 postTouchAnnotations:v141];
  }

  v142 = v262;
  if (v42)
  {
    v42->_locationInWindow = v262;
    v42->_previousLocationInWindow = v142;
    v143 = v263;
    v42->_preciseLocationInWindow = v263;
    v42->_precisePreviousLocationInWindow = v143;
  }

  v235 = v142;
  IOHIDEventGetFloatValue();
  [(UITouch *)v42 _setRollAngle:v144 resetPrevious:?];
  IOHIDEventGetFloatValue();
  if (v42)
  {
    maxObservedPressure = v42->_maxObservedPressure;
    if (maxObservedPressure < v145)
    {
      maxObservedPressure = v145;
    }

    v42->_previousPressure = v145;
    v42->_pressure = v145;
    v42->_maxObservedPressure = maxObservedPressure;
  }

  [UITouch _updateWithChildEvent:v42];
  if (_UIApplicationSupportsGlobalEdgeSwipeTouches())
  {
    v147 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F800);
    if (*v147)
    {
      v213 = *(v147 + 8);
      if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
      {
        if (v42)
        {
          v214 = (*&v42->_touchFlags >> 12) & 1;
        }

        else
        {
          v214 = 0;
        }

        LODWORD(v281.a) = 134218240;
        *(&v281.a + 4) = v42;
        WORD2(v281.b) = 1024;
        *(&v281.b + 6) = v214;
        _os_log_impl(&dword_188A29000, v213, OS_LOG_TYPE_ERROR, "\t\t\tNew touch %p isGESTouch: %d", &v281, 0x12u);
      }
    }
  }

  v148 = [(UITouch *)v42 window];
  v149 = [v148 _touchData];

  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v150 = v149;
  v151 = [v150 countByEnumeratingWithState:&v269 objects:&v281 count:16];
  if (!v151)
  {

    v153 = 0;
LABEL_164:
    v152 = objc_alloc_init(UITouchData);
    v152->startTouchDownLocation = v235;
    v152->lastTouchUpTimestamp = a9;
    v152->touchIsValidTap = 1;
    [v150 addObject:v152];
    goto LABEL_165;
  }

  v152 = 0;
  v153 = 0;
  v154 = *v270;
  do
  {
    v155 = 0;
    do
    {
      if (*v270 != v154)
      {
        objc_enumerationMutation(v150);
      }

      v156 = *(*(&v269 + 1) + 8 * v155);
      v157 = *(v156 + 32) + 0.35;
      if (v157 + 0.75 >= a9)
      {
        if (!v152 && v157 >= a9 && (*(v156 + 48) & 1) != 0)
        {
          if (vabdd_f64(v235.x, *(v156 + 8)) >= 45.0 || vabdd_f64(v235.y, *(v156 + 16)) >= 45.0)
          {
            v152 = 0;
          }

          else
          {
            v152 = v156;
          }
        }
      }

      else
      {
        if (!v153)
        {
          v153 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v153 addObject:v156];
      }

      ++v155;
    }

    while (v151 != v155);
    v158 = [v150 countByEnumeratingWithState:&v269 objects:&v281 count:16];
    v151 = v158;
  }

  while (v158);

  if (v153)
  {
    [v150 removeObjectsInArray:v153];
  }

  if (!v152)
  {
    goto LABEL_164;
  }

LABEL_165:
  v152->lastTouch = v42;
  v152->lastTouchDownTimestamp = a9;
  ++v152->lastTapCount;
  if (v42)
  {
    if (v152->touchIsValidTap)
    {
      v159 = 2;
    }

    else
    {
      v159 = 0;
    }

    *&v42->_touchFlags = *&v42->_touchFlags & 0xFFFD | v159;
  }

  [(UITouch *)v42 setTapCount:?];

  if (((v42 != 0) & _UIApplicationSupportsGlobalEdgeSwipeTouches()) != 1 || (*&v42->_touchFlags & 0x1000) == 0)
  {
    v281.a = 0.0;
    *&v281.b = &v281;
    *&v281.c = 0x2020000000;
    LOBYTE(v281.d) = 0;
    *&v269 = 0;
    *(&v269 + 1) = &v269;
    *&v270 = 0x2020000000;
    BYTE8(v270) = 0;
    [v225 bounds];
    v161 = v160;
    v163 = v162;
    v165 = v164;
    v167 = v166;
    [v225 safeAreaInsets];
    v169 = v161 + v168;
    v171 = v163 + v170;
    v173 = v165 - (v168 + v172);
    v175 = v167 - (v170 + v174);
    v286.origin.x = v161;
    v286.origin.y = v163;
    v286.size.width = v165;
    v286.size.height = v167;
    v287.origin.x = v169;
    v287.origin.y = v171;
    v287.size.width = v173;
    v287.size.height = v175;
    v176 = CGRectEqualToRect(v286, v287);
    v248[0] = MEMORY[0x1E69E9820];
    v248[1] = 3221225472;
    v249 = ____startNewUITouch_block_invoke_134;
    v250 = &unk_1E71193E0;
    v256 = !v176;
    v251 = v225;
    v252 = v169;
    v253 = v171;
    v254 = v173;
    v255 = v175;
    v242[0] = MEMORY[0x1E69E9820];
    v242[1] = 3221225472;
    v242[2] = ____startNewUITouch_block_invoke_2;
    v242[3] = &unk_1E7119408;
    v177 = v233;
    v247 = v248;
    v243 = v177;
    v245 = &v281;
    v178 = v251;
    v244 = v178;
    v246 = &v269;
    [a8 enumerateKeysAndObjectsUsingBlock:v242];
    v236[0] = MEMORY[0x1E69E9820];
    v236[1] = 3221225472;
    v236[2] = ____startNewUITouch_block_invoke_3;
    v236[3] = &unk_1E7119408;
    v179 = v177;
    v241 = v248;
    v237 = v179;
    v239 = &v281;
    v180 = v178;
    v238 = v180;
    v240 = &v269;
    [a10 enumerateKeysAndObjectsUsingBlock:v236];
    if (*(*(&v269 + 1) + 24) == 1)
    {
      if (*(*&v281.b + 24) == 1)
      {
        if (!IsKindOfUIView)
        {
          goto LABEL_198;
        }

        if ([v179 isMultipleTouchEnabled])
        {
          goto LABEL_198;
        }

        __setTouchViewNilWithGestureCheck(a4, v42, a8, a10);
        v181 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F808);
        if ((*v181 & 1) == 0)
        {
          goto LABEL_198;
        }

        v182 = *(v181 + 8);
        if (!os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_194;
        }

        *buf = 134217984;
        v274 = v42;
        v183 = "Touch %p was clicked in a non multi touch enabled view with other touches in the same view...ignoring";
      }

      else
      {
        [(UITouch *)v42 _setIsFirstTouchForView:1];
        if (!(v249)(v248, v42))
        {
          goto LABEL_198;
        }

        if (IsKindOfUIView)
        {
          if ([v179 _shouldApplyExclusiveTouch])
          {
            __setTouchViewNilWithGestureCheck(a4, v42, a8, a10);
            v187 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F810);
            if (*v187)
            {
              v218 = *(v187 + 8);
              if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v274 = v42;
                _os_log_impl(&dword_188A29000, v218, OS_LOG_TYPE_ERROR, "Touch %p was clicked in an exclusive touch view, but we already have another touch for this window", buf, 0xCu);
              }
            }
          }
        }

        v188 = [v180 _exclusiveTouchView];
        v189 = v188 == 0;

        if (v189)
        {
          goto LABEL_198;
        }

        __setTouchViewNilWithGestureCheck(a4, v42, a8, a10);
        v190 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F818);
        if ((*v190 & 1) == 0)
        {
          goto LABEL_198;
        }

        v182 = *(v190 + 8);
        if (!os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_194;
        }

        *buf = 134217984;
        v274 = v42;
        v183 = "Touch %p was clicked in a view, but we already have another exclusive touch view for this window";
      }

      v185 = v182;
      v186 = 12;
    }

    else
    {
      [(UITouch *)v42 _setIsFirstTouchForView:1];
      if (!(v249)(v248, v42))
      {
        goto LABEL_198;
      }

      if (*(*&v281.b + 24) != 1)
      {
        [(UITouch *)v42 _setIsFirstTouchForView:1];
        if (!IsKindOfUIView)
        {
          goto LABEL_198;
        }

        if (![v179 _shouldApplyExclusiveTouch])
        {
          goto LABEL_198;
        }

        [v180 _setExclusiveTouchView:v179];
        v191 = [a4 _exclusiveTouchWindows];
        [v191 addObject:v180];

        v192 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F828);
        if ((*v192 & 1) == 0)
        {
          goto LABEL_198;
        }

        v182 = *(v192 + 8);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          v219 = objc_opt_class();
          v220 = NSStringFromClass(v219);
          *buf = 138412802;
          v274 = v220;
          v275 = 2048;
          v276 = a4;
          v277 = 2112;
          v278 = v180;
          _os_log_impl(&dword_188A29000, v182, OS_LOG_TYPE_ERROR, "%@<%p> - Added window for exclusive touch  (%@)", buf, 0x20u);
        }

        goto LABEL_194;
      }

      v184 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F820);
      if ((*v184 & 1) == 0)
      {
LABEL_198:

        _Block_object_dispose(&v269, 8);
        _Block_object_dispose(&v281, 8);
        goto LABEL_199;
      }

      v182 = *(v184 + 8);
      if (!os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
LABEL_194:

        goto LABEL_198;
      }

      *buf = 0;
      v183 = "ERROR: We found a touch view the current view without finding a touch for the current window";
      v185 = v182;
      v186 = 2;
    }

    _os_log_impl(&dword_188A29000, v185, OS_LOG_TYPE_ERROR, v183, buf, v186);
    goto LABEL_194;
  }

LABEL_199:
  v193 = v42;

  return v193;
}

void sub_188D13508(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Unwind_Resume(a1);
}

id _UIHitTestGestureContainer(id *a1, void *a2, uint64_t (*a3)(uint64_t result, uint64_t a2), char a4, uint64_t a5, double a6)
{
  v29 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HitTest", _UIHitTestGestureContainer___s_category);
  if (*CategoryCachedImpl)
  {
    v21 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      v26 = a3;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Hit testing with event: %@, window: %@, server window: %@.", buf, 0x20u);
    }
  }

  if (a4)
  {
    v13 = a3;
    v14 = (*(a5 + 16))(a5, a2);
    v17 = performHitTest(a1, a2, a3, v14, v15, v16, a6);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__55;
    v27 = __Block_byref_object_dispose__55;
    v28 = 0;
    v18 = [a2 _eventRoutingScene];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3254779904;
    v22[2] = ___UIHitTestGestureContainer_block_invoke;
    v22[3] = &unk_1EFAFF8D8;
    v22[4] = a1;
    v22[6] = buf;
    v23 = a3;
    v24 = a6;
    v22[5] = a5;
    v19 = [v18 _topVisibleWindowPassingTest:v22];

    v17 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  return v17;
}

void sub_188D137FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id performHitTest(id *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v38 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HitTest", &qword_1ED49D870);
  if (*CategoryCachedImpl)
  {
    v29 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = a2;
      _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Hit testing window: %@", buf, 0xCu);
    }
  }

  if ([a2 _ignoresHitTest])
  {
    v14 = 0;
  }

  else
  {
    v15 = [_UIHitTestContext contextWithPoint:a1 radius:a4 event:a5, a7];
    v16 = _MergedGlobals_1057;
    _MergedGlobals_1057 = v15;

    v14 = [a2 _hitTest:a1 withEvent:a3 windowServerHitTestWindow:{a4, a5}];
    if (_IsKindOfUIView(v14))
    {
      v17 = [v14 _hitTestWithContext:_MergedGlobals_1057];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v14;
      }

      v20 = v19;

      v14 = v20;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 supplementaryFrames];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = *v32;
      do
      {
        v24 = 0;
        v25 = v14;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v14 = [*(*(&v31 + 1) + 8 * v24) event:a1 hitTestedContainer:v25 withContext:{_MergedGlobals_1057, v31}];

          ++v24;
          v25 = v14;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v22);
    }

    v26 = _MergedGlobals_1057;
    _MergedGlobals_1057 = 0;

    v27 = __UILogGetCategoryCachedImpl("HitTest", &qword_1ED49D878);
    if (*v27)
    {
      v30 = *(v27 + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v14;
        _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Hit test result: %@", buf, 0xCu);
      }
    }
  }

  return v14;
}

float _chargeForView(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0.0;
  if (v1 && (v1[108] & 0x80) != 0)
  {
    v4 = objc_getAssociatedObject(v1, &_UIViewChargeAssocObjectKey);
    [v4 floatValue];
    v3 = v5;
  }

  return v3;
}

BOOL ____startNewUITouch_block_invoke_134(uint64_t a1, _WORD *a2)
{
  v4 = _UIApplicationSupportsGlobalEdgeSwipeTouches();
  if (a2 && v4 && (a2[118] & 0x1000) != 0)
  {
    return 0;
  }

  if (*(a1 + 72) != 1)
  {
    return 1;
  }

  [a2 locationInView:*(a1 + 32)];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);

  return CGRectContainsPoint(*&v9, *&v6);
}

uint64_t _UIViewIgnoresTouchEvents(void *a1, char a2)
{
  v3 = a1;
  if ([v3 isUserInteractionEnabled])
  {
    v4 = [v3 isHidden];
    if ((v4 & 1) == 0 && (a2 & 1) == 0)
    {
      [v3 alpha];
      v4 = v5 < 0.01;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t _UIViewEatsTouchesAndAnimationDelegateAllowsInteraction(void *a1, int a2)
{
  v3 = a1;
  if (_UIViewIsAnimating(v3) && ([v3 isHidden] & 1) == 0)
  {
    v5 = [v3 layer];
    v6 = [v5 presentationLayer];
    [v6 opacity];
    if (v7 >= 0.01)
    {
      v4 = a2 ^ 1u;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ____applySynthesizedTouchTranslationAndModifyIfNeeded_block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = IOHIDEventGetType();
  if (result == 11)
  {
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 24);
    v8 = (v9 + 24);
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = *(a1[6] + 8);
    v12 = *(v11 + 24);
    v8 = (v11 + 24);
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else if (result == 7)
  {
    v8 = (*(a1[4] + 8) + 24);
LABEL_6:
    *v8 = a2;
  }

  if (*(*(a1[4] + 8) + 24) && *(*(a1[5] + 8) + 24))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

void ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = *MEMORY[0x1E69E9840];
  v6 = _UIEventHIDPathIndexForDigitizerEvent();
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F718);
  if (*CategoryCachedImpl)
  {
    v91 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_188A29000, v91, OS_LOG_TYPE_ERROR, "\tProcessing digitizer child %ld info at child index: %ld", buf, 0x16u);
    }
  }

  v8 = CFDictionaryGetValue(*(a1 + 72), v6);
  [(UIEventEnvironment *)*(a1 + 80) _setCurrentTouch:v8 forWindow:*(a1 + 32)];
  v9 = *(a1 + 88);
  if (v9)
  {
    v10 = [v9 hoverTouchForContextId:*(a1 + 120) pathIndex:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F720);
  if (*v11)
  {
    v92 = *(v11 + 8);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = v92;
      IntegerValue = IOHIDEventGetIntegerValue();
      *buf = 67109120;
      *&buf[4] = IntegerValue != 0;
      _os_log_impl(&dword_188A29000, v93, OS_LOG_TYPE_ERROR, "\tChild event is touching: %d", buf, 8u);
    }
  }

  if (!IOHIDEventGetIntegerValue())
  {
    if (!*(a1 + 88))
    {
      goto LABEL_30;
    }

    v13 = IOHIDEventGetIntegerValue();
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10 == 0;
    }

    v15 = v14;
    if (!v13)
    {
      if ((v15 & 1) == 0)
      {
        _UITouchSetBasicTouchPropertiesFromEvent(v10, *(a1 + 40), *(a1 + 64), a2);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_33;
      aBlock[3] = &__block_descriptor_52_e5_v8__0lu32l8;
      v28 = *(a1 + 88);
      v127 = *(a1 + 120);
      aBlock[4] = v28;
      aBlock[5] = v6;
      v29 = _Block_copy(aBlock);
      v30 = *(*(a1 + 56) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      [(UITouch *)v10 setPhase:7];
      if (v10)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (v10)
    {
      _UIEventHIDGetDescendantPointerEvent(*(a1 + 64));
      if ((v15 & 1) == 0)
      {
        _UITouchSetBasicTouchPropertiesFromEvent(v10, *(a1 + 40), *(a1 + 64), a2);
        v16 = *(a1 + 96);
        v17 = *(a1 + 32);
        v18 = *(a1 + 64);
        v137 = 0;
        v136 = 0u;
        memset(buf, 0, sizeof(buf));
        __baseTouchLocationsForChild(buf, a2, v18, v17, v10, 0, 0);
        v19 = [(UIWindow *)v17 _fbsScene];
        v20 = _UIConvertScenePoint3DToWindow(v19, v17, *buf, *&buf[8]);
        v22 = v21;
        v23 = _UIConvertScenePoint3DToWindow(v19, v17, *&buf[16], *&buf[24]);
        v25 = v24;
        if ([(UITouch *)v10 phase]<= UITouchPhaseCancelled)
        {
          [(UITouch *)v10 _clearForReenteringHoverInWindow:v17];
        }

        [(UITouch *)v10 setPhase:6];
        v10->_movementMagnitudeSquared = (v20 - v10->_locationInWindow.x) * (v20 - v10->_locationInWindow.x) + (v22 - v10->_locationInWindow.y) * (v22 - v10->_locationInWindow.y);
        IOHIDEventGetFloatValue();
        maxObservedPressure = v10->_maxObservedPressure;
        if (maxObservedPressure < v26)
        {
          maxObservedPressure = v26;
        }

        v10->_previousPressure = v10->_pressure;
        v10->_pressure = v26;
        v10->_maxObservedPressure = maxObservedPressure;
        [(UITouch *)v10 setTimestamp:v16];
        v10->_previousLocationInWindow = v10->_locationInWindow;
        v10->_precisePreviousLocationInWindow = v10->_preciseLocationInWindow;
        v10->_locationInWindow.x = v20;
        v10->_locationInWindow.y = v22;
        v10->_preciseLocationInWindow.x = v23;
        v10->_preciseLocationInWindow.y = v25;
      }

LABEL_29:
      [*(a1 + 88) _addHasOutstandingUpdateTouch:v10];
      goto LABEL_30;
    }

    v75 = [*(a1 + 32) isHidden];
    v76 = v75;
    v77 = v75 ^ 1;
    v78 = _UIEventHIDGetDescendantPointerEvent(*(a1 + 64));
    if (v76 & 1) != 0 || !v78 || (_UIApplicationProcessIsPointerUI() & 1) == 0 && (v79 = [0 phase], +[_UIPointerArbiter sharedArbiter](_UIPointerArbiter, "sharedArbiter"), v80 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v80, "pointerState") != 0, v80, objc_msgSend(*(a1 + 32), "windowScene"), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "pointerLockState"), v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v82, "isLocked"), v82, v81, v79 != 7) && ((v77 | v83 ^ 1))
    {
      if (!v77)
      {
        v10 = 0;
        v12 = v8;
        if (!v8)
        {
          goto LABEL_54;
        }

        goto LABEL_31;
      }
    }

    v84 = *(a1 + 96);
    v85 = *(a1 + 32);
    v86 = *(a1 + 40);
    v87 = *(a1 + 64);
    v10 = objc_alloc_init(UITouch);
    [(UITouch *)v10 setTimestamp:v84];
    [(UITouch *)v10 setPhase:5];
    [(UITouch *)v10 setWindow:v85];
    [(UITouch *)v10 _setWindowServerHitTestWindow:v85];
    v88 = _UIEventHIDGetDescendantPointerEvent(v87);
    v89 = _UIEventHIDGetPointerEventSource(v88);
    if (v10)
    {
      v10->_pointerSource = v89;
      if (v88)
      {
        v90 = v89 != 4;
        goto LABEL_92;
      }
    }

    else if (v88)
    {
      v90 = 1;
      goto LABEL_92;
    }

    v90 = 0;
LABEL_92:
    [(UITouch *)v10 _setIsPointerTouch:v90];
    _UITouchSetBasicTouchPropertiesFromEvent(v10, v86, v87, a2);
    v137 = 0;
    v136 = 0u;
    memset(buf, 0, sizeof(buf));
    __baseTouchLocationsForChild(buf, a2, v87, v85, 0, 0, 0);
    v112 = [(UIWindow *)v85 _fbsScene];
    v113 = _UIConvertScenePoint3DToWindow(v112, v85, *buf, *&buf[8]);
    v115 = v114;
    v116 = _UIConvertScenePoint3DToWindow(v112, v85, *&buf[16], *&buf[24]);
    v118 = v117;
    _UIConvertScenePoint3DToWindow(v112, v85, *&v136, *(&v136 + 1));
    if (v10)
    {
      v10->_previousLocationInWindow.x = v113;
      v10->_previousLocationInWindow.y = v115;
      v10->_precisePreviousLocationInWindow.x = v116;
      v10->_precisePreviousLocationInWindow.y = v118;
      v10->_locationInWindow.x = v113;
      v10->_locationInWindow.y = v115;
      v10->_preciseLocationInWindow.x = v116;
      v10->_preciseLocationInWindow.y = v118;
      IOHIDEventGetFloatValue();
      v120 = v10->_maxObservedPressure;
      if (v120 < v119)
      {
        v120 = v119;
      }

      v10->_previousPressure = v119;
      v10->_pressure = v119;
      v10->_maxObservedPressure = v120;
    }

    else
    {
      IOHIDEventGetFloatValue();
    }

    [*(a1 + 88) setHoverTouch:v10 forContextId:*(a1 + 120) pathIndex:v6];
    if (v10)
    {
      goto LABEL_29;
    }

LABEL_30:
    v12 = v8;
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_31;
  }

  v12 = v8;
  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = __startNewUITouch(v10, *(a1 + 40), *(a1 + 32), *(a1 + 104), *(a1 + 64), a2, v6, *(a1 + 72), *(a1 + 96), *(a1 + 112), *(a1 + 80));
  }

  CFDictionaryAddValue(*(a1 + 112), v6, v12);
  CFDictionaryRemoveValue(*(a1 + 72), v6);
  if (v8)
  {
LABEL_31:
    if (v12)
    {
      _UITouchSetBasicTouchPropertiesFromEvent(v12, *(a1 + 40), *(a1 + 64), a2);
      v32 = *(a1 + 96);
      v33 = *(a1 + 32);
      v34 = *(a1 + 64);
      v35 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F850);
      if (*v35)
      {
        v95 = *(v35 + 8);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v6;
          _os_log_impl(&dword_188A29000, v95, OS_LOG_TYPE_ERROR, "\t\tUpdating existing touch instance for path index: %ld", buf, 0xCu);
        }
      }

      v36 = [v12 window];
      v137 = 0;
      v136 = 0u;
      memset(buf, 0, sizeof(buf));
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0;
      __baseTouchLocationsForChild(&v128, a2, v34, v33, v12, 0, buf);
      *v132 = *buf;
      *&v132[16] = *&buf[16];
      v133 = v136;
      v134 = v137;
      _LogTouchLocationsIfNeeded("rawChildTouchLocations", v132);
      *v132 = v128;
      *&v132[16] = v129;
      v133 = v130;
      v134 = v131;
      _LogTouchLocationsIfNeeded("childTouchSceneLocations", v132);
      v37 = [(UIWindow *)v33 _fbsScene];
      v38 = _UIConvertScenePoint3DToWindow(v37, v36, *&v128, *(&v128 + 1));
      v40 = v39;
      *&v128 = v38;
      *(&v128 + 1) = v39;
      v131 = v41;
      v42 = _UIConvertScenePoint3DToWindow(v37, v36, *&v129, *(&v129 + 1));
      v44 = v43;
      *&v129 = v42;
      *(&v129 + 1) = v43;
      v45 = *(v12 + 88);

      if (v45)
      {
        *&log = v32;
        v46 = v130;
        [v36 warpPoint:{v38, v40}];
        v48 = v47;
        v50 = v49;
        [v36 warpPoint:{v42, v44}];
        v121 = v52;
        v122 = v51;
        [v36 warpPoint:v46];
        v54 = v53;
        v56 = v55;
        v38 = __lockWarpedPointToViewEdge(v45, v38, v40, v48, v50);
        v40 = v57;
        v42 = __lockWarpedPointToViewEdge(v45, v42, v44, v122, v121);
        v44 = v58;
        *&v128 = v38;
        *(&v128 + 1) = v40;
        *&v129 = v42;
        *(&v129 + 1) = v58;
        *&v130 = v54;
        *(&v130 + 1) = v56;
        v131 = 0;
        v59 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F858);
        if (*v59)
        {
          v108 = *(v59 + 8);
          v32 = *&log;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            *v132 = 0;
            _os_log_impl(&dword_188A29000, v108, OS_LOG_TYPE_ERROR, "\t\tWarping Point", v132, 2u);
          }
        }

        else
        {
          v32 = *&log;
        }
      }

      _LogTouchLocationsIfNeeded("childTouchWindowLocations", &v128);
      _UpdateTouchTapCount(v12, 1, v32, v38, v40);
      [UITouch _updateWithChildEvent:v12];
      *(v12 + 8) = (v38 - *(v12 + 112)) * (v38 - *(v12 + 112)) + (v40 - *(v12 + 120)) * (v40 - *(v12 + 120));
      IOHIDEventGetFloatValue();
      v61 = v60;
      IOHIDEventGetFloatValue();
      v63 = v62;
      v64 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F860);
      if (*v64)
      {
        loga = *(v64 + 8);
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          logb = loga;
          v96 = IOHIDEventGetIntegerValue() != 0;
          v97 = IOHIDEventGetIntegerValue();
          *v132 = 67109376;
          *&v132[4] = v96;
          *&v132[8] = 2048;
          *&v132[10] = v97;
          _os_log_impl(&dword_188A29000, logb, OS_LOG_TYPE_ERROR, "\t\tTouch isTouching: %d inRange: %ld", v132, 0x12u);
        }
      }

      v65 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F868);
      if (*v65)
      {
        v98 = *(v65 + 8);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *v132 = 134217984;
          *&v132[4] = v61;
          _os_log_impl(&dword_188A29000, v98, OS_LOG_TYPE_ERROR, "\t\tTouch pressure: %f", v132, 0xCu);
        }
      }

      [v12 preciseLocationInView:0];
      if (v42 != v67 || v44 != v66 || ([v12 _pressure], v61 != v68) || objc_msgSend(v12, "type") == 2 || _UIEventHIDGetDescendantPointerEvent(v34) || (objc_msgSend(v12, "_rollAngle"), v63 != v69) || _UIApplicationSupportsGlobalEdgeSwipeTouches() && (*(v12 + 236) & 0x2000) != 0)
      {
        v70 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F870);
        if (*v70)
        {
          v99 = *(v70 + 8);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = v99;
            v139.x = v38;
            v139.y = v40;
            v101 = NSStringFromCGPoint(v139);
            *v132 = 138412290;
            *&v132[4] = v101;
            _os_log_impl(&dword_188A29000, v100, OS_LOG_TYPE_ERROR, "\t\tTouch moved to %@", v132, 0xCu);
          }
        }

        [v12 setTimestamp:v32];
        *(v12 + 128) = *(v12 + 112);
        *(v12 + 160) = *(v12 + 144);
        *(v12 + 112) = v38;
        *(v12 + 120) = v40;
        *(v12 + 144) = v42;
        *(v12 + 152) = v44;
        v71 = *(v12 + 224);
        if (v71 < v61)
        {
          v71 = v61;
        }

        *(v12 + 176) = *(v12 + 216);
        *(v12 + 216) = v61;
        *(v12 + 224) = v71;
        [(UITouch *)v12 _setRollAngle:v63 resetPrevious:?];
        v72 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F878);
        if (*v72)
        {
          v102 = *(v72 + 8);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v103 = v102;
            v104 = [v12 _phaseDescription];
            *v132 = 138412290;
            *&v132[4] = v104;
            _os_log_impl(&dword_188A29000, v103, OS_LOG_TYPE_ERROR, "\t\tCurrent touch phase: %@", v132, 0xCu);
          }
        }

        if (([v12 phase] | 2) == 2)
        {
          [v12 setPhase:1];
        }

        v73 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F880);
        if (*v73)
        {
          v105 = *(v73 + 8);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            v106 = v105;
            v107 = [v12 _phaseDescription];
            *v132 = 138412290;
            *&v132[4] = v107;
            _os_log_impl(&dword_188A29000, v106, OS_LOG_TYPE_ERROR, "\t\tNew touch phase: %@", v132, 0xCu);
          }
        }
      }

      if (_UIApplicationSupportsGlobalEdgeSwipeTouches())
      {
        v74 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F888);
        if (*v74)
        {
          v109 = *(v74 + 8);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v110 = v109;
            v111 = *(v12 + 236);
            *v132 = 134218496;
            *&v132[4] = v12;
            *&v132[12] = 1024;
            *&v132[14] = (v111 >> 12) & 1;
            *&v132[18] = 1024;
            *&v132[20] = (v111 >> 13) & 1;
            _os_log_impl(&dword_188A29000, v110, OS_LOG_TYPE_ERROR, "\t\tTouch %p isGESTouch: %d; isTransitioningFromGESTouch: %d", v132, 0x18u);
          }
        }
      }
    }
  }

LABEL_54:
  [(UIEventEnvironment *)*(a1 + 80) _setCurrentTouch:*(a1 + 32) forWindow:?];
}

void _UITouchSetBasicTouchPropertiesFromEvent(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  [v7 _setHidEvent:a4];
  v9 = BKSHIDEventGetDigitizerAttributes();
  IntegerValue = IOHIDEventGetIntegerValue();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = [v9 pathAttributes];
  v12 = [v11 countByEnumeratingWithState:&v61 objects:buf count:16];
  if (v12)
  {
    v13 = v12;
    v60 = v8;
    v14 = *v62;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v61 + 1) + 8 * i);
        if ([v16 pathIndex] == IntegerValue)
        {
          v17 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v61 objects:buf count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_11:
    v8 = v60;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 touchIdentifier];
  if (v7)
  {
    *(v7 + 14) = v18;
    v19 = [v17 authenticationMessage];
    objc_storeStrong(v7 + 48, v19);
  }

  else
  {
    v19 = [v17 authenticationMessage];
  }

  v20 = [v17 securityAnalysis];
  [(UITouch *)v7 _setHitTestSecurityAnalysis:v20];

  [v7 _setPathIndex:_UIEventHIDPathIndexForDigitizerEvent()];
  [v7 _setPathIdentity:IOHIDEventGetIntegerValue()];
  [v8 _touchRadiusScaleFactor];
  v22 = v21;
  IOHIDEventGetFloatValue();
  v24 = v22 * v23;
  IOHIDEventGetFloatValue();
  v26 = v25;
  if (v24 <= 0.0 && IOHIDEventGetIntegerValue())
  {
    [v8 scale];
    v24 = 0.5 / v27;
  }

  if (v7)
  {
    *(v7 + 25) = v24;
    *(v7 + 26) = v22 * v26;
  }

  if (IOHIDEventGetIntegerValue())
  {
    if ([UIApp _supportsIndirectInputEvents] && (v28 = _UIEventHIDGetDescendantPointerEvent(a3)) != 0)
    {
      if (_UIEventHIDGetPointerEventSource(v28) == 4)
      {
        v29 = 0;
      }

      else
      {
        v29 = 3;
      }
    }

    else
    {
      v29 = IOHIDEventGetIntegerValue() == 0;
    }
  }

  else
  {
    v29 = 2;
  }

  [v7 _setType:v29];
  v30 = IOHIDEventGetIntegerValue();
  v31 = IOHIDEventGetIntegerValue();
  v32 = IOHIDEventGetIntegerValue();
  if (v7)
  {
    v33 = (v31 >> 10) & 1;
    if (!v32)
    {
      LOBYTE(v33) = 0;
    }

    v34 = (v30 >> 10) & 1;
    if (!v32)
    {
      v34 = 0;
    }

    *(v7 + 265) = v34;
    *(v7 + 266) = v33;
    v35 = (v30 >> 23) & 1;
    if (!v32)
    {
      v35 = 0;
    }

    v36 = (v31 >> 23) & 1;
    if (!v32)
    {
      LOBYTE(v36) = 0;
    }

    *(v7 + 268) = v35;
    *(v7 + 269) = v36;
    if (v34 | v35)
    {
      v37 = v32;
    }

    else
    {
      v37 = 0;
    }

    v7[35] = v37;
  }

  [v7 _setSenderID:IOHIDEventGetSenderID()];
  [v17 zGradient];
  [v7 _setZGradient:?];
  v38 = a3;
  if (a4)
  {
    if (IOHIDEventGetIntegerValue() == 11)
    {
      v38 = a4;
    }

    else
    {
      v38 = a3;
    }
  }

  v39 = [v7 type];
  if ([v7 _isPointerTouch])
  {
    v40 = 3;
  }

  else
  {
    v40 = v39;
  }

  v41 = _UIEventHIDGetMaxForceForDigitizerEvent(v38, v40);
  if (v7)
  {
    *(v7 + 36) = v41;
  }

  [v7 _setEdgeType:_UIEventHIDTouchEdgeTypeForHIDEvent()];
  [v7 _setEdgeAim:(IOHIDEventGetIntegerValue() >> 24) & 0xF];
  v42 = _UIEventHIDGetDescendantPointerEvent(a3);
  v43 = _UIEventHIDGetChildStylusEvent(a3);
  if (v7)
  {
    v44 = 1;
    if (v43 | v42)
    {
      v44 = 2;
    }

    v7[6] = v44;
  }

  v45 = _UIEventHIDGetDescendantPointerEvent(a3);
  if (v45)
  {
    v46 = v45;
    [v7 _setPointerSenderID:IOHIDEventGetSenderID()];
    if (_UIEventGetForceEvent(v46))
    {
      [v7 _setForceStage:IOHIDEventGetIntegerValue()];
    }

    v47 = BKSHIDEventGetPointerAttributes();
    v48 = v47;
    v49 = v47 && [v47 source] == 12 && !objc_msgSend(v48, "fingerDownCount") && objc_msgSend(v7, "phase") < 5;
    [v7 _setIsTapToClick:v49];
    v50 = [v48 hitTestSecurityAnalysis];
    if (v50)
    {
      [(UITouch *)v7 _setHitTestSecurityAnalysis:v50];
    }
  }

  v51 = BKSHIDEventGetBaseAttributes();
  v52 = [v51 source];

  if (v52 == 12)
  {
    [v7 _setIsRestingTouch:(IOHIDEventGetIntegerValue() >> 9) & 1];
  }

  v53 = _UIApplicationSupportsGlobalEdgeSwipeTouches();
  if (v7)
  {
    if (v53)
    {
      v54 = _UIApplicationSupportsGlobalEdgeSwipeTouches();
      if (a4)
      {
        if (v54)
        {
          Phase = IOHIDEventGetPhase();
          v56 = Phase;
          if ((*(v7 + 118) & 0x1000) != 0 && Phase != 128)
          {
            *(v7 + 118) |= 0x2000u;
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_updateGESFlagsWithHIDEvent____s_category);
            if (*CategoryCachedImpl)
            {
              v59 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v66 = v7;
                _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_ERROR, "\tTouch %p is transitioning from isGESTouch", buf, 0xCu);
              }
            }
          }

          *(v7 + 118) = *(v7 + 118) & 0xEFFF | ((v56 == 128) << 12);
        }
      }
    }
  }

  v58 = (_UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent() & 1) == 0 && _UIEventHIDExpectedToBecomeDragEvent();
  if (v7)
  {
    *(v7 + 270) = v58;
  }
}

float _UIEventHIDGetMaxForceForDigitizerEvent(uint64_t a1, uint64_t a2)
{
  v4 = BKSHIDEventGetDigitizerAttributes();
  v5 = v4;
  if (a2 == 3 || !v4)
  {
    if (a2)
    {
      if (a2 == 3)
      {
LABEL_10:
        v7 = 1000.0;
        goto LABEL_11;
      }

      v7 = 0.0;
      if (a2 != 2)
      {
        goto LABEL_11;
      }
    }

    if (a1 && IOHIDEventGetIntegerValue() == 11)
    {
      IOHIDEventGetFloatValue();
    }

    goto LABEL_10;
  }

  [v4 maximumForce];
  v7 = v6;
LABEL_11:

  return v7;
}

uint64_t ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_52(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 48) == 1)
  {
    v5 = [a3 window];
    v6 = [v5 _canIgnoreInteractionEvents];
  }

  else
  {
    v6 = 0;
  }

  result = _AddTouchToEventAndDetermineIfNeedsCancel(v6, a3, [a3 phase] == 4, *(a1 + 40));
  if (result)
  {
    v8 = *(*(a1 + 32) + 16);

    return v8();
  }

  return result;
}

BOOL _AddTouchToEventAndDetermineIfNeedsCancel(int a1, uint64_t a2, int a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = [(UITouch *)a2 _effectivelyAuthentic];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F890);
  if (*CategoryCachedImpl)
  {
    v22 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = @"NO";
      if (a1)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      if (a3)
      {
        v23 = @"YES";
      }

      *v44 = 138412546;
      *&v44[4] = v24;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "\tAdd touch to event: ignoring interaction: %@; was cancelled: %@", v44, 0x16u);
    }
  }

  v10 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F898);
  if (*v10)
  {
    v25 = *(v10 + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      v27 = @"NO";
      if (a2)
      {
        if (*(a2 + 264))
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }
      }

      else
      {
        v28 = @"NO";
      }

      *v44 = 134218498;
      if (v8)
      {
        v27 = @"YES";
      }

      *&v44[4] = a2;
      v45 = 2112;
      v46 = v28;
      v47 = 2112;
      v48 = v27;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "\t\tTouch %p is eaten: %@; effectively authentic: %@", v44, 0x20u);
    }
  }

  v11 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8A0);
  if (*v11)
  {
    v29 = *(v11 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = @"NO";
      if (a2 && *(a2 + 264))
      {
        v31 = @"YES";
      }

      *v44 = 134218242;
      *&v44[4] = a2;
      v45 = 2112;
      v46 = v31;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "\t\tTouch %p is eaten: %@", v44, 0x16u);
    }
  }

  v12 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8A8);
  if (*v12)
  {
    v32 = *(v12 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
      v34 = [a4 allTouches];
      v35 = [v34 count];
      *v44 = 134217984;
      *&v44[4] = v35;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "\t\tTouches event current touch count %lu", v44, 0xCu);
    }
  }

  if ((a1 & 1) == 0 && (!a2 || (*(a2 + 264) & 1) == 0) && v8 == 1)
  {
    if ((a3 & 1) == 0)
    {
      [a4 _addTouch:a2 forDelayedDelivery:0];
    }

    goto LABEL_17;
  }

  if (![a2 phase])
  {
    [a2 setPhase:4];
    goto LABEL_17;
  }

  if (a3)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  v13 = [a2 phase] == 3 || objc_msgSend(a2, "phase") == 4;
  [a4 _addTouch:a2 forDelayedDelivery:0];
LABEL_20:
  v14 = [a2 window];
  v15 = [v14 _boundContext];
  [v15 _notifyIfChangedFromSecure:v8];

  if ((v8 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    if (a2)
    {
      v17 = *(a2 + 360);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    [v16 postNotificationName:@"_UIEventDispatcherDidCancelTouchForInsecureServicePresentation" object:v18];
  }

  v19 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8B0);
  if (*v19)
  {
    v36 = *(v19 + 8);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      if (v13)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = v36;
      v39 = [a2 _phaseDescription];
      *v44 = 138412546;
      *&v44[4] = v37;
      v45 = 2112;
      v46 = v39;
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "\t\tNeeds cancel: %@; new touch phase: %@", v44, 0x16u);
    }
  }

  v20 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F8B8);
  if (*v20)
  {
    v40 = *(v20 + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = v40;
      v42 = [a4 allTouches];
      v43 = [v42 count];
      *v44 = 134217984;
      *&v44[4] = v43;
      _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "\t\tTouches event new touch count %lu", v44, 0xCu);
    }
  }

  return v13;
}

uint64_t ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  ++*(*(*(result + 32) + 8) + 24);
  if (!a3)
  {
    v3 = result;
    result = IOHIDEventGetIntegerValue();
    *(*(*(v3 + 40) + 8) + 24) = result == 0;
  }

  return result;
}

void __baseTouchLocationsForChild(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double *a6, uint64_t a7)
{
  v101 = BKSHIDEventGetDigitizerAttributes();
  IOHIDEventGetFloatValue();
  v14 = v13;
  IOHIDEventGetFloatValue();
  v16 = v15;
  IOHIDEventGetFloatValue();
  v17 = _UIEventHIDPathAttributesForChild(v101);
  v18 = v17;
  if (v17)
  {
    [v17 preciseLocationX];
    v20 = v19;
    [v18 preciseLocationY];
  }

  else
  {
    IOHIDEventGetFloatValue();
    v20 = v22;
    IOHIDEventGetFloatValue();
  }

  v23 = v21;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v20;
  *(a1 + 24) = v23;
  v24 = *MEMORY[0x1E695EFF8];
  *(a1 + 32) = *MEMORY[0x1E695EFF8];
  *(a1 + 48) = 0;
  if (a7)
  {
    *a7 = v14;
    *(a7 + 8) = v16;
    *(a7 + 16) = v20;
    *(a7 + 24) = v23;
    *(a7 + 32) = v24;
    *(a7 + 48) = 0;
  }

  v25 = [v101 source];
  if (_EventWindowExpectsExternalTouchInput(a4) && IOHIDEventGetIntegerValue())
  {
    if ([UIApp _supportsIndirectInputEvents] && (v26 = _UIEventHIDGetDescendantPointerEvent(a3)) != 0)
    {
      _UIEventHIDGetPointerEventSource(v26);
    }

    else if (!IOHIDEventGetIntegerValue())
    {
      goto LABEL_15;
    }
  }

  if (v25 != 12)
  {
    v27 = _UIEventHIDPathAttributesForChild(v101);
    v28 = v27;
    if (v27)
    {
      [v27 hitTestLocationX];
      v30 = v29;
      [v28 hitTestLocationY];
    }

    else
    {
      IOHIDEventGetFloatValue();
      v30 = v45;
      IOHIDEventGetFloatValue();
    }

    v46 = v31;

    *(a1 + 32) = v30;
    *(a1 + 40) = v46;
    goto LABEL_59;
  }

LABEL_15:
  v32 = [a4 screen];
  [v32 bounds];
  if (v25 == 12)
  {
    v35 = [v32 displayConfiguration];
    v36 = [v35 currentMode];
    [v36 nativePixelSize];
    v38 = v37;
    v40 = v39;

    [v32 _rotation];
    v42 = v41;
    v43 = [v32 _interfaceOrientation];
    v44 = 0.0;
    if (v43 != 1)
    {
      if ([v32 _interfaceOrientation] == 4)
      {
        v44 = -1.57079633;
      }

      else if ([v32 _interfaceOrientation] == 3)
      {
        v44 = 1.57079633;
      }

      else
      {
        v47 = [v32 _interfaceOrientation];
        v44 = 3.14159265;
        if (v47 != 2)
        {
          v44 = 0.0;
        }
      }
    }

    v48 = v44 - v42;
    if (fabs(v48 + -1.57079633) >= 2.22044605e-16)
    {
      if (fabs(v48 + -3.14159265) >= 2.22044605e-16 && fabs(v48 + 3.14159265) >= 2.22044605e-16)
      {
        if (fabs(v48 + 1.57079633) >= 2.22044605e-16)
        {
          goto LABEL_34;
        }

        v49 = &__block_literal_global_92_1;
      }

      else
      {
        v49 = &__block_literal_global_90_2;
      }
    }

    else
    {
      v49 = &__block_literal_global_88_0;
    }

    v50 = *(v49 + 2);
    v14 = v50(v14, v16);
    v16 = v51;
    *a1 = v14;
    v20 = v50(v20, v23);
    v23 = v52;
    *(a1 + 16) = v20;
    *(a1 + 24) = v52;
  }

  else
  {
    v38 = v33;
    v40 = v34;
    if (dyld_program_sdk_at_least())
    {
      v40 = v38;
    }
  }

LABEL_34:
  v53 = v14 * v38;
  v54 = v16 * v40;
  *(a1 + 8) = v16 * v40;
  v55 = v20 * v38;
  v56 = v23 * v40;
  v57 = [a4 _focusSystem];

  v92 = v20 * v38;
  v94 = v56;
  v96 = v53;
  v99 = v54;
  if (v57 || v25 == 12)
  {
    v58 = a4;
    v59 = [v58 _focusResponder];
    if (v59)
    {
LABEL_39:
      v61 = v59;
LABEL_40:
      [v61 _responderExternalTouchRectForWindow:v58];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      rect = v66;
      v69 = v68;
      [v58 frame];
      v71 = v70;
      v91 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v103.origin.x = v63;
      v103.origin.y = v65;
      v103.size.width = v67;
      v103.size.height = v69;
      Width = CGRectGetWidth(v103);
      v104.origin.x = v71;
      v104.origin.y = v73;
      v104.size.width = v75;
      v104.size.height = v77;
      v97 = v96 * (Width / CGRectGetWidth(v104));
      v105.origin.x = v63;
      v105.origin.y = v65;
      v105.size.width = rect;
      v105.size.height = v69;
      Height = CGRectGetHeight(v105);
      v106.origin.x = v91;
      v106.origin.y = v73;
      v106.size.width = v75;
      v106.size.height = v77;
      v98 = v63 + v97;
      v100 = v65 + v99 * (Height / CGRectGetHeight(v106));
      v107.origin.x = v63;
      v107.origin.y = v65;
      v107.size.width = rect;
      v107.size.height = v69;
      v80 = CGRectGetWidth(v107);
      v108.origin.x = v91;
      v108.origin.y = v73;
      v108.size.width = v75;
      v108.size.height = v77;
      v93 = v92 * (v80 / CGRectGetWidth(v108));
      v109.origin.x = v63;
      v109.origin.y = v65;
      v109.size.width = rect;
      v109.size.height = v69;
      v81 = CGRectGetHeight(v109);
      v110.origin.x = v91;
      v110.origin.y = v73;
      v110.size.width = v75;
      v110.size.height = v77;
      v55 = v63 + v93;
      v56 = v65 + v94 * (v81 / CGRectGetHeight(v110));
      if (a5)
      {
        v53 = v98;
        v54 = v100;
        goto LABEL_42;
      }

      [v61 _responderSelectionRectForWindow:v58];
      x = v111.origin.x;
      y = v111.origin.y;
      v86 = v111.size.width;
      v87 = v111.size.height;
      if (!CGRectIsNull(v111))
      {
        v112.origin.x = x;
        v112.origin.y = y;
        v112.size.width = v86;
        v112.size.height = v87;
        v53 = v98;
        v83 = CGRectGetMidX(v112) - v98;
        if (a6)
        {
          *a6 = v83;
          v113.origin.x = x;
          v113.origin.y = y;
          v113.size.width = v86;
          v113.size.height = v87;
          v54 = v100;
          v82 = CGRectGetMidY(v113) - v100;
          a6[1] = v82;
          goto LABEL_52;
        }

        v114.origin.x = x;
        v114.origin.y = y;
        v114.size.width = v86;
        v114.size.height = v87;
        v54 = v100;
        v82 = CGRectGetMidY(v114) - v100;
        goto LABEL_57;
      }

      v53 = v98;
      v54 = v100;
LABEL_46:
      if (a6)
      {
        v82 = a6[1];
        goto LABEL_52;
      }

      v83 = *MEMORY[0x1E695F060];
      v82 = *(MEMORY[0x1E695F060] + 8);
LABEL_57:
      *a1 = v53 + v83;
      *(a1 + 8) = v54 + v82;
      v90 = v55 + v83;
      goto LABEL_58;
    }
  }

  else
  {
    v58 = 0;
  }

  v60 = v58;
  v58 = +[UIWindow _applicationKeyWindow];

  v59 = [v58 firstResponder];
  if (v59)
  {
    goto LABEL_39;
  }

  v88 = v58;
  v61 = v88;
  if (v88)
  {
    v58 = v88;
    goto LABEL_40;
  }

  v58 = 0;
  if (!a5)
  {
    goto LABEL_46;
  }

LABEL_42:
  v83 = *(a5 + 408);
  v82 = *(a5 + 416);
  if (!a6)
  {
    goto LABEL_57;
  }

  *a6 = v83;
  a6[1] = v82;
LABEL_52:
  v89 = *a6;
  *a1 = v53 + *a6;
  *(a1 + 8) = v54 + v82;
  v90 = v55 + v89;
LABEL_58:
  *(a1 + 16) = v90;
  *(a1 + 24) = v56 + v82;
  *(a1 + 32) = *a1;

LABEL_59:
}

BOOL _EventWindowExpectsExternalTouchInput(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return (v2 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

void _LogTouchLocationsIfNeeded(uint64_t a1, CGFloat *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*__UILogGetCategoryCachedImpl("Touch", &qword_1ED49F830))
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F838);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *a2;
        v14 = a2[1];
        v15 = v12;
        v30.x = v13;
        v30.y = v14;
        v16 = NSStringFromCGPoint(v30);
        v22 = 136315650;
        v23 = "\t\t\t";
        v24 = 2080;
        v25 = a1;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s%s.location: %@", &v22, 0x20u);
      }
    }

    v5 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F840);
    if (*v5)
    {
      v17 = *(v5 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = a2[2];
        v19 = a2[3];
        v20 = v17;
        v31.x = v18;
        v31.y = v19;
        v21 = NSStringFromCGPoint(v31);
        v22 = 136315650;
        v23 = "\t\t\t";
        v24 = 2080;
        v25 = a1;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "%s%s.preciseLocation: %@", &v22, 0x20u);
      }
    }

    v6 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F848);
    if (*v6)
    {
      v7 = *(v6 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = a2[4];
        v9 = a2[5];
        v10 = v7;
        v29.x = v8;
        v29.y = v9;
        v11 = NSStringFromCGPoint(v29);
        v22 = 136315650;
        v23 = "\t\t\t";
        v24 = 2080;
        v25 = a1;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%s%s.hitTestLocation: %@", &v22, 0x20u);
      }
    }
  }
}

double _UIConvertScenePoint3DToWindow(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [(UIWindow *)v8 _fbsScene];
  if (v9 != v7)
  {
    if (v7)
    {
      v10 = [v7 settings];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [v10 interfaceOrientation];
      v20 = v16 - a3;
      v21 = v18 - a4;
      v22 = v16 - a4;
      v23 = v18 - a3;
      if (v19 == 4)
      {
        v24 = a4;
      }

      else
      {
        v24 = a3;
      }

      if (v19 != 4)
      {
        v23 = a4;
      }

      if (v19 == 3)
      {
        v23 = a3;
      }

      else
      {
        v22 = v24;
      }

      if (v19 != 2)
      {
        v20 = v22;
        v21 = v23;
      }

      a3 = v12 + v20;
      a4 = v14 + v21;
    }

    if (v9)
    {
      v25 = [v9 settings];
      [v25 frame];
      v27 = v26;
      v29 = v28;
      v31 = a3 - v30;
      v33 = a4 - v32;
      v34 = [v25 interfaceOrientation];
      if (v34 == 4)
      {
        v35 = v29 - v33;
      }

      else
      {
        v35 = v31;
      }

      if (v34 == 4)
      {
        v36 = v31;
      }

      else
      {
        v36 = v33;
      }

      if (v34 == 3)
      {
        v35 = v33;
        v36 = v27 - v31;
      }

      if (v34 == 2)
      {
        a3 = v27 - v31;
      }

      else
      {
        a3 = v35;
      }

      if (v34 == 2)
      {
        a4 = v29 - v33;
      }

      else
      {
        a4 = v36;
      }
    }
  }

  v37 = [v8 layer];
  [v37 convertPoint:0 fromLayer:{a3, a4}];
  v39 = v38;

  return v39;
}

double _UITouchConvertLocationInWindowToView(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = a3;
  if (a1)
  {
    if (a2)
    {
      [a2 convertPoint:a1 fromView:{a3, a4}];
      return v7;
    }
  }

  else
  {
    v8 = [a2 window];
    if (v8)
    {
      v9 = v8;
      [v8 convertPoint:0 fromWindow:{v6, a4}];
      [a2 convertPoint:0 fromView:?];
      v6 = v10;
    }

    else
    {
      return *MEMORY[0x1E695EFF8];
    }
  }

  return v6;
}

uint64_t _UIEventHIDTouchEdgeTypeForHIDEvent()
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v1 = 2;
  v2 = 3;
  if ((IntegerValue & 0x2000) == 0)
  {
    v2 = (IntegerValue >> 16) & 4;
  }

  if ((IntegerValue & 0x1000) == 0)
  {
    v1 = v2;
  }

  if ((IntegerValue & 0x800) != 0)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void __updateSystemGestureRecognitionIsPossible(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (v13)
        {
          v14 = v13[45];
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15 == a2)
        {
          v16 = [v13 window];
          [v16 _setSystemGestureRecognitionIsPossible:a3 andTouchesAreCancelled:a4];
        }

        ++v12;
      }

      while (v10 != v12);
      v17 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v10 = v17;
    }

    while (v17);
  }
}

double _CentroidOfTouches(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v20;
  v8 = 0.0;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      if (!a2 || [*(*(&v19 + 1) + 8 * i) phase] <= 2)
      {
        v12 = [v11 window];
        [v11 locationInView:0];
        [v12 _convertPointToSceneReferenceSpace:?];
        v14 = v13;
        v16 = v15;

        v8 = v8 + v14;
        v9 = v9 + v16;
        ++v6;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);
  if (v6 >= 1)
  {
    v17 = v8 / v6;
  }

  else
  {
LABEL_13:
    v17 = 0.0;
  }

  return v17;
}

id _systemGestureLog()
{
  if (qword_1ED49E458 != -1)
  {
    dispatch_once(&qword_1ED49E458, &__block_literal_global_251);
  }

  v1 = _MergedGlobals_1130;

  return v1;
}

void ____finishDigitizerEventDispatch_block_invoke_2(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v10 = [a3 window];
  v5 = _UIApplicationSupportsGlobalEdgeSwipeTouches();
  v6 = 1;
  if (a3 && v5)
  {
    v6 = (a3[118] & 0x1000) == 0;
  }

  if (v6 && v10)
  {
    v7 = [a3 _responder];
    if (v7)
    {
    }

    else
    {
      v8 = [a3 gestureRecognizers];
      v9 = [v8 count];

      if (!v9)
      {
        goto LABEL_10;
      }
    }

    [*(a1 + 32) removeObject:v10];
  }

LABEL_10:
}

void _UpdateTouchTapCount(_WORD *a1, int a2, double a3, double a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = [a1 window];
  v11 = [v10 _touchData];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v14 = v12;
  if (v13)
  {
    v15 = v13;
    v16 = *v20;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v20 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v19 + 1) + 8 * v17);
      if (*(v18 + 56) == a1)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        v14 = v12;
        goto LABEL_22;
      }
    }

    if (*(v18 + 48) == 1 && (*(v18 + 40) + 0.75 < a3 || a2 && (vabdd_f64(a4, *(v18 + 8)) >= 45.0 || vabdd_f64(a5, *(v18 + 16)) >= 45.0)))
    {
      v14 = v18;
      *(v18 + 48) = 0;
      if (a1)
      {
        a1[118] &= ~2u;
      }
    }

    else
    {
      v14 = 0;
    }

    if ([a1 phase] == 3)
    {
      *(v18 + 32) = a3;
      *(v18 + 56) = 0;
    }

    if (v14)
    {
      [v12 removeObject:v14];
      goto LABEL_22;
    }
  }

  else
  {
LABEL_22:
  }

  if ([a1 phase] == 3 && (!a1 || (a1[118] & 2) == 0))
  {
    [a1 setTapCount:0];
  }
}

void __coalesceDigitizerEventFromQueueEvent(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  TimeStamp = IOHIDEventGetTimeStamp();
  v41 = _UIMediaTimeForMachTime(TimeStamp);
  v43 = _UIEventHIDUIWindowForHIDEvent();
  v8 = [(UIEventEnvironment *)a4 _touchMapForWindow:v43];
  v9 = v8;
  if (v8)
  {
    CFRetain(v8);
    CFAutorelease(v9);
  }

  [a3 _moveCoalescedTouchesFromHidEvent:a1 toHidEvent:{a2, *&v41}];
  theArray = IOHIDEventGetChildren();
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v12 = _UIEventHIDPathIndexForDigitizerEvent();
        v13 = [a3 _lastPendingCoalescedTouchForIndex:v12 hidEvent:a2];
        v14 = v13;
        if (v9 && !v13)
        {
          v14 = CFDictionaryGetValue(v9, v12);
        }

        if (v14)
        {
          v15 = [v14 _clone];
          [v15 _setPreviousTouch:v14];
          [v15 setTimestamp:v42];
          v16 = [v15 window];
          v17 = [v16 screen];
          _UITouchSetBasicTouchPropertiesFromEvent(v15, v17, a1, ValueAtIndex);

          v18 = [v14 window];
          *v54 = *MEMORY[0x1E695F060];
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          __baseTouchLocationsForChild(&v50, ValueAtIndex, a1, v18, v15, v54, 0);
          v19 = [(UIWindow *)v43 _fbsScene];
          v20 = _UIConvertScenePoint3DToWindow(v19, v18, *&v52, *(&v52 + 1));
          v22 = v21;
          *&v50 = v20;
          *(&v50 + 1) = v21;
          v53 = v23;
          v24 = _UIConvertScenePoint3DToWindow(v19, v18, *&v51, *(&v51 + 1));
          v48 = v25;
          [v14 locationInView:0];
          v27 = v26;
          v29 = v28;
          [v14 preciseLocationInView:0];
          v31 = v30;
          v45 = v32;
          IOHIDEventGetFloatValue();
          v34 = v33;
          [v14 _pressure];
          v44 = v35;
          IOHIDEventGetFloatValue();
          v37 = v36;
          [v14 _rollAngle];
          if (v20 == v27 && v22 == v29 && v24 == v31 && v48 == v45 && v37 == v38 && v34 == v44)
          {
            v39 = 2;
          }

          else
          {
            if (v15)
            {
              *(v15 + 128) = *(v15 + 112);
              *(v15 + 160) = *(v15 + 144);
              *(v15 + 112) = v20;
              *(v15 + 120) = v22;
              *(v15 + 144) = v24;
              *(v15 + 152) = v48;
              v40 = *(v15 + 224);
              if (v40 < v34)
              {
                v40 = v34;
              }

              *(v15 + 176) = *(v15 + 216);
              *(v15 + 216) = v34;
              *(v15 + 224) = v40;
            }

            [(UITouch *)v15 _setRollAngle:v37 resetPrevious:?];
            v39 = 1;
          }

          [v15 setPhase:v39];
          [UITouch _updateWithChildEvent:v15];
          [a3 _addCoalescedTouch:v15 forIndex:v12 hidEvent:a2];
        }
      }
    }
  }
}

uint64_t _UISystemGestureLocationForTouchInView(void *a1, void *a2, void *a3)
{
  v6 = [a1 view];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  [v7 locationInView:v6];
  v9 = v8;
  v11 = v10;

  return _ConvertDeviceReferenceSpacePointToView(a3, v9, v11);
}

uint64_t _ConvertDeviceReferenceSpacePointToView(void *a1, double a2, double a3)
{
  v6 = [a1 _window];
  [v6 _convertPointFromSceneReferenceSpace:{a2, a3}];
  v8 = v7;
  v10 = v9;

  return [a1 convertPoint:0 fromView:{v8, v10}];
}

void ____updateTouchVisualisation_block_invoke()
{
  v1 = _UIMainBundleIdentifier();
  if ([v1 isEqualToString:@"com.apple.PointerUI.pointeruid"])
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 isEqualToString:@"com.apple.DragUI.druid"];
  }

  byte_1EA968DD1 = v0;
}

uint64_t ___commonInit_block_invoke_2_134(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [_UISEPerTypeEdgesFailGestureFeature alloc];
  v10[0] = &unk_1EFE30AF0;
  v3 = [[_UISEFirmwareEdgesFailGestureFeature alloc] initWithSettings:*(a1 + 32)];
  v10[1] = &unk_1EFE30B08;
  v11[0] = v3;
  v4 = [[_UISEBackProjectEdgesFailGestureFeature alloc] initWithSettings:*(a1 + 32)];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = [(_UISEPerTypeEdgesFailGestureFeature *)v2 initWithEdgeTypeSubfeatures:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
}

void ___commonInit_block_invoke_5_150(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(_UISEEdgeTypeRecognizeGestureFeature);
  [v1 addObject:v2];
}

uint64_t sub_188D18058(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v28 - v5;
  v6 = sub_18A4A6FC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  [(UIGestureRecognizer *)v2 _node];
  swift_getObjectType();
  if (a1)
  {
    sub_18A4A6FB8();
    sub_18A4A7938();
    sub_188D18414(v21, v18);
    v22 = *(v7 + 8);
    v22(v18, v6);
    v22(v21, v6);
  }

  else
  {
    sub_18A4A6FB8();
    sub_18A4A7938();
    (*(v7 + 16))(v21, v11, v6);
    sub_188D0FECC(&unk_1ED48E190, MEMORY[0x1E69A28A8]);
    v23 = v28;
    sub_18A4A7E38();
    if (sub_18A4A7E68())
    {
      v24 = *(v7 + 8);
      v24(v23, v6);
      v24(v14, v6);
      v25 = 1;
      v26 = v29;
    }

    else
    {
      sub_18A4A7E78();
      (*(v7 + 8))(v14, v6);
      v26 = v29;
      (*(v7 + 32))(v29, v23, v6);
      v25 = 0;
    }

    (*(v7 + 56))(v26, v25, 1, v6);
    sub_188A3F5FC(v26, &qword_1EA93A050);
  }

  sub_18A4A7948();
  return swift_unknownObjectRelease();
}

uint64_t sub_188D18414(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E38);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_18A4A6FC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x1E69A28A8];
  v26 = sub_188C4BD90(&unk_1ED48E190, MEMORY[0x1E69A28A8]);
  sub_18A4A7E38();
  v18 = v17;
  v19 = v29;
  sub_188C4BD90(&qword_1ED48D008, v18);
  v27 = a2;
  v20 = sub_18A4A7248();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_18A4A7E88();
  }

  v23 = v30;
  sub_188A3F704(v7, v30, &qword_1EA937E38);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

uint64_t _UITouchShouldCancelDelayingGesturesFromPreviousSequence(void *a1)
{
  v1 = a1;
  if (_UITouchCancellationOfDelayingGesturesFromPreviousSequenceIsEnabled_onceToken != -1)
  {
    dispatch_once(&_UITouchCancellationOfDelayingGesturesFromPreviousSequenceIsEnabled_onceToken, &__block_literal_global_687);
  }

  if ([v1 isDelayed] && !objc_msgSend(v1, "phase"))
  {
    v2 = [v1 _isPointerTouch];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void ___systemGestureLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UISystemGesture");
  v1 = _MergedGlobals_1130;
  _MergedGlobals_1130 = v0;
}

void ___commonInit_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(_UISETeleportFailGestureFeature);
  [v1 addObject:v2];
}

void ___commonInit_block_invoke_2_144(void *a1)
{
  v1 = a1[4];
  v2 = [[_UISEOrthogonalHysteresisGestureFeature alloc] initWithSettings:a1[5] touchedEdgesProvider:*(*(a1[6] + 8) + 40)];
  [v1 addObject:v2];
}

uint64_t ___commonInit_block_invoke_4_148(void *a1, uint64_t a2)
{
  v3 = [[_UISEVelocityDirectionEdgesGestureFeature alloc] initWithSettings:a1[4] touchedEdgesProvider:*(*(a1[6] + 8) + 40) exactMatchEdges:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[5];
  v7 = *(*(a1[6] + 8) + 40);

  return [v6 addObject:v7];
}

double _BoundingRectForTouches(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v21;
  v8 = -INFINITY;
  v9 = INFINITY;
  v10 = INFINITY;
  v11 = -INFINITY;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v13 = *(*(&v20 + 1) + 8 * i);
      if (!a2 || [*(*(&v20 + 1) + 8 * i) phase] <= 2)
      {
        v14 = [v13 window];
        [v13 locationInView:0];
        [v14 _convertPointToSceneReferenceSpace:?];
        v16 = v15;
        v18 = v17;

        v9 = fmin(v9, v16);
        v10 = fmin(v10, v18);
        v8 = fmax(v8, v16);
        ++v6;
        v11 = fmax(v11, v18);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v5);
  if (v6 < 1)
  {
LABEL_12:
    v9 = *MEMORY[0x1E695F050];
  }

  return v9;
}

void ___commonInit_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[_UISEIdleTimerFailGestureFeature alloc] initWithSettings:*(a1 + 40)];
  [v1 addObject:v2];
}

void sub_188D196B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___commonInit_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[_UISEInitialEdgesFailGestureFeature alloc] initWithSettings:*(a1 + 40) useEdgeRegionSize:a2];
  [v2 addObject:v3];
}

void ___commonInit_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(_UISEEdgeTypeFailGestureFeature);
  [v1 addObject:v2];
}

void ___commonInit_block_invoke_3_146(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[_UISEDiagonalHysteresisRecognizeGestureFeature alloc] initWithSettings:*(a1 + 40)];
  [v1 addObject:v2];
}

uint64_t UIRectEdgeRegionForLocation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  if (a5 <= CGRectGetMinX(*&a1) + a7)
  {
    v14 = 2;
  }

  else
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    if (a5 >= CGRectGetMaxX(v16) - a7)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }
  }

  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  if (a6 <= CGRectGetMinY(v17) + a7)
  {
    return v14 | 1;
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  if (a6 >= CGRectGetMaxY(v18) - a7)
  {
    return v14 | 4;
  }

  return v14;
}

uint64_t ___commonInit_block_invoke_141(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [_UISEHybridEdgesFailGestureFeature alloc];
  v3 = [[_UISEBackProjectEdgesFailGestureFeature alloc] initWithSettings:*(a1 + 32)];
  v10[0] = v3;
  v4 = [[_UISEFirmwareEdgesFailGestureFeature alloc] initWithSettings:*(a1 + 32)];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [(_UISEHybridEdgesFailGestureFeature *)v2 initWithSubfeatures:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
}

unint64_t _rotatedEdgesGivenOrientationInDegrees(unint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 != 180)
    {
      return (result >> 3) & 1 | (2 * (result & 7));
    }

    return (result >> 2) & 3 | (4 * (result & 3));
  }

  if (a2 == -180)
  {
    return (result >> 2) & 3 | (4 * (result & 3));
  }

  if (a2 != -90)
  {
    return (result >> 3) & 1 | (2 * (result & 7));
  }

  return (8 * (result & 1)) | (result >> 1) & 7;
}

_UISEAnyGestureFeature *___commonInit_block_invoke(uint64_t a1, void *a2)
{
  v36 = [a2 ignoreHIDEdgeFlags];
  v34 = [a2 disableEdgeRegionEnforcement];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___commonInit_block_invoke_2;
  aBlock[3] = &unk_1E70F3C60;
  v5 = v4;
  v80 = v5;
  v81 = a2;
  v37 = _Block_copy(aBlock);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = ___commonInit_block_invoke_3;
  v77[3] = &unk_1E70F3590;
  v6 = v5;
  v78 = v6;
  v35 = _Block_copy(v77);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = ___commonInit_block_invoke_4;
  v74[3] = &unk_1E70F35B8;
  v7 = v6;
  v75 = v7;
  v76 = a2;
  v8 = _Block_copy(v74);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = ___commonInit_block_invoke_5;
  v72[3] = &unk_1E70F3590;
  v9 = v7;
  v73 = v9;
  v41 = _Block_copy(v72);
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__101;
  v70 = __Block_byref_object_dispose__101;
  v71 = 0;
  if ([a2 disableEdgeRegionEnforcement])
  {
    v10 = -[_UISEStaticEdgeProvider initWithProvidedEdges:]([_UISEStaticEdgeProvider alloc], "initWithProvidedEdges:", [a2 targetEdges]);
    [v9 addObject:v10];
    v11 = v67[5];
    v67[5] = v10;
  }

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = ___commonInit_block_invoke_132;
  v63[3] = &unk_1E70FB728;
  v65 = &v66;
  v63[4] = a2;
  v12 = v9;
  v64 = v12;
  v42 = _Block_copy(v63);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = ___commonInit_block_invoke_2_134;
  v60[3] = &unk_1E70FB728;
  v62 = &v66;
  v60[4] = a2;
  v13 = v12;
  v61 = v13;
  v38 = _Block_copy(v60);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = ___commonInit_block_invoke_141;
  v57[3] = &unk_1E70FB728;
  v59 = &v66;
  v57[4] = a2;
  v14 = v13;
  v58 = v14;
  v40 = _Block_copy(v57);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = ___commonInit_block_invoke_2_144;
  v53[3] = &unk_1E70FEE78;
  v16 = v15;
  v54 = v16;
  v55 = a2;
  v56 = &v66;
  v17 = _Block_copy(v53);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = ___commonInit_block_invoke_3_146;
  v50[3] = &unk_1E70F35B8;
  v18 = v16;
  v51 = v18;
  v52 = a2;
  v39 = _Block_copy(v50);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = ___commonInit_block_invoke_4_148;
  v47[3] = &unk_1E7104548;
  v49 = &v66;
  v47[4] = a2;
  v19 = v18;
  v48 = v19;
  v20 = _Block_copy(v47);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___commonInit_block_invoke_5_150;
  v45[3] = &unk_1E70F3590;
  v21 = v19;
  v46 = v21;
  v22 = _Block_copy(v45);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = ___commonInit_block_invoke_6;
  v43[3] = &unk_1E70F3590;
  v23 = v21;
  v44 = v23;
  v24 = _Block_copy(v43);
  v25 = *(a1 + 32);
  if (v25 <= 3)
  {
    v26 = v37;
    v27 = v36;
    if (v25 == 1)
    {
      v28 = v35;
      if ((v34 & 1) == 0)
      {
        (*(v37 + 2))(v37, v36);
      }

      if ((v36 & 1) == 0)
      {
        (*(v35 + 2))(v35);
      }

      v41[2]();
      if ((v34 & 1) == 0)
      {
        v42[2]();
      }

      v17[2](v17);
      v20[2](v20, 1);
    }

    else
    {
      v28 = v35;
      if (v25 == 2)
      {
        (*(v37 + 2))(v37, v36);
        if ((v36 & 1) == 0)
        {
          (*(v35 + 2))(v35);
        }

        v8[2](v8);
        v41[2]();
        v42[2]();
        v17[2](v17);
        v20[2](v20, 1);
      }

      else
      {
        if (v25 != 3)
        {
          goto LABEL_30;
        }

        (*(v37 + 2))(v37, v36);
        if ((v36 & 1) == 0)
        {
          (*(v35 + 2))(v35);
        }

        v8[2](v8);
        v41[2]();
        v42[2]();
        v17[2](v17);
        v20[2](v20, 0);
      }
    }

LABEL_28:
    v29 = v22;
    if (v27)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v26 = v37;
  v27 = v36;
  if (v25 == 4)
  {
    (*(v37 + 2))(v37, 0);
    v28 = v35;
    (*(v35 + 2))(v35);
    v41[2]();
    v42[2]();
    v17[2](v17);
    v20[2](v20, 0);
    v29 = v24;
LABEL_29:
    v29[2]();
    goto LABEL_30;
  }

  v28 = v35;
  if (v25 == 5)
  {
    (*(v37 + 2))(v37, v36);
    v30 = v42;
    if ((v36 & 1) == 0)
    {
      (*(v35 + 2))(v35);
      v30 = v38;
    }

    v30[2]();
    v39[2]();
    goto LABEL_28;
  }

  if (v25 == 6)
  {
    (*(v37 + 2))(v37, 1);
    v8[2](v8);
    v40[2]();
    v17[2](v17);
    v20[2](v20, 0);
  }

LABEL_30:
  v31 = [[_UISEAllGestureFeature alloc] initWithSubfeatures:v23];
  [v14 addObject:v31];

  v32 = [[_UISEAnyGestureFeature alloc] initWithSubfeatures:v14];
  objc_setAssociatedObject(v32, &__lastTouchedEdgesProviderKey, v67[5], 0);

  _Block_object_dispose(&v66, 8);

  return v32;
}

uint64_t _UIEventHasEdgePendingOrLocked(void *a1)
{
  result = [a1 _hidEvent];
  if (result)
  {
    result = IOHIDEventGetChildren();
    if (result)
    {
      v2 = result;
      Count = CFArrayGetCount(result);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v4 = Count;
        v5 = 0;
        v6 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v2, v5);
          if (IOHIDEventGetType() == 11 && (IOHIDEventGetIntegerValue() & 0x42800) != 0)
          {
            break;
          }

          v5 = ++v6;
          if (v4 <= v6)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t ___commonInit_block_invoke_132(void *a1)
{
  v2 = [[_UISEBackProjectEdgesFailGestureFeature alloc] initWithSettings:a1[4]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(*(a1[6] + 8) + 40);

  return [v5 addObject:v6];
}

double UIPointRoundToViewScale(void *a1, double a2, double a3)
{
  [a1 _currentScreenScale];

  return UIPointRoundToScale(a2, a3, v5);
}

uint64_t _beginInterval()
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!qword_1ED4A2928)
  {
    if (work_interval_create())
    {
      v1 = *__error();
      v2 = MEMORY[0x1E695DF30];
      v3 = *MEMORY[0x1E695D930];
      v8 = @"errno";
      v4 = [MEMORY[0x1E696AD98] numberWithInt:v1];
      v9[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v6 = [v2 exceptionWithName:v3 reason:@"Failed to create work interval" userInfo:v5];
      v7 = v6;

      objc_exception_throw(v6);
    }

    qword_1ED4A2930 = work_interval_instance_alloc();
  }

  if (!_MergedGlobals_1364)
  {
    _MergedGlobals_1364 = mach_absolute_time();
  }

  _tracepointArg4(&qword_1ED4A2900);
  kdebug_trace();
  work_interval_instance_clear();
  work_interval_instance_set_start();
  work_interval_instance_set_deadline();
  work_interval_instance_set_complexity();
  result = work_interval_instance_start();
  LOBYTE(word_1ED4A2938) = 1;
  return result;
}

_BYTE *_UIScrollViewRubberBandOffsetWithoutDecorationForOffset(_BYTE *result, double a2, double a3, double a4, double a5)
{
  if (a4 >= a3)
  {
    a3 = a4;
  }

  if (fabs(a5) >= 2.22044605e-16)
  {
    if (a3 < a2)
    {
      if (!result)
      {
        return result;
      }

LABEL_9:
      *result = 1;
      return result;
    }

    if (a2 < a4 && result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t _effectiveSystemGestureRecognitionIsPossibleForGesture(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_1EA969118 != -1)
  {
    dispatch_once(&qword_1EA969118, &__block_literal_global_2045);
  }

  v5 = [v3 window];
  v6 = [v5 _systemGestureRecognitionIsPossible];

  if (_MergedGlobals_118 == 1)
  {
    v6 = [v4 _requiresSystemGesturesToFail] & v6;
  }

  return v6;
}

uint64_t UIApplicationSceneClientSettingAppendCustomDescription(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 == 42)
  {
    objc_initWeak(&location, v5);
    v12 = v6;
    v13 = [v5 activeMultilinePrefix];
    v9 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __UIApplicationSceneClientSettingAppendCustomDescription_block_invoke_3;
    v16[3] = &unk_1E70F2F80;
    objc_copyWeak(&v18, &location);
    v10 = v12;
    v17 = v10;
    [v5 appendBodySectionWithName:@"multitaskingDragExclusionRects" multilinePrefix:v13 block:v16];

    v11 = v17;
  }

  else
  {
    if (a1 != 34)
    {
      v14 = 0;
      goto LABEL_7;
    }

    objc_initWeak(&location, v5);
    v7 = v6;
    v8 = [v5 activeMultilinePrefix];
    v9 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __UIApplicationSceneClientSettingAppendCustomDescription_block_invoke;
    v19[3] = &unk_1E70F2F80;
    objc_copyWeak(&v21, &location);
    v10 = v7;
    v20 = v10;
    [v5 appendBodySectionWithName:@"statusBarPartStyles" multilinePrefix:v8 block:v19];

    v11 = v20;
  }

  objc_destroyWeak(v9 + 5);
  objc_destroyWeak(&location);
  v14 = 1;
LABEL_7:

  return v14;
}

void sub_188D1C444(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *UIApplicationSceneClientSettingValueDescription(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  switch(a1)
  {
    case 1:
    case 5:
      v8 = UIApplication;
      goto LABEL_7;
    case 2:
    case 6:
    case 10:
    case 11:
    case 14:
    case 21:
    case 25:
    case 27:
    case 28:
    case 33:
    case 44:
    case 47:
    case 48:
      BSSettingFlagIsYes();
      v7 = NSStringFromBOOL();
      goto LABEL_19;
    case 9:
      v7 = UIApplicationSceneStringForCompatibilityMode([v4 integerValue]);
      goto LABEL_19;
    case 12:
      [v4 integerValue];
      v7 = BSInterfaceOrientationDescription();
      goto LABEL_19;
    case 13:
      [v4 unsignedIntegerValue];
      v7 = BSInterfaceOrientationMaskDescription();
      goto LABEL_19;
    case 15:
      v7 = UIApplicationSceneProximityDetectionModesDescription([v4 unsignedIntegerValue]);
      goto LABEL_19;
    case 16:
    case 26:
    case 30:
    case 31:
    case 32:
    case 34:
    case 36:
    case 38:
    case 40:
    case 42:
    case 45:
      v7 = [v4 description];
      goto LABEL_19;
    case 17:
    case 18:
      v7 = _UIScreenEdgeSystemGestureModeDescription([v4 integerValue]);
      goto LABEL_19;
    case 20:
      v7 = +[UIApplication _stringForBackgroundStyle:](UIApplication, "_stringForBackgroundStyle:", [v4 integerValue]);
      goto LABEL_19;
    case 22:
      v7 = _UIStringFromWhitePointAdaptivityStyle([v4 integerValue]);
      goto LABEL_19;
    case 29:
      v7 = UIApplicationSceneStringForUserInterfaceStyle([v4 integerValue]);
      goto LABEL_19;
    case 35:
      v8 = _UIStatusBar;
LABEL_7:
      v7 = -[__objc2_class stringForStatusBarStyle:](v8, "stringForStatusBarStyle:", [v4 integerValue]);
      goto LABEL_19;
    case 37:
      v6 = @"(redacted)";
      break;
    case 39:
      v7 = _UISceneStringFromActivationBias([v4 integerValue]);
      goto LABEL_19;
    case 41:
      v7 = _NSStringFromUIPointerLockStatus([v4 integerValue]);
      goto LABEL_19;
    case 46:
      v7 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(v4);
LABEL_19:
      v6 = v7;
      break;
    default:
      break;
  }

  return v6;
}

void sub_188D1CA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIKBFeedbackLog()
{
  if (qword_1ED49FDD8 != -1)
  {
    dispatch_once(&qword_1ED49FDD8, &__block_literal_global_523_0);
  }

  v1 = qword_1ED49FDD0;

  return v1;
}

void getCHHapticPatternLibraryKeyKeyboardInputText()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticPatternLibraryKeyKeyboardInputTextSymbolLoc_ptr;
  v9 = getCHHapticPatternLibraryKeyKeyboardInputTextSymbolLoc_ptr;
  if (!getCHHapticPatternLibraryKeyKeyboardInputTextSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_1();
    v7[3] = dlsym(v1, "CHHapticPatternLibraryKeyKeyboardInputText");
    getCHHapticPatternLibraryKeyKeyboardInputTextSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardInputText(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:84 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188D1D1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCHHapticPatternLibraryKeyKeyboardOther()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticPatternLibraryKeyKeyboardOtherSymbolLoc_ptr;
  v9 = getCHHapticPatternLibraryKeyKeyboardOtherSymbolLoc_ptr;
  if (!getCHHapticPatternLibraryKeyKeyboardOtherSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_1();
    v7[3] = dlsym(v1, "CHHapticPatternLibraryKeyKeyboardOther");
    getCHHapticPatternLibraryKeyKeyboardOtherSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticPatternLibraryKey getCHHapticPatternLibraryKeyKeyboardOther(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188D1D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHHapticPatternClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A670)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreHapticsLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7107770;
    v8 = 0;
    qword_1ED49A670 = _sl_dlopen();
  }

  if (!qword_1ED49A670)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreHapticsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CHHapticPattern");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticPatternClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:21 description:{@"Unable to find class %s", "CHHapticPattern"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A668 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCHHapticPatternClass_block_invoke_0(uint64_t a1)
{
  CoreHapticsLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticPattern");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHHapticPatternClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticPatternClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:21 description:{@"Unable to find class %s", "CHHapticPattern"}];

    __break(1u);
  }
}

void __getCHHapticPatternClass_block_invoke_1(uint64_t a1)
{
  CoreHapticsLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHHapticPattern");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHHapticPatternClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHHapticPatternClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:21 description:{@"Unable to find class %s", "CHHapticPattern"}];

    __break(1u);
  }
}

void FreeTraitCollectionTSD(uint64_t a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (*(a1 + 152))
  {
    if ((has_internal_diagnostics & 1) == 0)
    {
LABEL_3:
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49EBF8) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "primaryTarget.traitsUsed is not NULL; this means tracking state was not reset", buf, 2u);
      }

      goto LABEL_7;
    }
  }

  else
  {
    v4 = vorrq_s8(*(a1 + 160), *(a1 + 176));
    v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
    if ((has_internal_diagnostics & 1) == 0)
    {
      if (!*&v5)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (!*&v5)
    {
      goto LABEL_7;
    }
  }

  v9 = __UIFaultDebugAssertLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *v14 = 0;
    _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "primaryTarget.traitsUsed is not NULL; this means tracking state was not reset", v14, 2u);
  }

LABEL_7:
  v6 = os_variant_has_internal_diagnostics();
  if (*(a1 + 336))
  {
    if ((v6 & 1) == 0)
    {
LABEL_9:
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49EC00) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "secondaryTarget.traitsUsed is not NULL; this means tracking state was not reset", v11, 2u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(a1 + 352) | *(a1 + 344) | *(a1 + 360) | *(a1 + 368);
    if ((v6 & 1) == 0)
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v10 = __UIFaultDebugAssertLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *v12 = 0;
    _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "secondaryTarget.traitsUsed is not NULL; this means tracking state was not reset", v12, 2u);
  }

LABEL_13:
  free(a1);
}

void sub_188D1DE40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void postPreviewTransition_block_invoke_2(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (!v5 || *(v5 + 1) != 4)
  {
    v8 = v5;
    v6 = [v5 _clickDragDriver];
    v7 = [v6 isPreparingToDrag];

    if (a4 == 5)
    {
      v5 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }

      [v8 _performPresentation];
    }

    else
    {
      v5 = v8;
      if ((v8[51] | v7))
      {
        goto LABEL_9;
      }

      [_UIClickPresentationInteraction _endInteractionDidComplete:v8 completion:0];
    }

    v5 = v8;
  }

LABEL_9:
}

id _UIPreviewParametersDefaultBackgroundColor()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 > 6 || ((1 << v1) & 0x64) == 0)
  {
    +[UIColor systemBackgroundColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v3 = ;

  return v3;
}

double _UIContextMenuItemFrameFromLayout(CGRect *a1)
{
  x = a1[1].origin.x;
  height = a1[1].size.height;
  v4 = x - height * CGRectGetWidth(*a1);
  CGRectGetHeight(*a1);
  return v4;
}

uint64_t _UIContextMenuMagicMorphAnimationEnabled()
{
  if (qword_1ED4A3160 != -1)
  {
    dispatch_once(&qword_1ED4A3160, &__block_literal_global_16_11);
  }

  return _MergedGlobals_1408;
}

char *sub_188D1EBB4(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation] = 0;
  *&v2[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview] = 0;
  v5 = OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_animationProgress;
  *&v2[v5] = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v6 = &v2[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_accessoryAnimationBlock];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPreview] = 0;
  *&v2[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_stashedDismissalPivot] = 0;
  v7 = [a1 currentLayout];
  *&v2[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_presentedLayout] = v7;
  v21.receiver = v2;
  v21.super_class = _UIContextMenuLiquidMorphPresentationAnimation;
  v8 = objc_msgSendSuper2(&v21, sel_initWithUIController_, a1);
  if (a2)
  {
    v9 = [a2 morphAnimation];
    if (v9)
    {
      v10 = *&v8[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation];
      *&v8[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_morphAnimation] = v9;
      v11 = v9;

      v12 = a2;
      v13 = [v12 stashedDismissalPreview];

      v14 = *&v8[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview];
      *&v8[OBJC_IVAR____UIContextMenuLiquidMorphPresentationAnimation_outgoingAnimationPreview] = v13;
    }
  }

  v15 = [a1 flocker];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v20[4] = sub_18921C970;
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_18921A678;
    v20[3] = &block_descriptor_62_6;
    v18 = _Block_copy(v20);

    [v16 setUnflockPreviewProvider_];

    _Block_release(v18);
  }

  else
  {

    v16 = a2;
  }

  return v8;
}

uint64_t sub_188D1EDFC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double _UIContextMenuActionsViewWidth(void *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = a1;
  v12 = _UIContextMenuGetPlatformMetrics(a6);
  [v12 defaultMenuWidth];
  v14 = v13;
  if (a5)
  {
    [v12 keyboardShortcutsWidthExtension];
    v14 = v14 + v15;
  }

  v16 = 0.0;
  v17 = 0.0;
  if ([v12 leadingIndentationContributesToWidth] && a2)
  {
    v18 = _UIContextMenuGetPlatformMetrics(a6);
    [v18 leadingIndentationWidth];
    v17 = v19;
  }

  v20 = v14 + v17;
  if (a3)
  {
    v21 = _UIContextMenuGetPlatformMetrics(a6);
    [v21 menuGutterWidth];
    v16 = v22;
  }

  v23 = v20 + v16;
  if (a4)
  {
    [v12 largePaletteWidthExtension];
    v23 = v23 + v24;
  }

  if (v11)
  {
    v25 = [v11 traitCollection];
    v26 = [v25 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v26, v27);

    if (IsAccessibilityContentSizeCategory)
    {
      [v11 bounds];
      Width = CGRectGetWidth(v38);
      v30 = _UIContextMenuDefaultContentSpacing(v11);
      v31 = Width - (v30 + v30);
      v32 = [v11 traitCollection];
      v33 = [v32 userInterfaceIdiom];

      if (v33)
      {
        v23 = 343.0;
      }

      else
      {
        v34 = [v11 _screen];
        [v34 _referenceBounds];
        v35 = CGRectGetWidth(v39);
        v36 = _UIContextMenuDefaultContentSpacing(v11);
        v23 = v35 - (v36 + v36);
      }

      if (v31 < v23)
      {
        v23 = v31;
      }
    }
  }

  return v23;
}

void sub_188D1F5F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_188D1FDE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936688);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936690);
  sub_188A3F29C(v9, v6, &qword_1EA936690);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936690);
      sub_188A3F704(v6, v3, &qword_1EA936688);
      v22 = v3[64];
      sub_188A3F5FC(v3, &qword_1EA936688);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA936690);
      v22 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v23 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3F50624DD2F1A9FCuLL), vabdq_f64(v6[4], v6[2])));
      v22 = v23.i8[0] & v23.i8[4];
    }

    else
    {
      v12 = v6[12];
      v13 = v6[13];
      v14 = v6[10];
      v25[13] = v6[11];
      v25[14] = v12;
      v15 = v6[14];
      v25[15] = v13;
      v25[16] = v15;
      v16 = v6[8];
      v17 = v6[9];
      v18 = v6[6];
      v25[9] = v6[7];
      v25[10] = v16;
      v25[11] = v17;
      v25[12] = v14;
      v19 = v6[5];
      v25[6] = v6[4];
      v25[7] = v19;
      v25[8] = v18;
      v20 = v6[1];
      v25[2] = *v6;
      v25[3] = v20;
      v21 = v6[3];
      v25[4] = v6[2];
      v25[5] = v21;
      v22 = sub_188EE97A4();
    }

    sub_188A3F5FC(v9, &qword_1EA936690);
  }

  return v22 & 1;
}

uint64_t UIViewIgnoresTouchEvents(void *a1)
{
  v1 = a1;
  v2 = _UIViewAnimationDelegateAllowsUserInteraction(v1);
  v3 = _UIViewEatsTouchesAndAnimationDelegateAllowsInteraction(v1, v2);
  v4 = _UIViewIgnoresTouchEvents(v1, v3);

  return v4;
}

void sub_188D20B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIQOSManagedCommitsBegin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _MergedGlobals_1364 = 0;
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  Count = CFDictionaryGetCount(qword_1ED4A2900);
  Value = CFDictionaryGetValue(qword_1ED4A2900, v3);
  if (!Value)
  {
    Value = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    CFDictionaryAddValue(qword_1ED4A2900, v3, Value);
    CFRelease(Value);
  }

  CFSetAddValue(Value, v4);
  if (!Count)
  {
    Class = object_getClass(v3);
    Name = class_getName(Class);
    strncpy(__dst, Name, 8uLL);
    strncpy(__dst, [v4 UTF8String], 8uLL);
    _tracepointArg4(&qword_1ED4A2900);
    kdebug_trace();
    if (dword_1ED4A2908)
    {
      if ((word_1ED4A2938 & 1) == 0)
      {
        _beginInterval();
      }
    }
  }
}

uint64_t _UIViewControllerSupportsInteractionActivityTracking()
{
  LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_EnableViewControllerInteractionActivityTracking, @"EnableViewControllerInteractionActivityTracking", _UIInternalPreferenceUpdateBool);
  if (byte_1ED48ACA4)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void _UIScrollEventCommonInit(void *a1)
{
  v1 = MEMORY[0x1E696AD18];
  v2 = a1;
  v3 = [v1 strongToStrongObjectsMapTable];
  v4 = v2[16];
  v2[16] = v3;
}

uint64_t sub_188D22448@<X0>(float32x4_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  v9 = *(*v1 + 104);
  swift_beginAccess();
  sub_188A3F29C(v1 + v9, v8, &qword_1EA936528);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v14 = v8[8];
      v20 = v8[7];
      v21 = v14;
      v22 = v8[9];
      v13 = v8[5];
      v12 = v8[6];
      goto LABEL_8;
    }

    sub_188A3F704(v8, v5, &qword_1EA936518);
    sub_188EF4B58(&v18);
    sub_188A3F5FC(v5, &qword_1EA936518);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = v8[22];
      v20 = v8[21];
      v21 = v11;
      v22 = v8[23];
      v13 = v8[19];
      v12 = v8[20];
LABEL_8:
      v18 = v13;
      v19 = v12;
      goto LABEL_9;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

LABEL_9:
  v15 = v21;
  a1[2] = v20;
  a1[3] = v15;
  a1[4] = v22;
  v16 = v19;
  *a1 = v18;
  a1[1] = v16;
  return swift_endAccess();
}

uint64_t sub_188D22B78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188D22BB8(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = sub_188E3FE50;
  }

  else
  {
    v11 = signpost_c2_entryLock_start;
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v21 = sub_188EB2CAC;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A8F0;
  v20 = &block_descriptor_297;
  v13 = _Block_copy(&v17);
  sub_188A52E38(a2);

  if (a4)
  {
    v21 = a4;
    v22 = a5;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188C3DD6C;
    v20 = &block_descriptor_300;
    a4 = _Block_copy(&v17);
  }

  v14 = a1 & 1;
  if (v14)
  {
    v15 = 1000.0;
  }

  else
  {
    v15 = 500.0;
  }

  if (v14)
  {
    v16 = 30.0;
  }

  else
  {
    v16 = 35.0;
  }

  [swift_getObjCClassFromMetadata() _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(a4);
  _Block_release(v13);
}

uint64_t sub_188D22DC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t UIKeyboardInputModeIsDefaultRightToLeft(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1ED49EF20 != -1)
    {
      dispatch_once(&qword_1ED49EF20, &__block_literal_global_390_0);
    }

    v2 = [qword_1ED49EF18 objectForKey:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 BOOLValue];
    }

    else
    {
      v5 = TIInputModeGetLanguageWithRegion();
      v6 = v5;
      if (v5)
      {
        [v5 UTF8String];
        v4 = uloc_getCharacterOrientation() == 1;
        v7 = qword_1ED49EF18;
        v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
        [v7 setObject:v8 forKey:v1];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double _UIWindowConvertRectFromSceneSpaceToSceneReferenceSpace(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (+[UIWindow _transformLayerRotationsAreEnabled])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___UIWindowConvertRectFromSceneSpaceToSceneReferenceSpace_block_invoke;
    v15[3] = &__block_descriptor_56_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v15[4] = a6;
    *&v15[5] = a7;
    v15[6] = a1;
    return _UIRectTransformByTransformingCorners(v15, a2, a3, a4, a5);
  }

  return a2;
}

void *sub_188D2326C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B10);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    v30 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v31 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = 80 * v17;
        sub_188A83170(*(v2 + 56) + 80 * v17, v32);
        v24 = (*(v31 + 48) + v18);
        *v24 = v21;
        v24[1] = v20;
        v24[2] = v22;
        v25 = (*(v31 + 56) + v23);
        *v25 = v32[0];
        v26 = v32[1];
        v27 = v32[2];
        v28 = v32[4];
        v25[3] = v32[3];
        v25[4] = v28;
        v25[1] = v26;
        v25[2] = v27;
        v29 = v21;
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

        v1 = v30;
        v4 = v31;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t _Glass._GlassVariant.size(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass._GlassVariant);
  result = type metadata accessor for _Glass._GlassVariant(0);
  *(a2 + *(result + 24)) = v4;
  return result;
}

id __windowsWithContexts()
{
  v0 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v1 = [v0 indexesOfObjectsPassingTest:&__block_literal_global_1598];
  v2 = [v0 objectsAtIndexes:v1];

  return v2;
}

unint64_t sub_188D246D4()
{
  result = qword_1EA930E28;
  if (!qword_1EA930E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E28);
  }

  return result;
}

unint64_t sub_188D24728(uint64_t a1)
{
  result = sub_188D24750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188D24750()
{
  result = qword_1EA930E20;
  if (!qword_1EA930E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E20);
  }

  return result;
}

unint64_t sub_188D247A4(uint64_t a1)
{
  result = sub_188D247CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188D247CC()
{
  result = qword_1EA930E40;
  if (!qword_1EA930E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E40);
  }

  return result;
}

unint64_t sub_188D24824()
{
  result = qword_1EA930E30;
  if (!qword_1EA930E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E30);
  }

  return result;
}

unint64_t sub_188D2487C()
{
  result = qword_1EA930E38;
  if (!qword_1EA930E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E38);
  }

  return result;
}

uint64_t sub_188D248D0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v32, 0, 32);
      }

      sub_188A3F29C(v32, &v30, &qword_1EA934050);
      if (v31)
      {
        sub_188A55538(&v30, v29);
        sub_188A55598(v29, v28);
        sub_188A55598(v28, v27);
        sub_188A34624(0, &qword_1ED48EC30);
        swift_dynamicCast();
        [v26 CGPointValue];
        v12 = v18;
        v20 = v19;

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        sub_188A3F5FC(v32, &qword_1EA934050);
LABEL_15:
        v21 = swift_unknownObjectWeakLoadStrong();
        v22 = swift_allocObject();
        swift_weakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = a1 & 1;
        *(v23 + 32) = a2;
        *(v23 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364D0);
        swift_allocObject();

        v10 = sub_188D24D1C(v21, sub_188F0E03C, v23, v12, v20);

        *(v10 + 192) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v30 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v30, &qword_1EA930E48, &qword_1EA9364D0);

        *(v4 + 48) = v30;
        swift_endAccess();
        sub_188A34360(&qword_1EA930E48, &qword_1EA9364D0);
        goto LABEL_16;
      }

      sub_188A3F5FC(v32, &qword_1EA934050);
    }

    v20 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364D0);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1EA930E48, &qword_1EA9364D0);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

void ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_37(uint64_t a1, void *a2)
{
  if ([a2 _senderID] != *(a1 + 32))
  {
    CFDictionaryAddValue(*(a1 + 40), [a2 _pathIndex], a2);
    v4 = *(a1 + 48);
    v5 = [a2 _pathIndex];

    CFDictionaryRemoveValue(v4, v5);
  }
}

uint64_t ____updateTouchesWithDigitizerEventAndDetermineIfShouldSend_block_invoke_47(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a3 phase];
  result = [a3 phase];
  if (result == 3)
  {
    return result;
  }

  if ((*(a1 + 56) & 1) != 0 || ([a3 _hidEvent], (IOHIDEventGetIntegerValue() & 0x80) != 0))
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F738);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = a3;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "\t\tTouch in previous map was not ended, but we're cancelling; move touch to cancelled: %p", &v14, 0xCu);
      }
    }

    v8 = 4;
    goto LABEL_9;
  }

  if (v5 != 4)
  {
    v7 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED49F740);
    if (*v7)
    {
      v13 = *(v7 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = a3;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "\t\tTouch in previous map was not ended and not cancelled; move touch to ended: %p", &v14, 0xCu);
      }
    }

    v8 = 3;
LABEL_9:
    [a3 setPhase:v8];
  }

  [a3 setTimestamp:*(a1 + 40)];
  _UpdateTouchTapCount(a3, 0, *(a1 + 40), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
  v10 = 0;
  if (*(a1 + 57) == 1)
  {
    v11 = [a3 window];
    v10 = [v11 _canIgnoreInteractionEvents];
  }

  result = _AddTouchToEventAndDetermineIfNeedsCancel(v10, a3, v5 == 4, *(a1 + 48));
  if (result)
  {
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

unint64_t _UIUpdateCycleComputeIdleDeadline(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = a2;
  v4 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_IdleSchedulerTargetDeadlineFraction, @"IdleSchedulerTargetDeadlineFraction", _UIInternalPreferenceUpdateDouble);
  v5 = *&qword_1ED48B258;
  if (v4)
  {
    v5 = 0.3;
  }

  return (v5 * v3 + v2);
}

void _UIUpdateCycleNotifyIdle(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _UIInternalPreferenceUsesDefault(&unk_1ED48B290, @"UpdateCycleIdleSchedulerMode", _UIInternalPreferenceUpdateInteger);
  v7 = qword_1ED48B298;
  if (v6)
  {
    v7 = 0;
  }

  if (v7 != -1 && (v7 == 1 || dyld_program_sdk_at_least()) && (_MergedGlobals_11_6 & 1) == 0)
  {
    [qword_1ED49A928 compact];
    if ([qword_1ED49A928 count])
    {
      v8 = mach_absolute_time();
      if (v8 >= qword_1ED49A940)
      {
        v9 = v8 - a1;
        v10 = a2;
        if (_UIInternalPreferenceUsesDefault(&_MergedGlobals_942, @"IdleSchedulerMaximumFractionToStart", _UIInternalPreferenceUpdateDouble))
        {
          v11 = _UIUpdateCycleEnabled();
          v12 = 0.7;
          if (!v11)
          {
            v12 = 0.5;
          }
        }

        else
        {
          v12 = *&qword_1ED48B268;
        }

        v13 = v12 * v10;
        if (v9 <= v13)
        {
          _MergedGlobals_11_6 = 1;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = ___UIUpdateCycleNotifyIdle_block_invoke;
          v19[3] = &__block_descriptor_64_e5_v8__0l;
          v19[4] = a1;
          v19[5] = v13;
          v19[6] = a2;
          v19[7] = a3;
          v15 = v19;
          v16 = MEMORY[0x1E69E96A0];
          v17 = MEMORY[0x1E69E96A0];
          if (_UIUpdateCycleEnabled())
          {
            dispatch_async(MEMORY[0x1E69E96A0], v15);
          }

          else
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v21 = ___UIUpdateCycleExecuteAsyncAfterCommit_block_invoke;
            v22 = &unk_1E70F37C0;
            v18 = v16;
            v23 = v16;
            v24 = v15;
            dispatch_async(v16, &buf);
          }
        }

        else
        {
          v14 = *(__UILogGetCategoryCachedImpl("UpdateCycleIdleScheduler", &qword_1ED49A950) + 8);
          if (os_signpost_enabled(v14))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v9 / v10;
            _os_signpost_emit_with_name_impl(&dword_188A29000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkipNotify", "Before scheduling, elapsed=%.2f", &buf, 0xCu);
          }
        }
      }
    }
  }
}

void _endInterval(uint64_t a1)
{
  if (!_MergedGlobals_1364)
  {
    _MergedGlobals_1364 = mach_absolute_time();
  }

  _tracepointArg4(a1);
  kdebug_trace();
  if (*(a1 + 57) == 1)
  {
    work_interval_instance_set_finish();
  }

  else
  {
    work_interval_instance_set_complexity();
  }

  work_interval_instance_finish();
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v5 = _UIUpdateCycleComputeIdleDeadline(v2, v2 - v3);

    _UIUpdateCycleNotifyIdle(v3, v4, v5);
  }
}

void ___waitCommitEnd_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _MergedGlobals_1364 = 0;
  *(v1 + 12) = 0;
  if (!*(v1 + 8) || !CFDictionaryGetCount(*v1))
  {

    _endInterval(v1);
  }
}

void *_UIScrollViewVFDTableFromString(void *a1)
{
  v1 = a1;
  v72 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a1 length])
    {
      v51 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@":"];
      v60 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"@"];
      v50 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
      v59 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
      v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v47 = v1;
      v3 = [v1 componentsSeparatedByCharactersInSet:v2];

      if (![v3 count])
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIScrollViewVFDTable * _Nullable _UIScrollViewVFDTableFromString(NSString *const  _Nonnull const __strong)"];
        [v45 handleFailureInFunction:v46 file:@"_UIScrollViewVFD.m" lineNumber:181 description:{@"Expecting at least 1 element in lines array, string=%@", v47}];
      }

      ptr = malloc_type_malloc(16 * [v3 count], 0x10200405730B0C9uLL);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v4 = v3;
      v53 = [v4 countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v53)
      {
        v5 = 0;
        v52 = *v67;
        v48 = v4;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v67 != v52)
            {
              objc_enumerationMutation(v4);
            }

            v7 = *(*(&v66 + 1) + 8 * i);
            v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v9 = [v7 stringByTrimmingCharactersInSet:v8];

            if ([v9 length])
            {
              v10 = [v9 componentsSeparatedByCharactersInSet:v51];
              if ([v10 count] != 2)
              {
                v37 = [MEMORY[0x1E696AAA8] currentHandler];
                v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIScrollViewVFDTable * _Nullable _UIScrollViewVFDTableFromString(NSString *const  _Nonnull const __strong)"];
                [v37 handleFailureInFunction:v38 file:@"_UIScrollViewVFD.m" lineNumber:190 description:{@"Expecting 2 elements in parts array, line=%@", v9}];
              }

              v55 = v9;
              v56 = i;
              v11 = [v10 objectAtIndexedSubscript:0];
              v57 = v5;
              v12 = &ptr[16 * v5];
              *v12 = [v11 integerValue];

              v13 = [v10 objectAtIndexedSubscript:1];
              v14 = [v13 componentsSeparatedByCharactersInSet:v50];

              if (![v14 count])
              {
                v39 = [MEMORY[0x1E696AAA8] currentHandler];
                v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIScrollViewVFDTable * _Nullable _UIScrollViewVFDTableFromString(NSString *const  _Nonnull const __strong)"];
                v41 = [v10 objectAtIndexedSubscript:1];
                [v39 handleFailureInFunction:v40 file:@"_UIScrollViewVFD.m" lineNumber:193 description:{@"Expecting at least 1 element in items array, part=%@", v41}];
              }

              v54 = v10;
              *(v12 + 1) = [v14 count];
              *(v12 + 1) = malloc_type_malloc(16 * [v14 count], 0x1000040451B5BE8uLL);
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              obj = v14;
              v15 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = 0;
                v61 = *v63;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v63 != v61)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v62 + 1) + 8 * j);
                    v20 = [v19 componentsSeparatedByCharactersInSet:v60];
                    if ([v20 count] != 2)
                    {
                      v32 = [MEMORY[0x1E696AAA8] currentHandler];
                      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIScrollViewVFDTable * _Nullable _UIScrollViewVFDTableFromString(NSString *const  _Nonnull const __strong)"];
                      [v32 handleFailureInFunction:v33 file:@"_UIScrollViewVFD.m" lineNumber:199 description:{@"Expecting 2 elements in item parts array, item=%@", v19}];
                    }

                    v21 = [v20 objectAtIndexedSubscript:0];
                    [v21 floatValue];
                    *(*(v12 + 1) + 16 * v17) = v22;

                    v23 = [v20 objectAtIndexedSubscript:1];
                    v24 = [v23 componentsSeparatedByCharactersInSet:v59];

                    if ([v24 count] != 3)
                    {
                      v34 = [MEMORY[0x1E696AAA8] currentHandler];
                      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIScrollViewVFDTable * _Nullable _UIScrollViewVFDTableFromString(NSString *const  _Nonnull const __strong)"];
                      v36 = [v20 objectAtIndexedSubscript:1];
                      [v34 handleFailureInFunction:v35 file:@"_UIScrollViewVFD.m" lineNumber:202 description:{@"Expecting 3 elements in rates array, part=%@", v36}];
                    }

                    v25 = (*(v12 + 1) + 16 * v17);
                    v26 = [v24 objectAtIndexedSubscript:0];
                    v27 = [v26 integerValue];
                    v28 = [v24 objectAtIndexedSubscript:2];
                    v29 = [v28 integerValue];
                    v30 = [v24 objectAtIndexedSubscript:1];
                    v31 = [v30 integerValue];
                    v25[1] = v27;
                    v25[2] = v29;
                    v25[3] = v31;

                    ++v17;
                  }

                  v16 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
                }

                while (v16);
              }

              v5 = v57 + 1;
              v4 = v48;
              v9 = v55;
              i = v56;
            }
          }

          v53 = [v4 countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v53);

        if (v5)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIScrollViewVFDTable * _Nullable _UIScrollViewVFDTableFromString(NSString *const  _Nonnull const __strong)"];
      [v42 handleFailureInFunction:v43 file:@"_UIScrollViewVFD.m" lineNumber:208 description:{@"Expecting at least 1 row, string=%@", v47}];

      v5 = 0;
LABEL_34:
      v1 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
      *v1 = v5;
      v1[1] = malloc_type_realloc(ptr, 16 * v5, 0x10200405730B0C9uLL);

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t _UIScrollViewVFDTableLookup(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, float a6)
{
  if (a1 >= 2)
  {
    v6 = a2 + 16 * (a1 - 2) + 16;
    v7 = a1 - 1;
    v8 = a2;
    while (1)
    {
      v9 = *(v8 + 16);
      v8 += 16;
      if (v9 >= a3)
      {
        break;
      }

      a2 = v8;
      if (!--v7)
      {
        a2 = v6;
        break;
      }
    }
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 4);
  if (v11 >= 2)
  {
    v12 = v10 + 16 * (v11 - 2) + 16;
    v13 = v11 - 1;
    v14 = *(a2 + 8);
    while (1)
    {
      v15 = *(v14 + 16);
      v14 += 16;
      if (v15 >= a6)
      {
        break;
      }

      v10 = v14;
      if (!--v13)
      {
        v10 = v12;
        break;
      }
    }
  }

  *a4 = a2;
  *a5 = v10;
  return v10 + 4;
}

uint64_t _waitCommitEnd()
{
  if ((byte_1ED4A290C & 1) == 0)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = ___waitCommitEnd_block_invoke;
    v1[3] = &__block_descriptor_40_e5_v8__0l;
    v1[4] = &qword_1ED4A2900;
    result = [MEMORY[0x1E6979518] addCommitHandler:v1 forPhase:2];
    byte_1ED4A290C = 1;
  }

  return result;
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void _UIUpdateCompletionObservationAddObserver(void **a1, unint64_t a2, int a3)
{
  if (a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIUpdateCompletionObservationAddObserver(_UIUpdateCompletionObservation *const _Nonnull, const id<_UIUpdateCompletionObserving>  _Nonnull const __strong, const BOOL)"}];
    [v15 handleFailureInFunction:v16 file:@"_UIUpdateSequence.mm" lineNumber:216 description:@"Persistant observers are not implemented."];
  }

  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = v5[1];
  if (!*&v9)
  {
    goto LABEL_22;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(*v5 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_22;
    }

LABEL_21:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (v13[2] != a2)
  {
    goto LABEL_21;
  }
}

double sub_188D26F90@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 3;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  v1 = string;
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  if ([(NSString *)v1 length]>= 0xD)
  {
    v14 = 0;
    stringa = 0;
    if (SplitBracesAndComma(v1, &stringa, &v14))
    {
      v6 = stringa;
      v7 = CGPointFromString(stringa);
      x = v7.x;
      y = v7.y;
      v8 = v14;
      v9 = CGSizeFromString(v14);
      width = v9.width;
      height = v9.height;
      CFRelease(v6);
      CFRelease(v8);
    }
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

uint64_t UIApplicationSceneClassicModeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"phone"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"4 phone"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"4.7 phone"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"5.5 phone"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"5.8 rounded phone"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"6.5 rounded phone"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"pad"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"10.5 pad"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"12.9 pad"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"11 rounded pad"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"originalTV"])
  {
    v2 = 100;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

uint64_t UIApplicationSceneCompatibilityModeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"scaledZoomedOut"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"scaledZoomedIn"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void ___effectiveSystemGestureRecognitionIsPossibleForGesture_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_118 = [v0 isEqualToString:@"com.apple.CameraOverlayAngel"];
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

id _CreateViewForLayer(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 name];
  v6 = [v4 objectForKey:v5];
  v7 = v6;
  if (!v6)
  {
    v7 = objc_opt_class();
  }

  v8 = [[v7 alloc] _initWithLayer:v3];
  v9 = [v3 sublayers];
  v10 = [v9 copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = _CreateViewForLayer(*(*(&v18 + 1) + 8 * i), v4);
        [v8 addSubview:{v16, v18}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v8;
}

void sub_188D29814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *UIKBShiftKeyStringForActiveInputMode(void *a1)
{
  v1 = a1;
  v2 = [v1 displayTypeHint];
  switch(v2)
  {
    case 2:
      v3 = UIKeyboardGetNumbersStringForActiveInputMode();
      goto LABEL_7;
    case 3:
      v4 = @"#+=";
      goto LABEL_9;
    case 7:
      v3 = [v1 displayString];
LABEL_7:
      v4 = v3;
      goto LABEL_9;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t UIKeyboardCurrentInputModeIsMultiscript()
{
  v0 = +[UIKeyboardInputModeController sharedInputModeController];
  v1 = [v0 currentInputMode];
  v2 = [v1 softwareLayout];
  v3 = [v2 containsString:@"-With-"];

  return v3;
}

__CFString *UIKeyboardLocalizedReturnKeyName(uint64_t a1)
{
  v1 = KeyboardReturnKeyStringConstantFromReturnKeyType(a1);
  if ([v1 hasSuffix:@".png"])
  {
    v2 = v1;
  }

  else
  {
    if (v1)
    {
      v3 = UIKeyboardLocalizedString(v1, 0, 0, 0);
    }

    else
    {
      v3 = 0;
    }

    v4 = @"return";
    if (v3)
    {
      v4 = v3;
    }

    v2 = v4;
  }

  return v2;
}

__CFString *KeyboardReturnKeyStringConstantFromReturnKeyType(uint64_t a1)
{
  result = 0;
  if (a1 < 0)
  {
    a1 = -a1;
  }

  if (a1 > 6)
  {
    if (a1 <= 9)
    {
      if (a1 == 7)
      {
        return @"UI-Send";
      }

      if (a1 != 8)
      {
        return @"UI-Done";
      }

      return @"UI-Search";
    }

    v4 = @"UI-Speak";
    v5 = @"UI-Buy";
    if (a1 != 126)
    {
      v5 = 0;
    }

    if (a1 != 124)
    {
      v4 = v5;
    }

    v6 = @"UI-EmergencyCall";
    v7 = @"UI-Continue";
    if (a1 != 11)
    {
      v7 = 0;
    }

    if (a1 != 10)
    {
      v6 = v7;
    }

    if (a1 <= 123)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 <= 4)
      {
        v3 = @"UI-Next";
        if (a1 != 4)
        {
          v3 = 0;
        }

        if (a1 == 3)
        {
          return @"UI-Join";
        }

        else
        {
          return v3;
        }
      }

      if (a1 == 5)
      {
        return @"UI-Route";
      }

      return @"UI-Search";
    }

    switch(a1)
    {
      case 0:
        return @"UI-Return";
      case 1:
        return @"UI-Go";
      case 2:
        return @"UI-Search";
    }
  }

  return result;
}

void sub_188D2BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _pasteboardCacheQueue_countOffsetForName(void *a1)
{
  v1 = a1;
  v2 = _pasteboardCacheQueue_PasteboardNameToCountOffsetMap();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}