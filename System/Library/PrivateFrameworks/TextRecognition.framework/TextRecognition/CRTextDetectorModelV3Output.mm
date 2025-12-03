@interface CRTextDetectorModelV3Output
+ (id)multiArrayForOutput:(id)output inNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor error:(id *)error;
+ (id)shapeExcludingBatch:(id)batch;
+ (id)stridesExcludingBatch:(id)batch;
- (CRTextDetectorModelV3Output)init;
- (CRTextDetectorModelV3Output)initWithRegion_score:(id)region_score script_feature:(id)script_feature link_score_horizontal:(id)link_score_horizontal link_score_vertical:(id)link_score_vertical orientation_score:(id)orientation_score text_type_score:(id)text_type_score table_score:(id)table_score;
- (CRTextDetectorModelV3Output)initWithVisionCoreNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor;
- (id)featureValueForName:(id)name;
@end

@implementation CRTextDetectorModelV3Output

+ (id)shapeExcludingBatch:(id)batch
{
  v12[3] = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  shape = [batchCopy shape];
  v5 = [shape objectAtIndexedSubscript:1];
  shape2 = [batchCopy shape];
  v7 = [shape2 objectAtIndexedSubscript:2];
  v12[1] = v7;
  shape3 = [batchCopy shape];

  v9 = [shape3 objectAtIndexedSubscript:3];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  return v10;
}

+ (id)stridesExcludingBatch:(id)batch
{
  v12[3] = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  strides = [batchCopy strides];
  v5 = [strides objectAtIndexedSubscript:1];
  strides2 = [batchCopy strides];
  v7 = [strides2 objectAtIndexedSubscript:2];
  v12[1] = v7;
  strides3 = [batchCopy strides];

  v9 = [strides3 objectAtIndexedSubscript:3];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  return v10;
}

- (CRTextDetectorModelV3Output)init
{
  v3.receiver = self;
  v3.super_class = CRTextDetectorModelV3Output;
  return [(CRTextDetectorModelV3Output *)&v3 init];
}

