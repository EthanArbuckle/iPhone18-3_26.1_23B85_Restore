@interface CRDocumentOutputRegion
+ (id)documentWithLines:(id)lines title:(id)title confidence:(unint64_t)confidence imageSize:(CGSize)size;
+ (id)documentWithRegions:(id)regions title:(id)title confidence:(unint64_t)confidence imageSize:(CGSize)size;
+ (id)groupedParagraphBlocksFromParagraphs:(id)paragraphs;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldReprocessDocument;
- (CRDocumentOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRDocumentOutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (CRDocumentOutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)range;
- (CRDocumentOutputRegion)outputRegionWithContentsOfQuad:(id)quad;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
- (id)detectedFieldRegionsExcludingFields:(id)fields updateExcludedFields:(BOOL)excludedFields;
- (id)layoutComponents;
- (id)proposedFieldForPoint:(CGPoint)point existingFields:(id)fields;
- (id)trackingDocumentWithTrackedType:(unint64_t)type includeLines:(BOOL)lines;
- (id)writeToFileInFolder:(id)folder basename:(id)basename;
- (unint64_t)formness;
- (void)collectMetadataForNumFilteredRegions:(int64_t)regions;
- (void)setChildren:(id)children;
@end

@implementation CRDocumentOutputRegion

- (CRDocumentOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  v54 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v9 = &qword_1ED960000;
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v10 = &qword_1ED960000;
  v11 = CRSignpostLog_signPostOSLog;
  v12 = os_signpost_id_generate(v11);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v13 = CRSignpostLog_signPostOSLog;
  v14 = v13;
  v41 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "OCRDeserializationTime", "", buf, 2u);
  }

  v46.receiver = self;
  v46.super_class = CRDocumentOutputRegion;
  v15 = [(CROutputRegion *)&v46 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v15)
  {
    v16 = version >= 3 && [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset]> 0;
    v17 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:offset];
    v18 = [CROutputRegion outputRegionWithCRCodableDataRepresentation:v17];
    title = v15->_title;
    v15->_title = v18;

    if (v16)
    {
      v15->_documentRevision = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
      v20 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:offset];
      v10 = &qword_1ED960000;
      if (v20)
      {
        v21 = [[CRDocumentOutputRegionMetadata alloc] initWithCRCodableDataRepresentation:v20];
        additionalMetadata = v15->_additionalMetadata;
        v15->_additionalMetadata = v21;
      }

      v9 = &qword_1ED960000;
    }

    else
    {
      v15->_documentRevision = 0;
      v9 = &qword_1ED960000;
      v10 = &qword_1ED960000;
    }

    if (version <= 9)
    {
      v40 = v12;
      v23 = objc_opt_new();
      v24 = objc_opt_new();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      children = [(CROutputRegion *)v15 children];
      v26 = [children countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v43;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(children);
            }

            v30 = *(*(&v42 + 1) + 8 * i);
            if ([v30 type] == 64)
            {
              v31 = [v30 contentsWithTypes:2];
              [v23 addObjectsFromArray:v31];
              [v24 addObject:v30];
            }

            else
            {
              [v23 addObject:v30];
            }
          }

          v27 = [children countByEnumeratingWithState:&v42 objects:v53 count:16];
        }

        while (v27);
      }

      v12 = v40;
      v9 = &qword_1ED960000;
      v10 = &qword_1ED960000;
      if ([v24 count])
      {
        v32 = CROSLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v24 count];
          children2 = [(CROutputRegion *)v15 children];
          v35 = [children2 count];
          v36 = [v23 count];
          *buf = 134218496;
          v48 = v33;
          v10 = &qword_1ED960000;
          v49 = 2048;
          v50 = v35;
          v51 = 2048;
          v52 = v36;
          _os_log_impl(&dword_1B40D2000, v32, OS_LOG_TYPE_DEFAULT, "Encountered %ld table(s) in hierarchy. Updating children from %ld to %ld", buf, 0x20u);
        }

        [(CRDocumentOutputRegion *)v15 setChildren:v23];
        [(CROutputRegion *)v15 setTableRegions:v24];
      }
    }
  }

  if (v9[134] != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v37 = v10[133];
  v38 = v37;
  if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v38, OS_SIGNPOST_INTERVAL_END, v12, "OCRDeserializationTime", "", buf, 2u);
  }

  return v15;
}

