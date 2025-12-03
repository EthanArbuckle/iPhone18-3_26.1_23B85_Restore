@interface CRFormContentTypeRefiner
+ (BOOL)_isRegion:(id)region onLeftOfRegion:(id)ofRegion withTolerance:(double)tolerance;
+ (id)_findSubTextFieldsInFields:(const void *)fields maxLength:(unint64_t)length minAspectRatio:(double)ratio contentTypes:(const void *)types includeNone:(BOOL)none;
+ (id)groupAndAssignStructuralContentTypesForFields:(id)fields locale:(id)locale updateExternalFields:(BOOL)externalFields;
+ (void)_groupOrRefinePhoneNumberWithContext:(ContentTypeRefinementContext *)context shouldGroup:(BOOL)group;
+ (void)_refineAddressTypesWithContext:(ContentTypeRefinementContext *)context;
+ (void)_refineDateAndBirthdayTypesWithContext:(ContentTypeRefinementContext *)context locale:(id)locale;
@end

@implementation CRFormContentTypeRefiner

+ (BOOL)_isRegion:(id)region onLeftOfRegion:(id)ofRegion withTolerance:(double)tolerance
{
  ofRegionCopy = ofRegion;
  boundingQuad = [region boundingQuad];
  boundingQuad2 = [ofRegionCopy boundingQuad];
  [boundingQuad size];
  v11 = v10;
  [boundingQuad2 size];
  v13 = v12;
  [boundingQuad2 topLeft];
  v15 = v14;
  [boundingQuad topRight];
  v17 = v16;
  [boundingQuad midPoint];
  v19 = v18;
  [boundingQuad2 midPoint];
  if (v19 >= v20 || (v21 = (v11 + v13) * 0.5, v15 - v17 >= v21 * tolerance * 1.5) || v15 - v17 <= -(tolerance * v21) || ([boundingQuad size], v23 = v22, objc_msgSend(boundingQuad2, "size"), vabdd_f64(v23, v24) >= v21 * 0.3))
  {
    v28 = 0;
  }

  else
  {
    [boundingQuad midPoint];
    v26 = v25;
    [boundingQuad2 midPoint];
    v28 = vabdd_f64(v26, v27) < v21 * 0.5;
  }

  return v28;
}

+ (void)_groupOrRefinePhoneNumberWithContext:(ContentTypeRefinementContext *)context shouldGroup:(BOOL)group
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<CRFormContentType>::__init_with_size[abi:ne200100]<CRFormContentType const*,CRFormContentType const*>();
}

+ (id)_findSubTextFieldsInFields:(const void *)fields maxLength:(unint64_t)length minAspectRatio:(double)ratio contentTypes:(const void *)types includeNone:(BOOL)none
{
  v10 = objc_opt_new();
  lengthCopy = length;
  v11 = *(fields + 1);
  if (3 * length >= *(fields + 2))
  {
    v12 = *(fields + 2);
  }

  else
  {
    v12 = 3 * length;
  }

  if (v11 == fields || v12 == 0)
  {

    goto LABEL_41;
  }

  v39 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v11 + 16);
    if ([v15 fieldType] == 1)
    {
      fieldSource = [v15 fieldSource];
      if (fieldSource == [*(*(fields + 1) + 16) fieldSource])
      {
        break;
      }
    }

