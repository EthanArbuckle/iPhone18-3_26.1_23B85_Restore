@interface TSCH3DChartLineSceneObject
+ (id)createMeshForSeries:(id)a3;
- (BOOL)shouldRenderSeries:(id)a3;
- (void)updateTilingEffect:(void *)a3 properties:(id)a4 textureTiling:(id)a5 size:(void *)a6;
@end

@implementation TSCH3DChartLineSceneObject

+ (id)createMeshForSeries:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_model(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_seriesType(v3, v19, v20, v21, v22);
  v28 = objc_msgSend_enumeratorWithModel_chartType_seriesType_(TSCH3DChartModelEnumerator, v24, v25, v26, v27, v8, v18, v23);

  v33 = objc_msgSend_seriesEnumerator(v28, v29, v30, v31, v32);
  v38 = objc_msgSend_seriesIndex(v3, v34, v35, v36, v37);
  v43 = objc_msgSend_nextSeries_(v33, v39, v40, v41, v42, v38);
  v44 = +[TSCH3DChartLineSceneObject chartSeriesDepth]_0();
  v45 = +[TSCH3DChartLineSceneObject chartSeriesDepth]_0();
  v109 = 0;
  v110 = v44 * -0.5;
  __asm { FMOV            V1.2S, #1.0 }

  v111 = _D1;
  v112 = v45 * 0.5;
  v51 = [TSCH3DTexCoordGenerationCube alloc];
  v56 = objc_msgSend_initWithBBox_(v51, v52, v53, v54, v55, &v109);
  v107 = 0x400000003F800000;
  LODWORD(v108) = 1092616192;
  v60 = objc_msgSend_mapperWithNormalBias_(TSCH3DDefaultNormalDirectionMapper, v57, 2.00000047, v58, v59, &v107);
  objc_msgSend_setNormalDirectionMapper_(v56, v61, v62, v63, v64, v60);

  if (v43)
  {
    objc_msgSend_size(v43, v65, v66, v67, v68);
    v69 = v107;
  }

  else
  {
    v69 = 0;
  }

  sub_2761864D4(&v107, v69);
  sub_2761864D4(__p, v69);
  v75 = objc_msgSend_elementEnumerator(v43, v70, v71, v72, v73);
  while (1)
  {
    v79 = objc_msgSend_nextElement(v75, v74, v76, v77, v78);
    v84 = v79;
    if (!v79)
    {
      break;
    }

    objc_msgSend_position(v79, v80, v81, v82, v83);
    objc_msgSend_unitSpaceValue(v84, v85, v86, v87, v88);
    *&v89 = v89;
    *(v107 + v105) = LODWORD(v89);
    objc_msgSend_groupValue(v84, v90, v89, v91, v92);
    *&v93 = v93;
    *(__p[0] + v105) = LODWORD(v93);
  }

  v94 = objc_msgSend_lineFromXValues_yValues_(TSCH3DLineExtrusionGeometry, v80, v81, v82, v83, __p, &v107);
  objc_msgSend_generateArrays(v94, v95, v96, v97, v98);
  v103 = objc_msgSend_dataWithGeometry_texcoordGenerator_(TSCH3DMeshData, v99, v100, v101, v102, v94, v56);

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  return v103;
}

- (void)updateTilingEffect:(void *)a3 properties:(id)a4 textureTiling:(id)a5 size:(void *)a6
{
  v8 = a4;
  v9 = a5;
  v15 = v9;
  if (v9)
  {
    objc_msgSend_scale(v9, v10, v11, v13, v14);
    v16 = COERCE_DOUBLE(vadd_f32(v37, v37));
    objc_msgSend_mode(v15, v17, v16, v19, v20, *&v16, v18);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    objc_msgSend_mode(v9, v10, _D0, v13, v14, *&_D0, v12);
  }

  v43 = 0uLL;
  v42 = 0uLL;
  *&v21 = -(1.3814 * 0.5);
  v37 = 0;
  v38 = *&v21;
  v39 = 1101004800;
  v40 = 1092616192;
  v41 = 1.3814 * 0.5;
  sub_27615615C(&v37, 2, v36, v21);
  LODWORD(v27) = v34;
  *(&v27 + 1) = -*(&v34 + 1);
  v35 = vdupq_lane_s64(v27, 0);
  sub_2761563D8(v36, &v37, &v35, &v43, &v42, 2, v35, *&v27, v28);
  v29.i64[0] = *(v42.i64 + 4);
  v30 = v42.i32[0];
  v31 = v42.i32[3];
  LODWORD(v32) = v43.i32[0];
  v33 = vdup_lane_s32(*v43.f32, 1).u32[0];
  *(a3 + 5) = v43.i64[0];
  DWORD1(v32) = v43.i32[3];
  *(&v32 + 1) = __PAIR64__(v29.u32[0], v30);
  v29.i32[2] = v33;
  *(a3 + 4) = v30;
  *(a3 + 5) = v31;
  v29.i32[3] = v43.i32[2];
  *a3 = vrev64q_s32(v29);
  *(a3 + 24) = v32;
}

- (BOOL)shouldRenderSeries:(id)a3
{
  v6 = objc_msgSend_series(a3, a2, v3, v4, v5);
  v11 = objc_msgSend_numberOfValues(v6, v7, v8, v9, v10) > 1;

  return v11;
}

@end