+ (id)documentWithRegions:(id)regions title:(id)title confidence:(unint64_t)confidence imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  titleCopy = title;
  regionsCopy = regions;
  v12 = [(CROutputRegion *)[CRDocumentOutputRegion alloc] initWithConfidence:confidence baselineAngle:0.0];
  [(CRDocumentOutputRegion *)v12 setTitle:titleCopy];

  height = [[CRNormalizedQuad alloc] initWithNormalizedBoundingBox:0.0 size:0.0, 1.0, 1.0, width, height];
  [(CROutputRegion *)v12 setBoundingQuad:height];

  [(CROutputRegion *)v12 setShouldComputeBoundsFromChildren:0];
  [(CRDocumentOutputRegion *)v12 setChildren:regionsCopy];

  [(CRDocumentOutputRegion *)v12 setDocumentRevision:1];

  return v12;
}

+ (id)documentWithLines:(id)lines title:(id)title confidence:(unint64_t)confidence imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  titleCopy = title;
  linesCopy = lines;
  v12 = [objc_opt_class() documentWithRegions:linesCopy title:titleCopy confidence:confidence imageSize:{width, height}];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(CRDocumentOutputRegion *)self title];

      if (title)
      {
        title2 = [(CRDocumentOutputRegion *)self title];
        title3 = [(CRDocumentOutputRegion *)v5 title];
        v9 = [title2 isEqual:title3];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        title4 = [(CRDocumentOutputRegion *)v5 title];

        if (title4)
        {
LABEL_11:
          v10 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      additionalMetadata = [(CRDocumentOutputRegion *)self additionalMetadata];
      additionalMetadata2 = [(CRDocumentOutputRegion *)v5 additionalMetadata];
      v14 = additionalMetadata2;
      if (additionalMetadata == additionalMetadata2)
      {
      }

      else
      {
        additionalMetadata3 = [(CRDocumentOutputRegion *)self additionalMetadata];
        additionalMetadata4 = [(CRDocumentOutputRegion *)v5 additionalMetadata];
        v17 = [additionalMetadata3 isEqual:additionalMetadata4];

        if (!v17)
        {
          goto LABEL_11;
        }
      }

      v19.receiver = self;
      v19.super_class = CRDocumentOutputRegion;
      v10 = [(CROutputRegion *)&v19 isEqual:v5];
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (void)setChildren:(id)children
{
  v4.receiver = self;
  v4.super_class = CRDocumentOutputRegion;
  [(CROutputRegion *)&v4 setChildren:children];
  [(CRDocumentOutputRegion *)self setCachedLayoutComponents:0];
}

- (CRDocumentOutputRegion)outputRegionWithContentsOfQuad:(id)quad
{
  v6.receiver = self;
  v6.super_class = CRDocumentOutputRegion;
  quadCopy = quad;
  v4 = [(CROutputRegion *)&v6 outputRegionWithContentsOfQuad:quadCopy];
  [v4 setBoundingQuad:{quadCopy, v6.receiver, v6.super_class}];

  return v4;
}

- (CRDocumentOutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
  if ([(CROutputRegion *)self shouldComputeBoundsFromChildren])
  {
    v12.receiver = self;
    v12.super_class = CRDocumentOutputRegion;
    v9 = [(CROutputRegion *)&v12 outputRegionWithContentsBetweenStartPoint:v7 endPoint:v6, x, y];
  }

  else
  {
    v10 = [(CRDocumentOutputRegion *)self copy];
    [v10 setShouldComputeBoundsFromChildren:1];
    v9 = [v10 outputRegionWithContentsBetweenStartPoint:v7 endPoint:{v6, x, y}];
  }

  return v9;
}

- (CRDocumentOutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(CROutputRegion *)self shouldComputeBoundsFromChildren])
  {
    v9.receiver = self;
    v9.super_class = CRDocumentOutputRegion;
    v6 = [(CROutputRegion *)&v9 outputRegionWithContentsOfCharacterRange:location, length];
  }

  else
  {
    v7 = [(CRDocumentOutputRegion *)self copyWithZone:0 copyChildren:1 copyCandidates:0 deepCopy:0];
    [v7 setShouldComputeBoundsFromChildren:1];
    v6 = [v7 outputRegionWithContentsOfCharacterRange:{location, length}];
  }

  return v6;
}

