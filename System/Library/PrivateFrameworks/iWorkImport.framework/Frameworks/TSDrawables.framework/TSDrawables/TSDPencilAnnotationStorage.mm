@interface TSDPencilAnnotationStorage
+ (id)p_rasterizedTSPDataForPencilAnnotationImage:(id)image context:(id)context;
- (BOOL)isCalloutLine;
- (BOOL)isCalloutMarginAnnotation;
- (BOOL)isCalloutParentStorage;
- (BOOL)isStretchableParagraphAnnotation;
- (BOOL)p_isSubStorage;
- (BOOL)shouldResizeInOneDirection;
- (BOOL)shouldResizeWithAnchor;
- (BOOL)shouldSplitAcrossAnchorRects;
- (BOOL)shouldUseHeadTail;
- (CGAffineTransform)transformFromUnscaledCanvasToStroke;
- (CGPoint)convertStrokeToUnscaledCanvasPoint:(CGPoint)point;
- (CGPoint)convertUnscaledCanvasToStrokePoint:(CGPoint)point;
- (CGPoint)markupOffset;
- (CGRect)convertStrokeRectToUnscaledCanvas:(CGRect)canvas;
- (CGRect)convertUnscaledCanvasToStrokeRect:(CGRect)rect;
- (CGRect)renderedFrame;
- (CGRect)strokePointsFrame;
- (CGRect)unscaledBoundsOfStrokes;
- (CGRect)unscaledRenderedFrame;
- (CGRect)unscaledStrokePointsFrame;
- (CGSize)convertStrokeToUnscaledCanvasSize:(CGSize)size;
- (CGSize)convertUnscaledCanvasToStrokeSize:(CGSize)size;
- (CGSize)originalAttachedSize;
- (NSData)encodedDrawing;
- (NSData)legacyEncodedDrawing;
- (NSString)description;
- (PKDrawing)drawingForTextRecognition;
- (TSDPencilAnnotationStorage)initWithContext:(id)context drawing:(id)drawing markupOffset:(CGPoint)offset rasterizedImage:(id)image attachedLocation:(int64_t)location attachedType:(int64_t)type path:(CGPath *)path unscaledBoundsOfStrokes:(CGRect)self0 originalAttachedSize:(CGSize)self1 percentOfPAContainedInParentRep:(double)self2 textBaselinesTouchedCount:(unint64_t)self3 visibleStrokesCount:(unint64_t)self4 penColor:(id)self5 toolType:(int64_t)self6 compoundAnnotationType:(int64_t)self7 subStorages:(id)self8 creationDate:(id)self9 pencilAnnotationDrawingScale:(double)scale;
- (TSKPencilAnnotationStorage)parentStorage;
- (TSUBezierPath)unscaledPath;
- (TSUImage)rasterizedImage;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithContext:(double)context drawing:(double)drawing markupOffset:(double)offset rasterizedImageTSPData:(double)data attachedLocation:(double)location attachedType:(double)type encodedDrawing:(double)encodedDrawing legacyEncodedDrawing:(uint64_t)self0 path:(void *)self1 unscaledBoundsOfStrokes:(void *)self2 originalAttachedSize:(void *)self3 percentOfPAContainedInParentRep:(uint64_t)self4 textBaselinesTouchedCount:(uint64_t)self5 visibleStrokesCount:(void *)self6 penColor:(void *)self7 toolType:(const CGPath *)path compoundAnnotationType:(uint64_t)self9 subStorages:(uint64_t)storages creationDate:(uint64_t)date pencilAnnotationDrawingScale:(void *)scale strokePointsFrame:(uint64_t)frame renderedFrame:(uint64_t)renderedFrame;
- (uint64_t)initFromSOSWithContext:(double)context markupOffset:(double)offset rasterizedImageTSPData:(double)data attachedLocation:(double)location attachedType:(double)type encodedDrawing:(double)drawing legacyEncodedDrawing:(double)encodedDrawing path:(uint64_t)self0 unscaledBoundsOfStrokes:(void *)self1 originalAttachedSize:(void *)self2 percentOfPAContainedInParentRep:(uint64_t)self3 textBaselinesTouchedCount:(uint64_t)self4 visibleStrokesCount:(void *)self5 penColor:(void *)self6 toolType:(uint64_t)self7 compoundAnnotationType:(uint64_t)self8 subStorages:(uint64_t)self9 creationDate:(uint64_t)date pencilAnnotationDrawingScale:(void *)scale strokePointsFrame:(uint64_t)frame renderedFrame:(uint64_t)renderedFrame;
- (void)dealloc;
- (void)initializeTextRecognition;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setRasterizedImageTSPData:(id)data;
@end

@implementation TSDPencilAnnotationStorage

- (void)setRasterizedImageTSPData:(id)data
{
  dataCopy = data;
  if (self->_rasterizedImageTSPData != dataCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_msgSend_willRemoveReferenceToData_(self, v7, self->_rasterizedImageTSPData);
    objc_storeStrong(&self->_rasterizedImageTSPData, data);
    objc_msgSend_didAddReferenceToData_(self, v8, dataCopy);
  }
}

- (TSDPencilAnnotationStorage)initWithContext:(id)context drawing:(id)drawing markupOffset:(CGPoint)offset rasterizedImage:(id)image attachedLocation:(int64_t)location attachedType:(int64_t)type path:(CGPath *)path unscaledBoundsOfStrokes:(CGRect)self0 originalAttachedSize:(CGSize)self1 percentOfPAContainedInParentRep:(double)self2 textBaselinesTouchedCount:(unint64_t)self3 visibleStrokesCount:(unint64_t)self4 penColor:(id)self5 toolType:(int64_t)self6 compoundAnnotationType:(int64_t)self7 subStorages:(id)self8 creationDate:(id)self9 pencilAnnotationDrawingScale:(double)scale
{
  height = size.height;
  width = size.width;
  v27 = strokes.size.height;
  v28 = strokes.size.width;
  y = strokes.origin.y;
  x = strokes.origin.x;
  contextCopy = context;
  drawingCopy = drawing;
  imageCopy = image;
  colorCopy = color;
  storagesCopy = storages;
  dateCopy = date;
  v80 = imageCopy;
  v34 = objc_msgSend_p_rasterizedTSPDataForPencilAnnotationImage_context_(TSDPencilAnnotationStorage, v33, imageCopy, contextCopy);
  if ((objc_msgSend_pencilKitAvailable(MEMORY[0x277D806B0], v35, v36) & 1) == 0)
  {
    TSUSetCrashReporterInfo();
    v71 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSDPencilAnnotationStorage initWithContext:drawing:markupOffset:rasterizedImage:attachedLocation:attachedType:path:unscaledBoundsOfStrokes:originalAttachedSize:percentOfPAContainedInParentRep:textBaselinesTouchedCount:visibleStrokesCount:penColor:toolType:compoundAnnotationType:subStorages:creationDate:pencilAnnotationDrawingScale:]", "[TSDPencilAnnotationStorage initWithContext:drawing:markupOffset:rasterizedImage:attachedLocation:attachedType:path:unscaledBoundsOfStrokes:originalAttachedSize:percentOfPAContainedInParentRep:textBaselinesTouchedCount:visibleStrokesCount:penColor:toolType:compoundAnnotationType:subStorages:creationDate:pencilAnnotationDrawingScale:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm", 98);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v73, v75, 98, 1, "Require pencil kit to save pencil annotations");

    TSUCrashBreakpoint();
    abort();
  }

  v39 = objc_msgSend_pencilKitDrawing(drawingCopy, v37, v38);
  v42 = objc_msgSend_dataRepresentation(v39, v40, v41);

  v45 = objc_msgSend_drawingByScaling_(drawingCopy, v43, v44, 1.0 / scale, 1.0 / scale);
  v48 = objc_msgSend_pencilKitDrawing(v45, v46, v47);
  v77 = height;
  v51 = objc_msgSend_dataRepresentation(v48, v49, v50);

  objc_msgSend_strokePointsFrame(drawingCopy, v52, v53);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  objc_msgSend_renderedFrame(drawingCopy, v62, v63);
  v69 = objc_msgSend_initWithContext_drawing_markupOffset_rasterizedImageTSPData_attachedLocation_attachedType_encodedDrawing_legacyEncodedDrawing_path_unscaledBoundsOfStrokes_originalAttachedSize_percentOfPAContainedInParentRep_textBaselinesTouchedCount_visibleStrokesCount_penColor_toolType_compoundAnnotationType_subStorages_creationDate_pencilAnnotationDrawingScale_strokePointsFrame_renderedFrame_(self, v64, contextCopy, drawingCopy, v34, location, type, v42, offset.x, offset.y, x, y, v28, v27, width, v77, v51, path, *&rep, count, strokesCount, colorCopy, toolType, annotationType, storagesCopy, dateCopy, *&scale, v55, v57, v59, v61, v65, v66, v67, v68);

  return v69;
}

