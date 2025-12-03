@interface TSCH3DPieWedgeGeometry
- (TSCH3DPieWedgeGeometry)init;
- (id)selectionKnobPositions;
- (void)generateArrays;
- (void)generateRoundedTop:(void *)top radiusArray:(void *)array;
- (void)p_generateAngles:(void *)angles;
- (void)p_generateBevelCoordinates:(void *)coordinates andAngles:(void *)angles radiusArray:(const void *)array topArray:(const void *)topArray;
@end

@implementation TSCH3DPieWedgeGeometry

- (TSCH3DPieWedgeGeometry)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DPieWedgeGeometry;
  result = [(TSCH3DGeometry *)&v3 init];
  if (result)
  {
    *(&result->super._geometryBounds + 6) = 0;
    result->_startAngle = 4.7124;
    result->_angleSteps = 48;
    result->_radiusSteps = 9;
    result->_radius = 0.6;
    result->_bottomZ = -1.0;
    result->_topZ = 1.0;
    result->_bevelEdgeSteps = 0;
  }

  return result;
}

- (void)generateRoundedTop:(void *)top radiusArray:(void *)array
{
  v10 = *array;
  v11 = *(array + 1) - *array;
  if (*(top + 1) - *top != v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DPieWedgeGeometry generateRoundedTop:radiusArray:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 202, 0, "array size mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v10 = *array;
    v11 = *(array + 1) - *array;
  }

  v27 = v11 >> 2;
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = *top;
    *&v4 = (v27 - 1);
    do
    {
      *(v29 + 4 * v28) = self->_topZ;
      *&v5 = v28 / *&v4;
      *(v10 + 4 * v28++) = LODWORD(v5);
    }

    while (v27 != v28);
  }

  objc_msgSend_bevelHeight(self, a2, v4, v5, v6);
  v34 = *&v31;
  topZ = self->_topZ;
  v36 = *(array + 1) - *array;
  if (v36 != *(top + 1) - *top)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "void (anonymous namespace)::round_top(vector<float> &, vector<float> &, float, float)");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 136, 0, "size mismatch %zu and %zu", (*(array + 1) - *array) >> 2, (*(top + 1) - *top) >> 2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  v52 = v36 >> 2;
  sub_2761F64E8((v36 >> 2) - 1);
  if (v36 >> 2 >= 1)
  {
    v54 = 0;
    v55 = v53 * v53 + -1.0;
    v56 = (v34 + (topZ - v34));
    v57 = (v52 - 1);
    v58 = -v34;
    v59 = *top - 4;
    v60 = *array - 4;
    do
    {
      v61 = 1.0;
      if (v52 != 1)
      {
        sub_2761F64E8(v54);
        v61 = (v62 * v62 + -1.0) / v55;
      }

      v63 = 1.0 - v61;
      *(v60 + 4 * v52) = v63;
      v64 = v56 + v58 * pow(1.0 - v54 / v57, 4.0);
      *(v59 + 4 * v52) = v64;
      ++v54;
      --v52;
    }

    while (v52);
  }
}

