@interface TSCHSageGeometryHelper
+ (CGRect)sageChartAreaBoundsForExportWithChartInfo:(id)info geometryRect:(CGRect)rect returningContainingViewportSize:(id *)size;
+ (id)helperWithImportedChartInfo:(id)info importedInfoGeometry:(id)geometry;
- (CGSize)naturalSize;
- (TSCHSageGeometryHelper)initWithImportedChartInfo:(id)info importedInfoGeometry:(id)geometry;
@end

@implementation TSCHSageGeometryHelper

+ (id)helperWithImportedChartInfo:(id)info importedInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  infoCopy = info;
  v11 = objc_msgSend_chartType(infoCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_sageGeometeryHelperClass(v11, v12, v13, v14, v15);

  if (!v16)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "+[TSCHSageGeometryHelper helperWithImportedChartInfo:importedInfoGeometry:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSageGeometryHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 27, 0, "invalid nil value for '%{public}s'", "chartInfo.chartType.sageGeometeryHelperClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36 = objc_msgSend_chartType(infoCopy, v17, v18, v19, v20);
  v41 = objc_alloc(objc_msgSend_sageGeometeryHelperClass(v36, v37, v38, v39, v40));
  v46 = objc_msgSend_initWithImportedChartInfo_importedInfoGeometry_(v41, v42, v43, v44, v45, infoCopy, geometryCopy);

  v47 = objc_opt_class();
  if (v47 == objc_opt_class())
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "+[TSCHSageGeometryHelper helperWithImportedChartInfo:importedInfoGeometry:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSageGeometryHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 29, 0, "geometry helper must be an instance of subclass of TSCHSageGeometryHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  }

  return v46;
}

+ (CGRect)sageChartAreaBoundsForExportWithChartInfo:(id)info geometryRect:(CGRect)rect returningContainingViewportSize:(id *)size
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  infoCopy = info;
  v15 = objc_msgSend_chartType(infoCopy, v11, v12, v13, v14);
  v20 = objc_msgSend_sageGeometeryHelperClass(v15, v16, v17, v18, v19);

  if (!v20)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "+[TSCHSageGeometryHelper sageChartAreaBoundsForExportWithChartInfo:geometryRect:returningContainingViewportSize:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSageGeometryHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 34, 0, "invalid nil value for '%{public}s'", "chartInfo.chartType.sageGeometeryHelperClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_chartType(infoCopy, v21, v22, v23, v24);
  v45 = objc_msgSend_sageGeometeryHelperClass(v40, v41, v42, v43, v44);
  objc_msgSend_computeSageChartAreaBoundsForChartInfo_geometryRect_returningContainingViewportSize_(v45, v46, x, y, width, infoCopy, size, height);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v55 = v48;
  v56 = v50;
  v57 = v52;
  v58 = v54;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (TSCHSageGeometryHelper)initWithImportedChartInfo:(id)info importedInfoGeometry:(id)geometry
{
  infoCopy = info;
  geometryCopy = geometry;
  v24.receiver = self;
  v24.super_class = TSCHSageGeometryHelper;
  v9 = [(TSCHSageGeometryHelper *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chartInfo, info);
    if (geometryCopy)
    {
      v15 = objc_msgSend_mutableCopy(geometryCopy, v11, v12, v13, v14);
      importedInfoGeometry = v10->_importedInfoGeometry;
      v10->_importedInfoGeometry = v15;
    }

    else
    {
      importedInfoGeometry = objc_msgSend_geometry(v10->_chartInfo, v11, v12, v13, v14);
      v21 = objc_msgSend_mutableCopy(importedInfoGeometry, v17, v18, v19, v20);
      v22 = v10->_importedInfoGeometry;
      v10->_importedInfoGeometry = v21;
    }
  }

  return v10;
}

- (CGSize)naturalSize
{
  objc_msgSend_size(self->_importedInfoGeometry, a2, v2, v3, v4);
  result.height = v6;
  result.width = v5;
  return result;
}

@end