- (CRTextDetectorModelV3Output)initWithRegion_score:(id)region_score script_feature:(id)script_feature link_score_horizontal:(id)link_score_horizontal link_score_vertical:(id)link_score_vertical orientation_score:(id)orientation_score text_type_score:(id)text_type_score table_score:(id)table_score
{
  region_scoreCopy = region_score;
  script_featureCopy = script_feature;
  link_score_horizontalCopy = link_score_horizontal;
  link_score_verticalCopy = link_score_vertical;
  orientation_scoreCopy = orientation_score;
  text_type_scoreCopy = text_type_score;
  table_scoreCopy = table_score;
  v100.receiver = self;
  v100.super_class = CRTextDetectorModelV3Output;
  v22 = [(CRTextDetectorModelV3Output *)&v100 init];
  if (v22)
  {
    shape = [region_scoreCopy shape];
    v24 = [shape count];

    if (v24 == 4)
    {
      v90 = text_type_scoreCopy;
      v88 = objc_alloc(MEMORY[0x1E695FED0]);
      dataPointer = [region_scoreCopy dataPointer];
      [CRTextDetectorModelV3Output shapeExcludingBatch:region_scoreCopy];
      v27 = v26 = region_scoreCopy;
      v91 = table_scoreCopy;
      dataType = [v26 dataType];
      v85 = v26;
      [CRTextDetectorModelV3Output stridesExcludingBatch:v26];
      v30 = v29 = link_score_horizontalCopy;
      v98 = 0;
      v31 = [v88 initWithDataPointer:dataPointer shape:v27 dataType:dataType strides:v30 deallocator:0 error:&v98];
      v32 = v98;
      region_score = v22->_region_score;
      v22->_region_score = v31;

      v34 = objc_alloc(MEMORY[0x1E695FED0]);
      dataPointer2 = [script_featureCopy dataPointer];
      v36 = [CRTextDetectorModelV3Output shapeExcludingBatch:script_featureCopy];
      dataType2 = [script_featureCopy dataType];
      v86 = script_featureCopy;
      [CRTextDetectorModelV3Output stridesExcludingBatch:script_featureCopy];
      v39 = v38 = link_score_verticalCopy;
      v97 = v32;
      v40 = [v34 initWithDataPointer:dataPointer2 shape:v36 dataType:dataType2 strides:v39 deallocator:0 error:&v97];
      v41 = v97;

      script_feature = v22->_script_feature;
      v22->_script_feature = v40;

      v43 = objc_alloc(MEMORY[0x1E695FED0]);
      dataPointer3 = [v29 dataPointer];
      v45 = [CRTextDetectorModelV3Output shapeExcludingBatch:v29];
      dataType3 = [v29 dataType];
      v89 = v29;
      v47 = [CRTextDetectorModelV3Output stridesExcludingBatch:v29];
      v96 = v41;
      v48 = [v43 initWithDataPointer:dataPointer3 shape:v45 dataType:dataType3 strides:v47 deallocator:0 error:&v96];
      v49 = v96;

      link_score_horizontal = v22->_link_score_horizontal;
      v22->_link_score_horizontal = v48;

      v51 = objc_alloc(MEMORY[0x1E695FED0]);
      dataPointer4 = [v38 dataPointer];
      v53 = [CRTextDetectorModelV3Output shapeExcludingBatch:v38];
      dataType4 = [v38 dataType];
      v87 = v38;
      v55 = [CRTextDetectorModelV3Output stridesExcludingBatch:v38];
      v95 = v49;
      v56 = [v51 initWithDataPointer:dataPointer4 shape:v53 dataType:dataType4 strides:v55 deallocator:0 error:&v95];
      v57 = v95;

      link_score_vertical = v22->_link_score_vertical;
      v22->_link_score_vertical = v56;

      v59 = objc_alloc(MEMORY[0x1E695FED0]);
      dataPointer5 = [orientation_scoreCopy dataPointer];
      v61 = [CRTextDetectorModelV3Output shapeExcludingBatch:orientation_scoreCopy];
      dataType5 = [orientation_scoreCopy dataType];
      v63 = [CRTextDetectorModelV3Output stridesExcludingBatch:orientation_scoreCopy];
      v94 = v57;
      v64 = [v59 initWithDataPointer:dataPointer5 shape:v61 dataType:dataType5 strides:v63 deallocator:0 error:&v94];
      v65 = v94;

      orientation_score = v22->_orientation_score;
      v22->_orientation_score = v64;

      if (v91)
      {
        v67 = objc_alloc(MEMORY[0x1E695FED0]);
        dataPointer6 = [v91 dataPointer];
        v69 = [CRTextDetectorModelV3Output shapeExcludingBatch:v91];
        dataType6 = [v91 dataType];
        v71 = [CRTextDetectorModelV3Output stridesExcludingBatch:v91];
        v93 = v65;
        v72 = [v67 initWithDataPointer:dataPointer6 shape:v69 dataType:dataType6 strides:v71 deallocator:0 error:&v93];
        v73 = v93;

        table_score = v22->_table_score;
        v22->_table_score = v72;

        v65 = v73;
      }

      region_scoreCopy = v85;
      script_featureCopy = v86;
      text_type_scoreCopy = v90;
      if (v90)
      {
        v75 = objc_alloc(MEMORY[0x1E695FED0]);
        dataPointer7 = [v90 dataPointer];
        v77 = [CRTextDetectorModelV3Output shapeExcludingBatch:v90];
        dataType7 = [v90 dataType];
        v79 = [CRTextDetectorModelV3Output stridesExcludingBatch:v86];
        v92 = v65;
        v80 = dataType7;
        text_type_scoreCopy = v90;
        v81 = [v75 initWithDataPointer:dataPointer7 shape:v77 dataType:v80 strides:v79 deallocator:0 error:&v92];
        v82 = v92;

        text_type_score = v22->_text_type_score;
        v22->_text_type_score = v81;

        v65 = v82;
      }

      link_score_verticalCopy = v87;
      link_score_horizontalCopy = v89;
      table_scoreCopy = v91;
    }

    else
    {

      v65 = CROSLogForCategory(0);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v65, OS_LOG_TYPE_FAULT, "Please check the detector model you are using! It should return a 4D tensor", buf, 2u);
      }

      v22 = 0;
    }
  }

  return v22;
}