- (id)crCodableDataRepresentation
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v3 = CRSignpostLog_signPostOSLog;
  v4 = os_signpost_id_generate(v3);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v5 = CRSignpostLog_signPostOSLog;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "OCRSerializationTime", "", buf, 2u);
  }

  v7 = MEMORY[0x1E695DF88];
  v15.receiver = self;
  v15.super_class = CRDocumentOutputRegion;
  crCodableDataRepresentation = [(CROutputRegion *)&v15 crCodableDataRepresentation];
  v9 = [v7 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendInteger:1 toData:v9];
  title = [(CRDocumentOutputRegion *)self title];
  [CRCodingUtilities appendCodable:title toData:v9];

  [CRCodingUtilities appendUInteger:1 toData:v9];
  additionalMetadata = [(CRDocumentOutputRegion *)self additionalMetadata];
  [CRCodingUtilities appendCodable:additionalMetadata toData:v9];

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v12 = CRSignpostLog_signPostOSLog;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v13, OS_SIGNPOST_INTERVAL_END, v4, "OCRSerializationTime", "", buf, 2u);
  }

  return v9;
}

- (BOOL)shouldReprocessDocument
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CRDocumentOutputRegion *)self documentRevision]== 1 && self)
  {
    additionalMetadata = [(CRDocumentOutputRegion *)self additionalMetadata];

    if (additionalMetadata)
    {
      v4 = [(CROutputRegion *)self contentsWithTypes:8];
      additionalMetadata = [v4 count];
      additionalMetadata2 = [(CRDocumentOutputRegion *)self additionalMetadata];
      numFilteredRegions = [additionalMetadata2 numFilteredRegions];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        v11 = numFilteredRegions;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v15 + 1) + 8 * i) rawConfidence];
            if (v13 <= 0.6)
            {
              ++v11;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = numFilteredRegions;
      }

      LOBYTE(additionalMetadata) = (v11 / (additionalMetadata + numFilteredRegions)) >= 0.75;
    }
  }

  else
  {
    LOBYTE(additionalMetadata) = 0;
  }

  return additionalMetadata;
}

- (void)collectMetadataForNumFilteredRegions:(int64_t)regions
{
  v5 = objc_opt_new();
  [v5 setNumFilteredRegions:regions];
  [(CRDocumentOutputRegion *)self setAdditionalMetadata:v5];
}

- (unint64_t)formness
{
  v25 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CRDocumentOutputRegion_formness__block_invoke;
  v7[3] = &unk_1E7BC2850;
  v7[4] = &v12;
  v7[5] = v16;
  v7[6] = &v8;
  [(CROutputRegion *)self enumerateContentsWithTypes:0x2000 usingBlock:v7];
  if (v9[3])
  {
    v2 = 2;
  }

  else
  {
    v2 = v13[3] != 0;
  }

  v3 = CROSLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v13[3];
    v5 = v9[3];
    *buf = 136315906;
    v18 = "[CRDocumentOutputRegion formness]";
    v19 = 2048;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v2;
    _os_log_impl(&dword_1B40D2000, v3, OS_LOG_TYPE_DEFAULT, "%s: #fields:%lu #boundedAutoFillable:%lu result:%lu", buf, 0x2Au);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  return v2;
}

void __34__CRDocumentOutputRegion_formness__block_invoke(void *a1, void *a2)
{
  v4 = a2;
  if ([v4 fieldSource] == 1)
  {
    ++*(*(a1[4] + 8) + 24);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
      if ([v3 fieldType] == 1)
      {
        if (+[CRFormContentTypeUtilities contentTypeIsAutoFillable:](CRFormContentTypeUtilities, "contentTypeIsAutoFillable:", [v3 textContentType]))
        {
          ++*(*(a1[5] + 8) + 24);
          if (([v3 hasBoundedWidth] & 1) != 0 || objc_msgSend(v3, "hasBoundedHeight"))
          {
            ++*(*(a1[6] + 8) + 24);
          }
        }
      }
    }
  }
}

- (id)detectedFieldRegionsExcludingFields:(id)fields updateExcludedFields:(BOOL)excludedFields
{
  excludedFieldsCopy = excludedFields;
  v16 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v7 = CROSLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CRDocumentOutputRegion detectedFieldRegionsExcludingFields:updateExcludedFields:]";
    v12 = 2048;
    v13 = [fieldsCopy count];
    v14 = 1024;
    v15 = excludedFieldsCopy;
    _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEFAULT, "%s: #fields:%lu updateExcludedFields:%d", &v10, 0x1Cu);
  }

  v8 = [CRFormUtilities detectedFieldRegionsInDocument:self excludingFields:fieldsCopy updateExcludedFields:excludedFieldsCopy];

  return v8;
}

