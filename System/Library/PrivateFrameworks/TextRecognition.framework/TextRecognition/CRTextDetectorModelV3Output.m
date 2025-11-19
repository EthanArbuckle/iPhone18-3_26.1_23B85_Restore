@interface CRTextDetectorModelV3Output
+ (id)multiArrayForOutput:(id)a3 inNamedObjects:(id)a4 fromFunctionDescriptor:(id)a5 error:(id *)a6;
+ (id)shapeExcludingBatch:(id)a3;
+ (id)stridesExcludingBatch:(id)a3;
- (CRTextDetectorModelV3Output)init;
- (CRTextDetectorModelV3Output)initWithRegion_score:(id)a3 script_feature:(id)a4 link_score_horizontal:(id)a5 link_score_vertical:(id)a6 orientation_score:(id)a7 text_type_score:(id)a8 table_score:(id)a9;
- (CRTextDetectorModelV3Output)initWithVisionCoreNamedObjects:(id)a3 fromFunctionDescriptor:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation CRTextDetectorModelV3Output

+ (id)shapeExcludingBatch:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 shape];
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v3 shape];
  v7 = [v6 objectAtIndexedSubscript:2];
  v12[1] = v7;
  v8 = [v3 shape];

  v9 = [v8 objectAtIndexedSubscript:3];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  return v10;
}

+ (id)stridesExcludingBatch:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 strides];
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v3 strides];
  v7 = [v6 objectAtIndexedSubscript:2];
  v12[1] = v7;
  v8 = [v3 strides];

  v9 = [v8 objectAtIndexedSubscript:3];
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