- (void)p_generateAngles:(void *)angles
{
  angleSteps = self->_angleSteps;
  if (angleSteps != (*(angles + 1) - *angles) >> 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DPieWedgeGeometry p_generateAngles:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 216, 0, "wrong size on angle array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (angleSteps >= 1)
  {
    v24 = 0;
    v25 = self->_startAngle - *(&self->super._geometryBounds + 6);
    v26 = *angles;
    do
    {
      *(v26 + 4 * v24) = ((v25 * v24) / (angleSteps - 1)) + *(&self->super._geometryBounds + 6);
      ++v24;
    }

    while (angleSteps != v24);
  }
}

- (void)p_generateBevelCoordinates:(void *)coordinates andAngles:(void *)angles radiusArray:(const void *)array topArray:(const void *)topArray
{
  radiusSteps = self->_radiusSteps;
  angleSteps = self->_angleSteps;
  bevelEdgeSteps = self->_bevelEdgeSteps;
  objc_msgSend_bevelHeight(self, a2, v6, v7, v8);
  v15 = v14;
  startAngle = self->_startAngle;
  v17 = *(&self->super._geometryBounds + 6);
  v18 = startAngle - v17;
  if ((startAngle - v17) >= 0.034907)
  {
    v19 = 0.017453;
  }

  else
  {
    v19 = (startAngle - v17) * 0.5;
  }

  v21 = sin(v18 * 0.5);
  v24 = v21;
  radius = self->_radius;
  v125 = angleSteps + 2 * bevelEdgeSteps;
  anglesCopy = angles;
  if (v125 != (*(angles + 1) - *angles) >> 2)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCH3DPieWedgeGeometry p_generateBevelCoordinates:andAngles:radiusArray:topArray:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 256, 0, "incorrect size on angle array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = self->_bevelEdgeSteps;
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = v41;
    v44 = *anglesCopy;
    v45 = *anglesCopy + 4 * v41 + 4 * angleSteps;
    do
    {
      *(v44 + 4 * v42) = ((v19 * v42) / v43) + *(&self->super._geometryBounds + 6);
      *(v45 + 4 * v42) = (startAngle - v19) + ((v19 * (v42 + 1)) / v43);
      ++v42;
    }

    while (v41 != v42);
  }

  v46 = angleSteps - 1;
  if (angleSteps >= 1)
  {
    v47 = 0;
    *&v21 = v18 + (v19 * -2.0);
    v48 = v17 + v19;
    v49 = v46;
    v50 = vdupq_n_s64(v46);
    v51 = xmmword_2764D6700;
    v52 = xmmword_2764D6710;
    v53 = vdupq_n_s64(4uLL);
    v54 = (*anglesCopy + 4 * v41 + 8);
    do
    {
      v55 = vmovn_s64(vcgeq_u64(v50, v52));
      if (vuzp1_s16(v55, *&v21).u8[0])
      {
        *(v54 - 2) = v48 + ((*&v21 * v47) / v49);
      }

      if (vuzp1_s16(v55, *&v21).i8[2])
      {
        *(v54 - 1) = v48 + ((*&v21 * (v47 + 1)) / v49);
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v50, *&v51))).i32[1])
      {
        *v54 = v48 + ((*&v21 * (v47 + 2)) / v49);
        v54[1] = v48 + ((*&v21 * (v47 + 3)) / v49);
      }

      v47 += 4;
      v51 = vaddq_s64(v51, v53);
      v52 = vaddq_s64(v52, v53);
      v54 += 4;
    }

    while (((angleSteps + 3) & 0xFFFFFFFFFFFFFFFCLL) != v47);
  }

  sub_2761F27A8(__p, v41);
  selfCopy = self;
  v57 = self->_bevelEdgeSteps;
  sub_2761F64E8(v57 - 1);
  if (v57 >= 1)
  {
    v62 = 0;
    v63 = 0;
    v64 = v19 / fmax(v24, 0.0001);
    v65 = v59 + -1.0;
    v66 = -v15;
    v67 = (radius * fminf(v64, 0.5));
    v68 = -1;
    do
    {
      v69 = **topArray;
      *&v69 = v69 + v66 * pow(((v57 + v68) / (v57 - 1)), 2.5);
      sub_2761F64E8(v63);
      v59 = (v70 + -1.0) * v67 / v65;
      *&v59 = v59;
      v71 = __p[0] + v62;
      *v71 = 0;
      v71[1] = LODWORD(v59);
      v71[2] = LODWORD(v69);
      v57 = selfCopy->_bevelEdgeSteps;
      --v68;
      v62 += 12;
      ++v63;
    }

    while (v63 < v57);
  }

  v72 = angleSteps + 2 * bevelEdgeSteps;
  if ((0xAAAAAAAAAAAAAAABLL * ((*(coordinates + 1) - *coordinates) >> 2)) < v125 * radiusSteps)
  {
    v73 = MEMORY[0x277D81150];
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCH3DPieWedgeGeometry p_generateBevelCoordinates:andAngles:radiusArray:topArray:]");
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v80, v81, v82, v83, v74, v79, 278, 0, "coords array is too small");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
  }

  topArrayCopy = topArray;
  if (v125 >= 1)
  {
    v128 = 0;
    v88 = 0;
    v89 = 12 * angleSteps + 24 * bevelEdgeSteps;
    do
    {
      v90 = selfCopy->_bevelEdgeSteps;
      v91 = v90 + angleSteps;
      v92 = v90 - 1;
      if (v92 >= v88)
      {
        v92 = v88;
      }

      if (v88 > v91)
      {
        v92 = v72 + ~v88;
      }

      v93 = (__p[0] + 12 * v92);
      v132 = *v93;
      v94 = v93[2];
      v95 = selfCopy->_radius;
      v96 = __sincosf_stret(*(*anglesCopy + 4 * v88));
      v137.f32[0] = v95 * v96.__sinval;
      v137.f32[1] = v95 * v96.__cosval;
      v97 = v132.f32[0] - (v95 * v96.__sinval);
      v98 = v132.f32[1] - (v95 * v96.__cosval);
      v99 = 1.0 / sqrtf(((v98 * v98) + (v97 * v97)) + ((v94 - v94) * (v94 - v94)));
      v138 = v94;
      v139 = v97 * v99;
      v140 = v98 * v99;
      v141 = (v94 - v94) * v99;
      if (radiusSteps >= 1)
      {
        v100 = 0;
        v101 = v128;
        do
        {
          v102 = v94;
          v103 = v132;
          if (v100)
          {
            v135 = 0;
            v136 = 0;
            v133 = 0;
            v134 = v94;
            if (sub_276155088(&v137, &v133, &v135, 0, selfCopy->_radius * *(*array + 4 * v100)))
            {
              v103 = v135;
              v108 = pow(*(*array + 4 * v100), 10.0);
              v102 = v94 + (v108 * (*(*topArrayCopy + 4 * v100) - v94));
            }

            else
            {
              v109 = MEMORY[0x277D81150];
              v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "[TSCH3DPieWedgeGeometry p_generateBevelCoordinates:andAngles:radiusArray:topArray:]");
              v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v116, v117, v118, v119, v110, v115, 309, 0, "no line/sphere intersection found.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
              v103 = 0;
              v102 = 0.0;
            }
          }

          v124 = (*coordinates + v101);
          *v124 = v103;
          v124[1].f32[0] = v102;
          ++v100;
          v101 += v89;
        }

        while (radiusSteps != v100);
      }

      ++v88;
      v128 += 12;
      v72 = v125;
    }

    while (v88 != v125);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)generateArrays
{
  v314 = *MEMORY[0x277D85DE8];
  radius = self->_radius;
  angleSteps = self->_angleSteps;
  radiusSteps = self->_radiusSteps;
  sub_2761864D4(v307, radiusSteps);
  sub_2761864D4(v306, radiusSteps);
  objc_msgSend_generateRoundedTop_radiusArray_(self, v4, v5, v6, v7, v307, v306);
  bevelEdgeSteps = self->_bevelEdgeSteps;
  if (bevelEdgeSteps <= 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2 * bevelEdgeSteps;
  }

  v10 = (v9 + angleSteps) * radiusSteps;
  v11 = v10 + v9 + angleSteps + 1;
  sub_2761F27A8(v305, v11);
  v289 = v9 + angleSteps;
  sub_2761864D4(v304, v9 + angleSteps);
  v296 = v9;
  v297 = angleSteps;
  v286 = v10 + v9 + angleSteps;
  v281 = v10;
  if (bevelEdgeSteps < 1)
  {
    objc_msgSend_p_generateAngles_(self, v12, v13, v14, v15, v304);
    if (radiusSteps < 1)
    {
      LODWORD(v20) = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = v289;
        if (v289 < 1)
        {
          v20 = v22;
        }

        else
        {
          v24 = 0;
          do
          {
            v25 = radius * *(v306[0] + v21);
            v26 = __sincosf_stret(*(v304[0] + v24));
            *&v18 = v25 * v26.__cosval;
            LODWORD(v19) = *(v307[0] + v21);
            v20 = (v22 + 1);
            v27 = (v305[0] + 12 * v22);
            *v27 = v25 * v26.__sinval;
            v27[1] = v25 * v26.__cosval;
            v27[2] = *&v19;
            v24 += 4;
            LODWORD(v22) = v22 + 1;
            --v23;
          }

          while (v23);
        }

        ++v21;
        v22 = v20;
      }

      while (v21 != radiusSteps);
    }
  }

  else
  {
    objc_msgSend_p_generateBevelCoordinates_andAngles_radiusArray_topArray_(self, v12, v13, v14, v15, v305, v304, v306, v307);
    LODWORD(v20) = v10;
  }

  v28 = v289;
  v284 = v289 - 1;
  if (v289 < 1)
  {
    v33 = v20;
    selfCopy2 = self;
    v30 = v286;
  }

  else
  {
    v29 = 0;
    v30 = v286;
    do
    {
      v31 = __sincosf_stret(*(v304[0] + v29));
      selfCopy2 = self;
      *&v18 = radius * v31.__cosval;
      *&v19 = self->_bottomZ;
      v33 = v20 + 1;
      v34 = (v305[0] + 12 * v20);
      *v34 = radius * v31.__sinval;
      v34[1] = radius * v31.__cosval;
      v34[2] = *&v19;
      v29 += 4;
      LODWORD(v20) = v20 + 1;
      --v28;
    }

    while (v28);
  }

  v303 = v33;
  *&v17 = selfCopy2->_bottomZ;
  v35 = v33 + 1;
  v36 = v305[0] + 12 * v33;
  *v36 = 0;
  *(v36 + 2) = LODWORD(v17);
  if (v11 != v35)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DPieWedgeGeometry generateArrays]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 364, 0, "count mismatch %ld should be %ld", v35, v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    v30 = v286;
  }

  v52 = radiusSteps - 1;
  sub_2761F27A8(__p, v284 * (radiusSteps - 1));
  selfCopy4 = self;
  v283 = __p[0];
  if (radiusSteps >= 2)
  {
    v58 = 0;
    if (v284 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = v289 - 1;
    }

    v60 = 12 * v289;
    v61 = __p[0] + 4;
    do
    {
      if (v289 <= 1)
      {
        v62 = v58 + 1;
      }

      else
      {
        v62 = v58 + 1;
        v63 = v60 * (v58 + 1);
        v64 = v60 * v58;
        v65 = v59;
        v66 = &v61[12 * v284 * v58];
        do
        {
          sub_2761F2588((v305[0] + v64), (v305[0] + v64 + 12), (v305[0] + v63 + 12), (v305[0] + v63), &v308);
          *(v66 - 4) = v308;
          LODWORD(v54) = v309;
          *(v66 + 1) = v309;
          v63 += 12;
          v64 += 12;
          v66 += 12;
          --v65;
        }

        while (v65);
        selfCopy4 = self;
        v30 = v286;
      }

      v58 = v62;
    }

    while (v62 != v52);
  }

  v67 = selfCopy4;
  isFullCircle = objc_msgSend_isFullCircle(selfCopy4, v53, v54, v55, v56);
  v73 = 3 * radiusSteps;
  if (isFullCircle)
  {
    v73 = 0;
  }

  v282 = 6 * radiusSteps + v284 * (6 * v52 + 9) + v73;
  objc_msgSend_allocateArrays_(v67, v69, v70, v71, v72);
  v78 = v281;
  v79 = objc_msgSend_vertexArrayPointer(v67, v74, v75, v76, v77);
  v85 = objc_msgSend_normalArrayPointer(v67, v80, v81, v82, v83);
  v303 = 0;
  v89 = radiusSteps;
  if (radiusSteps < 1)
  {
    v280 = 0;
LABEL_84:
    v94 = v289;
    goto LABEL_85;
  }

  v90 = 0;
  do
  {
    v91 = v289 + v90;
    if (--v89)
    {
      v92 = v289 + v90;
    }

    else
    {
      v92 = v281;
    }

    *&v86 = sub_2761F5AB8(&v303, v79, v85, v305[0], v30, v90, v92);
    v90 = v91;
  }

  while (v89);
  v290 = radiusSteps - 2;
  v280 = v303;
  if (radiusSteps < 2)
  {
    goto LABEL_84;
  }

  v292 = v85;
  v293 = v79;
  v300 = 0;
  v93 = 0;
  v94 = v289;
  v95 = v289 - 2;
  v96 = v283;
  if (v284 <= 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = v289 - 1;
  }

  v291 = v97;
  v285 = 12 * v284;
  v98 = 12 * v297 + 12 * v296;
  v99 = v289;
  do
  {
    if (v93)
    {
      v100 = v93 - 1;
    }

    else
    {
      v100 = 0;
    }

    v287 = v93 + 1;
    if (v94 >= 2)
    {
      v101 = 0;
      v102 = 0;
      v298 = &v283[v285 * v100];
      v103 = v93 + 1;
      if (v93 >= v290)
      {
        v103 = v93;
      }

      v104 = v93 - 1;
      if (!v93)
      {
        v104 = 0;
      }

      v105 = &v283[12 * v103 * v284];
      v294 = &v283[v285 * v103];
      v295 = &v283[12 * v104 * v284];
      do
      {
        v312 = 0;
        v313 = 0uLL;
        if (v102 >= v95)
        {
          v106 = v102;
        }

        else
        {
          v106 = v102 + 1;
        }

        v107 = *&v96[v101 + 8];
        v108 = &v96[v101 + -12 * (v102 != 0)];
        v109 = *&v298[v101 + 8];
        v110 = &v298[v101 + -12 * (v102 != 0)];
        v111 = *&v298[v101];
        v112 = *&v96[v101];
        v113 = vadd_f32(v112, *v108);
        v114 = v107 + v108[1].f32[0];
        v115 = vadd_f32(vadd_f32(v113, v111), *v110);
        v116 = (v114 + v109) + v110[1].f32[0];
        v117 = (COERCE_FLOAT(vmul_f32(v115, v115).i32[1]) + (v115.f32[0] * v115.f32[0])) + (v116 * v116);
        v118 = 0;
        v119 = 0.0;
        v120 = 0.0;
        v121 = 0;
        if (v117 > 0.00000011921)
        {
          v122 = 1.0 / sqrtf(v117);
          v121 = vmul_n_f32(v115, v122);
          v120 = v116 * v122;
        }

        v123 = &v294[v101 + -12 * (v102 != 0)];
        v124 = *(v123 + 8);
        v125 = 3 * v106;
        v126 = &v283[12 * v93 * v284 + 4 * v125];
        v127 = *(v126 + 8);
        v128 = &v105[4 * v125];
        v129 = *v126;
        v130 = *v128;
        v131 = v128[1].f32[0];
        v132 = *&v105[v101 + 8];
        v133 = &v295[4 * v125];
        v134 = *v133;
        v135 = v133[1].f32[0];
        v136 = *v123;
        v137 = *&v105[v101];
        v308 = v121;
        v309 = LODWORD(v120);
        v138 = vadd_f32(v112, v129);
        v139 = v107 + v127;
        v140 = v139 + v109;
        v141 = vadd_f32(vadd_f32(v138, v111), v134);
        v142 = v140 + v135;
        v143 = (COERCE_FLOAT(vmul_f32(v141, v141).i32[1]) + (v141.f32[0] * v141.f32[0])) + (v142 * v142);
        if (v143 > 0.00000011921)
        {
          v144 = 1.0 / sqrtf(v143);
          v118 = vmul_n_f32(v141, v144);
          v119 = v142 * v144;
        }

        v310 = v118;
        v311 = v119;
        if (v93 >= radiusSteps - 3)
        {
          v157 = (v305[0] + v98 + v101);
          v158 = v157[3];
          v159 = v157[4];
          v160 = 0.0;
          v161 = v157[5] * 0.0;
          v162 = ((v159 * v159) + (v158 * v158)) + (v161 * v161);
          v163 = 0.0;
          v164 = 0.0;
          v165 = 0.0;
          if (v162 > 0.00000011921)
          {
            v166 = 1.0 / sqrtf(v162);
            v163 = v158 * v166;
            v164 = v159 * v166;
            v165 = v161 * v166;
          }

          v312 = __PAIR64__(LODWORD(v164), LODWORD(v163));
          *&v313 = v165;
          v167 = *v157;
          v168 = (v305[0] + v98 + v101);
          v169 = v168[1];
          v170 = v168[2] * 0.0;
          v171 = ((v169 * v169) + (v167 * v167)) + (v170 * v170);
          v172 = 0.0;
          v173 = 0.0;
          if (v171 > 0.00000011921)
          {
            v174 = 1.0 / sqrtf(v171);
            v160 = v167 * v174;
            v172 = v169 * v174;
            v173 = v170 * v174;
          }

          *(&v313 + 4) = __PAIR64__(LODWORD(v172), LODWORD(v160));
          *(&v313 + 3) = v173;
          if (v93 == v290)
          {
            v308 = __PAIR64__(LODWORD(v172), LODWORD(v160));
            v309 = LODWORD(v173);
            v310 = __PAIR64__(LODWORD(v164), LODWORD(v163));
            v311 = v165;
          }
        }

        else
        {
          v145 = vadd_f32(v130, vadd_f32(v138, v137));
          v146 = v131 + (v139 + v132);
          v147 = (COERCE_FLOAT(vmul_f32(v145, v145).i32[1]) + (v145.f32[0] * v145.f32[0])) + (v146 * v146);
          v148 = 0;
          v149 = 0.0;
          v150 = 0.0;
          v151 = 0;
          if (v147 > 0.00000011921)
          {
            v152 = 1.0 / sqrtf(v147);
            v151 = vmul_n_f32(v145, v152);
            v150 = v146 * v152;
          }

          v312 = v151;
          *&v313 = v150;
          v153 = vadd_f32(v136, vadd_f32(v113, v137));
          v154 = v124 + (v114 + v132);
          v155 = (COERCE_FLOAT(vmul_f32(v153, v153).i32[1]) + (v153.f32[0] * v153.f32[0])) + (v154 * v154);
          if (v155 > 0.00000011921)
          {
            v156 = 1.0 / sqrtf(v155);
            v148 = vmul_n_f32(v153, v156);
            v149 = v154 * v156;
          }

          *(&v313 + 4) = v148;
          *(&v313 + 3) = v149;
        }

        if (self->_bevelEdgeSteps)
        {
          v175 = &v313 + 3;
          v176 = &v309;
          if (!v102 || (v176 = &v313, v175 = &v311, v95 == v102))
          {
            *v175 = 0.0;
            *v176 = 0;
          }

          v316 = vld3q_f32(&v308);
          v177 = vmlaq_f32(vmlaq_f32(vmulq_f32(v316.val[1], v316.val[1]), v316.val[0], v316.val[0]), v316.val[2], v316.val[2]);
          v178.i64[0] = 0x3400000034000000;
          v178.i64[1] = 0x3400000034000000;
          v179 = vcgtq_f32(v177, v178);
          __asm { FMOV            V5.4S, #1.0 }

          v185 = vdivq_f32(_Q5, vsqrtq_f32(v177));
          v186 = vmulq_f32(v316.val[0], v185);
          v187 = vmulq_f32(v316.val[1], v185);
          v316.val[0] = vmulq_f32(v316.val[2], v185);
          v316.val[1] = vandq_s8(v186, v179);
          v316.val[2] = vandq_s8(v187, v179);
          v188 = vandq_s8(v316.val[0], v179);
          vst3q_f32(&v308, *(&v316 + 16));
        }

        v189 = v102 + 1;
        *&v86 = sub_2761F5BF0(&v303, v293, v292, v305[0], v300 + v102, v300 + v102 + 1, v99 + v102 + 1, v99 + v102, &v308);
        v101 += 12;
        v102 = v189;
      }

      while (v291 != v189);
    }

    v96 += v285;
    v98 += 12 * v289;
    v94 = v289;
    v300 += v289;
    v99 += v289;
    ++v93;
  }

  while (v287 != radiusSteps - 1);
  v30 = v286;
  v78 = v281;
  v85 = v292;
  v79 = v293;
  v52 = radiusSteps - 1;
LABEL_85:
  if (v94 > 1)
  {
    v190 = 1;
    do
    {
      v308 = 0;
      v309 = -1082130432;
      sub_2761F5C94(&v303, v79, v85, v305[0] + 12 * v78, v289, v190 - 1, v190, &v308);
      ++v190;
    }

    while (v289 != v190);
    v191 = v289 * v52;
    v192 = 12 * v289 * v52;
    v193 = v289 - 1;
    do
    {
      v194 = (v305[0] + v192);
      v195 = *(v305[0] + v192);
      v196 = *(v305[0] + v192 + 4);
      v197 = (v196 * v196) + (v195 * v195);
      v198 = 0.0;
      v199 = 0.0;
      v200 = 0.0;
      if (v197 > 0.00000011921)
      {
        v201 = 1.0 / sqrtf(v197);
        v198 = v195 * v201;
        v199 = v196 * v201;
        v200 = v201 * 0.0;
      }

      v308 = __PAIR64__(LODWORD(v199), LODWORD(v198));
      v309 = LODWORD(v200);
      v202 = v194[3];
      v203 = v194[4];
      v204 = (v203 * v203) + (v202 * v202);
      v205 = 0.0;
      v206 = 0.0;
      v207 = 0.0;
      if (v204 > 0.00000011921)
      {
        v208 = 1.0 / sqrtf(v204);
        v205 = v202 * v208;
        v206 = v203 * v208;
        v207 = v208 * 0.0;
      }

      v209 = v191 + 1;
      v310 = __PAIR64__(LODWORD(v206), LODWORD(v205));
      v311 = v207;
      v312 = __PAIR64__(LODWORD(v206), LODWORD(v205));
      *&v313 = __PAIR64__(LODWORD(v198), LODWORD(v207));
      *(&v313 + 1) = __PAIR64__(LODWORD(v200), LODWORD(v199));
      *&v86 = sub_2761F5BF0(&v303, v79, v85, v305[0], v191, v191 + 1, v78 + 1, v78, &v308);
      v192 += 12;
      v191 = v209;
      ++v78;
      --v193;
    }

    while (v193);
  }

  capOffset = v303;
  selfCopy6 = self;
  self->_capOffset = v303;
  v212 = radiusSteps;
  if (radiusSteps < 1)
  {
    v216 = capOffset;
  }

  else
  {
    v213 = 2 * v289;
    v214 = v289 - 1;
    do
    {
      if (--v212)
      {
        v215 = v213;
      }

      else
      {
        v215 = v30;
      }

      *&v86 = sub_2761F5AB8(&v303, v79, v85, v305[0], v30, v215 - 1, v214);
      v213 += v289;
      v214 += v289;
    }

    while (v212);
    v216 = v303;
    selfCopy6 = self;
    capOffset = self->_capOffset;
  }

  selfCopy6->_capCount = v216 - capOffset;
  if ((objc_msgSend_isFullCircle(selfCopy6, v84, v86, v87, v88) & 1) == 0)
  {
    selfCopy8 = self;
    self->_capOffset = v216;
    v222 = v216;
    if (radiusSteps >= 1)
    {
      v223 = v79;
      v224 = 0;
      v225 = v307[0];
      v226 = v305[0] + 12 * v289 - 4;
      do
      {
        v227 = v225[v224++];
        *v226 = v227;
        v226 += 3 * v289;
      }

      while (radiusSteps != v224);
      v228 = 0;
      v229 = 0;
      v230 = 2 * v289;
      v299 = vdupq_n_s32(0x3F804189u);
      v231 = vdup_n_s32(0x3B03126Fu);
      v232 = v289 - 1;
      do
      {
        v233 = v223 + 12 * v303;
        if (radiusSteps - 1 == v228)
        {
          v234 = v30;
        }

        else
        {
          v234 = v230;
        }

        v235 = v232;
        sub_2761F5AB8(&v303, v223, v85, v305[0], v30, v234 - 1, v232);
        v218 = *v233;
        *v220.f32 = vdup_lane_s32(*v233, 0);
        v236 = (v233 + 12);
        v315 = vld3_f32(v236);
        LODWORD(v219) = *(v233 + 8);
        v237 = vdup_lane_s32(*&v219, 0);
        v238 = vadd_f32(v237, vmul_f32(vsub_f32(v315.val[2], v237), *v299.f32));
        *&v220.u32[2] = vdup_lane_s32(*v233, 1);
        v239 = v315.val[1];
        v240 = vaddq_f32(v220, vmulq_f32(vsubq_f32(*v315.val[0].f32, v220), v299));
        v241 = vextq_s8(v240, v240, 8uLL).u64[0];
        vst3_f32(v236, *(&v238 - 2));
        if (v228)
        {
          if (!v229)
          {
            v242 = MEMORY[0x277D81150];
            v243 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, *&v218, v219, *v220.i64, "[TSCH3DPieWedgeGeometry generateArrays]");
            v248 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v244, v245, v246, v247, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v242, v249, v250, v251, v252, v243, v248, 534, 0, "invalid nil value for '%{public}s'", "center");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v253, v254, v255, v256);
          }

          *v233 = *v229;
          *(v233 + 4) = v229[1];
          v218.i32[0] = v229[2];
          *(v233 + 8) = v218.i32[0];
          v30 = v286;
        }

        else
        {
          v257 = vsub_f32(v218, *(v233 + 12));
          *v220.f32 = vmul_f32(vmul_n_f32(v257, 1.0 / sqrtf(COERCE_FLOAT(vmul_f32(v257, v257).i32[1]) + (v257.f32[0] * v257.f32[0]))), v231);
          *v233 = vadd_f32(v218, *v220.f32);
          *(v233 + 8) = *&v219 + 0.0;
          v218 = vadd_f32(*(v233 + 24), *v220.f32);
          *(v233 + 24) = v218;
          v218.f32[0] = *(v233 + 32) + 0.0;
          *(v233 + 32) = v218.i32[0];
          v229 = v233;
        }

        ++v228;
        v230 += v289;
        v232 = v235 + v289;
      }

      while (radiusSteps != v228);
      v222 = v303;
      selfCopy8 = self;
      v216 = self->_capOffset;
    }

    selfCopy8->_capCount = v222 - v216;
    v216 = v222;
  }

  if (v282 < v216)
  {
    v258 = MEMORY[0x277D81150];
    v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, *&v218, v219, *v220.i64, "[TSCH3DPieWedgeGeometry generateArrays]");
    v264 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, v261, v262, v263, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v258, v265, v266, v267, v268, v259, v264, 542, 0, "invalid count %ld should be less than %ld", v216, v282);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v269, v270, v271, v272);
  }

  if (v282 > v216)
  {
    objc_msgSend_allocateArrays_(self, v217, *&v218, v219, *v220.i64, v216);
  }

  v273 = [TSCH3DPieBevelEdgeNormalDirectionMapper alloc];
  v278 = objc_msgSend_initWithTopMeshOffset_angleSteps_radiusSteps_angleLimit_radiusLimit_(v273, v274, v275, v276, v277, v280, v289, radiusSteps, 4 * (self->_bevelEdgeSteps != 0), 2);
  normalDirectionMapper = self->_normalDirectionMapper;
  self->_normalDirectionMapper = v278;

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v304[0])
  {
    v304[1] = v304[0];
    operator delete(v304[0]);
  }

  if (v305[0])
  {
    v305[1] = v305[0];
    operator delete(v305[0]);
  }

  if (v306[0])
  {
    v306[1] = v306[0];
    operator delete(v306[0]);
  }

  if (v307[0])
  {
    v307[1] = v307[0];
    operator delete(v307[0]);
  }
}

