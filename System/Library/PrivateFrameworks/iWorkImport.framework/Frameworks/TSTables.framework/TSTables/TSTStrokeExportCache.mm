@interface TSTStrokeExportCache
- (TSTSimpleRange)range;
- (TSTStrokeExportCache)initWithMergedStack:(id)a3;
- (id)strokeAtIndex:(unsigned int)a3;
@end

@implementation TSTStrokeExportCache

- (TSTStrokeExportCache)initWithMergedStack:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSTStrokeExportCache;
  v6 = [(TSTStrokeExportCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mergedStrokes, a3);
    v7->_range = xmmword_2217E1DE8;
    stroke = v7->_stroke;
    v7->_stroke = 0;
  }

  return v7;
}

- (id)strokeAtIndex:(unsigned int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_range(self, a2, *&a3, v3, v4);
  if (!v8 || v7 > v5 || &v8[v7 - 1] < v5)
  {
    v12 = objc_msgSend_mergedStrokes(self, v8, v9, v10, v11);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_221467864;
    v21[3] = &unk_278465880;
    v21[4] = self;
    objc_msgSend_enumerateStrokesFrom_to_usingBlock_(v12, v13, v5, 2147483646, v21);
  }

  v14 = objc_msgSend_range(self, v8, v9, v10, v11);
  if (v15 && v14 <= v5 && &v15[v14 - 1] >= v5)
  {
    v19 = objc_msgSend_stroke(self, v15, v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (TSTSimpleRange)range
{
  length = self->_range.length;
  origin = self->_range.origin;
  result.length = length;
  result.origin = origin;
  return result;
}

@end