@interface CRFormUtilities
+ (BOOL)isRegion:(id)region verticallyAlignedWithRegionBelow:(id)below maxRelativeDistance:(double)distance;
+ (id)_filterFieldsToNotSurface:(id)surface;
+ (id)debugDescriptionForField:(id)field;
+ (id)detectedFieldRegionsInDocument:(id)document excludingFields:(id)fields updateExcludedFields:(BOOL)excludedFields;
+ (id)proposedFieldForPoint:(CGPoint)point inDocument:(id)document existingFields:(id)fields;
@end

@implementation CRFormUtilities

+ (id)debugDescriptionForField:(id)field
{
  swift_unknownObjectRetain();
  sub_1B4101B44(field);
  swift_unknownObjectRelease();
  v4 = sub_1B429FB88();

  return v4;
}

+ (id)_filterFieldsToNotSurface:(id)surface
{
  surfaceCopy = surface;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(surfaceCopy, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CRFormUtilities__filterFieldsToNotSurface___block_invoke;
  v7[3] = &unk_1E7BC2048;
  v5 = v4;
  v8 = v5;
  [CRFormPostProcessingManager enumerateDetectedFields:surfaceCopy block:v7];

  return v5;
}

void __45__CRFormUtilities__filterFieldsToNotSurface___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CRCastAsClass<CRFormFieldOutputRegion>(v3);
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = CROSLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 description];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1B40D2000, v5, OS_LOG_TYPE_ERROR, "Unexpected type for CRFormFieldProviding item, expected CRFormFieldOutputRegion, got %@", &v7, 0xCu);
    }
  }
}

+ (id)detectedFieldRegionsInDocument:(id)document excludingFields:(id)fields updateExcludedFields:(BOOL)excludedFields
{
  excludedFieldsCopy = excludedFields;
  v33 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  fieldsCopy = fields;
  if (qword_1ED9602E0 != -1)
  {
    dispatch_once(&qword_1ED9602E0, &__block_literal_global_32);
  }

  v10 = CROSLogForCategory(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    formFieldRegions = [documentCopy formFieldRegions];
    *buf = 136315906;
    v26 = "+[CRFormUtilities detectedFieldRegionsInDocument:excludingFields:updateExcludedFields:]";
    v27 = 2048;
    v28 = [formFieldRegions count];
    v29 = 2048;
    v30 = [fieldsCopy count];
    v31 = 1024;
    v32 = excludedFieldsCopy;
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "%s: #internalFields:%lu #externalFields:%lu updateExcludedFields:%d", buf, 0x26u);
  }

  if ((_MergedGlobals_37 & 1) != 0 || fieldsCopy && [fieldsCopy count] || (objc_msgSend(documentCopy, "formFieldRegions"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count") == 0, v12, v13))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{excludedFieldsCopy, @"ShouldUpdateExternalFieldsOption"}];
    v24 = v17;
    formFieldRegions3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v18 = [MEMORY[0x1E695DF70] arrayWithArray:fieldsCopy];
    formFieldRegions2 = [documentCopy formFieldRegions];
    [v18 addObjectsFromArray:formFieldRegions2];

    v20 = +[CRFormPostProcessingManager postProcessingManagerWithDefaultSequence];
    v21 = [v20 process:v18 externalFields:fieldsCopy document:documentCopy options:formFieldRegions3];
    v16 = [self _filterFieldsToNotSurface:v21];
  }

  else
  {
    v14 = CROSLogForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "+[CRFormUtilities detectedFieldRegionsInDocument:excludingFields:updateExcludedFields:]";
      _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_DEFAULT, "%s: Returning cached results as no external field is given.", buf, 0xCu);
    }

    formFieldRegions3 = [documentCopy formFieldRegions];
    v16 = [self _filterFieldsToNotSurface:formFieldRegions3];
  }

  return v16;
}

void __87__CRFormUtilities_detectedFieldRegionsInDocument_excludingFields_updateExcludedFields___block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v1 objectForKey:@"com.apple.CoreRecognition.disable_form_cache"];
  _MergedGlobals_37 = [v0 BOOLValue];
}

