@interface TSCH3DQuadResource
+ (id)normalized2D;
+ (id)normalized3D;
+ (id)normalized4D;
+ (id)normalizedCenteredCube;
+ (id)normalizedCube;
+ (id)resourceForBox2:(box<glm::detail::tvec2<float>>)a3;
@end

@implementation TSCH3DQuadResource

+ (id)normalized4D
{
  if (qword_280A469A0 != -1)
  {
    sub_2764A6C78();
  }

  v3 = qword_280A46998;

  return v3;
}

+ (id)normalized3D
{
  if (qword_280A469B0 != -1)
  {
    sub_2764A6C8C();
  }

  v3 = qword_280A469A8;

  return v3;
}

+ (id)normalized2D
{
  if (qword_280A469C0 != -1)
  {
    sub_2764A6CA0();
  }

  v3 = qword_280A469B8;

  return v3;
}

+ (id)normalizedCenteredCube
{
  if (qword_280A469D0 != -1)
  {
    sub_2764A6CB4();
  }

  v3 = qword_280A469C8;

  return v3;
}

+ (id)normalizedCube
{
  if (qword_280A469E0 != -1)
  {
    sub_2764A6CC8();
  }

  v3 = qword_280A469D8;

  return v3;
}

+ (id)resourceForBox2:(box<glm::detail::tvec2<float>>)a3
{
  min = a3._min;
  v48 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, a2, v3, v4, v5, 0, *&a3._max);
  v12 = objc_msgSend_container(v7, v8, v9, v10, v11);
  v13 = min[1];
  v40[0] = *min;
  v40[1] = v13;
  v14 = min[3];
  v42[0] = min[2];
  v42[1] = v13;
  v41 = 0x3F80000000000000;
  v43 = 0x3F80000000000000;
  v44[0] = v42[0];
  v44[1] = v14;
  v45 = 0x3F80000000000000;
  v46[0] = v40[0];
  v46[1] = v14;
  v47 = 0x3F80000000000000;
  sub_276161E1C(v12, v40);
  sub_276161E1C(v12, v42);
  sub_276161E1C(v12, v46);
  sub_276161E1C(v12, v42);
  sub_276161E1C(v12, v44);
  sub_276161E1C(v12, v46);
  v15 = objc_alloc_init(TSCH3DDataBufferResource);
  objc_msgSend_setBuffer_(v15, v16, v17, v18, v19, v7);
  if (!v15)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "+[TSCH3DQuadResource resourceForBox2:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DQuadResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 206, 0, "invalid nil value for '%{public}s'", "resource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  return v15;
}

@end