- (CRTextDetectorModelV3Output)initWithRegion_score:(id)a3 script_feature:(id)a4 link_score_horizontal:(id)a5 link_score_vertical:(id)a6 orientation_score:(id)a7 text_type_score:(id)a8 table_score:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v100.receiver = self;
  v100.super_class = CRTextDetectorModelV3Output;
  v22 = [(CRTextDetectorModelV3Output *)&v100 init];
  if (v22)
  {
    v23 = [v15 shape];
    v24 = [v23 count];

    if (v24 == 4)
    {
      v90 = v20;
      v88 = objc_alloc(MEMORY[0x1E695FED0]);
      v25 = [v15 dataPointer];
      [CRTextDetectorModelV3Output shapeExcludingBatch:v15];
      v27 = v26 = v15;
      v91 = v21;
      v28 = [v26 dataType];
      v85 = v26;
      [CRTextDetectorModelV3Output stridesExcludingBatch:v26];
      v30 = v29 = v17;
      v98 = 0;
      v31 = [v88 initWithDataPointer:v25 shape:v27 dataType:v28 strides:v30 deallocator:0 error:&v98];
      v32 = v98;
      region_score = v22->_region_score;
      v22->_region_score = v31;

      v34 = objc_alloc(MEMORY[0x1E695FED0]);
      v35 = [v16 dataPointer];
      v36 = [CRTextDetectorModelV3Output shapeExcludingBatch:v16];
      v37 = [v16 dataType];
      v86 = v16;
      [CRTextDetectorModelV3Output stridesExcludingBatch:v16];
      v39 = v38 = v18;
      v97 = v32;
      v40 = [v34 initWithDataPointer:v35 shape:v36 dataType:v37 strides:v39 deallocator:0 error:&v97];
      v41 = v97;

      script_feature = v22->_script_feature;
      v22->_script_feature = v40;

      v43 = objc_alloc(MEMORY[0x1E695FED0]);
      v44 = [v29 dataPointer];
      v45 = [CRTextDetectorModelV3Output shapeExcludingBatch:v29];
      v46 = [v29 dataType];
      v89 = v29;
      v47 = [CRTextDetectorModelV3Output stridesExcludingBatch:v29];
      v96 = v41;
      v48 = [v43 initWithDataPointer:v44 shape:v45 dataType:v46 strides:v47 deallocator:0 error:&v96];
      v49 = v96;

      link_score_horizontal = v22->_link_score_horizontal;
      v22->_link_score_horizontal = v48;

      v51 = objc_alloc(MEMORY[0x1E695FED0]);
      v52 = [v38 dataPointer];
      v53 = [CRTextDetectorModelV3Output shapeExcludingBatch:v38];
      v54 = [v38 dataType];
      v87 = v38;
      v55 = [CRTextDetectorModelV3Output stridesExcludingBatch:v38];
      v95 = v49;
      v56 = [v51 initWithDataPointer:v52 shape:v53 dataType:v54 strides:v55 deallocator:0 error:&v95];
      v57 = v95;

      link_score_vertical = v22->_link_score_vertical;
      v22->_link_score_vertical = v56;

      v59 = objc_alloc(MEMORY[0x1E695FED0]);
      v60 = [v19 dataPointer];
      v61 = [CRTextDetectorModelV3Output shapeExcludingBatch:v19];
      v62 = [v19 dataType];
      v63 = [CRTextDetectorModelV3Output stridesExcludingBatch:v19];
      v94 = v57;
      v64 = [v59 initWithDataPointer:v60 shape:v61 dataType:v62 strides:v63 deallocator:0 error:&v94];
      v65 = v94;

      orientation_score = v22->_orientation_score;
      v22->_orientation_score = v64;

      if (v91)
      {
        v67 = objc_alloc(MEMORY[0x1E695FED0]);
        v68 = [v91 dataPointer];
        v69 = [CRTextDetectorModelV3Output shapeExcludingBatch:v91];
        v70 = [v91 dataType];
        v71 = [CRTextDetectorModelV3Output stridesExcludingBatch:v91];
        v93 = v65;
        v72 = [v67 initWithDataPointer:v68 shape:v69 dataType:v70 strides:v71 deallocator:0 error:&v93];
        v73 = v93;

        table_score = v22->_table_score;
        v22->_table_score = v72;

        v65 = v73;
      }

      v15 = v85;
      v16 = v86;
      v20 = v90;
      if (v90)
      {
        v75 = objc_alloc(MEMORY[0x1E695FED0]);
        v76 = [v90 dataPointer];
        v77 = [CRTextDetectorModelV3Output shapeExcludingBatch:v90];
        v78 = [v90 dataType];
        v79 = [CRTextDetectorModelV3Output stridesExcludingBatch:v86];
        v92 = v65;
        v80 = v78;
        v20 = v90;
        v81 = [v75 initWithDataPointer:v76 shape:v77 dataType:v80 strides:v79 deallocator:0 error:&v92];
        v82 = v92;

        text_type_score = v22->_text_type_score;
        v22->_text_type_score = v81;

        v65 = v82;
      }

      v18 = v87;
      v17 = v89;
      v21 = v91;
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

+ (id)multiArrayForOutput:(id)a3 inNamedObjects:(id)a4 fromFunctionDescriptor:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 outputNamed:v9 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 shape];
    v15 = [v13 strides];
    v16 = [v13 dataType];
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
    v31 = v16;
    v17 = v14;
    v28 = v17;
    v18 = v15;
    v29 = v18;
    v30 = &v32;
    v19 = _Block_copy(&v24);
    v20 = [v13 name];
    v21 = [v10 accessReadOnlyDataForName:v20 usingBlock:v19 error:a6];

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

- (CRTextDetectorModelV3Output)initWithVisionCoreNamedObjects:(id)a3 fromFunctionDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = CRTextDetectorModelV3Output;
  v8 = [(CRTextDetectorModelV3Output *)&v39 init];
  if (!v8 || (v38 = 0, [CRTextDetectorModelV3Output multiArrayForOutput:@"region_score" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v38], v9 = objc_claimAutoreleasedReturnValue(), v10 = v38, region_score = v8->_region_score, v8->_region_score = v9, region_score, v37 = v10, [CRTextDetectorModelV3Output multiArrayForOutput:@"script_feature" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v37], v12 = objc_claimAutoreleasedReturnValue(), v13 = v37, v10, script_feature = v8->_script_feature, v8->_script_feature = v12, script_feature, v36 = v13, [CRTextDetectorModelV3Output multiArrayForOutput:@"link_score_horizontal" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v36], v15 = objc_claimAutoreleasedReturnValue(), v16 = v36, v13, link_score_horizontal = v8->_link_score_horizontal, v8->_link_score_horizontal = v15, link_score_horizontal, v35 = v16, [CRTextDetectorModelV3Output multiArrayForOutput:@"link_score_vertical" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v35], v18 = objc_claimAutoreleasedReturnValue(), v19 = v35, v16, link_score_vertical = v8->_link_score_vertical, v8->_link_score_vertical = v18, link_score_vertical, v34 = v19, [CRTextDetectorModelV3Output multiArrayForOutput:@"orientation_score" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v34], v21 = objc_claimAutoreleasedReturnValue(), v22 = v34, v19, orientation_score = v8->_orientation_score, v8->_orientation_score = v21, orientation_score, v33 = v22, [CRTextDetectorModelV3Output multiArrayForOutput:@"table_score" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v33], v24 = objc_claimAutoreleasedReturnValue(), v25 = v33, v22, table_score = v8->_table_score, v8->_table_score = v24, table_score, v32 = v25, [CRTextDetectorModelV3Output multiArrayForOutput:@"text_type_score" inNamedObjects:v6 fromFunctionDescriptor:v7 error:&v32], v27 = objc_claimAutoreleasedReturnValue(), v28 = v32, v25, text_type_score = v8->_text_type_score, v8->_text_type_score = v27, text_type_score, v28, v30 = 0, !v28))
  {
    v30 = v8;
  }

  return v30;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"region_score"])
  {
    v5 = 8;
LABEL_15:
    v6 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"script_feature"])
  {
    v5 = 16;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"orientation_score"])
  {
    v5 = 48;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"text_type_score"])
  {
    v5 = 56;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"link_score_horizontal"])
  {
    v5 = 24;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"link_score_vertical"])
  {
    v5 = 32;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"table_score"])
  {
    v5 = 40;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

@end