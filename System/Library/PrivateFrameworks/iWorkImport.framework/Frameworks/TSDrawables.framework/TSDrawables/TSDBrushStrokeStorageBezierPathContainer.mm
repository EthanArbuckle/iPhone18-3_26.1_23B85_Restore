@interface TSDBrushStrokeStorageBezierPathContainer
- (BOOL)isEqual:(id)equal;
- (TSDBrushStrokeStorageBezierPathContainer)initWithOriginalPath:(id)path pathWithPossibleSmoothing:(id)smoothing;
- (unint64_t)hash;
@end

@implementation TSDBrushStrokeStorageBezierPathContainer

- (TSDBrushStrokeStorageBezierPathContainer)initWithOriginalPath:(id)path pathWithPossibleSmoothing:(id)smoothing
{
  pathCopy = path;
  smoothingCopy = smoothing;
  v12.receiver = self;
  v12.super_class = TSDBrushStrokeStorageBezierPathContainer;
  v9 = [(TSDBrushStrokeStorageBezierPathContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalPath, path);
    objc_storeStrong(&v10->_pathWithPossibleSmoothing, smoothing);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (objc_msgSend_originalPath(self, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_originalPath(v5, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend_isEqual_(v8, v12, v11), v11, v8, v13))
  {
    v16 = objc_msgSend_pathWithPossibleSmoothing(self, v14, v15);
    v19 = objc_msgSend_pathWithPossibleSmoothing(v5, v17, v18);
    isEqual = objc_msgSend_isEqual_(v16, v20, v19);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_originalPath(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_pathWithPossibleSmoothing(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

@end