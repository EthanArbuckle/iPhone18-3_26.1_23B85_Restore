@interface PIPhotosPipelineBuilder_2025_1
+ (id)pipelineVersion;
- (BOOL)buildPipeline:(id)a3 error:(id *)a4;
@end

@implementation PIPhotosPipelineBuilder_2025_1

- (BOOL)buildPipeline:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69B3CA8] sharedRegistry];
  v8 = [(PIPhotosPipelineBuilder *)self schemaIdentifier];
  v9 = [v7 schemaWithIdentifier:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v9 name:@"composition"];
    v142[0] = 0;
    v11 = [v6 addInputChannel:v10 error:v142];
    v12 = v142[0];

    v13 = MEMORY[0x1E69B39F0];
    v14 = [(PIPhotosPipelineBuilder *)self asset];
    v15 = [v13 asset:v14];
    v141 = 0;
    v16 = [v6 addConstantData:v15 error:&v141];
    v17 = v141;

    if (!v11 || !v16)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to setup pipeline inputs" object:0 underlyingError:v17];
      *a4 = v38 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v18 = objc_alloc_init(PISmartTonePipelineBuilder);
    v140 = 0;
    v19 = [v6 addPipelineWithBuilder:v18 error:&v140];
    v20 = v140;

    if (!v19)
    {
      goto LABEL_14;
    }

    v124 = v9;
    v125 = v11;
    v121 = v18;
    v122 = a4;
    [MEMORY[0x1E69B39E8] primary];
    v21 = v19;
    v23 = v22 = v16;
    v24 = [MEMORY[0x1E69B39E8] primary];
    v139 = 0;
    v25 = [v6 connect:v21 input:v23 to:v22 subport:v24 error:&v139];
    v26 = v139;

    v123 = v22;
    if (v25)
    {
      v27 = [MEMORY[0x1E69B39E8] name:@"guide"];
      v138 = 0;
      v28 = [v6 connect:v21 input:v27 to:v22 key:@"primary" error:&v138];
      v29 = v138;

      if (v28)
      {
        [MEMORY[0x1E69B39E8] name:@"adjustment"];
        v118 = v137[1] = 0;
        v30 = [v6 connect:v21 input:? to:? key:? error:?];
        v20 = 0;

        v120 = v21;
        if (v30)
        {
          v31 = [MEMORY[0x1E69B39E8] name:@"canPerformLocalAdjustments"];
          v32 = [MEMORY[0x1E69B39D8] BOOLean:1];
          v137[0] = 0;
          v33 = [v21 bind:v31 to:v32 error:v137];
          v34 = v137[0];

          v35 = v33 ^ 1;
          v20 = v34;
        }

        else
        {
          v35 = 1;
        }

        v9 = v124;

        v11 = v125;
        a4 = v122;
        if (v35)
        {
          v16 = v123;
          v19 = v120;
          v18 = v121;
          goto LABEL_14;
        }

        v40 = objc_alloc_init(PISmartColorPipelineBuilder);
        v136 = 0;
        v41 = [v6 addPipelineWithBuilder:v40 error:&v136];
        v42 = v136;

        v119 = v41;
        if (v41)
        {
          v117 = v40;
          v43 = [MEMORY[0x1E69B39E8] primary];
          v44 = [MEMORY[0x1E69B39E8] primary];
          v135 = 0;
          v115 = v43;
          v45 = [v6 connect:v41 input:v43 to:v120 output:v44 error:&v135];
          v46 = v41;
          v47 = v45;
          v20 = v135;

          if (v47)
          {
            v48 = [MEMORY[0x1E69B39E8] name:@"adjustment"];
            v134 = 0;
            v49 = [v6 connect:v46 input:v48 to:v125 key:@"smartColor" error:&v134];
            v50 = v134;

            if (v49)
            {
              v51 = [PICropStraightenPipelineBuilder alloc];
              v52 = [(PIPhotosPipelineBuilder *)self asset];
              v53 = [v52 media];
              v54 = [v53 format];
              v55 = [(PICropStraightenPipelineBuilder *)v51 initWithChannelFormat:v54];

              v133 = 0;
              v114 = v55;
              v56 = [v6 addPipelineWithBuilder:v55 error:&v133];
              v111 = v133;

              v57 = MEMORY[0x1E69B39E8];
              v58 = [(PIPhotosPipelineBuilder *)self asset];
              v59 = [v58 media];
              v60 = [v59 format];
              v61 = [v57 format:v60];
              v62 = [v56 inputPortMatching:v61];

              v116 = v56;
              v113 = v62;
              if (v56)
              {
                v63 = [MEMORY[0x1E69B39E8] primary];
                v64 = [MEMORY[0x1E69B39E8] primary];
                v132 = 0;
                v65 = [v6 connect:v62 subport:v63 to:v119 output:v64 error:&v132];
                v20 = v132;

                v11 = v125;
                if ((v65 & 1) == 0)
                {

LABEL_43:
                  v16 = v123;
                  v9 = v124;
                  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to setup crop/straighten pipeline" object:0 underlyingError:v20];
                  *v122 = v38 = 0;
                  v19 = v120;
                  v18 = v121;
                  v40 = v117;
LABEL_44:

                  goto LABEL_38;
                }

                v66 = [MEMORY[0x1E69B39E8] name:@"adjustment"];
                v131 = 0;
                v67 = [v6 connect:v116 input:v66 to:v125 key:@"cropStraighten" error:&v131];
                v68 = v131;

                if (v67)
                {
                  v69 = [PIOrientationPipelineBuilder alloc];
                  v70 = [(PIPhotosPipelineBuilder *)self asset];
                  v71 = [v70 media];
                  v72 = [v71 format];
                  v73 = [(PIOrientationPipelineBuilder *)v69 initWithChannelFormat:v72];

                  v130 = 0;
                  v109 = v73;
                  v74 = [v6 addPipelineWithBuilder:v73 error:&v130];
                  v107 = v130;

                  v75 = MEMORY[0x1E69B39E8];
                  v76 = [(PIPhotosPipelineBuilder *)self asset];
                  v77 = [v76 media];
                  v78 = [v77 format];
                  v79 = [v75 format:v78];
                  v112 = [v74 inputPortMatching:v79];

                  v80 = MEMORY[0x1E69B39E8];
                  v81 = [(PIPhotosPipelineBuilder *)self asset];
                  v82 = [v81 media];
                  v83 = [v82 format];
                  v84 = [v80 format:v83];
                  v85 = [v116 outputPortMatching:v84];

                  v110 = v74;
                  v108 = v85;
                  if (v74)
                  {
                    v86 = [MEMORY[0x1E69B39E8] primary];
                    v87 = [MEMORY[0x1E69B39E8] primary];
                    v129 = 0;
                    v88 = [v6 connect:v112 subport:v86 to:v85 subport:v87 error:&v129];
                    v20 = v129;

                    v11 = v125;
                    if ((v88 & 1) == 0)
                    {

LABEL_49:
                      v19 = v120;
                      v18 = v121;
                      v9 = v124;
                      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to setup orientation pipeline" object:0 underlyingError:v20];
                      *v122 = v38 = 0;
                      v16 = v123;
LABEL_50:
                      v40 = v117;

                      goto LABEL_44;
                    }

                    v89 = [MEMORY[0x1E69B39E8] name:@"adjustment"];
                    v128 = 0;
                    v90 = [v6 connect:v110 input:v89 to:v125 key:@"orientation" error:&v128];
                    v91 = v128;

                    if (v90)
                    {
                      v92 = MEMORY[0x1E69B39E8];
                      v93 = [(PIPhotosPipelineBuilder *)self asset];
                      v94 = [v93 media];
                      v95 = [v94 format];
                      v96 = [v92 format:v95];
                      v97 = [v110 outputPortMatching:v96];

                      v98 = objc_alloc(MEMORY[0x1E69B39D0]);
                      v99 = [v123 effectiveFormat];
                      v100 = [v98 initWithName:@"output" format:v99];

                      v127 = 0;
                      v101 = [v6 addOutputChannel:v100 error:&v127];
                      v102 = v127;

                      if (v101)
                      {
                        v103 = [MEMORY[0x1E69B39E8] primary];
                        v104 = [MEMORY[0x1E69B39E8] primary];
                        v126 = 0;
                        v105 = [v6 connect:v101 subport:v103 to:v97 subport:v104 error:&v126];
                        v20 = v126;

                        if (v105)
                        {
                          v38 = 1;
LABEL_54:

                          v9 = v124;
                          v11 = v125;
                          v16 = v123;
                          v19 = v120;
                          v18 = v121;
                          goto LABEL_50;
                        }

                        v106 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to connect pipeline output" object:0 underlyingError:v20];
                      }

                      else
                      {
                        v106 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to setup pipeline outputs" object:0 underlyingError:v102];
                        v20 = v102;
                      }

                      v38 = 0;
                      *v122 = v106;
                      goto LABEL_54;
                    }

                    v20 = v91;
                  }

                  else
                  {
                    v20 = v107;
                  }

                  v11 = v125;
                  goto LABEL_49;
                }

                v20 = v68;
              }

              else
              {
                v20 = v111;
              }

              v11 = v125;
              goto LABEL_43;
            }

            v20 = v50;
            v11 = v125;
          }

          else
          {
          }

          v16 = v123;
          v19 = v120;
          v40 = v117;
        }

        else
        {
          v20 = v42;
          v16 = v123;
          v19 = v120;
        }

        [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to setup smartColor pipeline" object:0 underlyingError:v20];
        *v122 = v38 = 0;
        v18 = v121;
LABEL_38:

        goto LABEL_15;
      }
    }

    else
    {
      v29 = v26;
    }

    v11 = v125;

    v20 = v29;
    v18 = v121;
    v19 = v21;
    a4 = v122;
    v16 = v123;
LABEL_14:
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to setup smartTone pipeline" object:0 underlyingError:v20];
    *a4 = v38 = 0;
LABEL_15:

    v17 = v20;
    goto LABEL_16;
  }

  v36 = MEMORY[0x1E69B3A48];
  v37 = [(PIPhotosPipelineBuilder *)self schemaIdentifier];
  *a4 = [v36 unknownError:@"Schema mot registered" object:v37];

  v38 = 0;
LABEL_17:

  return v38;
}

+ (id)pipelineVersion
{
  v2 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:0 minor:1];

  return v2;
}

@end