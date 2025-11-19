@interface PFCameraMetadataSerialization
+ (id)deserializedMetadataFromCameraClientMetadata:(id)a3 error:(id *)a4;
+ (id)deserializedMetadataFromData:(id)a3 error:(id *)a4;
+ (id)deserializedMetadataFromPrivateClientMetadata:(id)a3 error:(id *)a4;
+ (id)serializedDataFromClientMetadata:(id)a3 contactIDsInProximity:(id)a4 sharedLibraryMode:(int64_t)a5 error:(id *)a6;
+ (id)serializedDataFromClientMetadata:(id)a3 error:(id *)a4;
@end

@implementation PFCameraMetadataSerialization

+ (id)serializedDataFromClientMetadata:(id)a3 contactIDsInProximity:(id)a4 sharedLibraryMode:(int64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[PFCameraClientMetadata alloc] initWithPrivateClientMetadata:v11 contactIDsInProximity:v10 sharedLibraryMode:a5];

  v13 = [a1 serializedDataFromCameraClientMetadata:v12 error:a6];

  return v13;
}

+ (id)serializedDataFromClientMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[PFCameraClientMetadata alloc] initWithPrivateClientMetadata:v6 contactIDsInProximity:0 sharedLibraryMode:0];

  v8 = [a1 serializedDataFromCameraClientMetadata:v7 error:a4];

  return v8;
}

