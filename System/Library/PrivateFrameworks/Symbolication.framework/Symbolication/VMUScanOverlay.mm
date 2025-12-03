@interface VMUScanOverlay
+ (id)defaultOverlayWithScanner:(id)scanner;
- (VMUScanOverlay)initWithScanner:(id)scanner;
- (void)addMetadataRefinementRule:(id)rule;
@end

@implementation VMUScanOverlay

+ (id)defaultOverlayWithScanner:(id)scanner
{
  scannerCopy = scanner;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VMUScanOverlay_defaultOverlayWithScanner___block_invoke;
  block[3] = &unk_1E8278288;
  v10 = scannerCopy;
  v4 = defaultOverlayWithScanner__onceToken;
  v5 = scannerCopy;
  if (v4 != -1)
  {
    dispatch_once(&defaultOverlayWithScanner__onceToken, block);
  }

  v6 = defaultOverlayWithScanner__s_defaultOverlay;
  v7 = defaultOverlayWithScanner__s_defaultOverlay;

  return v6;
}

void __44__VMUScanOverlay_defaultOverlayWithScanner___block_invoke(uint64_t a1)
{
  v1 = [[VMUScanOverlay alloc] initWithScanner:*(a1 + 32)];
  v2 = defaultOverlayWithScanner__s_defaultOverlay;
  defaultOverlayWithScanner__s_defaultOverlay = v1;
}