- (id)proposedFieldForPoint:(CGPoint)point existingFields:(id)fields
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v8 = CROSLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315906;
    v24 = "[CRDocumentOutputRegion proposedFieldForPoint:existingFields:]";
    v25 = 2048;
    v26 = x;
    v27 = 2048;
    v28 = y;
    v29 = 2048;
    v30 = [fieldsCopy count];
    _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEFAULT, "%s: x:%lf y:%lf #existingFields:%lu", &v23, 0x2Au);
  }

  v9 = [CRFormUtilities proposedFieldForPoint:self inDocument:fieldsCopy existingFields:x, y];
  v10 = CROSLogForCategory(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    boundingQuad = [v9 boundingQuad];
    [boundingQuad boundingBox];
    v13 = v12;
    boundingQuad2 = [v9 boundingQuad];
    [boundingQuad2 boundingBox];
    v16 = v15;
    boundingQuad3 = [v9 boundingQuad];
    [boundingQuad3 boundingBox];
    v19 = v18;
    boundingQuad4 = [v9 boundingQuad];
    [boundingQuad4 boundingBox];
    v23 = 136316162;
    v24 = "[CRDocumentOutputRegion proposedFieldForPoint:existingFields:]";
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v16;
    v29 = 2048;
    v30 = v19;
    v31 = 2048;
    v32 = v21;
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEFAULT, "%s: output: x:%lf y:%lf w:%lf h:%lf", &v23, 0x34u);
  }

  return v9;
}

- (id)layoutComponents
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  cachedLayoutComponents = [(CRDocumentOutputRegion *)self cachedLayoutComponents];

  if (!cachedLayoutComponents)
  {
    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v4 = CRSignpostLog_signPostOSLog;
    v5 = os_signpost_id_generate(v4);

    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v6 = CRSignpostLog_signPostOSLog;
    v7 = v6;
    v8 = v5 - 1;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OCRLayoutAnalysisTime", "", buf, 2u);
    }

    v36 = objc_opt_new();
    v9 = [(CROutputRegion *)selfCopy contentsWithTypes:64];
    v10 = [(CROutputRegion *)selfCopy contentsWithTypes:256];
    v34 = [(CROutputRegion *)selfCopy contentsWithTypes:4];
    v35 = v10;
    v11 = [v34 arrayByAddingObjectsFromArray:v10];
    v40 = [v11 arrayByAddingObjectsFromArray:v9];

    [(CROutputRegion *)selfCopy contentsWithTypes:8];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v12 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v30 = v5 - 1;
      v31 = v9;
      v32 = v5;
      v33 = selfCopy;
      v38 = 0;
      v39 = *v46;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = v40;
          v17 = [v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v42;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v42 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v41 + 1) + 8 * j);
                v23 = [v22 contentsWithTypes:8];
                if ([v23 containsObject:v15])
                {
                  v24 = v22;

                  v19 = v24;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v18);

            if (v19)
            {
              objc_opt_class();
              v38 |= objc_opt_isKindOfClass();
              [v36 addObject:v19];
              goto LABEL_28;
            }
          }

          else
          {
          }

          v19 = CROSLogForCategory(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_FAULT, "Encountered a line that doesn't belong in a layout component", buf, 2u);
          }

LABEL_28:
        }

        v13 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (!v13)
        {
          v5 = v32;
          selfCopy = v33;
          v8 = v30;
          v9 = v31;
          if (v38)
          {
            [(CROutputRegion *)v33 _invalidateTranscriptRecursivelyThrough:objc_opt_class()];
          }

          break;
        }
      }
    }

    array = [v36 array];
    [(CRDocumentOutputRegion *)selfCopy setCachedLayoutComponents:array];

    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v26 = CRSignpostLog_signPostOSLog;
    v27 = v26;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v27, OS_SIGNPOST_INTERVAL_END, v5, "OCRLayoutAnalysisTime", "", buf, 2u);
    }
  }

  cachedLayoutComponents2 = [(CRDocumentOutputRegion *)selfCopy cachedLayoutComponents];

  return cachedLayoutComponents2;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v12.receiver = self;
  v12.super_class = CRDocumentOutputRegion;
  v7 = [(CROutputRegion *)&v12 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  title = [(CRDocumentOutputRegion *)self title];
  [v7 setTitle:title];

  additionalMetadata = [(CRDocumentOutputRegion *)self additionalMetadata];
  v10 = [additionalMetadata copy];
  [v7 setAdditionalMetadata:v10];

  return v7;
}