+ (id)deserializedMetadataFromCameraClientMetadata:(id)a3 error:(id *)a4
{
  v149 = *MEMORY[0x1E69E9840];
  v84 = a3;
  v88 = [v84 privateClientMetadata];
  v90 = [v88 inferenceAttachments];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  VNClassificationObservationClass = getVNClassificationObservationClass();
  v139 = 0;
  v140 = &v139;
  v141 = 0x2050000000;
  v11 = getVNImageAestheticsObservationClass_softClass;
  v142 = getVNImageAestheticsObservationClass_softClass;
  if (!getVNImageAestheticsObservationClass_softClass)
  {
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __getVNImageAestheticsObservationClass_block_invoke;
    v138[3] = &unk_1E7B65660;
    v138[4] = &v139;
    __getVNImageAestheticsObservationClass_block_invoke(v138);
    v11 = v140[3];
  }

  v105 = v4;
  v108 = v5;
  v12 = v11;
  _Block_object_dispose(&v139, 8);
  VNSaliencyImageObservationClass = getVNSaliencyImageObservationClass();
  VNSceneObservationClass = getVNSceneObservationClass();
  VNObservationClass = getVNObservationClass();
  VNRecognizedObjectObservationClass = getVNRecognizedObjectObservationClass();
  v85 = [v105 setWithObjects:{v108, v6, v7, v8, v9, VNClassificationObservationClass, v11, VNSaliencyImageObservationClass, VNSceneObservationClass, VNObservationClass, VNRecognizedObjectObservationClass, getVNFaceObservationClass(), 0}];
  v83 = [v90 objectForKeyedSubscript:*MEMORY[0x1E6986A10]];
  if (v83 && !*a4)
  {
    v70 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v83 error:?];
  }

  else
  {
    v70 = 0;
  }

  v82 = [v90 objectForKeyedSubscript:*MEMORY[0x1E69869F0]];
  if (v82 && !*a4)
  {
    v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v82 error:?];
  }

  else
  {
    v17 = 0;
  }

  v68 = v17;
  v72 = [v17 firstObject];
  v81 = [v90 objectForKeyedSubscript:*MEMORY[0x1E6986A20]];
  if (v81 && !*a4)
  {
    v71 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v81 error:?];
  }

  else
  {
    v71 = 0;
  }

  v80 = [v90 objectForKeyedSubscript:*MEMORY[0x1E69869F8]];
  if (v80 && !*a4)
  {
    v73 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v80 error:?];
  }

  else
  {
    v73 = 0;
  }

  v79 = [v90 objectForKeyedSubscript:*MEMORY[0x1E69869D0]];
  if (v79 && !*a4)
  {
    v76 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v79 error:?];
  }

  else
  {
    v76 = 0;
  }

  v78 = [v90 objectForKeyedSubscript:*MEMORY[0x1E69869C8]];
  if (v78 && !*a4)
  {
    v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v78 error:?];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v134[2] = __84__PFCameraMetadataSerialization_deserializedMetadataFromCameraClientMetadata_error___block_invoke;
  v134[3] = &unk_1E7B65638;
  v69 = v18;
  v135 = v69;
  v137 = 3737841669;
  v74 = v19;
  v136 = v74;
  [v76 enumerateObjectsUsingBlock:v134];
  v77 = [v90 objectForKeyedSubscript:*MEMORY[0x1E6986A00]];
  if (v77 && !*a4)
  {
    v75 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v77 error:?];
  }

  else
  {
    v75 = 0;
  }

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v109 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    obj = [v88 detectedObjectInfo];
    if (obj)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v98 = [obj countByEnumeratingWithState:&v130 objects:v148 count:16];
      if (v98)
      {
        v96 = *v131;
        v94 = *MEMORY[0x1E6990EC0];
        v93 = *MEMORY[0x1E6990E98];
        v92 = *MEMORY[0x1E6990E90];
        v91 = *MEMORY[0x1E6990E70];
        v89 = *MEMORY[0x1E6990E80];
        v86 = *MEMORY[0x1E6990EB8];
        do
        {
          v24 = 0;
          do
          {
            if (*v131 != v96)
            {
              v25 = v24;
              objc_enumerationMutation(obj);
              v24 = v25;
            }

            v103 = v24;
            v26 = *(*(&v130 + 1) + 8 * v24);
            v27 = [obj objectForKeyedSubscript:v26];
            v106 = [v27 objectForKeyedSubscript:v94];

            if ([v26 isEqualToString:v93])
            {
              v128 = 0u;
              v129 = 0u;
              v126 = 0u;
              v127 = 0u;
              v28 = v106;
              v29 = [v28 countByEnumeratingWithState:&v126 objects:v147 count:16];
              if (v29)
              {
                v30 = *v127;
                do
                {
                  for (i = 0; i != v29; ++i)
                  {
                    if (*v127 != v30)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v32 = [_PFCameraMetadataAVMetadataObject humanFaceObjectWithFigEmbeddedCaptureDeviceObjectDictionary:*(*(&v126 + 1) + 8 * i)];
                    [v20 addObject:v32];
                  }

                  v29 = [v28 countByEnumeratingWithState:&v126 objects:v147 count:16];
                }

                while (v29);
              }
            }

            else if ([v26 isEqualToString:v92])
            {
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v33 = v106;
              v34 = [v33 countByEnumeratingWithState:&v122 objects:v146 count:16];
              if (v34)
              {
                v35 = *v123;
                do
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v123 != v35)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v37 = [_PFCameraMetadataAVMetadataObject humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:*(*(&v122 + 1) + 8 * j)];
                    [v21 addObject:v37];
                  }

                  v34 = [v33 countByEnumeratingWithState:&v122 objects:v146 count:16];
                }

                while (v34);
              }
            }

            else if ([v26 isEqualToString:v91])
            {
              v120 = 0u;
              v121 = 0u;
              v118 = 0u;
              v119 = 0u;
              v38 = v106;
              v39 = [v38 countByEnumeratingWithState:&v118 objects:v145 count:16];
              if (v39)
              {
                v40 = *v119;
                do
                {
                  for (k = 0; k != v39; ++k)
                  {
                    if (*v119 != v40)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v42 = [_PFCameraMetadataAVMetadataObject catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:*(*(&v118 + 1) + 8 * k)];
                    [v22 addObject:v42];
                  }

                  v39 = [v38 countByEnumeratingWithState:&v118 objects:v145 count:16];
                }

                while (v39);
              }
            }

            else if ([v26 isEqualToString:v89])
            {
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v43 = v106;
              v44 = [v43 countByEnumeratingWithState:&v114 objects:v144 count:16];
              if (v44)
              {
                v45 = *v115;
                do
                {
                  for (m = 0; m != v44; ++m)
                  {
                    if (*v115 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = [_PFCameraMetadataAVMetadataObject dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:*(*(&v114 + 1) + 8 * m)];
                    [v23 addObject:v47];
                  }

                  v44 = [v43 countByEnumeratingWithState:&v114 objects:v144 count:16];
                }

                while (v44);
              }
            }

            else
            {
              if (![v26 isEqualToString:v86])
              {
                goto LABEL_83;
              }

              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v48 = v106;
              v49 = [v48 countByEnumeratingWithState:&v110 objects:v143 count:16];
              if (v49)
              {
                v50 = *v111;
                do
                {
                  for (n = 0; n != v49; ++n)
                  {
                    if (*v111 != v50)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v52 = [_PFCameraMetadataAVMetadataObject salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:*(*(&v110 + 1) + 8 * n)];
                    [v109 addObject:v52];
                  }

                  v49 = [v48 countByEnumeratingWithState:&v110 objects:v143 count:16];
                }

                while (v49);
              }
            }

LABEL_83:
            v24 = v103 + 1;
          }

          while ((v103 + 1) != v98);
          v98 = [obj countByEnumeratingWithState:&v130 objects:v148 count:16];
        }

        while (v98);
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v99 = [v88 spatialOverCaptureImageStitchingConfidenceScore];
  }

  else
  {
    v99 = 0;
  }

  v53 = 0;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v88 spatialOverCaptureImageHorizonLinePresent])
  {
    [v88 spatialOverCaptureImageHorizonLineAngleInDegrees];
    v53 = v54;
    v97 = 1;
  }

  else
  {
    v97 = 0;
  }

  obja = [v90 objectForKeyedSubscript:*MEMORY[0x1E69869D8]];
  v107 = [v90 objectForKeyedSubscript:*MEMORY[0x1E6986A08]];
  if (v107 && !*a4)
  {
    v55 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v107 error:?];
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;
  v104 = [v55 firstObject];
  v57 = [v90 objectForKeyedSubscript:*MEMORY[0x1E6986A18]];
  if (v57 && !*a4)
  {
    v58 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v85 fromData:v57 error:?];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v58 firstObject];
  v60 = [v84 contactIDsInProximity];
  v61 = [v84 sharedLibraryMode];
  if (*a4)
  {
    v100 = 0;
  }

  else
  {
    v62 = v61;
    v95 = [PFCameraMetadata alloc];
    [v88 captureFolderClientPath];
    v67 = v62;
    v63 = LOBYTE(v66) = v97;
    LODWORD(v64) = v53;
    v100 = [(PFCameraMetadata *)v95 initWithJunkImageClassificationObservations:v70 imageAestheticsObservation:v72 saliencyObservation:v104 scenePrintObservation:v59 detectedObjectsInfoHumanFaces:v20 detectedObjectsInfoHumanBodies:v21 detectedObjectsInfoCatBodies:v64 detectedObjectsInfoDogBodies:v22 detectedObjectsSalientObjects:v23 smartCamInfo:v109 stitchConfidence:obja horizonLinePresent:v99 horizonLineAngleInDegrees:v66 captureFolderPath:v63 semanticDevelopmentGatingObservations:v71 faceObservations:v73 torsoprints:v74 foodAndDrinkObservations:v75 semanticEnhanceScene:0 contactIDsInProximity:v60 sharedLibraryMode:v67];
  }

  return v100;
}