- (VMUScanOverlay)initWithScanner:(id)scanner
{
  scannerCopy = scanner;
  if (getenv("DT_NO_SCAN_OVERLAY"))
  {
    selfCopy = 0;
  }

  else
  {
    v48.receiver = self;
    v48.super_class = VMUScanOverlay;
    v6 = [(VMUScanOverlay *)&v48 init];
    if (v6)
    {
      v7 = objc_opt_new();
      rules = v6->_rules;
      v6->_rules = v7;

      v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4638A70];
      v10 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4638A88];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__VMUScanOverlay_initWithScanner___block_invoke;
      aBlock[3] = &unk_1E8278300;
      v11 = v9;
      v45 = v11;
      v46 = v10;
      v47 = &unk_1F4638AA0;
      v12 = v10;
      v13 = _Block_copy(aBlock);
      v14 = [v11 setByAddingObject:@"libswiftCore.dylib"];
      objectIdentifier = [scannerCopy objectIdentifier];
      swiftRuntimeInfoStableABI = [objectIdentifier swiftRuntimeInfoStableABI];
      v17 = swiftRuntimeInfoStableABI;
      if (swiftRuntimeInfoStableABI)
      {
        swiftRuntimeInfoPreABI = swiftRuntimeInfoStableABI;
      }

      else
      {
        objectIdentifier2 = [scannerCopy objectIdentifier];
        swiftRuntimeInfoPreABI = [objectIdentifier2 swiftRuntimeInfoPreABI];
      }

      swiftRuntimeInfoStableABI2 = [objectIdentifier swiftRuntimeInfoStableABI];
      if (swiftRuntimeInfoStableABI2)
      {
        [scannerCopy objectIdentifier];
        v36 = objectIdentifier;
        v21 = scannerCopy;
        v22 = swiftRuntimeInfoPreABI;
        v23 = v6;
        v24 = v14;
        v25 = v13;
        v26 = v11;
        v28 = v27 = v12;
        swiftRuntimeInfoPreABI2 = [v28 swiftRuntimeInfoPreABI];

        v12 = v27;
        v11 = v26;
        v13 = v25;
        v14 = v24;
        v6 = v23;
        swiftRuntimeInfoPreABI = v22;
        scannerCopy = v21;
        objectIdentifier = v36;
      }

      else
      {
        swiftRuntimeInfoPreABI2 = 0;
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_4;
      v37[3] = &unk_1E82783B0;
      v38 = &unk_1F4638B30;
      v39 = objectIdentifier;
      v40 = swiftRuntimeInfoPreABI;
      v41 = swiftRuntimeInfoPreABI2;
      v42 = v14;
      v43 = v13;
      v30 = v13;
      v31 = v14;
      v32 = swiftRuntimeInfoPreABI2;
      v33 = swiftRuntimeInfoPreABI;
      v34 = objectIdentifier;
      [(VMUScanOverlay *)v6 addMetadataRefinementRule:v37];
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

void __34__VMUScanOverlay_initWithScanner___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 binaryName];
  v6 = [v3 className];
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v3 binaryName];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7)
    {
      if (v6 && ([*(a1 + 40) containsObject:v6] & 1) == 0)
      {
        v9 = [v3 pointerSize];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_2;
        v10[3] = &unk_1E82782D8;
        v11 = *(a1 + 48);
        v12 = v3;
        v13 = v9;
        [v12 mutateTypeFieldsWithBlock:v10];
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = [v3 ivarName];
        LODWORD(v9) = [v10 isEqualToString:v9];

        if (v9)
        {
          v11 = [v3 mutableCopy];
          [v11 setScanType:4];
          v12 = *(a1 + 40);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_3;
          v16[3] = &unk_1E82782B0;
          v17 = v3;
          v18 = *(a1 + 48);
          [v12 addVariant:v11 forField:v17 withEvaluator:v16];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = [v3 ivarName];
  if (![v13 isEqualToString:@"_bytes"])
  {
    goto LABEL_13;
  }

  v14 = [v3 scanType];

  if (v14 == 1)
  {
    v13 = _makeStorageFieldClassInfo(*(a1 + 40), @" (Bytes Storage)");
    [v13 setDefaultScanType:1];
    [v3 setDestinationLayout:v13];
LABEL_13:
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __34__VMUScanOverlay_initWithScanner___block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2 + [*(a1 + 32) offset];
  LODWORD(a1) = *(a1 + 40);
  v10 = v8;
  v11 = v10[2];
  if (a1 == 8)
  {
    v12 = v11();
    if (v12)
    {
      v13 = *v12;
      goto LABEL_7;
    }
  }

  else
  {
    v14 = v11();
    if (v14)
    {
      v13 = *v14;
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:

  if (v13)
  {
    v15 = [v7 classInfoForObjectAtAddress:v13];
    v16 = [v15 className];

    v13 = [v16 isEqualToString:@"NSWeakObjectValue"] ^ 1;
  }

  return v13;
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_4(uint64_t a1, void *a2)
{
  v152[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 infoType] == 1 || objc_msgSend(v3, "infoType") == 8 || objc_msgSend(v3, "infoType") == 64 || objc_msgSend(v3, "infoType") == 128)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = [v3 className];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F461F9C8;
    }

    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v3 setDisplayName:v9];
    }

    if ([v3 infoType] == 8 || objc_msgSend(v3, "infoType") == 64 || _isSwiftRootClass(v3))
    {
      v10 = [v3 className];
      if ([v10 hasPrefix:@"__"])
      {
        v11 = [v3 binaryPath];
        v12 = [v11 hasSuffix:@"libswiftCore.dylib"];

        if (v12)
        {
          v13 = 2;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v14 = [*(a1 + 40) vmuTask];
      if (![v14 isExclaveCore])
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = [v3 className];
      v16 = [v15 hasPrefix:@"Swift.__"];

      if (!v16)
      {
LABEL_22:
        v20 = *(a1 + 48);
        v19 = *(a1 + 56);
        v21 = *(a1 + 40);
        objc_initWeak(&location, v3);
        v22 = v20;
        v23 = v19;
        objc_initWeak(&from, v21);
        v24 = objc_loadWeakRetained(&location);
        LODWORD(v20) = _isSwiftRootClass(v24);

        v25 = objc_loadWeakRetained(&location);
        v141 = MEMORY[0x1E69E9820];
        v142 = 3221225472;
        if (v20)
        {
          v143 = ___variantForSwiftClass_block_invoke;
          v144 = &unk_1E82783D8;
          objc_copyWeak(&v146, &location);
          v145 = v22;
          [v25 mutateTypeFieldsWithBlock:&v141];

          objc_destroyWeak(&v146);
        }

        else
        {
          v143 = ___variantForSwiftClass_block_invoke_2;
          v144 = &unk_1E82784A0;
          v145 = v22;
          objc_copyWeak(&v147, &location);
          v146 = v23;
          objc_copyWeak(&v148, &from);
          [v25 mutateTypeFieldsRecursivelyWithBlock:&v141];

          objc_destroyWeak(&v148);
          objc_destroyWeak(&v147);
        }

        objc_destroyWeak(&from);

        objc_destroyWeak(&location);
        goto LABEL_26;
      }

      v13 = 8;
LABEL_20:
      v14 = [v3 className];
      v17 = [v14 substringFromIndex:v13];
      v18 = [@"Swift." stringByAppendingString:v17];
      [v3 setDisplayName:v18];

      goto LABEL_21;
    }

    if ([*(a1 + 40) taskIsDriverKit] && objc_msgSend(v3, "infoType") == 128)
    {
      goto LABEL_26;
    }

    determineOSClassInstanceSize(v3, 1);
    if ([v3 isARR])
    {
      goto LABEL_26;
    }

    v27 = *(a1 + 64);
    v28 = [v3 binaryName];
    LODWORD(v27) = [v27 containsObject:v28];

    if (!v27)
    {
      goto LABEL_26;
    }

    v29 = [v3 className];
    v30 = [v29 isEqualToString:@"_CFXNotificationRegistrationContainer"];

    if (v30)
    {
      v31 = [v3 pointerSize];
      v32 = [v3 firstFieldWithName:@"_children"];
      if (v32)
      {
        v33 = -[VMUFieldInfo initWithName:type:scan:offset:size:]([VMUMutableFieldInfo alloc], "initWithName:type:scan:offset:size:", @"_children.elements", @"^v", 2, [v32 offset], v31);
        v34 = -[VMUFieldInfo initWithName:type:scan:offset:size:]([VMUMutableFieldInfo alloc], "initWithName:type:scan:offset:size:", @"_children.singleChildKey", @"^v", 1, [v32 offset] + v31, v31);
        v35 = -[VMUFieldInfo initWithName:type:scan:offset:size:]([VMUMutableFieldInfo alloc], "initWithName:type:scan:offset:size:", @"_children.callbacks", @"^v", 2, [v32 offset] + 2 * v31, v31);
        v152[0] = v33;
        v152[1] = v34;
        v152[2] = v35;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:3];
        [v3 replaceField:v32 withFields:v36];

        v37 = [(VMUFieldInfo *)v34 mutableCopy];
        [v37 setScanType:4];
        v38 = [(VMUFieldInfo *)v35 offset];
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_5;
        v138[3] = &__block_descriptor_40_e45_B32__0Q8__VMUTaskMemoryScanner_16____v__QQ_24l;
        v139 = v38;
        v140 = v31;
        [v3 addVariant:v37 forField:v34 withEvaluator:v138];
      }

      goto LABEL_40;
    }

    v39 = [v3 className];
    if ([v39 isEqualToString:@"__NSCFDictionary"])
    {

LABEL_39:
      _variantForCFBasicHash(v3);
      goto LABEL_40;
    }

    v40 = [v3 className];
    v41 = [v40 isEqualToString:@"__NSCFSet"];

    if (v41)
    {
      goto LABEL_39;
    }

    v42 = [v3 className];
    v43 = [v42 isEqualToString:@"__NSCFString"];

    if (v43)
    {
      v44 = _destinationLayoutStorageVariant(v3, 16, @"content", 0, &stru_1F461F9C8);
      [v3 addVariant:v44 forField:0 withEvaluator:&__block_literal_global_5];
      [v3 setVariantScanType:0 withEvaluator:&__block_literal_global_481];

      goto LABEL_40;
    }

    v45 = [v3 className];
    v46 = [v45 isEqualToString:@"NSConcreteHashTable"];

    if (v46 || ([v3 className], v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "isEqualToString:", @"NSConcretePointerArray"), v47, v48))
    {
      v49 = @"slice";
      v50 = @"Object";
LABEL_46:
      _variantForNSSlice(v3, v49, v50);
      goto LABEL_40;
    }

    v51 = [v3 className];
    v52 = [v51 isEqualToString:@"NSConcreteMapTable"];

    if (v52)
    {
      _variantForNSSlice(v3, @"keys", @"Key");
      v49 = @"values";
      v50 = @"Value";
      goto LABEL_46;
    }

    v53 = [v3 className];
    v54 = [v53 isEqualToString:@"_CFXNotificationRegistrationBase"];

    if (v54)
    {
      v55 = &__block_literal_global_504;
      goto LABEL_59;
    }

    v56 = [v3 className];
    v57 = [v56 isEqualToString:@"_NSThreadData"];

    if (v57)
    {
      v55 = &__block_literal_global_509;
      goto LABEL_59;
    }

    v58 = [v3 className];
    v59 = [v58 isEqualToString:@"_CFXNotificationObserverRegistration"];

    if (v59)
    {
      v55 = &__block_literal_global_514;
      goto LABEL_59;
    }

    v60 = [v3 className];
    if ([v60 isEqualToString:@"_CFXNotificationObjectRegistration"])
    {

LABEL_58:
      v55 = &__block_literal_global_525;
      goto LABEL_59;
    }

    v61 = [v3 className];
    v62 = [v61 isEqualToString:@"_CFXNotificationObjcObserverRegistration"];

    if (v62)
    {
      goto LABEL_58;
    }

    v63 = [v3 className];
    v64 = [v63 isEqualToString:@"__NSObserver"];

    if (v64)
    {
      v55 = &__block_literal_global_533;
      goto LABEL_59;
    }

    v65 = [v3 className];
    v66 = [v65 isEqualToString:@"_NSBindingInfo"];

    if (v66)
    {
      v55 = &__block_literal_global_541;
      goto LABEL_59;
    }

    v67 = [v3 className];
    v68 = [v67 isEqualToString:@"_NSModelObservingTracker"];

    if (v68)
    {
      v55 = &__block_literal_global_549;
      goto LABEL_59;
    }

    v69 = [v3 className];
    v70 = [v69 isEqualToString:@"__NSOperationInternal"];

    if (v70)
    {
      v55 = &__block_literal_global_557;
      goto LABEL_59;
    }

    v71 = [v3 className];
    v72 = [v71 isEqualToString:@"NSKeyValueObservance"];

    if (v72)
    {
      v55 = &__block_literal_global_568;
      goto LABEL_59;
    }

    v73 = [v3 className];
    v74 = [v73 isEqualToString:@"__NSSingleObjectArrayI"];

    if (v74)
    {
      v55 = &__block_literal_global_573;
      goto LABEL_59;
    }

    v75 = [v3 className];
    v76 = [v75 isEqualToString:@"__NSSingleObjectSetI"];

    if (v76)
    {
      v55 = &__block_literal_global_575;
      goto LABEL_59;
    }

    v77 = [v3 className];
    if ([v77 isEqualToString:@"__NSArrayM"])
    {
    }

    else
    {
      v78 = [v3 className];
      v79 = [v78 isEqualToString:@"__NSFrozenArrayM"];

      if (!v79)
      {
        v80 = [v3 className];
        if ([v80 isEqualToString:@"__NSDictionaryM"])
        {
        }

        else
        {
          v81 = [v3 className];
          v82 = [v81 isEqualToString:@"__NSFrozenDictionaryM"];

          if (!v82)
          {
            v83 = [v3 className];
            if ([v83 isEqualToString:@"__NSSetM"])
            {
            }

            else
            {
              v84 = [v3 className];
              v85 = [v84 isEqualToString:@"__NSFrozenSetM"];

              if (!v85)
              {
                v86 = [v3 className];
                v87 = [v86 isEqualToString:@"__NSArrayI"];

                if (v87)
                {
                  [v3 setDefaultScanType:2];
                  goto LABEL_40;
                }

                v88 = [v3 className];
                v89 = [v88 isEqualToString:@"NSResponder"];

                if (v89)
                {
                  v55 = &__block_literal_global_589;
                  goto LABEL_59;
                }

                v90 = [v3 className];
                v91 = [v90 isEqualToString:@"NSMenuItem"];

                if (v91)
                {
                  v55 = &__block_literal_global_597;
                  goto LABEL_59;
                }

                v92 = [v3 className];
                v93 = [v92 isEqualToString:@"NSActionCell"];

                if (v93)
                {
                  v55 = &__block_literal_global_611;
                  goto LABEL_59;
                }

                v94 = [v3 className];
                v95 = [v94 isEqualToString:@"NSCellAuxiliary"];

                if (v95)
                {
                  v55 = &__block_literal_global_619;
                  goto LABEL_59;
                }

                v96 = [v3 className];
                v97 = [v96 isEqualToString:@"NSMenu"];

                if (v97)
                {
                  v55 = &__block_literal_global_627;
                  goto LABEL_59;
                }

                v98 = [v3 className];
                v99 = [v98 isEqualToString:@"NSLayoutConstraint"];

                if (v99)
                {
                  v55 = &__block_literal_global_635;
                  goto LABEL_59;
                }

                v100 = [v3 className];
                v101 = [v100 isEqualToString:@"NSLayoutAnchor"];

                if (v101)
                {
                  v55 = &__block_literal_global_649;
                  goto LABEL_59;
                }

                v102 = [v3 className];
                v103 = [v102 isEqualToString:@"NSView"];

                if (v103)
                {
                  v55 = &__block_literal_global_657;
                  goto LABEL_59;
                }

                v104 = [v3 className];
                v105 = [v104 isEqualToString:@"_NSViewAuxiliary"];

                if (v105)
                {
                  v55 = &__block_literal_global_674;
                  goto LABEL_59;
                }

                v106 = [v3 className];
                v107 = [v106 isEqualToString:@"NSTextInputContext"];

                if (v107)
                {
                  v55 = &__block_literal_global_679;
                  goto LABEL_59;
                }

                v108 = [v3 className];
                v109 = [v108 isEqualToString:@"NSWeakObjectValue"];

                if (v109)
                {
                  v55 = &__block_literal_global_684;
                  goto LABEL_59;
                }

                v110 = [v3 className];
                v111 = [v110 isEqualToString:@"NSAccessibilityWeakReferenceContainer"];

                if (v111)
                {
                  v55 = &__block_literal_global_692;
                  goto LABEL_59;
                }

                v112 = [v3 className];
                if ([v112 isEqualToString:@"NSInputStream"])
                {
                }

                else
                {
                  v113 = [v3 className];
                  v114 = [v113 isEqualToString:@"NSOutputStream"];

                  if (!v114)
                  {
                    v121 = [v3 displayName];
                    v122 = [v121 isEqualToString:@"__SwiftNativeNSError"];

                    if (v122)
                    {
                      [v3 setInfoType:8];
                      goto LABEL_26;
                    }

                    v123 = [v3 className];
                    v124 = [v123 isEqualToString:@"_NSKVODeallocSentinel"];

                    if (!v124)
                    {
LABEL_40:
                      (*(*(a1 + 72) + 16))();
LABEL_26:

                      objc_autoreleasePoolPop(v4);
                      goto LABEL_27;
                    }

                    v55 = &__block_literal_global_733;
LABEL_59:
                    [v3 mutateTypeFieldsWithBlock:v55];
                    goto LABEL_40;
                  }
                }

                v128 = [v3 firstFieldWithName:@"_reserved"];
                if (v128)
                {
                  v115 = [v3 pointerSize];
                  v127 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"error" type:@"^v" scan:1 offset:(3 * v115) size:v115];
                  v126 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"client" type:@"^{_CFStreamClient=}" scan:1 offset:(4 * v115) size:v115];
                  v125 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"info" type:@"^v" scan:1 offset:(5 * v115) size:v115];
                  v116 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"callBacks" type:@"^{_CFStreamCallBacks=}" scan:1 offset:(6 * v115) size:v115];
                  v117 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"streamLock" type:@"^v" scan:1 offset:(7 * v115) size:v115];
                  v118 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"previousRunloopsAndModes" type:@"^v" scan:1 offset:(8 * v115) size:v115];
                  v119 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"queue" type:@"^v" scan:1 offset:(9 * v115) size:v115];
                  v151[0] = v127;
                  v151[1] = v126;
                  v151[2] = v125;
                  v151[3] = v116;
                  v151[4] = v117;
                  v151[5] = v118;
                  v151[6] = v119;
                  v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:7];
                  [v3 replaceField:v128 withFields:v120];
                }

                goto LABEL_40;
              }
            }

            v141 = 0;
            v142 = &v141;
            v143 = 0x2020000000;
            LOBYTE(v144) = 0;
            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_21;
            v129[3] = &unk_1E8278388;
            v130 = v3;
            v131 = &v141;
            [v130 mutateTypeFieldsWithBlock:v129];

