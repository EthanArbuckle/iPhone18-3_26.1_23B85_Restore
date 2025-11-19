@interface TSCH3DChartStageSceneObject
+ (id)objectWithMain:(id)a3;
- (TSCH3DChartStageSceneObject)initWithMain:(id)a3;
- (void)getBounds:(id)a3;
- (void)getSceneObjectElementsBounds:(id)a3;
- (void)getSelectionKnobsPositions:(id)a3;
- (void)rayPick:(id)a3;
- (void)render:(id)a3;
- (void)renderScene:(id)a3 usingProcessor:(id)a4 block:(id)a5;
@end

@implementation TSCH3DChartStageSceneObject

+ (id)objectWithMain:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithMain_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DChartStageSceneObject)initWithMain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DChartStageSceneObject;
  v6 = [(TSCH3DChartStageSceneObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_main, a3);
  }

  return v7;
}

- (void)renderScene:(id)a3 usingProcessor:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v10, v11, v12, v13, v7);
  v25 = v14;
  if (byte_280A46430 == 1)
  {
    if (v14)
    {
      objc_msgSend_infoChartScale(v14, v15, v22, v23, v24);
      v26 = *&v69;
      v27 = *(&v69 + 1);
      v28 = *&v70;
      v29 = *(&v70 + 1);
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v29 = 0.0;
      v28 = 0.0;
      v27 = 0.0;
      LOBYTE(v26) = 0;
    }

    v30 = MEMORY[0x277CCACA8];
    v63 = v28;
    v65 = v29;
    v61 = v27;
    sub_276152FD4("vec4(%f, %f, %f, %f)", v15, v16, v17, v18, v19, v20, v21, SLOBYTE(v26));
    if (v72 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v30, v31, v32, v33, v34, v71);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v30, v31, v32, v33, v34, v71[0]);
    }
    v35 = ;
    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    NSLog(&cfstr_ChartScale.isa, v35, *&v61, *&v63, *&v65);

    if (byte_280A46430)
    {
      if (v25)
      {
        objc_msgSend_stageScale(v25, v36, v43, v44, v45);
        v46 = *&v69;
        v47 = *(&v69 + 1);
        v48 = *&v70;
      }

      else
      {
        LODWORD(v70) = 0;
        v69 = 0;
        v48 = 0.0;
        v47 = 0.0;
        LOBYTE(v46) = 0;
      }

      v49 = MEMORY[0x277CCACA8];
      v62 = v47;
      v64 = v48;
      sub_276152FD4("vec3(%f, %f, %f)", v36, v37, v38, v39, v40, v41, v42, SLOBYTE(v46));
      if (v72 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v71);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v71[0]);
      }
      v54 = ;
      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      NSLog(&cfstr_StageScale.isa, v54, *&v62, *&v64);
    }
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_2761BDB34;
  v66[3] = &unk_27A6B67C8;
  v55 = v25;
  v67 = v55;
  v56 = v9;
  v68 = v56;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v57, v58, v59, v60, v8, v66);
}

- (void)render:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(v4, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BDCC0;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)getBounds:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(v4, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BDDDC;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)rayPick:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(v4, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BDEF8;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)getSelectionKnobsPositions:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(v4, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BE014;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)getSceneObjectElementsBounds:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(v4, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BE130;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

@end