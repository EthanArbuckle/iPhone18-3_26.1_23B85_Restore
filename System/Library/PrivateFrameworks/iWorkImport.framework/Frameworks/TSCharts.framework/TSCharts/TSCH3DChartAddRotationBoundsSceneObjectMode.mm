@interface TSCH3DChartAddRotationBoundsSceneObjectMode
- (double)p_radiusFromBounds:(void *)bounds pivot:(void *)pivot;
- (void)getBounds:(id)bounds;
- (void)p_submitGeometryForChartBounds:(void *)bounds pivot:(void *)pivot thicknessIndex:(unint64_t)index pipeline:(id)pipeline;
@end

@implementation TSCH3DChartAddRotationBoundsSceneObjectMode

- (double)p_radiusFromBounds:(void *)bounds pivot:(void *)pivot
{
  v7 = *pivot;
  v8 = *(pivot + 1);
  v9 = *(pivot + 2);
  v10 = 0.0;
  if ((sub_276155178(bounds) & 1) == 0)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = -1;
    do
    {
      sub_276154EAC(bounds, ++v14, &__p);
      v15 = *&__p;
      v16 = v51 - v13;
      v17 = (*(&__p + 1) - v12) * (*(&__p + 1) - v12) + (*&__p - v11) * (*&__p - v11);
      v18 = v17 + v16 * v16;
      if (v10 <= v18)
      {
        v10 = v17 + v16 * v16;
      }

      if (byte_280A46430 == 1)
      {
        v19 = objc_opt_class();
        v20 = NSStringFromSelector(a2);
        v21 = MEMORY[0x277CCACA8];
        sub_276152FD4("dvec3(%f, %f, %f)", v22, v23, v24, v25, v26, v27, v28, SLOBYTE(v15));
        if (v52 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(v21, v29, v30, v31, v32, &__p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v21, v29, v30, v31, v32, __p);
        }
        v40 = ;
        if (v52 < 0)
        {
          operator delete(__p);
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = *pivot;
        sub_276152FD4("vec3(%f, %f, %f)", v33, v34, v35, v36, v37, v38, v39, SLOBYTE(v42));
        if (v52 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(v41, v43, v44, v45, v46, &__p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v41, v43, v44, v45, v46, __p);
        }
        v47 = ;
        if (v52 < 0)
        {
          operator delete(__p);
        }

        NSLog(&cfstr_PDistanceFPoin.isa, v19, self, v20, sqrt(v18), v40, v47);
      }
    }

    while (v14 <= 6);
  }

  return sqrt(v10);
}

