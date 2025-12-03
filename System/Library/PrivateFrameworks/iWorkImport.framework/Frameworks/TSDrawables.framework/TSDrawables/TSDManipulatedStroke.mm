@interface TSDManipulatedStroke
- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width;
- (CGPath)pathToStrokeFromCGPath:(CGPath *)path;
- (TSDManipulatedStroke)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDManipulatedStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (double)renderedWidth;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)strokeLineEnd:(id)end;
- (void)p_setupDoodlesManipulation;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDManipulatedStroke

- (TSDManipulatedStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v11 = *&join;
  v12 = *&cap;
  nameCopy = name;
  colorCopy = color;
  patternCopy = pattern;
  v24.receiver = self;
  v24.super_class = TSDManipulatedStroke;
  v20 = [(TSDSmartStroke *)&v24 initWithName:nameCopy color:colorCopy width:v12 cap:v11 join:patternCopy pattern:width miterLimit:limit];
  if (v20 && objc_msgSend_isEqualToString_(nameCopy, v19, @"Doodles"))
  {
    objc_msgSend_p_setupDoodlesManipulation(v20, v21, v22);
  }

  return v20;
}

- (void)p_setupDoodlesManipulation
{
  v4 = objc_alloc_init(TSDVaryWidthPathManipulation);
  objc_msgSend_setPathManipulation_(self, v3, v4);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableManipulatedStroke alloc];
  v7 = objc_msgSend_strokeName(self, v5, v6);
  v10 = objc_msgSend_color(self, v8, v9);
  objc_msgSend_width(self, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_cap(self, v15, v16);
  v20 = objc_msgSend_join(self, v18, v19);
  v23 = objc_msgSend_pattern(self, v21, v22);
  objc_msgSend_miterLimit(self, v24, v25);
  v28 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(v4, v26, v7, v10, v17, v20, v23, v14, v27);

  v31 = objc_msgSend_randomSeed(self, v29, v30);
  objc_msgSend_setRandomSeed_(v28, v32, v31);
  return v28;
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  v7 = objc_msgSend_identifier(endCopy, v5, v6);
  v10 = objc_msgSend_strokeName(self, v8, v9);
  hasPrefix = objc_msgSend_hasPrefix_(v7, v11, v10);

  if (hasPrefix)
  {
    v13 = endCopy;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TSDManipulatedStroke;
    v13 = [(TSDStroke *)&v16 strokeLineEnd:endCopy];
  }

  v14 = v13;

  return v14;
}

- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width
{
  objc_msgSend_seedRandom(self, a2, path);
  manipulation = self->_manipulation;
  if (!manipulation)
  {
    return path;
  }

  return objc_msgSend_manipulatePath_withLineWidth_(manipulation, v7, path, width);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  orderCopy = order;
  parameterizedCopy = parameterized;
  drawingCopy = drawing;
  strokeCopy = stroke;
  objc_msgSend_width(self, a2, path);
  v16 = objc_msgSend_manipulatePath_withLineWidth_(self, v15, path);
  v17.receiver = self;
  v17.super_class = TSDManipulatedStroke;
  [(TSDStroke *)&v17 paintPath:v16 wantsInteriorStroke:strokeCopy inContext:context useFastDrawing:drawingCopy parameterized:parameterizedCopy shouldReverseDrawOrder:orderCopy];
}

- (CGPath)pathToStrokeFromCGPath:(CGPath *)path
{
  objc_msgSend_width(self, a2, path);

  return objc_msgSend_manipulatePath_withLineWidth_(self, v5, path);
}

- (TSDManipulatedStroke)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v17.receiver = self;
  v17.super_class = TSDManipulatedStroke;
  v5 = [(TSDSmartStroke *)&v17 initWithArchive:archive unarchiver:unarchiver];
  if (v5)
  {
    if (*(archive + 5))
    {
      v6 = *(archive + 5);
    }

    else
    {
      v6 = &TSD::_SmartStrokeArchive_default_instance_;
    }

    TSD::SmartStrokeArchive::SmartStrokeArchive(v15, v6);
    v5->_randomSeed = v16;
    v9 = objc_msgSend_strokeName(v5, v7, v8);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"Doodles");

    if (isEqualToString)
    {
      objc_msgSend_p_setupDoodlesManipulation(v5, v12, v13);
    }

    TSD::SmartStrokeArchive::~SmartStrokeArchive(v15);
  }

  return v5;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v10.receiver = self;
  v10.super_class = TSDManipulatedStroke;
  [(TSDSmartStroke *)&v10 saveToArchive:archive archiver:archiverCopy];
  *(archive + 4) |= 4u;
  v7 = *(archive + 5);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::SmartStrokeArchive>(v8);
    *(archive + 5) = v7;
  }

  randomSeed = self->_randomSeed;
  *(v7 + 16) |= 8u;
  *(v7 + 48) = randomSeed;
}

- (double)renderedWidth
{
  if (self->_manipulation)
  {
    objc_msgSend_i_width(self, a2, v2);
    return v3 * 4.0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDManipulatedStroke;
    [(TSDStroke *)&v5 renderedWidth];
  }

  return result;
}

@end