+ (id)groupedParagraphBlocksFromParagraphs:(id)paragraphs
{
  v31 = *MEMORY[0x1E69E9840];
  paragraphsCopy = paragraphs;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [paragraphsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(paragraphsCopy);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        trackingID = [v8 trackingID];

        if (!trackingID)
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          [v8 setTrackingID:uUID];
        }
      }

      v5 = [paragraphsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v11 = [CRTrackedRegionGroup groupsFromOutputRegions:paragraphsCopy];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [CRTrackedDocumentOutputRegion _blockFromTrackedRegionGroup:4 trackedType:?];
        [v12 addObject:{v18, v21}];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];

  return v19;
}

- (id)trackingDocumentWithTrackedType:(unint64_t)type includeLines:(BOOL)lines
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = 2;
  if (lines)
  {
    v6 = 10;
  }

  type = [(CROutputRegion *)self copyIncludingChildrenOfTypes:v6 | type];
  children = [type children];
  v9 = children;
  if (type != 2)
  {
    v26 = children;
    v10 = objc_opt_new();
    v11 = [type contentsWithTypes:type];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [CRTrackedDocumentOutputRegion _blockFromRegion:type trackedType:?];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v9 = [v10 copy];
  }

  v17 = [CRTrackedDocumentOutputRegion alloc];
  confidence = [(CROutputRegion *)self confidence];
  [(CROutputRegion *)self baselineAngle];
  v19 = [(CROutputRegion *)v17 initWithConfidence:confidence baselineAngle:?];
  v20 = v19;
  if (v19)
  {
    v19->_trackedRegionType = type;
    [(CROutputRegion *)v19 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v20 setShouldComputeParagraphsFromChildren:0];
    text = [type text];
    [(CROutputRegion *)v20 setText:text];

    [(CRDocumentOutputRegion *)v20 setChildren:v9];
    paragraphRegions = [type paragraphRegions];
    [(CROutputRegion *)v20 setParagraphRegions:paragraphRegions];

    v20->_trackedRegionType = type;
  }

  else
  {
    [0 setShouldComputeBoundsFromChildren:0];
    [0 setShouldComputeParagraphsFromChildren:0];
    text2 = [type text];
    [0 setText:text2];

    [0 setChildren:v9];
    paragraphRegions2 = [type paragraphRegions];
    [0 setParagraphRegions:paragraphRegions2];
  }

  return v20;
}

- (id)writeToFileInFolder:(id)folder basename:(id)basename
{
  v29 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  basenameCopy = basename;
  v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
  absoluteString = [folderCopy absoluteString];
  v10 = [v8 fileExistsAtPath:absoluteString];

  if (v10)
  {
    v11 = 0;
LABEL_4:
    v13 = v11;
    v14 = [folderCopy URLByAppendingPathComponent:basenameCopy];
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v21 = v11;
    [v15 writeToURL:v14 options:1 error:&v21];
    v11 = v21;

    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString2 = [v14 absoluteString];
      v18 = [v11 description];
      *buf = 136315650;
      v24 = "[CRDocumentOutputRegion writeToFileInFolder:basename:]";
      v25 = 2112;
      v26 = absoluteString2;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_DEFAULT, "%s: saving document output at URL %@, error = %@", buf, 0x20u);
    }

    if (v11)
    {
      absoluteString3 = 0;
    }

    else
    {
      absoluteString3 = [v14 absoluteString];
    }

    goto LABEL_13;
  }

  v22 = 0;
  v12 = [v8 createDirectoryAtURL:folderCopy withIntermediateDirectories:1 attributes:0 error:&v22];
  v11 = v22;
  if (v12)
  {
    goto LABEL_4;
  }

  v14 = CROSLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v24 = "[CRDocumentOutputRegion writeToFileInFolder:basename:]";
    v25 = 2112;
    v26 = folderCopy;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_ERROR, "%s: Unable to create folder at URL %@: Error %@", buf, 0x20u);
  }

  absoluteString3 = 0;
LABEL_13:

  return absoluteString3;
}

@end