- (id)selectionKnobPositions
{
  v127[4] = *MEMORY[0x277D85DE8];
  objc_msgSend_topZ(self, a2, v2, v3, v4);
  v125 = 0;
  v126 = LODWORD(v6);
  v10 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v7, v6, v8, v9, &v125);
  v127[0] = v10;
  objc_msgSend_radius(self, v11, v12, v13, v14);
  v16 = *&v15;
  objc_msgSend_startAngle(self, v17, v15, v18, v19);
  *&v21 = sinf(v20);
  v22 = *&v21;
  objc_msgSend_radius(self, v23, v21, v24, v25);
  v27 = *&v26;
  objc_msgSend_startAngle(self, v28, v26, v29, v30);
  v32 = *&v31;
  objc_msgSend_topZ(self, v33, v31, v34, v35);
  v37 = v36;
  *&v38 = v27 * cosf(v32);
  v124[0] = v16 * v22;
  v124[1] = *&v38;
  v124[2] = v37;
  v42 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v39, v38, v40, v41, v124);
  v127[1] = v42;
  objc_msgSend_radius(self, v43, v44, v45, v46);
  v48 = *&v47;
  objc_msgSend_endAngle(self, v49, v47, v50, v51);
  *&v53 = sinf(v52);
  v54 = *&v53;
  objc_msgSend_radius(self, v55, v53, v56, v57);
  v59 = *&v58;
  objc_msgSend_endAngle(self, v60, v58, v61, v62);
  v64 = *&v63;
  objc_msgSend_topZ(self, v65, v63, v66, v67);
  v69 = v68;
  *&v70 = v59 * cosf(v64);
  v123[0] = v48 * v54;
  v123[1] = *&v70;
  v123[2] = v69;
  v74 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v71, v70, v72, v73, v123);
  v127[2] = v74;
  objc_msgSend_radius(self, v75, v76, v77, v78);
  v80 = *&v79;
  objc_msgSend_startAngle(self, v81, v79, v82, v83);
  v85 = *&v84;
  objc_msgSend_endAngle(self, v86, v84, v87, v88);
  v90 = sin((v85 + v89) * 0.5);
  objc_msgSend_radius(self, v91, v90, v92, v93);
  v95 = *&v94;
  objc_msgSend_startAngle(self, v96, v94, v97, v98);
  v100 = *&v99;
  objc_msgSend_endAngle(self, v101, v99, v102, v103);
  v105 = *&v104;
  objc_msgSend_topZ(self, v106, v104, v107, v108);
  v110 = v109;
  v111 = cos((v100 + v105) * 0.5) * v95;
  *&v112 = v90 * v80;
  *&v111 = v111;
  v122[0] = LODWORD(v112);
  v122[1] = LODWORD(v111);
  v122[2] = v110;
  v115 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v113, v111, v112, v114, v122);
  v127[3] = v115;
  v120 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v116, v117, v118, v119, v127, 4);

  return v120;
}

@end