+ (id)proposedFieldForPoint:(CGPoint)point inDocument:(id)document existingFields:(id)fields
{
  y = point.y;
  x = point.x;
  v57 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  fieldsCopy = fields;
  v10 = CROSLogForCategory(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "+[CRFormUtilities proposedFieldForPoint:inDocument:existingFields:]";
    *&buf[12] = 2048;
    *&buf[14] = x;
    *&buf[22] = 2048;
    v55 = *&y;
    LOWORD(v56) = 2048;
    *(&v56 + 2) = [fieldsCopy count];
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "%s: x:%lf y:%lf #existingFields:%lu", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__16;
  *&v56 = __Block_byref_object_dispose__16;
  *(&v56 + 1) = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0x7FEFFFFFFFFFFFFFLL;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__16;
  v46 = __Block_byref_object_dispose__16;
  v47 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0x7FEFFFFFFFFFFFFFLL;
  formFieldRegions = [documentCopy formFieldRegions];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __67__CRFormUtilities_proposedFieldForPoint_inDocument_existingFields___block_invoke_2;
  v40[3] = &unk_1E7BC3650;
  *&v40[8] = x;
  *&v40[9] = y;
  v40[4] = v48;
  v40[5] = buf;
  v40[6] = v41;
  v40[7] = &v42;
  [CRFormPostProcessingManager enumerateFieldsInFields:formFieldRegions filter:&__block_literal_global_18 block:v40];
  if (*(*&buf[8] + 40))
  {
    v12 = CROSLogForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(*&buf[8] + 40) description];
      v14 = +[CRFormContentTypeUtilities stringFromContentType:](CRFormContentTypeUtilities, "stringFromContentType:", [*(*&buf[8] + 40) textContentType]);
      *v50 = 138412546;
      v51 = v13;
      v52 = 2112;
      v53 = v14;
      _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_DEBUG, "Smart field proposal from a contour or text based detection: %@, content type: %@", v50, 0x16u);
    }
  }

  else
  {
    v15 = v43[5];
    if (v15)
    {
      boundingQuad = [v15 boundingQuad];
      denormalizedQuad = [boundingQuad denormalizedQuad];
      [denormalizedQuad size];
      v19 = v18;
    }

    else
    {
      v19 = 30.0;
    }

    [documentCopy rectifiedSize];
    v22 = normalizedSizeForSize(150.0, v19, v20, v21);
    v24 = v23;
    v25 = [CRNormalizedQuad alloc];
    [documentCopy rectifiedSize];
    v12 = [(CRNormalizedQuad *)v25 initWithNormalizedBoundingBox:x size:y - v24, v22, v24, v26, v27];
    v28 = [[CRFormTextFieldOutputRegion alloc] initWithQuad:v12 labelRegion:0 subFields:0 contentType:0 source:1];
    v29 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v28;

    v30 = +[CRFormPostProcessingManager postProcessingManagerWithDefaultSequence];
    v49 = *(*&buf[8] + 40);
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v32 = [v30 process:v31 externalFields:MEMORY[0x1E695E0F0] document:documentCopy options:0];

    v33 = [v32 objectAtIndexedSubscript:0];
    v34 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v33;

    v35 = CROSLogForCategory(6);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [*(*&buf[8] + 40) description];
      v37 = +[CRFormContentTypeUtilities stringFromContentType:](CRFormContentTypeUtilities, "stringFromContentType:", [*(*&buf[8] + 40) textContentType]);
      *v50 = 138412547;
      v51 = v36;
      v52 = 2113;
      v53 = v37;
      _os_log_impl(&dword_1B40D2000, v35, OS_LOG_TYPE_DEBUG, "Smart field proposal from a back off field at tap location: %@, content type: %{private}@", v50, 0x16u);
    }
  }

  v38 = *(*&buf[8] + 40);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(buf, 8);

  return v38;
}

BOOL __67__CRFormUtilities_proposedFieldForPoint_inDocument_existingFields___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fieldSource] == 1 || objc_msgSend(v2, "fieldSource") == 2 || objc_msgSend(v2, "fieldSource") == 3;

  return v3;
}

void __67__CRFormUtilities_proposedFieldForPoint_inDocument_existingFields___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v21 fieldSource] == 2 || objc_msgSend(v21, "fieldSource") == 3;
    v7 = [v21 fieldSource];
    if (v6)
    {
      v8 = [v21 boundingQuad];
      [v8 shortestDistanceFromNormalizedPoint:{*(a1 + 64), *(a1 + 72)}];
      v10 = v9;

      v11 = [v21 boundingQuad];
      [v11 normalizationSize];
      v13 = v12;
      v14 = [v21 boundingQuad];
      [v14 normalizationSize];
      v16 = v10 / fmin(v13, v15);

      if (v16 <= fmin(*(*(*(a1 + 32) + 8) + 24), 0.01))
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *(*(*(a1 + 32) + 8) + 24) = v16;
        if (*(*(*(a1 + 32) + 8) + 24) == 0.0)
        {
          *a3 = 1;
        }
      }
    }

    else if (v7 == 1 && [v21 fieldType] == 1)
    {
      v17 = [v21 boundingQuad];
      [v17 shortestDistanceFromNormalizedPoint:{*(a1 + 64), *(a1 + 72)}];
      v19 = v18;

      v20 = *(*(a1 + 48) + 8);
      if (v19 < *(v20 + 24))
      {
        *(v20 + 24) = v19;
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
      }
    }
  }
}

+ (BOOL)isRegion:(id)region verticallyAlignedWithRegionBelow:(id)below maxRelativeDistance:(double)distance
{
  belowCopy = below;
  boundingQuad = [region boundingQuad];
  boundingQuad2 = [belowCopy boundingQuad];
  [boundingQuad topRight];
  v11 = v10;
  [boundingQuad2 topRight];
  v13 = v12;
  [boundingQuad topLeft];
  v15 = v14;
  [boundingQuad2 topLeft];
  v17 = v16;
  [boundingQuad2 size];
  if (fmax(fmin(v11, v13) - fmax(v15, v17), 0.0) / v18 > 0.5 && ([boundingQuad2 topLeft], v20 = v19, objc_msgSend(boundingQuad, "bottomLeft"), v20 >= v21 + -2.22044605e-16))
  {
    [boundingQuad2 topLeft];
    v24 = v23;
    [boundingQuad bottomLeft];
    v26 = v25;
    [boundingQuad size];
    v28 = v27;
    [boundingQuad2 size];
    v22 = v24 - v26 <= (v28 + v29) * 0.5 * distance;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end