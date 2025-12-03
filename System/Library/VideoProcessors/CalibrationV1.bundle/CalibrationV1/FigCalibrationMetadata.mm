@interface FigCalibrationMetadata
- (CGPoint)auxiliaryLensDistortionOpticalCenter;
- (CGPoint)referenceLensDistortionOpticalCenter;
- (__n128)auxiliaryExtrinsicMatrix;
- (__n128)auxiliaryIntrinsicMatrix;
- (__n128)referenceExtrinsicMatrix;
- (__n128)referenceIntrinsicMatrix;
- (__n128)setAuxiliaryExtrinsicMatrix:(__n128)matrix;
- (__n128)setAuxiliaryIntrinsicMatrix:(__n128)matrix;
- (__n128)setReferenceExtrinsicMatrix:(__n128)matrix;
- (__n128)setReferenceIntrinsicMatrix:(__n128)matrix;
- (id)description;
@end

@implementation FigCalibrationMetadata

- (id)description
{
  v152 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"baseline: %.3f", v2, v3, v4, self->_baseline);
  v151 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v6, @", pixel size: [reference]: %.5f mm (%.2f um) [auxiliary]: %.5f mm (%.2f um)", v7, v8, v9, self->_referencePixelSizeInMillimeters, (self->_referencePixelSizeInMillimeters * 1000.0), self->_auxiliaryPixelSizeInMillimeters, (self->_auxiliaryPixelSizeInMillimeters * 1000.0));
  v150 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @",\n intrinsics: \n --> [reference]:\n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ], \n --> [auxiliary]:\n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ] \n [ %.3f , %.3f , %.3f ]", v11, v12, v13, COERCE_FLOAT(*self->_anon_60), COERCE_FLOAT(*&self->_anon_60[16]), COERCE_FLOAT(*&self->_anon_60[32]), COERCE_FLOAT(HIDWORD(*self->_anon_60)), COERCE_FLOAT(HIDWORD(*&self->_anon_60[16])), COERCE_FLOAT(HIDWORD(*&self->_anon_60[32])), COERCE_FLOAT(*&self->_anon_60[8]), COERCE_FLOAT(*&self->_anon_60[24]), COERCE_FLOAT(*&self->_anon_60[40]), COERCE_FLOAT(*self->_anon_90), COERCE_FLOAT(*&self->_anon_90[16]), COERCE_FLOAT(*&self->_anon_90[32]), COERCE_FLOAT(HIDWORD(*self->_anon_90)), COERCE_FLOAT(HIDWORD(*&self->_anon_90[16])), COERCE_FLOAT(HIDWORD(*&self->_anon_90[32])), COERCE_FLOAT(*&self->_anon_90[8]), COERCE_FLOAT(*&self->_anon_90[24]), COERCE_FLOAT(*&self->_anon_90[40]));
  v149 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v14, @",\n extrinsics:\n --> [tele]:\n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ], \n --> [auxiliary]:\n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ] \n [ %.3f , %.3f , %.3f ][ %.3f ]", v15, v16, v17, COERCE_FLOAT(*self->_anon_c0), COERCE_FLOAT(*&self->_anon_c0[16]), COERCE_FLOAT(*&self->_anon_c0[32]), COERCE_FLOAT(*&self->_anon_c0[48]), COERCE_FLOAT(HIDWORD(*self->_anon_c0)), COERCE_FLOAT(HIDWORD(*&self->_anon_c0[16])), COERCE_FLOAT(HIDWORD(*&self->_anon_c0[32])), COERCE_FLOAT(HIDWORD(*&self->_anon_c0[48])), COERCE_FLOAT(*&self->_anon_c0[8]), COERCE_FLOAT(*&self->_anon_c0[24]), COERCE_FLOAT(*&self->_anon_c0[40]), COERCE_FLOAT(*&self->_anon_c0[56]), COERCE_FLOAT(*&self[1].super.isa), COERCE_FLOAT(*&self[1]._referencePixelSizeInMillimeters), COERCE_FLOAT(*&self[1]._auxiliaryLensDistortionCoefficients), COERCE_FLOAT(*&self[1]._auxiliaryInverseLensDistortionCoefficients), COERCE_FLOAT(self[1].super.isa >> 32), COERCE_FLOAT(HIDWORD(*&self[1]._referencePixelSizeInMillimeters)), COERCE_FLOAT(self[1]._auxiliaryLensDistortionCoefficients >> 32), COERCE_FLOAT(self[1]._auxiliaryInverseLensDistortionCoefficients >> 32), COERCE_FLOAT(*&self[1]._version), COERCE_FLOAT(self[1]._referenceLensDistortionCoefficients), COERCE_FLOAT(self[1]._referenceInverseLensDistortionCoefficients), COERCE_FLOAT(*&self[1]._referenceLensDistortionOpticalCenter.x));
  v22 = objc_msgSend_stringWithString_(MEMORY[0x29EDBA050], v18, @",\n lens distortion coeffs: [tele]: [", v19, v20, v21);
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v23 = self->_referenceLensDistortionCoefficients;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v169, v168, 16, v25);
  if (v26)
  {
    v32 = v26;
    v33 = *v170;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v170 != v33)
        {
          objc_enumerationMutation(v23);
        }

        v35 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v169 + 1) + 8 * i), v27, v28, v29, v30, v31);
        v41 = objc_msgSend_stringWithFormat_(v35, v37, @" %.3f,", v38, v39, v40, v36);
        objc_msgSend_appendString_(v22, v42, v41, v43, v44, v45);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v27, &v169, v168, 16, v31);
    }

    while (v32);
  }

  objc_msgSend_appendString_(v22, v46, @" ], [auxiliary]: [", v47, v48, v49);
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v50 = self->_auxiliaryLensDistortionCoefficients;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v164, v163, 16, v52);
  if (v53)
  {
    v59 = v53;
    v60 = *v165;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v165 != v60)
        {
          objc_enumerationMutation(v50);
        }

        v62 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v164 + 1) + 8 * j), v54, v55, v56, v57, v58);
        v68 = objc_msgSend_stringWithFormat_(v62, v64, @" %.3f,", v65, v66, v67, v63);
        objc_msgSend_appendString_(v22, v69, v68, v70, v71, v72);
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v54, &v164, v163, 16, v58);
    }

    while (v59);
  }

  objc_msgSend_appendString_(v22, v73, @" ]", v74, v75, v76);
  v81 = objc_msgSend_stringWithString_(MEMORY[0x29EDBA050], v77, @",\n inverse lens distortion coeffs: [reference]: [", v78, v79, v80);
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v82 = self->_referenceInverseLensDistortionCoefficients;
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v159, v158, 16, v84);
  if (v85)
  {
    v91 = v85;
    v92 = *v160;
    do
    {
      for (k = 0; k != v91; ++k)
      {
        if (*v160 != v92)
        {
          objc_enumerationMutation(v82);
        }

        v94 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v159 + 1) + 8 * k), v86, v87, v88, v89, v90);
        v100 = objc_msgSend_stringWithFormat_(v94, v96, @" %.3f,", v97, v98, v99, v95);
        objc_msgSend_appendString_(v81, v101, v100, v102, v103, v104);
      }

      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v86, &v159, v158, 16, v90);
    }

    while (v91);
  }

  objc_msgSend_appendString_(v81, v105, @" ], [auxiliary]: [", v106, v107, v108);
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v109 = self->_auxiliaryInverseLensDistortionCoefficients;
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v154, v153, 16, v111);
  if (v112)
  {
    v118 = v112;
    v119 = *v155;
    do
    {
      for (m = 0; m != v118; ++m)
      {
        if (*v155 != v119)
        {
          objc_enumerationMutation(v109);
        }

        v121 = MEMORY[0x29EDBA0F8];
        objc_msgSend_floatValue(*(*(&v154 + 1) + 8 * m), v113, v114, v115, v116, v117);
        v127 = objc_msgSend_stringWithFormat_(v121, v123, @" %.3f,", v124, v125, v126, v122);
        objc_msgSend_appendString_(v81, v128, v127, v129, v130, v131);
      }

      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v113, &v154, v153, 16, v117);
    }

    while (v118);
  }

  objc_msgSend_appendString_(v81, v132, @" ]", v133, v134, v135);
  v140 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v136, @",\n distortion optical center: [reference]: (%.3f, %.3f), [auxiliary]: (%.3f, %.3f)", v137, v138, v139, *&self->_referenceLensDistortionOpticalCenter.x, *&self->_referenceLensDistortionOpticalCenter.y, *&self->_auxiliaryLensDistortionOpticalCenter.x, *&self->_auxiliaryLensDistortionOpticalCenter.y);
  v141 = MEMORY[0x29EDBA0F8];
  v142 = objc_opt_class();
  v147 = objc_msgSend_stringWithFormat_(v141, v143, @"<%@: %p>: %@%@%@%@%@%@%@", v144, v145, v146, v142, self, v152, v151, v150, v149, v22, v81, v140);

  return v147;
}

