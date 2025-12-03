@interface TSCH3DPieBevelEdgeNormalDirectionMapper
- (TSCH3DPieBevelEdgeNormalDirectionMapper)initWithTopMeshOffset:(int64_t)offset angleSteps:(int64_t)steps radiusSteps:(int64_t)radiusSteps angleLimit:(int64_t)limit radiusLimit:(int64_t)radiusLimit;
- (void)mapFromVertexArray:(const void *)array normalArray:(const void *)normalArray normalMatrix:(void *)matrix numVertices:(int64_t)vertices destination:(void *)destination;
@end

@implementation TSCH3DPieBevelEdgeNormalDirectionMapper

- (TSCH3DPieBevelEdgeNormalDirectionMapper)initWithTopMeshOffset:(int64_t)offset angleSteps:(int64_t)steps radiusSteps:(int64_t)radiusSteps angleLimit:(int64_t)limit radiusLimit:(int64_t)radiusLimit
{
  v13.receiver = self;
  v13.super_class = TSCH3DPieBevelEdgeNormalDirectionMapper;
  result = [(TSCH3DPieBevelEdgeNormalDirectionMapper *)&v13 init];
  if (result)
  {
    result->_topMeshOffset = offset;
    result->_angleSteps = steps;
    result->_radiusSteps = radiusSteps;
    result->_angleLimit = limit;
    result->_radiusLimit = radiusLimit;
  }

  return result;
}

- (void)mapFromVertexArray:(const void *)array normalArray:(const void *)normalArray normalMatrix:(void *)matrix numVertices:(int64_t)vertices destination:(void *)destination
{
  __asm { FMOV            V0.2S, #1.0 }

  v58 = _D0;
  v59 = 0;
  v55 = objc_msgSend_mapperWithNormalBias_(TSCH3DDefaultNormalDirectionMapper, a2, _D0, v7, v8, &v58);
  objc_msgSend_mapFromVertexArray_normalArray_normalMatrix_numVertices_destination_(v55, v20, v21, v22, v23, array, normalArray, matrix, vertices, destination);
  radiusSteps = self->_radiusSteps;
  radiusLimit = self->_radiusLimit;
  if (radiusLimit - radiusSteps <= -2)
  {
    v30 = 0;
    v31 = 0;
    angleLimit = self->_angleLimit;
    angleSteps = self->_angleSteps;
    v34 = 0x277D81000uLL;
    selfCopy = self;
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
          v38 = *destination;
          if ((v37 + 1) >= *(destination + 1) - *destination)
          {
            v39 = *(v34 + 336);
            v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DPieBevelEdgeNormalDirectionMapper mapFromVertexArray:normalArray:normalMatrix:numVertices:destination:]");
            v41 = v34;
            v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPieWedgeGeometry.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v47, v48, v49, v50, v40, v46, 604, 0, "index out of bounds");

            v34 = v41;
            objc_msgSend_logBacktraceThrottled(*(v41 + 336), v51, v52, v53, v54);
            v38 = *destination;
            self = selfCopy;
          }

          *(v38 + v37) = 2;
          *(*destination + v37 + 1) = 2;
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