- (uint64_t)initFromSOSWithContext:(double)context markupOffset:(double)offset rasterizedImageTSPData:(double)data attachedLocation:(double)location attachedType:(double)type encodedDrawing:(double)drawing legacyEncodedDrawing:(double)encodedDrawing path:(uint64_t)self0 unscaledBoundsOfStrokes:(void *)self1 originalAttachedSize:(void *)self2 percentOfPAContainedInParentRep:(uint64_t)self3 textBaselinesTouchedCount:(uint64_t)self4 visibleStrokesCount:(void *)self5 penColor:(void *)self6 toolType:(uint64_t)self7 compoundAnnotationType:(uint64_t)self8 subStorages:(uint64_t)self9 creationDate:(uint64_t)date pencilAnnotationDrawingScale:(void *)scale strokePointsFrame:(uint64_t)frame renderedFrame:(uint64_t)renderedFrame
{
  strokesCopy = strokes;
  sizeCopy = size;
  strokesCountCopy = strokesCount;
  colorCopy = color;
  scaleCopy = scale;
  v44 = a24;
  v45 = a25;
  v49 = objc_msgSend_pencilKitAvailable(MEMORY[0x277D806B0], v46, v47) ^ 1;
  if (!strokesCountCopy)
  {
    v49 = 1;
  }

  if (v49)
  {
    v52 = 0;
    v54 = objc_msgSend_initWithContext_drawing_markupOffset_rasterizedImageTSPData_attachedLocation_attachedType_encodedDrawing_legacyEncodedDrawing_path_unscaledBoundsOfStrokes_originalAttachedSize_percentOfPAContainedInParentRep_textBaselinesTouchedCount_visibleStrokesCount_penColor_toolType_compoundAnnotationType_subStorages_creationDate_pencilAnnotationDrawingScale_strokePointsFrame_renderedFrame_(self, v48, strokesCopy, 0, sizeCopy, rep, count, strokesCountCopy, a2, context, offset, data, location, type, drawing, encodedDrawing, colorCopy, toolType, annotationType, storages, date, scaleCopy, frame, renderedFrame, v44, v45, a26, *&a27, *&a28, *&a29, *&a30, *&a31, *&a32, *&a33, *&a34);
  }

  else
  {
    v50 = objc_alloc(MEMORY[0x277D806A8]);
    v52 = objc_msgSend_initWithData_cachedRenderedFrame_cachedStrokePointsFrame_pencilAnnotationDrawingScale_(v50, v51, strokesCountCopy, a31, a32, a33, a34, a27, a28, a29, a30, a26);
    v54 = objc_msgSend_initWithContext_drawing_markupOffset_rasterizedImageTSPData_attachedLocation_attachedType_encodedDrawing_legacyEncodedDrawing_path_unscaledBoundsOfStrokes_originalAttachedSize_percentOfPAContainedInParentRep_textBaselinesTouchedCount_visibleStrokesCount_penColor_toolType_compoundAnnotationType_subStorages_creationDate_pencilAnnotationDrawingScale_strokePointsFrame_renderedFrame_(self, v53, strokesCopy, v52, sizeCopy, rep, count, strokesCountCopy, a2, context, offset, data, location, type, drawing, encodedDrawing, colorCopy, toolType, annotationType, storages, date, scaleCopy, frame, renderedFrame, v44, v45, a26, *&a27, *&a28, *&a29, *&a30, *&a31, *&a32, *&a33, *&a34);
  }

  v55 = v54;

  return v55;
}