LABEL_78:
            _Block_object_dispose(&v141, 8);
            goto LABEL_40;
          }
        }

        v141 = 0;
        v142 = &v141;
        v143 = 0x2020000000;
        LOBYTE(v144) = 0;
        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_20;
        v132[3] = &unk_1E8278388;
        v133 = v3;
        v134 = &v141;
        [v133 mutateTypeFieldsWithBlock:v132];

        goto LABEL_78;
      }
    }

    v141 = 0;
    v142 = &v141;
    v143 = 0x2020000000;
    LOBYTE(v144) = 0;
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_19;
    v135[3] = &unk_1E8278388;
    v136 = v3;
    v137 = &v141;
    [v136 mutateTypeFieldsWithBlock:v135];

    goto LABEL_78;
  }

LABEL_27:

  v26 = *MEMORY[0x1E69E9840];
}

BOOL __34__VMUScanOverlay_initWithScanner___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8[2];
  v10 = *(a1 + 32) + a2;
  if (*(a1 + 36) != 8)
  {
    v13 = v9();
    if (!v13)
    {
      goto LABEL_7;
    }

    v12 = *v13;
    if (!*v13)
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = *(a1 + 36);
    v16 = v8[2];
    v17 = v12 + v15;
    if (v15 == 8)
    {
      v18 = v16(v8, v17, 8);
      if (v18)
      {
        v19 = *v18;
LABEL_15:
        v14 = v19 == 0;
        goto LABEL_16;
      }
    }

    else
    {
      v20 = v16(v8, v17, 4);
      if (v20)
      {
        v19 = *v20;
        goto LABEL_15;
      }
    }

    v19 = 0;
    goto LABEL_15;
  }

  v11 = v9();
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      goto LABEL_9;
    }
  }