void __84__PFCameraMetadataSerialization_deserializedMetadataFromCameraClientMetadata_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v5)
  {
    goto LABEL_8;
  }

  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v8 = getVNFaceprintClass_softClass;
  v28 = getVNFaceprintClass_softClass;
  if (!getVNFaceprintClass_softClass)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getVNFaceprintClass_block_invoke;
    v23 = &unk_1E7B65660;
    v24 = &v25;
    __getVNFaceprintClass_block_invoke(&v20);
    v8 = v26[3];
  }

  v9 = v8;
  _Block_object_dispose(&v25, 8);
  v10 = [v8 alloc];
  v11 = [v5 bytes];
  v12 = [v5 length] >> 2;
  v13 = [v5 length];
  [v7 floatValue];
  v14 = [v10 initWithRawData:v11 elementCount:v12 elementType:1 lengthInBytes:v13 confidence:*(a1 + 48) requestRevision:?];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v15 = getVNFaceTorsoprintClass_softClass;
  v28 = getVNFaceTorsoprintClass_softClass;
  if (!getVNFaceTorsoprintClass_softClass)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getVNFaceTorsoprintClass_block_invoke;
    v23 = &unk_1E7B65660;
    v24 = &v25;
    __getVNFaceTorsoprintClass_block_invoke(&v20);
    v15 = v26[3];
  }

  v16 = v15;
  _Block_object_dispose(&v25, 8);
  v17 = [[v15 alloc] initWithFaceprint:v14 torsoprint:0];

  if (!v17)
  {
LABEL_8:
    v19 = *(a1 + 40);
    v17 = [MEMORY[0x1E695DFB0] null];
    v18 = v19;
  }

  else
  {
    v18 = *(a1 + 40);
  }

  [v18 addObject:v17];
}

+ (id)deserializedMetadataFromPrivateClientMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[PFCameraClientMetadata alloc] initWithPrivateClientMetadata:v6 contactIDsInProximity:0 sharedLibraryMode:0];

  v8 = [a1 deserializedMetadataFromCameraClientMetadata:v7 error:a4];

  return v8;
}

+ (id)deserializedMetadataFromData:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [objc_opt_class() deserializedMetadataFromCameraClientMetadata:v6 error:a4];
    v9 = v7;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "+[PFCameraMetadataSerialization deserializedMetadataFromData:error:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: Unable to deserialize camera metadata: %@. Attempting to deserialize legacy version.", buf, 0x16u);
  }

  v13 = v7;
  v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
  v9 = v13;

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[PFCameraMetadataSerialization deserializedMetadataFromData:error:]";
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Unable to deserialize legacy camera metadata: %@.", buf, 0x16u);
      if (a4)
      {
        goto LABEL_9;
      }
    }

    else if (a4)
    {
LABEL_9:
      v11 = v9;
      v8 = 0;
      *a4 = v9;
      goto LABEL_12;
    }

    v8 = 0;
    goto LABEL_12;
  }

  v8 = [objc_opt_class() deserializedMetadataFromPrivateClientMetadata:v10 error:a4];
LABEL_12:

LABEL_13:

  return v8;
}

@end