LABEL_35:

    ++v14;
    v11 = *(v11 + 8);
    if (v11 == fields || v14 >= v12)
    {
      goto LABEL_40;
    }
  }

  v17 = CRCastAsClass<CRFormTextFieldOutputRegion>(v15);
  v18 = v17;
  if (v17)
  {
    labelRegion = [v17 labelRegion];
    v20 = labelRegion;
    if (v39 || !labelRegion)
    {
      if (v39 && labelRegion && labelRegion != v39)
      {

LABEL_34:
        goto LABEL_35;
      }
    }

    else
    {
      v39 = labelRegion;
    }
  }

  if ([v15 textContentType] && (objc_msgSend(v15, "textContentType") != 1 || !none))
  {
    v21 = *types;
    v22 = *(types + 1);
    textContentType = [v15 textContentType];
    if (v21 != v22)
    {
      while (*v21 != textContentType)
      {
        if (++v21 == v22)
        {
          v21 = v22;
          break;
        }
      }
    }

    if (v21 == *(types + 1))
    {
      goto LABEL_34;
    }
  }

  lastObject = [v10 lastObject];
  if (lastObject)
  {
    lastObject2 = [v10 lastObject];
    v26 = [self _isRegion:lastObject2 onLeftOfRegion:v15 withTolerance:2.0];

    if ((v26 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  boundingQuad = [v15 boundingQuad];
  [boundingQuad size];
  v29 = v28;
  boundingQuad2 = [v15 boundingQuad];
  [boundingQuad2 size];
  v32 = v31 * ratio;

  if (v29 < v32)
  {
    goto LABEL_34;
  }

  [v10 addObject:v15];
  if ([v10 count] != lengthCopy)
  {
    goto LABEL_34;
  }

LABEL_40:
LABEL_41:

  return v10;
}

+ (void)_refineDateAndBirthdayTypesWithContext:(ContentTypeRefinementContext *)context locale:(id)locale
{
  localeCopy = locale;
  +[CRFormContentTypeUtilities contentTypeIsBirthdayComponent:](CRFormContentTypeUtilities, "contentTypeIsBirthdayComponent:", [*(*(context->var1 + 1) + 16) textContentType]);
  std::vector<CRFormContentType>::__init_with_size[abi:ne200100]<CRFormContentType const*,CRFormContentType const*>();
}

+ (void)_refineAddressTypesWithContext:(ContentTypeRefinementContext *)context
{
  v49 = *MEMORY[0x1E69E9840];
  var1 = context->var1;
  [*(var1[1] + 16) textContentType];
  v38 = *(var1[1] + 16);
  if (var1[2] < 2)
  {
    goto LABEL_40;
  }

  v4 = var1[1];
  v5 = 1;
  while (1)
  {
    v4 = *(v4 + 8);
    v6 = *(v4 + 16);
    if ([v6 fieldSource] != 2 && objc_msgSend(v6, "fieldSource") != 3 && objc_msgSend(v6, "fieldType") == 1 && +[CRFormContentTypeUtilities shouldAssignTextContentTypeForField:updateExternalFields:allowOverride:allowAllDetectionSources:](CRFormContentTypeUtilities, "shouldAssignTextContentTypeForField:updateExternalFields:allowOverride:allowAllDetectionSources:", v6, 1, 1, 0))
    {
      boundingQuad = [v38 boundingQuad];
      [boundingQuad size];
      v9 = v8;
      boundingQuad2 = [v6 boundingQuad];
      [boundingQuad2 size];
      v12 = v11 >= v9 ? v9 : v11;

      boundingQuad3 = [v6 boundingQuad];
      [boundingQuad3 topLeft];
      v15 = v14;
      boundingQuad4 = [v38 boundingQuad];
      [boundingQuad4 bottomLeft];
      v18 = v15 - v17;

      if (v18 <= v12 * 2.5)
      {
        textContentType = [v6 textContentType];
        if (textContentType <= 0x14 && ((1 << textContentType) & 0x138000) != 0)
        {
          break;
        }
      }
    }

    ++v5;
    v20 = var1[2];
    if (v20 >= 5)
    {
      v21 = 5;
    }

    else
    {
      v21 = var1[2];
    }

    if (v5 >= v21)
    {
      goto LABEL_17;
    }
  }

  v34 = CROSLogForCategory(6);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = +[CRFormContentTypeUtilities stringFromContentType:](CRFormContentTypeUtilities, "stringFromContentType:", [v38 textContentType]);
    v36 = [CRFormContentTypeUtilities stringFromContentType:13];
    *buf = 136315650;
    v40 = "+[CRFormContentTypeRefiner _refineAddressTypesWithContext:]";
    v41 = 2112;
    v42 = v35;
    v43 = 2112;
    v44 = v36;
    _os_log_impl(&dword_1B40D2000, v34, OS_LOG_TYPE_DEBUG, "%s: Rewriting content types: %@ => %@", buf, 0x20u);
  }

  [v38 setTextContentType:13];
  v20 = var1[2];
LABEL_17:
  if (v20 < 2)
  {
    goto LABEL_40;
  }

  v22 = var1[1];
  v23 = 1;
  while (1)
  {
    v22 = *(v22 + 8);
    v24 = *(v22 + 16);
    if ([v24 fieldSource] == 1)
    {
      break;
    }

LABEL_31:

    ++v23;
    v33 = var1[2];
    if (v33 >= 4)
    {
      v33 = 4;
    }

    if (v23 >= v33)
    {
      goto LABEL_40;
    }
  }

  if ([v24 fieldType] != 1 || !+[CRFormContentTypeUtilities shouldAssignTextContentTypeForField:updateExternalFields:allowOverride:allowAllDetectionSources:](CRFormContentTypeUtilities, "shouldAssignTextContentTypeForField:updateExternalFields:allowOverride:allowAllDetectionSources:", v24, 1, 1, 0) || objc_msgSend(v24, "textContentType") != 12 && objc_msgSend(v24, "textContentType") != 13 && objc_msgSend(v24, "textContentType") != 14)
  {
    goto LABEL_39;
  }

  v25 = v24;
  labelRegion = [v25 labelRegion];
  v27 = labelRegion == 0;

  if (v27)
  {
    if ([CRFormUtilities isRegion:v38 verticallyAlignedWithRegionBelow:v25 maxRelativeDistance:v23 * 3.0])
    {
      [v38 setTextContentType:13];
      [v25 setTextContentType:14];
      v28 = CROSLogForCategory(6);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = +[CRFormContentTypeUtilities stringFromContentType:](CRFormContentTypeUtilities, "stringFromContentType:", [v38 textContentType]);
        textContentTypeString = [v25 textContentTypeString];
        v31 = [CRFormContentTypeUtilities stringFromContentType:13];
        v32 = [CRFormContentTypeUtilities stringFromContentType:14];
        *buf = 136316162;
        v40 = "+[CRFormContentTypeRefiner _refineAddressTypesWithContext:]";
        v41 = 2112;
        v42 = v29;
        v43 = 2112;
        v44 = textContentTypeString;
        v45 = 2112;
        v46 = v31;
        v47 = 2112;
        v48 = v32;
        _os_log_impl(&dword_1B40D2000, v28, OS_LOG_TYPE_DEBUG, "%s: Rewriting content types: %@ %@ => %@ %@", buf, 0x34u);
      }
    }

    goto LABEL_31;
  }

LABEL_39:
LABEL_40:
}

