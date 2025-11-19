@interface CAMeshTransform(VideosUI)
+ (id)vuiMeshTransformWithEdges:()VideosUI mirrorPercentage:;
@end

@implementation CAMeshTransform(VideosUI)

+ (id)vuiMeshTransformWithEdges:()VideosUI mirrorPercentage:
{
  v93 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v26 = a1;
  v27 = 0;
  v28 = -a1;
  v29 = 0;
  v30 = 0;
  v31 = 1.0 - a1;
  v32 = 0;
  v33 = a1 + 1.0;
  v34 = 0;
  v35 = 0;
  v36 = xmmword_1E4297540;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = a1;
  v42 = 0;
  v43 = -a1;
  v44 = 0;
  v45 = a1;
  v46 = a1;
  v47 = -a1;
  v48 = -a1;
  v49 = 0;
  v50 = 1.0 - a1;
  v51 = a1;
  v52 = a1 + 1.0;
  v53 = -a1;
  v54 = xmmword_1E4297490;
  v55 = a1;
  v56 = 0x3FF0000000000000;
  v57 = -a1;
  v59 = 0;
  v58 = 0;
  v60 = 1.0 - a1;
  v61 = 0;
  v62 = a1 + 1.0;
  v63 = 0;
  v64 = a1;
  v65 = 1.0 - a1;
  v66 = -a1;
  v67 = a1 + 1.0;
  v68 = 0;
  v69 = 1.0 - a1;
  v70 = 1.0 - a1;
  v71 = a1 + 1.0;
  v72 = a1 + 1.0;
  v73 = xmmword_1E4297490;
  v74 = 1.0 - a1;
  v75 = 0x3FF0000000000000;
  v76 = a1 + 1.0;
  v78 = 0;
  v77 = 0;
  v79 = 0x3FF0000000000000;
  v80 = xmmword_1E4297490;
  v81 = 0;
  v82 = a1;
  v83 = 0x3FF0000000000000;
  v84 = -a1;
  v85 = xmmword_1E4297540;
  v86 = 1.0 - a1;
  v87 = 0x3FF0000000000000;
  v88 = a1 + 1.0;
  v89 = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  v90 = xmmword_1E4297490;
  v91 = _Q0;
  v92 = xmmword_1E4297540;
  if (a4 == 15)
  {
    memcpy(v23, &unk_1E4297568, sizeof(v23));
    v9 = MEMORY[0x1E69793F8];
    v10 = *MEMORY[0x1E6979700];
    v11 = 9;
    goto LABEL_20;
  }

  if ((~a4 & 5) == 0)
  {
    v12 = &xmmword_1E4297688;
LABEL_7:
    v13 = v12[3];
    v23[2] = v12[2];
    v23[3] = v13;
    v14 = v12[5];
    v23[4] = v12[4];
    v23[5] = v14;
    v15 = v12[1];
    v23[0] = *v12;
    v23[1] = v15;
    v9 = MEMORY[0x1E69793F8];
    v10 = *MEMORY[0x1E6979700];
    v11 = 3;
    goto LABEL_20;
  }

  if ((~a4 & 0xALL) == 0)
  {
    v12 = &xmmword_1E42976E8;
    goto LABEL_7;
  }

  v16 = 0;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v18 = &xmmword_1E4297788;
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_21;
      }

      v18 = &xmmword_1E4297748;
    }

    v19 = v18[1];
    v23[0] = *v18;
    v23[1] = v19;
    v20 = v18[3];
    v23[2] = v18[2];
    v23[3] = v20;
  }

  else
  {
    if (a4 == 1)
    {
      LODWORD(v23[0]) = 0;
      memset(&v23[1], 0, 48);
      *(v23 + 4) = 0xF00000003;
      HIDWORD(v23[0]) = 12;
      *(&v23[2] + 4) = 0x700000003;
      v17 = 4;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_21;
      }

      LODWORD(v23[0]) = 0;
      memset(&v23[1], 0, 48);
      *(v23 + 4) = 0xF00000003;
      v17 = 12;
      HIDWORD(v23[0]) = 12;
      *(&v23[2] + 4) = 0xD00000001;
    }

    HIDWORD(v23[2]) = v17;
  }

  v9 = MEMORY[0x1E69793F8];
  v10 = *MEMORY[0x1E6979700];
  v11 = 2;
LABEL_20:
  v16 = [v9 meshTransformWithVertexCount:16 vertices:v24 faceCount:v11 faces:v23 depthNormalization:{v10, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5]}];
LABEL_21:
  [v16 setSubdivisionSteps:0];
  [v16 setReplicatesEdges:1];
  v21 = [v16 copy];

  return v21;
}

@end