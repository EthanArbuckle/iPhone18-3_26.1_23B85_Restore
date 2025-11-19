@interface TSCH3DPieBevelEdgeNormalDirectionMapper
- (TSCH3DPieBevelEdgeNormalDirectionMapper)initWithTopMeshOffset:(int64_t)a3 angleSteps:(int64_t)a4 radiusSteps:(int64_t)a5 angleLimit:(int64_t)a6 radiusLimit:(int64_t)a7;
- (void)mapFromVertexArray:(const void *)a3 normalArray:(const void *)a4 normalMatrix:(void *)a5 numVertices:(int64_t)a6 destination:(void *)a7;
@end

@implementation TSCH3DPieBevelEdgeNormalDirectionMapper

- (TSCH3DPieBevelEdgeNormalDirectionMapper)initWithTopMeshOffset:(int64_t)a3 angleSteps:(int64_t)a4 radiusSteps:(int64_t)a5 angleLimit:(int64_t)a6 radiusLimit:(int64_t)a7
{
  v13.receiver = self;
  v13.super_class = TSCH3DPieBevelEdgeNormalDirectionMapper;
  result = [(TSCH3DPieBevelEdgeNormalDirectionMapper *)&v13 init];
  if (result)
  {
    result->_topMeshOffset = a3;
    result->_angleSteps = a4;
    result->_radiusSteps = a5;
    result->_angleLimit = a6;
    result->_radiusLimit = a7;
  }

  return result;
}

- (void)mapFromVertexArray:(const void *)a3 normalArray:(const void *)a4 normalMatrix:(void *)a5 numVertices:(int64_t)a6 destination:(void *)a7
{
  __asm { FMOV            V0.2S, #1.0 }

  v58 = _D0;
  v59 = 0;
  v55 = objc_msgSend_mapperWithNormalBias_(TSCH3DDefaultNormalDirectionMapper, a2, _D0, v7, v8, &v58);
  objc_msgSend_mapFromVertexArray_normalArray_normalMatrix_numVertices_destination_(v55, v20, v21, v22, v23, a3, a4, a5, a6, a7);
  radiusSteps = self->_radiusSteps;
  radiusLimit = self->_radiusLimit;
  if (radiusLimit - radiusSteps <= -2)
  {
    v30 = 0;
    v31 = 0;
    angleLimit = self->_angleLimit;
    angleSteps = self->_angleSteps;
    v34 = 0x277D81000uLL;
    v57 = self;
    do
    {
      if (angleLimit < angleSteps + ~angleLimit)
      {
        v56 = v31;
        v35 = 6 * angleLimit;
        do
        {
          v36 = ((v35 + self->_topMeshOffset + v30 * (angleSteps - 1)) * 0x5555555555555556) >> 64;
          v37 = v36 + (v36 >> 63);
          v38 = *a7;
          if ((v37 + 1) >= *(a7 + 1) - *a7)
          {
            v39 = *(v34 + 336);
            v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DPieBevelEdgeNormalDirectionMapper mapFromVertexArray:normalArray:normalMatrix:numVertices:destination:]");
            v41 = v34;
            v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v47, v48, v49, v50, v40, v46, 604, 0, "index out of bounds");

            v34 = v41;
            objc_msgSend_logBacktraceThrottled(*(v41 + 336), v51, v52, v53, v54);
            v38 = *a7;
            self = v57;
          }

          *(v38 + v37) = 2;
          *(*a7 + v37 + 1) = 2;
          ++angleLimit;
          angleSteps = self->_angleSteps;
          v35 += 6;
        }

        while (angleLimit < angleSteps + ~self->_angleLimit);
        radiusSteps = self->_radiusSteps;
        radiusLimit = self->_radiusLimit;
        angleLimit = self->_angleLimit;
        v31 = v56;
      }

      ++v31;
      v30 += 6;
    }

    while (v31 < radiusSteps + ~radiusLimit);
  }
}

@end