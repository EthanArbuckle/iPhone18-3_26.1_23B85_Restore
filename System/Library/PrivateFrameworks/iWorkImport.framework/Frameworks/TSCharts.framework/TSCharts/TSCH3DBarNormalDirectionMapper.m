@interface TSCH3DBarNormalDirectionMapper
- (TSCH3DBarNormalDirectionMapper)initWithWallOffset:(int64_t)a3 crossSectionCount:(int64_t)a4 spineCount:(int64_t)a5 beginLimit:(int64_t)a6 endLimit:(int64_t)a7;
- (void)mapFromVertexArray:(const void *)a3 normalArray:(const void *)a4 normalMatrix:(void *)a5 numVertices:(int64_t)a6 destination:(void *)a7;
@end

@implementation TSCH3DBarNormalDirectionMapper

- (TSCH3DBarNormalDirectionMapper)initWithWallOffset:(int64_t)a3 crossSectionCount:(int64_t)a4 spineCount:(int64_t)a5 beginLimit:(int64_t)a6 endLimit:(int64_t)a7
{
  v13.receiver = self;
  v13.super_class = TSCH3DBarNormalDirectionMapper;
  result = [(TSCH3DBarNormalDirectionMapper *)&v13 init];
  if (result)
  {
    result->_wallOffset = a3;
    result->_crossSectionCount = a4;
    result->_spineCount = a5;
    result->_beginLimit = a6;
    result->_endLimit = a7;
  }

  return result;
}

- (void)mapFromVertexArray:(const void *)a3 normalArray:(const void *)a4 normalMatrix:(void *)a5 numVertices:(int64_t)a6 destination:(void *)a7
{
  v73 = 0x3C23D70A3F444444;
  v74 = 1065353216;
  v71 = objc_msgSend_mapperWithNormalBias_(TSCH3DDefaultNormalDirectionMapper, a2, 5.37764281e-19, v7, v8, &v73);
  objc_msgSend_mapFromVertexArray_normalArray_normalMatrix_numVertices_destination_(v71, v15, v16, v17, v18, a3, a4, a5, a6, a7);
  v72 = self;
  beginLimit = self->_beginLimit;
  v24 = 0x277CCA000uLL;
  if (beginLimit >= 1)
  {
    v25 = 0;
    crossSectionCount = self->_crossSectionCount;
    do
    {
      if (crossSectionCount >= 1)
      {
        for (i = 0; i < crossSectionCount; ++i)
        {
          v28 = ((self->_wallOffset + 6 * (i + v25 * crossSectionCount)) * 0x5555555555555556) >> 64;
          v29 = v28 + (v28 >> 63);
          v30 = *a7;
          if ((v29 + 1) >= *(a7 + 1) - *a7)
          {
            v31 = v25;
            v32 = MEMORY[0x277D81150];
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCH3DBarNormalDirectionMapper mapFromVertexArray:normalArray:normalMatrix:numVertices:destination:]");
            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 351, 0, "index out of bounds");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
            v24 = 0x277CCA000uLL;
            v30 = *a7;
            v25 = v31;
            self = v72;
          }

          *(v30 + v29) = 1;
          *(*a7 + v29 + 1) = 1;
          crossSectionCount = self->_crossSectionCount;
        }

        beginLimit = self->_beginLimit;
      }

      ++v25;
    }

    while (v25 < beginLimit);
  }

  endLimit = self->_endLimit;
  if (endLimit >= 1)
  {
    spineCount = self->_spineCount;
    v49 = spineCount - endLimit;
    v50 = self->_crossSectionCount;
    do
    {
      if (v50 >= 1)
      {
        for (j = 0; j < v50; ++j)
        {
          v52 = ((self->_wallOffset + 6 * (j + v49 * v50)) * 0x5555555555555556) >> 64;
          v53 = v52 + (v52 >> 63);
          v54 = *a7;
          if ((v53 + 1) >= *(a7 + 1) - *a7)
          {
            v55 = v49;
            v56 = MEMORY[0x277D81150];
            v57 = objc_msgSend_stringWithUTF8String_(*(v24 + 3240), v19, v20, v21, v22, "[TSCH3DBarNormalDirectionMapper mapFromVertexArray:normalArray:normalMatrix:numVertices:destination:]");
            v62 = objc_msgSend_stringWithUTF8String_(*(v24 + 3240), v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 359, 0, "index out of bounds");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
            v24 = 0x277CCA000;
            v54 = *a7;
            v49 = v55;
            self = v72;
          }

          *(v54 + v53) = 1;
          *(*a7 + v53 + 1) = 1;
          v50 = self->_crossSectionCount;
        }

        spineCount = self->_spineCount;
      }

      ++v49;
    }

    while (v49 < spineCount);
  }
}

@end