+ (id)groupAndAssignStructuralContentTypesForFields:(id)fields locale:(id)locale updateExternalFields:(BOOL)externalFields
{
  externalFieldsCopy = externalFields;
  v23 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  localeCopy = locale;
  if (qword_1ED9601E0 != -1)
  {
    dispatch_once(&qword_1ED9601E0, &__block_literal_global_22);
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v19 = &v19;
  v20 = &v19;
  v21 = 0;
  memset(v18, 0, sizeof(v18));
  v10 = fieldsCopy;
  if ([v10 countByEnumeratingWithState:v18 objects:v22 count:16])
  {
    operator new();
  }

  v11 = v16;
  v17[0] = v11;
  v17[1] = &v19;
  v12 = v11;
  if (v21)
  {
    while (1)
    {
      v13 = v20[2];
      if (![CRFormContentTypeUtilities shouldAssignTextContentTypeForField:v13 updateExternalFields:externalFieldsCopy allowOverride:1 allowAllDetectionSources:0])
      {
        goto LABEL_10;
      }

      textContentType = [v13 textContentType];
      if (textContentType > 0x37)
      {
        goto LABEL_17;
      }

      if (((1 << textContentType) & 0xF001E000000000) == 0)
      {
        break;
      }

      [self _refineDateAndBirthdayTypesWithContext:v17 locale:localeCopy];
LABEL_11:

      if (!v21)
      {
        v12 = v17[0];
        goto LABEL_23;
      }
    }

    if (((1 << textContentType) & 0xE0000000) != 0)
    {
      [self _refineCreditCardExpirationTypesWithContext:v17];
      goto LABEL_11;
    }

    if (((1 << textContentType) & 0x240000000000) != 0)
    {
      [self _groupOrRefinePhoneNumberWithContext:v17 shouldGroup:_MergedGlobals_28];
      goto LABEL_11;
    }

LABEL_17:
    if (textContentType == 12)
    {
      [self _refineAddressTypesWithContext:v17];
      goto LABEL_11;
    }

    if (textContentType == 28 && [v13 fieldSource] == 1)
    {
      [self _groupCreditCardNumberWithContext:v17 shouldGroup:_MergedGlobals_28];
      goto LABEL_11;
    }

LABEL_10:
    goto LABEL_11;
  }

LABEL_23:

  std::__list_imp<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::clear(&v19);

  return v11;
}

void __102__CRFormContentTypeRefiner_groupAndAssignStructuralContentTypesForFields_locale_updateExternalFields___block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 environment];
  v1 = [v0 objectForKey:@"CR_FORM_DISABLE_FIELD_GROUPS"];
  _MergedGlobals_28 = [v1 BOOLValue] ^ 1;
}

@end