- (id)initWithContext:(double)context drawing:(double)drawing markupOffset:(double)offset rasterizedImageTSPData:(double)data attachedLocation:(double)location attachedType:(double)type encodedDrawing:(double)encodedDrawing legacyEncodedDrawing:(uint64_t)self0 path:(void *)self1 unscaledBoundsOfStrokes:(void *)self2 originalAttachedSize:(void *)self3 percentOfPAContainedInParentRep:(uint64_t)self4 textBaselinesTouchedCount:(uint64_t)self5 visibleStrokesCount:(void *)self6 penColor:(void *)self7 toolType:(const CGPath *)path compoundAnnotationType:(uint64_t)self9 subStorages:(uint64_t)storages creationDate:(uint64_t)date pencilAnnotationDrawingScale:(void *)scale strokePointsFrame:(uint64_t)frame renderedFrame:(uint64_t)renderedFrame
{
  v114 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  strokesCopy = strokes;
  sizeCopy = size;
  strokesCountCopy = strokesCount;
  colorCopy = color;
  obj = scale;
  scaleCopy = scale;
  v105 = a25;
  v98 = a26;
  v103 = a26;
  v112.receiver = self;
  v112.super_class = TSDPencilAnnotationStorage;
  v49 = objc_msgSendSuper2(&v112, sel_initWithContext_, pathCopy);
  if (v49)
  {
    if ((TSUPointHasNaNComponents() & 1) != 0 || (TSUPointIsFinite() & 1) == 0)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSDPencilAnnotationStorage initWithContext:drawing:markupOffset:rasterizedImageTSPData:attachedLocation:attachedType:encodedDrawing:legacyEncodedDrawing:path:unscaledBoundsOfStrokes:originalAttachedSize:percentOfPAContainedInParentRep:textBaselinesTouchedCount:visibleStrokesCount:penColor:toolType:compoundAnnotationType:subStorages:creationDate:pencilAnnotationDrawingScale:strokePointsFrame:renderedFrame:]");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 166, 0, "Should have valid markup offset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
    }

    *(v49 + 26) = a2;
    *(v49 + 27) = context;
    objc_msgSend_setRasterizedImageTSPData_(v49, v50, sizeCopy);
    *(v49 + 14) = rep;
    *(v49 + 15) = count;
    if (a27 == 0.0)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSDPencilAnnotationStorage initWithContext:drawing:markupOffset:rasterizedImageTSPData:attachedLocation:attachedType:encodedDrawing:legacyEncodedDrawing:path:unscaledBoundsOfStrokes:originalAttachedSize:percentOfPAContainedInParentRep:textBaselinesTouchedCount:visibleStrokesCount:penColor:toolType:compoundAnnotationType:subStorages:creationDate:pencilAnnotationDrawingScale:strokePointsFrame:renderedFrame:]");
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 174, 0, "Pencil scale should not be zero");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
    }

    *(v49 + 25) = a27;
    *(v49 + 34) = a28;
    *(v49 + 35) = a29;
    *(v49 + 36) = a30;
    *(v49 + 37) = a31;
    *(v49 + 38) = a32;
    *(v49 + 39) = a33;
    *(v49 + 40) = a34;
    *(v49 + 41) = a35;
    objc_storeStrong(v49 + 19, strokes);
    if (strokesCountCopy)
    {
      v68 = MEMORY[0x277D80828];
      v69 = objc_msgSend_context(v49, v66, v67);
      v71 = objc_msgSend_dataFromNSData_filename_context_(v68, v70, strokesCountCopy, @"PencilAnnotationData", v69);

      v72 = *(v49 + 21);
      *(v49 + 21) = v71;
    }

    else
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSDPencilAnnotationStorage initWithContext:drawing:markupOffset:rasterizedImageTSPData:attachedLocation:attachedType:encodedDrawing:legacyEncodedDrawing:path:unscaledBoundsOfStrokes:originalAttachedSize:percentOfPAContainedInParentRep:textBaselinesTouchedCount:visibleStrokesCount:penColor:toolType:compoundAnnotationType:subStorages:creationDate:pencilAnnotationDrawingScale:strokePointsFrame:renderedFrame:]");
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v79, v76, v78, 182, 0, "invalid nil value for '%{public}s'", "encodedDrawing", a26, scale);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
    }

    if (colorCopy)
    {
      v82 = MEMORY[0x277D80828];
      v83 = objc_msgSend_context(v49, v73, v74);
      v85 = objc_msgSend_dataFromNSData_filename_context_(v82, v84, colorCopy, @"PencilAnnotationLegacyData", v83);

      v86 = *(v49 + 22);
      *(v49 + 22) = v85;
    }

    *(v49 + 8) = CGPathRetain(path);
    *(v49 + 30) = drawing;
    *(v49 + 31) = offset;
    *(v49 + 32) = data;
    *(v49 + 33) = location;
    *(v49 + 28) = type;
    *(v49 + 29) = encodedDrawing;
    *(v49 + 16) = annotationType;
    *(v49 + 17) = storages;
    *(v49 + 18) = date;
    objc_storeStrong(v49 + 10, obj);
    *(v49 + 11) = frame;
    v89 = objc_msgSend_copy(v105, v87, v88);
    v90 = *(v49 + 23);
    *(v49 + 23) = v89;

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v91 = *(v49 + 23);
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v108, v113, 16);
    if (v94)
    {
      v95 = *v109;
      do
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v109 != v95)
          {
            objc_enumerationMutation(v91);
          }

          objc_msgSend_setParentStorage_(*(*(&v108 + 1) + 8 * i), v93, v49);
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v93, &v108, v113, 16);
      }

      while (v94);
    }

    objc_storeStrong(v49 + 12, v98);
    *(v49 + 13) = renderedFrame;
  }

  return v49;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v6 = objc_msgSend_rasterizedImageTSPData(self, v4, v5);
  v102 = objc_msgSend_copyWithContext_(v6, v7, contextCopy);

  v101 = objc_msgSend_drawing(self, v8, v9);
  v99 = objc_alloc(objc_opt_class());
  objc_msgSend_markupOffset(self, v10, v11);
  v13 = v12;
  v15 = v14;
  v98 = objc_msgSend_attachedLocation(self, v16, v17);
  v97 = objc_msgSend_attachedType(self, v18, v19);
  v100 = objc_msgSend_encodedDrawing(self, v20, v21);
  v24 = objc_msgSend_legacyEncodedDrawing(self, v22, v23);
  v27 = objc_msgSend_path(self, v25, v26);
  objc_msgSend_unscaledBoundsOfStrokes(self, v28, v29);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  objc_msgSend_originalAttachedSize(self, v38, v39);
  v95 = v41;
  v96 = v40;
  objc_msgSend_percentOfPAContainedInParentRep(self, v42, v43);
  v94 = v44;
  v47 = objc_msgSend_textBaselinesTouchedCount(self, v45, v46);
  v50 = objc_msgSend_visibleStrokesCount(self, v48, v49);
  v53 = objc_msgSend_penColor(self, v51, v52);
  v56 = objc_msgSend_toolType(self, v54, v55);
  v59 = objc_msgSend_compoundAnnotationType(self, v57, v58);
  v62 = objc_msgSend_subStorages(self, v60, v61);
  v91 = v37;
  v92 = v35;
  v93 = v33;
  v65 = objc_msgSend_creationDate(self, v63, v64);
  objc_msgSend_pencilAnnotationDrawingScale(self, v66, v67);
  v69 = v68;
  objc_msgSend_strokePointsFrame(self, v70, v71);
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  objc_msgSend_renderedFrame(self, v80, v81);
  v87 = objc_msgSend_initWithContext_drawing_markupOffset_rasterizedImageTSPData_attachedLocation_attachedType_encodedDrawing_legacyEncodedDrawing_path_unscaledBoundsOfStrokes_originalAttachedSize_percentOfPAContainedInParentRep_textBaselinesTouchedCount_visibleStrokesCount_penColor_toolType_compoundAnnotationType_subStorages_creationDate_pencilAnnotationDrawingScale_strokePointsFrame_renderedFrame_(v99, v82, contextCopy, v101, v102, v98, v97, v100, v13, v15, v31, v93, v92, v91, v96, v95, v24, v27, v94, v47, v50, v53, v56, v59, v62, v65, v69, v73, v75, v77, v79, v83, v84, v85, v86);

  objc_msgSend_initializeTextRecognition(self, v88, v89);
  return v87;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_context(self, a2, zone);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = TSDPencilAnnotationStorage;
  [(TSDPencilAnnotationStorage *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_attachedLocation(self, v6, v7);
  v11 = objc_msgSend_attachedType(self, v9, v10);
  v14 = objc_msgSend_subStorages(self, v12, v13);
  v17 = objc_msgSend_drawing(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v3, v18, @"<%@: %p\n\t AttachedLocation:%d \n\t AttachedType:%d \n\t SubStorages: %@\n\t Drawing: %@>", v5, self, v8, v11, v14, v17);

  return v19;
}

- (BOOL)p_isSubStorage
{
  v3 = objc_msgSend_parentStorage(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (CGRect)renderedFrame
{
  p_renderedFrame = &self->_renderedFrame;
  x = self->_renderedFrame.origin.x;
  y = self->_renderedFrame.origin.y;
  width = self->_renderedFrame.size.width;
  height = self->_renderedFrame.size.height;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  if (CGRectEqualToRect(v24, *MEMORY[0x277CBF398]))
  {
    v10 = objc_msgSend_drawing(self, v8, v9);

    if (v10)
    {
      v13 = objc_msgSend_drawing(self, v11, v12);
      objc_msgSend_renderedFrame(v13, v14, v15);
      x = v16;
      y = v17;
      width = v18;
      height = v19;

      p_renderedFrame->origin.x = x;
      p_renderedFrame->origin.y = y;
      p_renderedFrame->size.width = width;
      p_renderedFrame->size.height = height;
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)unscaledRenderedFrame
{
  objc_msgSend_renderedFrame(self, a2, v2);
  objc_msgSend_pencilAnnotationDrawingScale(self, v4, v5);

  TSUMultiplyRectScalar();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)strokePointsFrame
{
  p_strokePointsFrame = &self->_strokePointsFrame;
  x = self->_strokePointsFrame.origin.x;
  y = self->_strokePointsFrame.origin.y;
  width = self->_strokePointsFrame.size.width;
  height = self->_strokePointsFrame.size.height;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  if (CGRectEqualToRect(v24, *MEMORY[0x277CBF398]))
  {
    v10 = objc_msgSend_drawing(self, v8, v9);

    if (v10)
    {
      v13 = objc_msgSend_drawing(self, v11, v12);
      objc_msgSend_strokePointsFrame(v13, v14, v15);
      x = v16;
      y = v17;
      width = v18;
      height = v19;

      p_strokePointsFrame->origin.x = x;
      p_strokePointsFrame->origin.y = y;
      p_strokePointsFrame->size.width = width;
      p_strokePointsFrame->size.height = height;
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)unscaledStrokePointsFrame
{
  objc_msgSend_strokePointsFrame(self, a2, v2);
  objc_msgSend_pencilAnnotationDrawingScale(self, v4, v5);

  TSUMultiplyRectScalar();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (NSData)encodedDrawing
{
  v3 = objc_msgSend_encodedDrawingTSPData(self, a2, v2);
  v6 = objc_msgSend_NSData(v3, v4, v5);

  return v6;
}

- (NSData)legacyEncodedDrawing
{
  v3 = objc_msgSend_legacyEncodedDrawingTSPData(self, a2, v2);
  v6 = objc_msgSend_NSData(v3, v4, v5);

  return v6;
}

- (PKDrawing)drawingForTextRecognition
{
  objc_msgSend_initializeTextRecognition(self, a2, v2);
  drawingForTextRecognition = self->_drawingForTextRecognition;

  return drawingForTextRecognition;
}

- (BOOL)shouldResizeWithAnchor
{
  if (objc_msgSend_isStretchableParagraphAnnotation(self, a2, v2))
  {
    return 1;
  }

  v9 = !objc_msgSend_attachedType(self, v4, v5) || objc_msgSend_attachedType(self, v7, v8) == 4 || objc_msgSend_attachedType(self, v7, v8) == 5;
  v10 = objc_msgSend_visibleStrokesCount(self, v7, v8);
  objc_msgSend_percentOfPAContainedInParentRep(self, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_attachedType(self, v15, v16);
  v20 = objc_msgSend_textBaselinesTouchedCount(self, v18, v19);
  v21 = v10 == 1 && v9;
  if (v14 <= 0.65 && v17 == 0)
  {
    v21 = 0;
  }

  return v20 < 4 && v21;
}

- (BOOL)shouldSplitAcrossAnchorRects
{
  if ((objc_msgSend_isStretchableParagraphAnnotation(self, a2, v2) & 1) != 0 || (objc_msgSend_subStorages(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_count(v6, v7, v8), v6, v9))
  {
    LOBYTE(shouldResizeWithAnchor) = 1;
  }

  else
  {
    shouldResizeWithAnchor = objc_msgSend_shouldResizeWithAnchor(self, v10, v11);
    if (shouldResizeWithAnchor)
    {
      LOBYTE(shouldResizeWithAnchor) = objc_msgSend_attachedType(self, v13, v14) != 5 && objc_msgSend_attachedType(self, v15, v16) != 4;
    }
  }

  return shouldResizeWithAnchor;
}

- (BOOL)shouldUseHeadTail
{
  if (objc_msgSend_shouldSplitAcrossAnchorRects(self, a2, v2))
  {
    return 1;
  }

  return objc_msgSend_isStretchableParagraphAnnotation(self, v4, v5);
}

- (BOOL)shouldResizeInOneDirection
{
  isStretchableParagraphAnnotation = objc_msgSend_isStretchableParagraphAnnotation(self, a2, v2);
  if (isStretchableParagraphAnnotation)
  {
    objc_msgSend_percentOfPAContainedInParentRep(self, v5, v6);
    LOBYTE(isStretchableParagraphAnnotation) = v7 < 0.2;
  }

  return isStretchableParagraphAnnotation;
}

- (TSUBezierPath)unscaledPath
{
  v3 = MEMORY[0x277D81160];
  v5 = objc_msgSend_path(self, a2, v2);

  return objc_msgSend_bezierPathWithCGPath_(v3, v4, v5);
}

- (void)initializeTextRecognition
{
  if (!self->_drawingForTextRecognition && objc_msgSend_needsTextRecognition(self, a2, v2))
  {
    v6 = objc_msgSend_drawing(self, v4, v5);
    v14 = objc_msgSend_copy(v6, v7, v8);

    v11 = objc_msgSend_pencilKitDrawing(v14, v9, v10);
    drawingForTextRecognition = self->_drawingForTextRecognition;
    self->_drawingForTextRecognition = v11;

    objc_msgSend_setRecognitionEnabled_(self->_drawingForTextRecognition, v13, 1);
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 4);
  if ((v7 & 0x4000) != 0)
  {
    v8 = *(archive + 46);
    if (v8 >= 9)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDPencilAnnotationStorage loadFromArchive:unarchiver:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 375, 0, "Pencil annotation attach location is out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
      v7 = *(archive + 4);
    }

    self->_attachedLocation = v8;
  }

  if (v7)
  {
    TSPCGPointFromMessage(*(archive + 9));
    self->_markupOffset.x = v16;
    self->_markupOffset.y = v17;
    v7 = *(archive + 4);
  }

  v18 = *(archive + 28);
  if (v18 == 0.0)
  {
    v18 = 1.0;
  }

  if ((v7 & 0x200000) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.0;
  }

  self->_pencilAnnotationDrawingScale = v19;
  if ((v7 & 2) != 0)
  {
    v20 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v6, *(archive + 10), v18);
    objc_storeStrong(&self->_rasterizedImageTSPData, v20);

    v7 = *(archive + 4);
  }

  if ((v7 & 8) != 0)
  {
    self->_path = TSPCGPathCreateFromMessage(*(archive + 12));
    v7 = *(archive + 4);
  }

  if ((~v7 & 0x30) == 0)
  {
    TSPCGPointFromMessage(*(archive + 13));
    v22 = v21;
    v24 = v23;
    if (*(archive + 14))
    {
      v25 = *(archive + 14);
    }

    else
    {
      v25 = MEMORY[0x277D809D8];
    }

    TSPCGSizeCreateFromMessage(v25);
    self->_unscaledBoundsOfStrokes.origin.x = v22;
    self->_unscaledBoundsOfStrokes.origin.y = v24;
    self->_unscaledBoundsOfStrokes.size.width = v26;
    self->_unscaledBoundsOfStrokes.size.height = v27;
    v7 = *(archive + 4);
  }

  if ((~v7 & 0xC00) != 0)
  {
    CGPathGetBoundingBox(self->_path);
    objc_msgSend_pencilAnnotationDrawingScale(self, v37, v38);
    TSUMultiplyRectScalar();
    v29 = v39;
    v31 = v40;
    v35 = v41;
    v36 = v42;
  }

  else
  {
    TSPCGPointFromMessage(*(archive + 19));
    v29 = v28;
    v31 = v30;
    if (*(archive + 20))
    {
      v32 = *(archive + 20);
    }

    else
    {
      v32 = MEMORY[0x277D809D8];
    }

    TSPCGSizeCreateFromMessage(v32);
  }

  self->_strokePointsFrame.origin.x = v29;
  self->_strokePointsFrame.origin.y = v31;
  self->_strokePointsFrame.size.width = v35;
  self->_strokePointsFrame.size.height = v36;
  p_renderedFrame = &self->_renderedFrame;
  v44 = MEMORY[0x277CBF398];
  v45 = *(MEMORY[0x277CBF398] + 16);
  self->_renderedFrame.origin = *MEMORY[0x277CBF398];
  self->_renderedFrame.size = v45;
  if ((~*(archive + 4) & 0x3000) != 0)
  {
    v215 = v19;
    v57 = objc_msgSend_rasterizedImage(self, v33, v34);
    if (v57)
    {
      objc_msgSend_willModifyForUpgrade(self, v55, v56);
      v58 = MEMORY[0x277D806A8];
      v61 = objc_msgSend_CGImage(v57, v59, v60);
      objc_msgSend_transparencyInsetsForCGImage_(v58, v62, v61);
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      objc_msgSend_size(v57, v71, v72);
      objc_msgSend_scale(v57, v73, v74);
      v77 = objc_msgSend_CGImage(v57, v75, v76);
      TSURectWithSize();
      TSUMultiplyRectScalar();
      v219.size.height = v78 - (v64 + v68);
      v219.size.width = v79 - (v66 + v70);
      v219.origin.y = v64 + v80;
      v219.origin.x = v66 + v81;
      v84 = CGImageCreateWithImageInRect(v77, v219);
      if (v84)
      {
        v85 = MEMORY[0x277D811F8];
        objc_msgSend_scale(v57, v82, v83);
        v87 = objc_msgSend_imageWithCGImage_scale_orientation_(v85, v86, v84, 0);
        CGImageRelease(v84);
        v90 = objc_msgSend_context(self, v88, v89);
        v214 = v70;
        v92 = objc_msgSend_p_rasterizedTSPDataForPencilAnnotationImage_context_(TSDPencilAnnotationStorage, v91, v87, v90);
        rasterizedImageTSPData = self->_rasterizedImageTSPData;
        self->_rasterizedImageTSPData = v92;

        objc_msgSend_unscaledBoundsOfStrokes(self, v94, v95);
        objc_msgSend_pencilAnnotationDrawingScale(self, v96, v97);
        TSUMultiplyRectScalar();
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v105 = v104;
        objc_msgSend_pencilAnnotationDrawingScale(self, v106, v107);
        v109 = v108;
        objc_msgSend_scale(v57, v110, v111);
        v113 = v109 / v112;
        p_renderedFrame->origin.x = v99 + v66 * v113;
        self->_renderedFrame.origin.y = v101 + v64 * v113;
        self->_renderedFrame.size.width = v103 - (v214 * v113 + v66 * v113);
        self->_renderedFrame.size.height = v105 - (v68 * v113 + v64 * v113);
        TSUCenterOfRect();
        TSUCenterOfRect();
        TSUSubtractPoints();
        TSUAddPoints();
        self->_markupOffset.x = v114;
        self->_markupOffset.y = v115;
      }
    }

    x = p_renderedFrame->origin.x;
    y = self->_renderedFrame.origin.y;
    width = self->_renderedFrame.size.width;
    height = self->_renderedFrame.size.height;
    v19 = v215;
  }

  else
  {
    TSPCGPointFromMessage(*(archive + 21));
    x = v46;
    y = v48;
    if (*(archive + 22))
    {
      v50 = *(archive + 22);
    }

    else
    {
      v50 = MEMORY[0x277D809D8];
    }

    TSPCGSizeCreateFromMessage(v50);
    width = v51;
    height = v53;
    p_renderedFrame->origin.x = x;
    self->_renderedFrame.origin.y = y;
    self->_renderedFrame.size.width = v51;
    self->_renderedFrame.size.height = v53;
  }

  v116 = x;
  v117 = y;
  if (CGRectEqualToRect(*(&width - 2), *v44))
  {
    v120 = MEMORY[0x277D81150];
    v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "[TSDPencilAnnotationStorage loadFromArchive:unarchiver:]");
    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v124, v121, v123, 460, 0, "Expected to get a rendered frame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126);
  }

  v127 = *(archive + 4);
  if ((v127 & 0x200) != 0)
  {
    v128 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v118, *(archive + 18));
    encodedDrawingTSPData = self->_encodedDrawingTSPData;
    self->_encodedDrawingTSPData = v128;

    v127 = *(archive + 4);
  }

  if ((v127 & 4) != 0)
  {
    v130 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v118, *(archive + 11));
    legacyEncodedDrawingTSPData = self->_legacyEncodedDrawingTSPData;
    self->_legacyEncodedDrawingTSPData = v130;
  }

  if (objc_msgSend_pencilKitAvailable(MEMORY[0x277D806B0], v118, v119))
  {
    v134 = objc_msgSend_NSData(self->_encodedDrawingTSPData, v132, v133);
    if (v134)
    {
    }

    else
    {
      v137 = objc_msgSend_NSData(self->_legacyEncodedDrawingTSPData, v135, v136);

      if (!v137)
      {
        goto LABEL_54;
      }
    }

    v140 = objc_msgSend_NSData(self->_encodedDrawingTSPData, v132, v133);
    if (!v140)
    {
      v140 = objc_msgSend_NSData(self->_legacyEncodedDrawingTSPData, v138, v139);
    }

    v141 = objc_alloc(MEMORY[0x277D806A8]);
    v143 = objc_msgSend_initWithData_cachedRenderedFrame_cachedStrokePointsFrame_pencilAnnotationDrawingScale_(v141, v142, v140, p_renderedFrame->origin.x, self->_renderedFrame.origin.y, self->_renderedFrame.size.width, self->_renderedFrame.size.height, self->_strokePointsFrame.origin.x, self->_strokePointsFrame.origin.y, self->_strokePointsFrame.size.width, self->_strokePointsFrame.size.height, *&v19);
    drawing = self->_drawing;
    self->_drawing = v143;

    if (objc_msgSend_pencilKitAvailable(MEMORY[0x277D806B0], v145, v146) && !self->_encodedDrawingTSPData)
    {
      objc_msgSend_willModifyForUpgrade(self, v147, v148);
      if (v19 != 1.0)
      {
        v151 = objc_msgSend_drawingByScaling_(self->_drawing, v149, v150, v19, v19);
        v152 = self->_drawing;
        self->_drawing = v151;
      }

      v153 = objc_msgSend_pencilKitDrawing(self->_drawing, v149, v150);
      v156 = objc_msgSend_dataRepresentation(v153, v154, v155);

      v157 = MEMORY[0x277D80828];
      v160 = objc_msgSend_context(self, v158, v159);
      v162 = objc_msgSend_dataFromNSData_filename_context_(v157, v161, v156, @"PencilAnnotationData", v160);

      objc_storeStrong(&self->_encodedDrawingTSPData, v162);
    }
  }

LABEL_54:
  v163 = *(archive + 4);
  if ((v163 & 0x8000) != 0)
  {
    v164 = *(archive + 47);
    if (v164 >= 6)
    {
      v165 = MEMORY[0x277D81150];
      v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "[TSDPencilAnnotationStorage loadFromArchive:unarchiver:]");
      v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v169, v166, v168, 498, 0, "Pencil annotation attach location is out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171);
      v163 = *(archive + 4);
    }
  }

  else
  {
    v164 = 0;
  }

  self->_attachedType = v164;
  if ((v163 & 0x40) != 0)
  {
    TSPCGSizeCreateFromMessage(*(archive + 15));
    self->_originalAttachedSize.width = v172;
    self->_originalAttachedSize.height = v173;
  }

  else
  {
    self->_originalAttachedSize = *MEMORY[0x277D814E8];
  }

  v174 = *(archive + 4);
  v175 = *(archive + 24);
  if ((v174 & 0x10000) == 0)
  {
    v175 = -1.0;
  }

  self->_percentOfPAContainedInParentRep = v175;
  v176 = *(archive + 25);
  if ((v174 & 0x20000) == 0)
  {
    v176 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_textBaselinesTouchedCount = v176;
  v177 = *(archive + 26);
  if ((v174 & 0x40000) == 0)
  {
    v177 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_visibleStrokesCount = v177;
  if ((v174 & 0x80) != 0)
  {
    v183 = TSPTSUColorCreateFromMessage();
    goto LABEL_72;
  }

  if (!objc_msgSend_pencilKitAvailable(MEMORY[0x277D806B0], v132, v133) || (objc_msgSend_drawing(self, v178, v179), v180 = objc_claimAutoreleasedReturnValue(), v180, !v180))
  {
    v183 = 0;
LABEL_72:
    penColor = self->_penColor;
    self->_penColor = v183;
  }

  if ((*(archive + 18) & 8) != 0)
  {
    v186 = *(archive + 54);
    if (v186 >= 7)
    {
      v187 = MEMORY[0x277D81150];
      v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "[TSDPencilAnnotationStorage loadFromArchive:unarchiver:]");
      v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v187, v191, v188, v190, 542, 0, "Pencil annotation tool type is out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v192, v193);
    }

    goto LABEL_79;
  }

  if (!objc_msgSend_pencilKitAvailable(MEMORY[0x277D806B0], v181, v182) || (objc_msgSend_drawing(self, v181, v182), v185 = objc_claimAutoreleasedReturnValue(), v185, !v185))
  {
    v186 = 0;
LABEL_79:
    self->_toolType = v186;
  }

  if (*(archive + 14) < 1)
  {
    if (*(archive + 8) < 1)
    {
      goto LABEL_85;
    }

    v217[0] = MEMORY[0x277D85DD0];
    v217[1] = 3221225472;
    v217[2] = sub_276697E10;
    v217[3] = &unk_27A6CC598;
    v217[4] = self;
    v198 = unarchiverCopy;
    v195 = v217;
    v199 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v198, v200, archive + 24, v199, 0, v195);
  }

  else
  {
    v218[0] = MEMORY[0x277D85DD0];
    v218[1] = 3221225472;
    v218[2] = sub_276697CE4;
    v218[3] = &unk_27A6CC598;
    v218[4] = self;
    v194 = unarchiverCopy;
    v195 = v218;
    v196 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v194, v197, archive + 48, v196, 0, v195);
  }

LABEL_85:
  if (*(archive + 17))
  {
    v202 = objc_alloc(MEMORY[0x277CBEAA8]);
    if (*(archive + 17))
    {
      v201 = objc_msgSend_tsp_initWithMessage_(v202, v203, *(archive + 17));
    }

    else
    {
      v201 = objc_msgSend_tsp_initWithMessage_(v202, v203, MEMORY[0x277D809C0]);
    }
  }

  else
  {
    v201 = objc_msgSend_date(MEMORY[0x277CBEAA8], v181, v182);
  }

  creationDate = self->_creationDate;
  self->_creationDate = v201;

  if ((*(archive + 18) & 0x10) != 0)
  {
    v206 = *(archive + 55);
    if (v206 >= 3)
    {
      v207 = MEMORY[0x277D81150];
      v208 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v205, "[TSDPencilAnnotationStorage loadFromArchive:unarchiver:]");
      v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v207, v211, v208, v210, 579, 0, "Pencil annotation compound type is out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v212, v213);
    }

    goto LABEL_95;
  }

  if (*(archive + 8) >= 3)
  {
    v206 = 1;
LABEL_95:
    self->_compoundAnnotationType = v206;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[126]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2766997B0, off_2812F5188[126]);

  v8 = objc_msgSend_attachedLocation(self, v6, v7);
  if (v8 >= 0x80000000)
  {
    v158 = MEMORY[0x277D81150];
    v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDPencilAnnotationStorage saveToArchiver:]");
    v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v162, v159, v161, 594, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164);
    LODWORD(v8) = 0x7FFFFFFF;
  }

  else if (v8 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v179 = MEMORY[0x277D81150];
    v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDPencilAnnotationStorage saveToArchiver:]");
    v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v179, v183, v180, v182, 594, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v184, v185);
    LODWORD(v8) = 0x80000000;
  }

  *(v5 + 16) |= 0x4000u;
  *(v5 + 184) = v8;
  objc_msgSend_markupOffset(self, v9, v10);
  v12 = v11;
  v14 = v13;
  *(v5 + 16) |= 1u;
  v15 = *(v5 + 72);
  if (!v15)
  {
    v16 = *(v5 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x277C9BB00](v16);
    *(v5 + 72) = v15;
  }

  v216.x = v12;
  v216.y = v14;
  TSPCGPointCopyToMessage(v216, v15);
  v19 = objc_msgSend_rasterizedImageTSPData(self, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_rasterizedImageTSPData(self, v20, v21);

    if (!v22)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDPencilAnnotationStorage saveToArchiver:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 599, 0, "invalid nil value for '%{public}s'", "self.rasterizedImageTSPData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    v33 = objc_msgSend_rasterizedImageTSPData(self, v23, v24);
    *(v5 + 16) |= 2u;
    v34 = *(v5 + 80);
    if (!v34)
    {
      v35 = *(v5 + 8);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C9BA90](v35);
      *(v5 + 80) = v34;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v32, v33, v34);
  }

  objc_msgSend_pencilAnnotationDrawingScale(self, v20, v21);
  *(v5 + 16) |= 0x200000u;
  *(v5 + 224) = v36;
  v39 = objc_msgSend_encodedDrawingTSPData(self, v37, v38);

  if (v39)
  {
    v43 = objc_msgSend_encodedDrawingTSPData(self, v40, v41);
    *(v5 + 16) |= 0x200u;
    v44 = *(v5 + 144);
    if (!v44)
    {
      v45 = *(v5 + 8);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = MEMORY[0x277C9BA90](v45);
      *(v5 + 144) = v44;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v42, v43, v44);
  }

  v46 = objc_msgSend_legacyEncodedDrawingTSPData(self, v40, v41);

  if (v46)
  {
    v50 = objc_msgSend_legacyEncodedDrawingTSPData(self, v47, v48);
    *(v5 + 16) |= 4u;
    v51 = *(v5 + 88);
    if (!v51)
    {
      v52 = *(v5 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x277C9BA90](v52);
      *(v5 + 88) = v51;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v49, v50, v51);
  }

  v53 = objc_msgSend_path(self, v47, v48);
  *(v5 + 16) |= 8u;
  v54 = *(v5 + 96);
  if (!v54)
  {
    v55 = *(v5 + 8);
    if (v55)
    {
      v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
    }

    v54 = MEMORY[0x277C9BAC0](v55);
    *(v5 + 96) = v54;
  }

  TSPCGPathCopyToMessage(v53, v54);
  objc_msgSend_unscaledBoundsOfStrokes(self, v56, v57);
  v59 = v58;
  v61 = v60;
  *(v5 + 16) |= 0x10u;
  v62 = *(v5 + 104);
  if (!v62)
  {
    v63 = *(v5 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x277C9BB00](v63);
    *(v5 + 104) = v62;
  }

  v217.x = v59;
  v217.y = v61;
  TSPCGPointCopyToMessage(v217, v62);
  objc_msgSend_unscaledBoundsOfStrokes(self, v64, v65);
  v67 = v66;
  v69 = v68;
  *(v5 + 16) |= 0x20u;
  v70 = *(v5 + 112);
  if (!v70)
  {
    v71 = *(v5 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x277C9BAD0](v71);
    *(v5 + 112) = v70;
  }

  v218.width = v67;
  v218.height = v69;
  TSPCGSizeCopyToMessage(v218, v70);
  v74 = objc_msgSend_attachedType(self, v72, v73);
  if (v74 >= 0x80000000)
  {
    v165 = MEMORY[0x277D81150];
    v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "[TSDPencilAnnotationStorage saveToArchiver:]");
    v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v169, v166, v168, 619, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171);
    LODWORD(v74) = 0x7FFFFFFF;
  }

  else if (v74 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v186 = MEMORY[0x277D81150];
    v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "[TSDPencilAnnotationStorage saveToArchiver:]");
    v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v186, v190, v187, v189, 619, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v191, v192);
    LODWORD(v74) = 0x80000000;
  }

  *(v5 + 16) |= 0x8000u;
  *(v5 + 188) = v74;
  objc_msgSend_originalAttachedSize(self, v75, v76);
  v78 = v77;
  v80 = v79;
  *(v5 + 16) |= 0x40u;
  v81 = *(v5 + 120);
  if (!v81)
  {
    v82 = *(v5 + 8);
    if (v82)
    {
      v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
    }

    v81 = MEMORY[0x277C9BAD0](v82);
    *(v5 + 120) = v81;
  }

  v219.width = v78;
  v219.height = v80;
  TSPCGSizeCopyToMessage(v219, v81);
  objc_msgSend_percentOfPAContainedInParentRep(self, v83, v84);
  *(v5 + 16) |= 0x10000u;
  *(v5 + 192) = v85;
  v88 = objc_msgSend_textBaselinesTouchedCount(self, v86, v87);
  *(v5 + 16) |= 0x20000u;
  *(v5 + 200) = v88;
  v91 = objc_msgSend_visibleStrokesCount(self, v89, v90);
  *(v5 + 16) |= 0x40000u;
  *(v5 + 208) = v91;
  v94 = objc_msgSend_penColor(self, v92, v93);

  if (v94)
  {
    v97 = objc_msgSend_penColor(self, v95, v96);
    *(v5 + 16) |= 0x80u;
    if (!*(v5 + 128))
    {
      v98 = *(v5 + 8);
      if (v98)
      {
        v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v5 + 128) = MEMORY[0x277C9BAF0](v98);
    }

    TSPTSUColorCopyToMessage();
  }

  if (objc_msgSend_toolType(self, v95, v96))
  {
    v101 = objc_msgSend_toolType(self, v99, v100);
    if (v101 >= 0x80000000)
    {
      v200 = MEMORY[0x277D81150];
      v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "[TSDPencilAnnotationStorage saveToArchiver:]");
      v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v200, v204, v201, v203, 632, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206);
      LODWORD(v101) = 0x7FFFFFFF;
    }

    else if (v101 <= 0xFFFFFFFF7FFFFFFFLL)
    {
      v207 = MEMORY[0x277D81150];
      v208 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "[TSDPencilAnnotationStorage saveToArchiver:]");
      v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v207, v211, v208, v210, 632, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v212, v213);
      LODWORD(v101) = 0x80000000;
    }

    *(v5 + 16) |= 0x80000u;
    *(v5 + 216) = v101;
  }

  v102 = objc_msgSend_compoundAnnotationType(self, v99, v100);
  if (v102 >= 0x80000000)
  {
    v172 = MEMORY[0x277D81150];
    v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSDPencilAnnotationStorage saveToArchiver:]");
    v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v176, v173, v175, 635, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178);
    LODWORD(v102) = 0x7FFFFFFF;
  }

  else if (v102 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v193 = MEMORY[0x277D81150];
    v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSDPencilAnnotationStorage saveToArchiver:]");
    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/PencilAnnotations/TSDPencilAnnotationStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v197, v194, v196, 635, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199);
    LODWORD(v102) = 0x80000000;
  }

  *(v5 + 16) |= 0x100000u;
  *(v5 + 220) = v102;
  v105 = objc_msgSend_subStorages(self, v103, v104);
  v108 = objc_msgSend_count(v105, v106, v107);

  if (v108)
  {
    if (objc_msgSend_compoundAnnotationType(self, v109, v110) == 1)
    {
      v113 = objc_msgSend_subStorages(self, v111, v112);
      objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v114, v113, v5 + 24);
    }

    else
    {
      v113 = objc_msgSend_subStorages(self, v111, v112);
      objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v115, v113, v5 + 48);
    }
  }

  v116 = objc_msgSend_creationDate(self, v109, v110);

  if (v116)
  {
    v120 = objc_msgSend_creationDate(self, v117, v118);
    *(v5 + 16) |= 0x100u;
    v121 = *(v5 + 136);
    if (!v121)
    {
      v122 = *(v5 + 8);
      if (v122)
      {
        v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
      }

      v121 = MEMORY[0x277C9BAB0](v122);
      *(v5 + 136) = v121;
    }

    objc_msgSend_tsp_saveToMessage_(v120, v119, v121);
  }

  objc_msgSend_renderedFrame(self, v117, v118);
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  objc_msgSend_strokePointsFrame(self, v131, v132);
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  *(v5 + 16) |= 0x1000u;
  v141 = *(v5 + 168);
  if (!v141)
  {
    v142 = *(v5 + 8);
    if (v142)
    {
      v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
    }

    v141 = MEMORY[0x277C9BB00](v142);
    *(v5 + 168) = v141;
  }

  v220.x = v124;
  v220.y = v126;
  TSPCGPointCopyToMessage(v220, v141);
  *(v5 + 16) |= 0x2000u;
  v143 = *(v5 + 176);
  if (!v143)
  {
    v144 = *(v5 + 8);
    if (v144)
    {
      v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
    }

    v143 = MEMORY[0x277C9BAD0](v144);
    *(v5 + 176) = v143;
  }

  v221.width = v128;
  v221.height = v130;
  TSPCGSizeCopyToMessage(v221, v143);
  *(v5 + 16) |= 0x400u;
  v145 = *(v5 + 152);
  if (!v145)
  {
    v146 = *(v5 + 8);
    if (v146)
    {
      v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
    }

    v145 = MEMORY[0x277C9BB00](v146);
    *(v5 + 152) = v145;
  }

  v222.x = v134;
  v222.y = v136;
  TSPCGPointCopyToMessage(v222, v145);
  *(v5 + 16) |= 0x800u;
  v147 = *(v5 + 160);
  if (!v147)
  {
    v148 = *(v5 + 8);
    if (v148)
    {
      v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
    }

    v147 = MEMORY[0x277C9BAD0](v148);
    *(v5 + 160) = v147;
  }

  v223.width = v138;
  v223.height = v140;
  TSPCGSizeCopyToMessage(v223, v147);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v149, 16, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v150, 17, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v151, 18, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v152, 19, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v153, 20, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v154, 23, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v155, 24, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v156, 21, v5);
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v157, 22, v5);
}