- (void)p_submitGeometryForChartBounds:(void *)bounds pivot:(void *)pivot thicknessIndex:(unint64_t)index pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  objc_msgSend_p_radiusFromBounds_pivot_(self, v11, v12, v13, v14, bounds, pivot);
  v47 = xmmword_2764D6270;
  v16 = bounds + 4 * index;
  v17 = v16[3];
  v46[0] = *v16;
  v46[1] = v17;
  v18 = 1;
  if (!index)
  {
    v18 = 2;
  }

  if (v18 == index)
  {
    v18 = index + 1;
  }

  v19 = *(pivot + (index == 0));
  v20 = *(pivot + v18);
  v45[0] = v19;
  v45[1] = v20;
  v21 = sub_27635C7DC(&v47, 8uLL, 0, v46, index, v45, v15, v19, v20);
  v26 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v22, v23, v24, v25, v21);
  v31 = objc_msgSend_processor(pipelineCopy, v27, v28, v29, v30);
  objc_msgSend_geometry_(v31, v32, v33, v34, v35, v26);
  v40 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v36, v37, v38, v39, 5);
  objc_msgSend_submit_(v31, v41, v42, v43, v44, v40);
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v10 = objc_msgSend_scene(boundsCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_elementsSceneFromScene_(self, v11, v12, v13, v14, v10);

  v133 = xmmword_2764D5F00;
  v134 = xmmword_2764D60B0;
  v135 = xmmword_2764D60C0;
  v136 = xmmword_2764D5F00;
  v137 = 0x80000000800000;
  v139 = 0;
  v140 = 0;
  v138 = 0;
  if (objc_msgSend_hasObjectBoundsForScene_pipeline_returningObjectBounds_(self, v16, 2.84809454e-306, -1.40444743e306, v17, v15, boundsCopy, &v133))
  {
    v22 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v18, v19, v20, v21, v15);
    v131 = v133;
    v26 = *&v134;
    v132 = v134;
    v116 = v22;
    if (v22)
    {
      objc_msgSend_stageXYCenter(v22, v23, *&v134, v24, v25);
    }

    else
    {
      v130 = 0;
      v129 = 0;
    }

    if (byte_280A46430 == 1)
    {
      v27 = objc_opt_class();
      v115 = NSStringFromSelector(a2);
      v28 = MEMORY[0x277CCACA8];
      sub_276166580(&v131, v29, v30, v31, v32, v33, v34, v35);
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v28, v36, v37, v38, v39, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v28, v36, v37, v38, v39, __p[0]);
      }
      v47 = ;
      if (SBYTE7(v126) < 0)
      {
        operator delete(__p[0]);
      }

      v48 = MEMORY[0x277CCACA8];
      v49 = *&v129;
      sub_276152FD4("vec3(%f, %f, %f)", v40, v41, v42, v43, v44, v45, v46, SLOBYTE(v49));
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v48, v50, v51, v52, v53, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v48, v50, v51, v52, v53, __p[0]);
      }
      v61 = ;
      if (SBYTE7(v126) < 0)
      {
        operator delete(__p[0]);
      }

      if (v116)
      {
        objc_msgSend_stageTransform(v116, v54, v62, v63, v64);
      }

      else
      {
        v127 = 0u;
        v128 = 0u;
        *__p = 0u;
        v126 = 0u;
      }

      v114 = sub_2761B4E18(__p, v54, v55, v56, v57, v58, v59, v60);
      if (v116)
      {
        objc_msgSend_stageScale(v116, v65, v72, v73, v74);
        v75 = *&v123;
      }

      else
      {
        v124 = 0;
        v123 = 0;
        LOBYTE(v75) = 0;
      }

      v76 = MEMORY[0x277CCACA8];
      sub_276152FD4("vec3(%f, %f, %f)", v65, v66, v67, v68, v69, v70, v71, SLOBYTE(v75));
      if ((SBYTE7(v118) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v76, v77, v78, v79, v80, v117);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v76, v77, v78, v79, v80, v117[0]);
      }
      v88 = ;
      if (SBYTE7(v118) < 0)
      {
        operator delete(v117[0]);
      }

      if (v116)
      {
        objc_msgSend_stageXYCenter(v116, v81, v89, v90, v91);
        v92 = *&v121;
      }

      else
      {
        v122 = 0;
        v121 = 0;
        LOBYTE(v92) = 0;
      }

      v93 = MEMORY[0x277CCACA8];
      sub_276152FD4("vec3(%f, %f, %f)", v81, v82, v83, v84, v85, v86, v87, SLOBYTE(v92));
      if ((SBYTE7(v118) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v93, v94, v95, v96, v97, v117);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v93, v94, v95, v96, v97, v117[0]);
      }
      v105 = ;
      if (SBYTE7(v118) < 0)
      {
        operator delete(v117[0]);
      }

      if (v116)
      {
        objc_msgSend_unitTransform(v116, v98, v106, v107, v108);
      }

      else
      {
        v119 = 0u;
        v120 = 0u;
        *v117 = 0u;
        v118 = 0u;
      }

      v109 = sub_2761B4E18(v117, v98, v99, v100, v101, v102, v103, v104);
      NSLog(&cfstr_PChartBoxPivot.isa, v27, self, v115, v47, v61, v114, v88, v105, v109);
    }

    objc_msgSend_p_submitGeometryForChartBounds_pivot_thicknessIndex_pipeline_(self, v23, v26, v24, v25, &v131, &v129, 1, boundsCopy);
    if (self->_rotationType == 1)
    {
      objc_msgSend_p_submitGeometryForChartBounds_pivot_thicknessIndex_pipeline_(self, v110, v111, v112, v113, &v131, &v129, 0, boundsCopy);
    }
  }

  if (v138)
  {
    v139 = v138;
    operator delete(v138);
  }
}

@end