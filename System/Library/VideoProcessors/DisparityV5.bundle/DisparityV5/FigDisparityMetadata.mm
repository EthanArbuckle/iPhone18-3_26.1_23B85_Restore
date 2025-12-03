@interface FigDisparityMetadata
- (CGPoint)teleLensDistortionOpticalCenter;
- (CGPoint)wideLensDistortionOpticalCenter;
- (CGSize)teleIntrinsicMatrixReferenceDimensions;
- (CGSize)wideIntrinsicMatrixReferenceDimensions;
- (__n128)setTeleExtrinsicMatrix:(__n128)matrix;
- (__n128)setTeleIntrinsicMatrix:(__n128)matrix;
- (__n128)setWideExtrinsicMatrix:(__n128)matrix;
- (__n128)setWideIntrinsicMatrix:(__n128)matrix;
- (__n128)teleExtrinsicMatrix;
- (__n128)teleIntrinsicMatrix;
- (__n128)wideExtrinsicMatrix;
- (__n128)wideIntrinsicMatrix;
- (id)description;
@end

@implementation FigDisparityMetadata

- (id)description
{
  v227 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"baseline: %.3f", v2, v3, v4, v5, v6, COERCE_FLOAT(COERCE_UNSIGNED_INT64(self->_baseline)), self->_baseline);
  v226 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v8, @", pixel size: [reference]: %.5f mm (%.2f um) [auxiliary]: %.5f mm (%.2f um)", v9, v10, v11, v12, v13, COERCE_FLOAT(COERCE_UNSIGNED_INT64((self->_telePixelSizeInMillimeters * 1000.0))), self->_telePixelSizeInMillimeters, (self->_telePixelSizeInMillimeters * 1000.0), self->_widePixelSizeInMillimeters, (self->_widePixelSizeInMillimeters * 1000.0));
  v225 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v14, @",\n intrinsics: \n --> [reference]:\n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ], \n --> [auxiliary]:\n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ]", v15, v16, v17, v18, v19, COERCE_FLOAT(COERCE_UNSIGNED_INT64(COERCE_FLOAT(*self->_anon_80))), COERCE_FLOAT(*self->_anon_80), COERCE_FLOAT(*&self->_anon_80[16]), COERCE_FLOAT(*&self->_anon_80[32]), COERCE_FLOAT(HIDWORD(*self->_anon_80)), COERCE_FLOAT(HIDWORD(*&self->_anon_80[16])), COERCE_FLOAT(HIDWORD(*&self->_anon_80[32])), COERCE_FLOAT(*&self->_anon_80[8]), COERCE_FLOAT(*&self->_anon_80[24]), COERCE_FLOAT(*&self->_anon_80[40]), COERCE_FLOAT(*self->_anon_b0), COERCE_FLOAT(*&self->_anon_b0[16]), COERCE_FLOAT(*&self->_anon_b0[32]), COERCE_FLOAT(HIDWORD(*self->_anon_b0)), COERCE_FLOAT(HIDWORD(*&self->_anon_b0[16])), COERCE_FLOAT(HIDWORD(*&self->_anon_b0[32])), COERCE_FLOAT(*&self->_anon_b0[8]), COERCE_FLOAT(*&self->_anon_b0[24]), COERCE_FLOAT(*&self->_anon_b0[40]));
  v224 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v20, @",\n extrinsics:\n --> [tele]:\n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ], \n --> [auxiliary]:\n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ]", v21, v22, v23, v24, v25, COERCE_FLOAT(COERCE_UNSIGNED_INT64(COERCE_FLOAT(*self->_anon_e0))), COERCE_FLOAT(*self->_anon_e0), COERCE_FLOAT(*&self->_anon_e0[16]), COERCE_FLOAT(*&self->_anon_e0[32]), COERCE_FLOAT(*&self->_anon_e0[48]), COERCE_FLOAT(HIDWORD(*self->_anon_e0)), COERCE_FLOAT(HIDWORD(*&self->_anon_e0[16])), COERCE_FLOAT(HIDWORD(*&self->_anon_e0[32])), COERCE_FLOAT(HIDWORD(*&self->_anon_e0[48])), COERCE_FLOAT(*&self->_anon_e0[8]), COERCE_FLOAT(*&self->_anon_e0[24]), COERCE_FLOAT(*&self->_anon_e0[40]), COERCE_FLOAT(*&self->_anon_e0[56]), COERCE_FLOAT(*&self[1].super.isa), COERCE_FLOAT(*&self[1]._telePixelSizeInMillimeters), COERCE_FLOAT(*&self[1]._wideLensDistortionCoefficients), COERCE_FLOAT(*&self[1]._wideInverseLensDistortionCoefficients), COERCE_FLOAT(self[1].super.isa >> 32), COERCE_FLOAT(HIDWORD(*&self[1]._telePixelSizeInMillimeters)), COERCE_FLOAT(self[1]._wideLensDistortionCoefficients >> 32), COERCE_FLOAT(self[1]._wideInverseLensDistortionCoefficients >> 32), COERCE_FLOAT(*&self[1]._version), COERCE_FLOAT(self[1]._teleLensDistortionCoefficients), COERCE_FLOAT(self[1]._teleInverseLensDistortionCoefficients), COERCE_FLOAT(*&self[1]._teleIntrinsicMatrixReferenceDimensions.width));
  v33 = objc_msgSend_stringWithString_(MEMORY[0x29EDBA050], v26, @",\n lens distortion coeffs: [tele]: [", v27, v28, v29, v30, v31, v32);
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  v34 = self->_teleLensDistortionCoefficients;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v244, v243, 16, v36, v37, v38, v39);
  if (v40)
  {
    v49 = v40;
    v50 = *v245;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v245 != v50)
        {
          objc_enumerationMutation(v34);
        }

        v52 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v244 + 1) + 8 * i), v41, v42, v43, v44, v45, v46, v47, v48);
        v60 = objc_msgSend_stringWithFormat_(v52, v54, @" %.3f,", v55, v56, v57, v58, v59, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v53)), v53);
        objc_msgSend_appendString_(v33, v61, v60, v62, v63, v64, v65, v66, v67);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v41, &v244, v243, 16, v45, v46, v47, v48);
    }

    while (v49);
  }

  objc_msgSend_appendString_(v33, v68, @" ], [auxiliary]: [", v69, v70, v71, v72, v73, v74);
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v75 = self->_wideLensDistortionCoefficients;
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v239, v238, 16, v77, v78, v79, v80);
  if (v81)
  {
    v90 = v81;
    v91 = *v240;
    do
    {
      for (j = 0; j != v90; ++j)
      {
        if (*v240 != v91)
        {
          objc_enumerationMutation(v75);
        }

        v93 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v239 + 1) + 8 * j), v82, v83, v84, v85, v86, v87, v88, v89);
        v101 = objc_msgSend_stringWithFormat_(v93, v95, @" %.3f,", v96, v97, v98, v99, v100, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v94)), v94);
        objc_msgSend_appendString_(v33, v102, v101, v103, v104, v105, v106, v107, v108);
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v82, &v239, v238, 16, v86, v87, v88, v89);
    }

    while (v90);
  }

  objc_msgSend_appendString_(v33, v109, @" ]", v110, v111, v112, v113, v114, v115);
  v123 = objc_msgSend_stringWithString_(MEMORY[0x29EDBA050], v116, @",\n inverse lens distortion coeffs: [reference]: [", v117, v118, v119, v120, v121, v122);
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v124 = self->_teleInverseLensDistortionCoefficients;
  v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v234, v233, 16, v126, v127, v128, v129);
  if (v130)
  {
    v139 = v130;
    v140 = *v235;
    do
    {
      for (k = 0; k != v139; ++k)
      {
        if (*v235 != v140)
        {
          objc_enumerationMutation(v124);
        }

        v142 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v234 + 1) + 8 * k), v131, v132, v133, v134, v135, v136, v137, v138);
        v150 = objc_msgSend_stringWithFormat_(v142, v144, @" %.3f,", v145, v146, v147, v148, v149, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v143)), v143);
        objc_msgSend_appendString_(v123, v151, v150, v152, v153, v154, v155, v156, v157);
      }

      v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v131, &v234, v233, 16, v135, v136, v137, v138);
    }

    while (v139);
  }

  objc_msgSend_appendString_(v123, v158, @" ], [auxiliary]: [", v159, v160, v161, v162, v163, v164);
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v165 = self->_wideInverseLensDistortionCoefficients;
  v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v166, &v229, v228, 16, v167, v168, v169, v170);
  if (v171)
  {
    v180 = v171;
    v181 = *v230;
    do
    {
      for (m = 0; m != v180; ++m)
      {
        if (*v230 != v181)
        {
          objc_enumerationMutation(v165);
        }

        v183 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v229 + 1) + 8 * m), v172, v173, v174, v175, v176, v177, v178, v179);
        v191 = objc_msgSend_stringWithFormat_(v183, v185, @" %.3f,", v186, v187, v188, v189, v190, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v184)), v184);
        objc_msgSend_appendString_(v123, v192, v191, v193, v194, v195, v196, v197, v198);
      }

      v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v172, &v229, v228, 16, v176, v177, v178, v179);
    }

    while (v180);
  }

  objc_msgSend_appendString_(v123, v199, @" ]", v200, v201, v202, v203, v204, v205);
  v212 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v206, @",\n distortion optical center: [reference]: (%.3f, %.3f), [auxiliary]: (%.3f, %.3f)", v207, v208, v209, v210, v211, COERCE_FLOAT(*&self->_teleLensDistortionOpticalCenter), *&self->_teleLensDistortionOpticalCenter.x, *&self->_teleLensDistortionOpticalCenter.y, *&self->_wideLensDistortionOpticalCenter.x, *&self->_wideLensDistortionOpticalCenter.y);
  v213 = MEMORY[0x29EDBA0F8];
  v214 = objc_opt_class();
  v222 = objc_msgSend_stringWithFormat_(v213, v215, @"<%@: %p>: %@%@%@%@%@%@%@", v216, v217, v218, v219, v220, v221, v214, self, v227, v226, v225, v224, v33, v123, v212);

  return v222;
}