- (BOOL)isCalloutLine
{
  v6 = objc_msgSend_parentStorage(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_parentStorage(self, v4, v5);
    if (objc_msgSend_compoundAnnotationType(v7, v8, v9) == 1)
    {
      v12 = objc_msgSend_parentStorage(self, v10, v11);
      v15 = objc_msgSend_subStorages(v12, v13, v14);
      if (objc_msgSend_count(v15, v16, v17) < 3)
      {
        v26 = 0;
      }

      else
      {
        v20 = objc_msgSend_parentStorage(self, v18, v19);
        v23 = objc_msgSend_subStorages(v20, v21, v22);
        v25 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 2);
        v26 = v25 == self;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)isCalloutMarginAnnotation
{
  v6 = objc_msgSend_parentStorage(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_parentStorage(self, v4, v5);
    if (objc_msgSend_compoundAnnotationType(v7, v8, v9) == 1)
    {
      v12 = objc_msgSend_parentStorage(self, v10, v11);
      v15 = objc_msgSend_subStorages(v12, v13, v14);
      if (objc_msgSend_count(v15, v16, v17) < 3)
      {
        v26 = 0;
      }

      else
      {
        v20 = objc_msgSend_parentStorage(self, v18, v19);
        v23 = objc_msgSend_subStorages(v20, v21, v22);
        v25 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 1);
        v26 = v25 == self;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)isStretchableParagraphAnnotation
{
  if (objc_msgSend_compoundAnnotationType(self, a2, v2) != 2)
  {
    return 0;
  }

  v6 = objc_msgSend_parentStorage(self, v4, v5);
  v9 = objc_msgSend_subStorages(v6, v7, v8);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
  v12 = v11 == self;

  return v12;
}

- (TSUImage)rasterizedImage
{
  v4 = objc_msgSend_rasterizedImageTSPData(self, a2, v2);
  v7 = objc_msgSend_NSData(v4, v5, v6);

  if (v7)
  {
    v10 = MEMORY[0x277D811F8];
    v11 = objc_msgSend_NSData(v4, v8, v9);
    v13 = objc_msgSend_imageWithData_(v10, v12, v11);

    objc_msgSend_scale(v13, v14, v15);
    if (v18 == 1.0)
    {
      v19 = MEMORY[0x277D811F8];
      v20 = objc_msgSend_CGImage(v13, v16, v17);
      objc_msgSend_pencilAnnotationDrawingScale(self, v21, v22);
      v25 = objc_msgSend_imageWithCGImage_scale_orientation_(v19, v24, v20, 0, *MEMORY[0x277D80800] / v23);

      v13 = v25;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isCalloutParentStorage
{
  if (objc_msgSend_compoundAnnotationType(self, a2, v2) != 1)
  {
    return 0;
  }

  v6 = objc_msgSend_subStorages(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) > 2;

  return v9;
}

- (CGAffineTransform)transformFromUnscaledCanvasToStroke
{
  objc_msgSend_pencilAnnotationDrawingScale(self, a3, v3);

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

- (CGRect)convertUnscaledCanvasToStrokeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_transformFromUnscaledCanvasToStroke(self, a2, v3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGRect)convertStrokeRectToUnscaledCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  objc_msgSend_transformFromStrokeToUnscaledCanvas(self, a2, v3);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v8);
}

- (CGPoint)convertUnscaledCanvasToStrokePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_msgSend_transformFromUnscaledCanvasToStroke(self, a2, v3);
  v4 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, y), v8, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGPoint)convertStrokeToUnscaledCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_msgSend_transformFromStrokeToUnscaledCanvas(self, a2, v3);
  v4 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, y), v8, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGSize)convertUnscaledCanvasToStrokeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_transformFromUnscaledCanvasToStroke(self, a2, v3);
  v4 = vmlaq_n_f64(vmulq_n_f64(v9, height), v8, width);
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

- (CGSize)convertStrokeToUnscaledCanvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_transformFromStrokeToUnscaledCanvas(self, a2, v3);
  v4 = vmlaq_n_f64(vmulq_n_f64(v9, height), v8, width);
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

+ (id)p_rasterizedTSPDataForPencilAnnotationImage:(id)image context:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_PNGRepresentation(image, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"PencilAnnotationImage.%@", @"png");
  v12 = objc_msgSend_dataFromNSData_filename_context_(MEMORY[0x277D80828], v11, v8, v10, contextCopy);

  return v12;
}

- (CGPoint)markupOffset
{
  x = self->_markupOffset.x;
  y = self->_markupOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)originalAttachedSize
{
  width = self->_originalAttachedSize.width;
  height = self->_originalAttachedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)unscaledBoundsOfStrokes
{
  x = self->_unscaledBoundsOfStrokes.origin.x;
  y = self->_unscaledBoundsOfStrokes.origin.y;
  width = self->_unscaledBoundsOfStrokes.size.width;
  height = self->_unscaledBoundsOfStrokes.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSKPencilAnnotationStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end