+ (id)multiArrayForOutput:(id)output inNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor error:(id *)error
{
  outputCopy = output;
  objectsCopy = objects;
  descriptorCopy = descriptor;
  v12 = [descriptorCopy outputNamed:outputCopy error:error];
  v13 = v12;
  if (v12)
  {
    shape = [v12 shape];
    strides = [v13 strides];
    dataType = [v13 dataType];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__4;
    v36 = __Block_byref_object_dispose__4;
    v37 = 0;
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __95__CRTextDetectorModelV3Output_multiArrayForOutput_inNamedObjects_fromFunctionDescriptor_error___block_invoke;
    v27 = &unk_1E7BC2708;
    v31 = dataType;
    v17 = shape;
    v28 = v17;
    v18 = strides;
    v29 = v18;
    v30 = &v32;
    v19 = _Block_copy(&v24);
    name = [v13 name];
    v21 = [objectsCopy accessReadOnlyDataForName:name usingBlock:v19 error:error];

    if (v21)
    {
      v22 = v33[5];
    }

    else
    {
      v22 = 0;
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __95__CRTextDetectorModelV3Output_multiArrayForOutput_inNamedObjects_fromFunctionDescriptor_error___block_invoke(uint64_t a1, id a2)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a2;
  v6 = [v5 bytes];
  v7 = *(a1 + 56);
  v8 = [v5 length];
  if (v7 == 65552)
  {
    v9 = malloc_type_calloc(2 * v8, 1uLL, 0xF1FF7AA1uLL);
    v10 = [v5 length];

    CRConvertFloat16BufferToFloat32Buffer(v6, v9, v10 >> 1, 0);
  }

  else
  {
    v9 = malloc_type_calloc(v8, 1uLL, 0x63BD1C70uLL);
    v11 = [v5 length];

    memcpy(v6, v9, v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(objc_msgSend(*(a1 + 32), "sizes") + 8)}];
  v25[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(objc_msgSend(*(a1 + 32), "sizes") + 16)}];
  v25[1] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(objc_msgSend(*(a1 + 32), "sizes") + 24)}];
  v25[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

  v16 = [MEMORY[0x1E696AD98] numberWithLong:{*(objc_msgSend(*(a1 + 40), "byteOffsets") + 8) / 2}];
  v24[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithLong:{*(objc_msgSend(*(a1 + 40), "byteOffsets") + 16) / 2}];
  v24[1] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithLong:{*(objc_msgSend(*(a1 + 40), "byteOffsets") + 24) / 2}];
  v24[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  v20 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:v9 shape:v15 dataType:65568 strides:v19 deallocator:&__block_literal_global_6 error:0];
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  return 1;
}

- (CRTextDetectorModelV3Output)initWithVisionCoreNamedObjects:(id)objects fromFunctionDescriptor:(id)descriptor
{
  objectsCopy = objects;
  descriptorCopy = descriptor;
  v39.receiver = self;
  v39.super_class = CRTextDetectorModelV3Output;
  v8 = [(CRTextDetectorModelV3Output *)&v39 init];
  if (!v8 || (v38 = 0, [CRTextDetectorModelV3Output multiArrayForOutput:@"region_score" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v38], v9 = objc_claimAutoreleasedReturnValue(), v10 = v38, region_score = v8->_region_score, v8->_region_score = v9, region_score, v37 = v10, [CRTextDetectorModelV3Output multiArrayForOutput:@"script_feature" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v37], v12 = objc_claimAutoreleasedReturnValue(), v13 = v37, v10, script_feature = v8->_script_feature, v8->_script_feature = v12, script_feature, v36 = v13, [CRTextDetectorModelV3Output multiArrayForOutput:@"link_score_horizontal" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v36], v15 = objc_claimAutoreleasedReturnValue(), v16 = v36, v13, link_score_horizontal = v8->_link_score_horizontal, v8->_link_score_horizontal = v15, link_score_horizontal, v35 = v16, [CRTextDetectorModelV3Output multiArrayForOutput:@"link_score_vertical" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v35], v18 = objc_claimAutoreleasedReturnValue(), v19 = v35, v16, link_score_vertical = v8->_link_score_vertical, v8->_link_score_vertical = v18, link_score_vertical, v34 = v19, [CRTextDetectorModelV3Output multiArrayForOutput:@"orientation_score" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v34], v21 = objc_claimAutoreleasedReturnValue(), v22 = v34, v19, orientation_score = v8->_orientation_score, v8->_orientation_score = v21, orientation_score, v33 = v22, [CRTextDetectorModelV3Output multiArrayForOutput:@"table_score" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v33], v24 = objc_claimAutoreleasedReturnValue(), v25 = v33, v22, table_score = v8->_table_score, v8->_table_score = v24, table_score, v32 = v25, [CRTextDetectorModelV3Output multiArrayForOutput:@"text_type_score" inNamedObjects:objectsCopy fromFunctionDescriptor:descriptorCopy error:&v32], v27 = objc_claimAutoreleasedReturnValue(), v28 = v32, v25, text_type_score = v8->_text_type_score, v8->_text_type_score = v27, text_type_score, v28, v30 = 0, !v28))
  {
    v30 = v8;
  }

  return v30;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"region_score"])
  {
    v5 = 8;
LABEL_15:
    v6 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"script_feature"])
  {
    v5 = 16;
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"orientation_score"])
  {
    v5 = 48;
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"text_type_score"])
  {
    v5 = 56;
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"link_score_horizontal"])
  {
    v5 = 24;
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"link_score_vertical"])
  {
    v5 = 32;
    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"table_score"])
  {
    v5 = 40;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

@end