- (__n128)teleIntrinsicMatrix
{
  result = *(self + 128);
  v2 = *(self + 144);
  v3 = *(self + 160);
  return result;
}

- (__n128)setTeleIntrinsicMatrix:(__n128)matrix
{
  result[8] = a2;
  result[9] = matrix;
  result[10] = a4;
  return result;
}

- (__n128)wideIntrinsicMatrix
{
  result = *(self + 176);
  v2 = *(self + 192);
  v3 = *(self + 208);
  return result;
}

- (__n128)setWideIntrinsicMatrix:(__n128)matrix
{
  result[11] = a2;
  result[12] = matrix;
  result[13] = a4;
  return result;
}

- (CGSize)teleIntrinsicMatrixReferenceDimensions
{
  width = self->_teleIntrinsicMatrixReferenceDimensions.width;
  height = self->_teleIntrinsicMatrixReferenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)wideIntrinsicMatrixReferenceDimensions
{
  width = self->_wideIntrinsicMatrixReferenceDimensions.width;
  height = self->_wideIntrinsicMatrixReferenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)teleExtrinsicMatrix
{
  result = *(self + 224);
  v2 = *(self + 240);
  v3 = *(self + 256);
  v4 = *(self + 272);
  return result;
}

- (__n128)setTeleExtrinsicMatrix:(__n128)matrix
{
  result[14] = a2;
  result[15] = matrix;
  result[16] = a4;
  result[17] = a5;
  return result;
}

- (__n128)wideExtrinsicMatrix
{
  result = *(self + 288);
  v2 = *(self + 304);
  v3 = *(self + 320);
  v4 = *(self + 336);
  return result;
}

- (__n128)setWideExtrinsicMatrix:(__n128)matrix
{
  result[18] = a2;
  result[19] = matrix;
  result[20] = a4;
  result[21] = a5;
  return result;
}

- (CGPoint)teleLensDistortionOpticalCenter
{
  x = self->_teleLensDistortionOpticalCenter.x;
  y = self->_teleLensDistortionOpticalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)wideLensDistortionOpticalCenter
{
  x = self->_wideLensDistortionOpticalCenter.x;
  y = self->_wideLensDistortionOpticalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end