- (__n128)referenceIntrinsicMatrix
{
  result = *(self + 96);
  v2 = *(self + 112);
  v3 = *(self + 128);
  return result;
}

- (__n128)setReferenceIntrinsicMatrix:(__n128)matrix
{
  result[6] = a2;
  result[7] = matrix;
  result[8] = a4;
  return result;
}

- (__n128)auxiliaryIntrinsicMatrix
{
  result = *(self + 144);
  v2 = *(self + 160);
  v3 = *(self + 176);
  return result;
}

- (__n128)setAuxiliaryIntrinsicMatrix:(__n128)matrix
{
  result[9] = a2;
  result[10] = matrix;
  result[11] = a4;
  return result;
}

- (__n128)referenceExtrinsicMatrix
{
  result = *(self + 192);
  v2 = *(self + 208);
  v3 = *(self + 224);
  v4 = *(self + 240);
  return result;
}

- (__n128)setReferenceExtrinsicMatrix:(__n128)matrix
{
  result[12] = a2;
  result[13] = matrix;
  result[14] = a4;
  result[15] = a5;
  return result;
}

- (__n128)auxiliaryExtrinsicMatrix
{
  result = *(self + 256);
  v2 = *(self + 272);
  v3 = *(self + 288);
  v4 = *(self + 304);
  return result;
}

- (__n128)setAuxiliaryExtrinsicMatrix:(__n128)matrix
{
  result[16] = a2;
  result[17] = matrix;
  result[18] = a4;
  result[19] = a5;
  return result;
}

- (CGPoint)referenceLensDistortionOpticalCenter
{
  x = self->_referenceLensDistortionOpticalCenter.x;
  y = self->_referenceLensDistortionOpticalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)auxiliaryLensDistortionOpticalCenter
{
  x = self->_auxiliaryLensDistortionOpticalCenter.x;
  y = self->_auxiliaryLensDistortionOpticalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end