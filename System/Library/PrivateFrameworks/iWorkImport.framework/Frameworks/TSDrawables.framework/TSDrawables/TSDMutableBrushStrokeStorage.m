@interface TSDMutableBrushStrokeStorage
- (TSDMutableBrushStrokeStorage)init;
- (id)deepCopy;
- (unint64_t)totalSectionCount;
- (void)addPath:(id)a3 withBounds:(CGRect)a4 shouldSmooth:(BOOL)a5 forKey:(id)a6;
- (void)addTextureIndex:(unint64_t)a3 forKey:(id)a4;
- (void)setImage:(id)a3;
- (void)setLineEnd:(id)a3 forKey:(id)a4;
- (void)setOption:(id)a3 forKey:(id)a4;
@end

@implementation TSDMutableBrushStrokeStorage

- (TSDMutableBrushStrokeStorage)init
{
  v24.receiver = self;
  v24.super_class = TSDMutableBrushStrokeStorage;
  v4 = [(TSDMutableBrushStrokeStorage *)&v24 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
    paths = v4->_paths;
    v4->_paths = v5;

    v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
    bounds = v4->_bounds;
    v4->_bounds = v9;

    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
    textureIndices = v4->_textureIndices;
    v4->_textureIndices = v13;

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
    options = v4->_options;
    v4->_options = v17;

    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v19, v20);
    lineEnds = v4->_lineEnds;
    v4->_lineEnds = v21;
  }

  return v4;
}

- (unint64_t)totalSectionCount
{
  v3 = objc_msgSend_paths(self, a2, v2);
  v5 = objc_msgSend_p_totalSectionCountWithPaths_(TSDImmutableBrushStrokeStorage, v4, v3);

  return v5;
}

- (void)setImage:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  image = self->_image;
  self->_image = v4;
}

- (void)addPath:(id)a3 withBounds:(CGRect)a4 shouldSmooth:(BOOL)a5 forKey:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v40 = a3;
  v13 = a6;
  v17 = objc_msgSend_objectForKeyedSubscript_(self->_paths, v14, v13);
  if (!v17)
  {
    v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(self->_paths, v18, v17, v13);
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(self->_bounds, v15, v13);
  if (v21)
  {
    if (a5)
    {
LABEL_5:
      v22 = objc_msgSend_p_smoothPath_(TSDMutableBrushStrokeStorage, v19, v40);
      goto LABEL_8;
    }
  }

  else
  {
    v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(self->_bounds, v24, v21, v13);
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v22 = objc_msgSend_copy(v40, v19, v20);
LABEL_8:
  v25 = v22;
  v26 = objc_msgSend_objectForKeyedSubscript_(self->_paths, v23, v13);
  v27 = [TSDBrushStrokeStorageBezierPathContainer alloc];
  v30 = objc_msgSend_copy(v40, v28, v29);
  v32 = objc_msgSend_initWithOriginalPath_pathWithPossibleSmoothing_(v27, v31, v30, v25);
  objc_msgSend_addObject_(v26, v33, v32);

  v35 = objc_msgSend_objectForKeyedSubscript_(self->_bounds, v34, v13);
  v38 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v36, v37, x, y, width, height);
  objc_msgSend_addObject_(v35, v39, v38);
}

- (void)addTextureIndex:(unint64_t)a3 forKey:(id)a4
{
  v13 = a4;
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_textureIndices, v6, v13);
  if (!v9)
  {
    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(self->_textureIndices, v10, v9, v13);
  }

  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v7, a3);
  objc_msgSend_addObject_(v9, v12, v11);
}

- (void)setOption:(id)a3 forKey:(id)a4
{
  options = self->_options;
  v6 = a4;
  v10 = objc_msgSend_copy(a3, v7, v8);
  objc_msgSend_setObject_forKey_(options, v9, v10, v6);
}

- (void)setLineEnd:(id)a3 forKey:(id)a4
{
  lineEnds = self->_lineEnds;
  v6 = a4;
  v7 = a3;
  v8 = [TSDLineEnd alloc];
  v38 = objc_msgSend_path(v7, v9, v10);
  v13 = objc_msgSend_copy(v38, v11, v12);
  v16 = objc_msgSend_wrapPath(v7, v14, v15);
  v19 = objc_msgSend_copy(v16, v17, v18);
  objc_msgSend_endPoint(v7, v20, v21);
  v23 = v22;
  v25 = v24;
  isFilled = objc_msgSend_isFilled(v7, v26, v27);
  v31 = objc_msgSend_identifier(v7, v29, v30);
  v34 = objc_msgSend_lineJoin(v7, v32, v33);

  isFilled_identifier_lineJoin = objc_msgSend_initWithBezierPath_wrapPath_endPoint_isFilled_identifier_lineJoin_(v8, v35, v13, v19, isFilled, v31, v34, v23, v25);
  objc_msgSend_setObject_forKey_(lineEnds, v37, isFilled_identifier_lineJoin, v6);
}

- (id)deepCopy
{
  v3 = [TSDImmutableBrushStrokeStorage alloc];
  v5 = objc_msgSend_initWithImage_paths_bounds_textureIndices_options_lineEnds_(v3, v4, self->_image, self->_paths, self->_bounds, self->_textureIndices, self->_options, self->_lineEnds);
  v8 = objc_msgSend_deepCopy(v5, v6, v7);

  return v8;
}

@end