LABEL_7:
  v14 = 0;
LABEL_16:

  return v14;
}

uint64_t __34__VMUScanOverlay_initWithScanner___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a4, a2, 16);
  if (result)
  {
    return !stringHasInlineContents(result);
  }

  return result;
}

uint64_t __34__VMUScanOverlay_initWithScanner___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a4, a2, 16);
  if (result)
  {

    return stringHasInlineContents(result);
  }

  return result;
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_parent"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_target"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_observer"];

  if (v3)
  {
    [v4 setScanType:0];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_object"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"object"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_retainedController"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_14(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_modelObserver"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_15(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 ivarName];
  v3 = [v2 isEqualToString:@"__outerOp"];

  if (v3)
  {
    [v6 setScanType:4];
  }

  v4 = [v6 ivarName];
  v5 = [v4 isEqualToString:@"__completion"];

  if (v5)
  {
    [v6 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_16(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 scanType] == 1)
  {
    v2 = [v4 ivarName];
    v3 = [v2 isEqualToString:@"_context"];

    if ((v3 & 1) == 0)
    {
      [v4 setScanType:4];
    }
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_17(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_object"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"element"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_19(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ivarName];
  v4 = [v3 isEqualToString:@"storage"];

  if (v4)
  {
    v5 = _makeStorageFieldClassInfo(*(a1 + 32), @" (Storage)");
    [v5 setDefaultScanType:2];
    [v6 setDestinationLayout:v5];
    [v6 setScanType:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_20(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ivarName];
  v4 = [v3 isEqualToString:@"storage"];

  if (v4)
  {
    v5 = _makeStorageFieldClassInfo(*(a1 + 32), @" (Storage)");
    [v5 setDefaultScanType:2];
    [v6 setDestinationLayout:v5];
    [v6 setScanType:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_21(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ivarName];
  v4 = [v3 isEqualToString:@"storage"];

  if (v4)
  {
    v5 = _makeStorageFieldClassInfo(*(a1 + 32), @" (Storage)");
    [v5 setDefaultScanType:2];
    [v6 setDestinationLayout:v5];
    [v6 setScanType:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_22(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_nextResponder"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_23(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 ivarName];
  v3 = [v2 isEqualToString:@"_repObject"];

  if (v3)
  {
    [v8 setScanType:2];
  }

  v4 = [v8 ivarName];
  v5 = [v4 isEqualToString:@"_submenu"];

  if (v5)
  {
    [v8 setScanType:2];
  }

  v6 = [v8 ivarName];
  v7 = [v6 isEqualToString:@"_menu"];

  if (v7)
  {
    [v8 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_24(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_controlView"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_25(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"controlView"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_26(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_supermenu"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_27(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 ivarName];
  v3 = [v2 isEqualToString:@"_container"];

  if (v3)
  {
    [v8 setScanType:4];
  }

  v4 = [v8 ivarName];
  v5 = [v4 isEqualToString:@"_firstItem"];

  if (v5)
  {
    [v8 setScanType:4];
  }

  v6 = [v8 ivarName];
  v7 = [v6 isEqualToString:@"_secondItem"];

  if (v7)
  {
    [v8 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_28(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_referenceItem"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_29(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = [v10 ivarName];
  v3 = [v2 isEqualToString:@"_superview"];

  if (v3)
  {
    [v10 setScanType:4];
  }

  v4 = [v10 ivarName];
  v5 = [v4 isEqualToString:@"_window"];

  if (v5)
  {
    [v10 setScanType:4];
  }

  v6 = [v10 ivarName];
  v7 = [v6 isEqualToString:@"_viewController"];

  if (v7)
  {
    [v10 setScanType:8];
  }

  v8 = [v10 ivarName];
  v9 = [v8 isEqualToString:@"_ancestorWithLayerForLastLayerGeometryUpdate"];

  if (v9)
  {
    [v10 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_30(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_viewController"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_31(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_client"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_32(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 ivarName];
  v3 = [v2 isEqualToString:@"_value"];

  if (v3)
  {
    [v6 setScanType:4];
  }

  v4 = [v6 ivarName];
  v5 = [v4 isEqualToString:@"_object"];

  if (v5)
  {
    [v6 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_33(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_weakReference"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_34(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_observedObject"];

  if (v3)
  {
    [v4 setScanType:8];
  }
}

- (void)addMetadataRefinementRule:(id)rule
{
  rules = self->_rules;
  v4 = _Block_copy(rule);
  [(NSMutableArray *)rules addObject:v4];
}

@end