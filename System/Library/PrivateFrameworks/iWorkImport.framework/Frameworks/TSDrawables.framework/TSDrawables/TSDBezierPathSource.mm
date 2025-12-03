@interface TSDBezierPathSource
+ (id)pathSourceWithBezierPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transformToNaturalSize;
- (CGSize)naturalSize;
- (TSDBezierPathSource)initWithArchive:(const void *)archive andBezierArchive:(const void *)bezierArchive;
- (TSDBezierPathSource)initWithBezierPath:(id)path;
- (TSDBezierPathSource)initWithNaturalSize:(CGSize)size;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (void)p_setBezierPath:(id)path;
- (void)saveToArchive:(void *)archive;
- (void)saveToArchive:(void *)archive andBezierArchive:(void *)bezierArchive;
- (void)setNaturalSize:(CGSize)size;
@end

@implementation TSDBezierPathSource

- (TSDBezierPathSource)initWithArchive:(const void *)archive andBezierArchive:(const void *)bezierArchive
{
  if ((*(bezierArchive + 16) & 4) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277D81160]);
    if (*(bezierArchive + 5))
    {
      v10 = objc_msgSend_initWithArchive_(v12, v13, *(bezierArchive + 5));
    }

    else
    {
      v10 = objc_msgSend_initWithArchive_(v12, v13, MEMORY[0x277D809C8]);
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D81160]);
    v9 = *(bezierArchive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      v9 = *v9;
    }

    v10 = objc_msgSend_initWithCString_(v7, v8, v9);
  }

  v14 = v10;
  v15 = objc_msgSend_initWithBezierPath_(self, v11, v10);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_loadSharedFromArchive_(v15, v16, archive);
    if ((*(bezierArchive + 16) & 2) != 0)
    {
      TSPCGSizeCreateFromMessage(*(bezierArchive + 4));
      v19 = v18;
      v21 = v20;
      if ((TSUSizeHasNaNComponents() & 1) == 0)
      {
        v17->mNaturalSize.width = v19;
        v17->mNaturalSize.height = v21;
      }
    }
  }

  return v17;
}

- (void)saveToArchive:(void *)archive andBezierArchive:(void *)bezierArchive
{
  objc_msgSend_saveSharedToArchive_(self, a2, archive);
  mPath = self->mPath;
  *(bezierArchive + 4) |= 4u;
  v8 = *(bezierArchive + 5);
  if (!v8)
  {
    v9 = *(bezierArchive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x277C9BAC0](v9);
    *(bezierArchive + 5) = v8;
  }

  objc_msgSend_saveToArchive_(mPath, v6, v8);
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  *(bezierArchive + 4) |= 2u;
  v12 = *(bezierArchive + 4);
  if (!v12)
  {
    v13 = *(bezierArchive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C9BAD0](v13);
    *(bezierArchive + 4) = v12;
  }

  v14 = width;
  v15 = height;

  TSPCGSizeCopyToMessage(*&v14, v12);
}

- (void)saveToArchive:(void *)archive
{
  *(archive + 4) |= 0x10u;
  v5 = *(archive + 7);
  if (!v5)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::CreateMaybeMessage<TSD::BezierPathSourceArchive>(v6);
    *(archive + 7) = v5;
  }

  objc_msgSend_saveToArchive_andBezierArchive_(self, a2, archive, v5);
}

+ (id)pathSourceWithBezierPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithBezierPath_(v4, v5, pathCopy);

  return v6;
}

- (TSDBezierPathSource)initWithBezierPath:(id)path
{
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = TSDBezierPathSource;
  v7 = [(TSDBezierPathSource *)&v24 init];
  if (v7)
  {
    if (objc_msgSend_elementCount(pathCopy, v5, v6) < 1)
    {
      v10 = *(MEMORY[0x277CBF398] + 16);
      v11 = *(MEMORY[0x277CBF398] + 24);
    }

    else
    {
      objc_msgSend_controlPointBounds(pathCopy, v8, v9);
    }

    v12 = v10 == *MEMORY[0x277CBF3A8] && v11 == *(MEMORY[0x277CBF3A8] + 8);
    if (v12 || TSURectHasNaNComponents())
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDBezierPathSource initWithBezierPath:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBezierPathSource.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 46, 0, "Ignoring invalid bezier path %@", pathCopy);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19);
      v22 = objc_msgSend_bezierPathWithDefaultsForErrorCases(MEMORY[0x277D81160], v20, v21);

      pathCopy = v22;
    }

    if (pathCopy)
    {
      objc_msgSend_p_setBezierPath_(v7, v8, pathCopy);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (TSDBezierPathSource)initWithNaturalSize:(CGSize)size
{
  v5 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], a2, v3, 0.0, 0.0, size.width, size.height);
  v7 = objc_msgSend_initWithBezierPath_(self, v6, v5);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_copy(self->mPath, a2, zone);
  v6 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v6, v7, zone);
  v10 = objc_msgSend_initWithBezierPath_(v8, v9, v5);
  hasHorizontalFlip = objc_msgSend_hasHorizontalFlip(self, v11, v12);
  objc_msgSend_setHasHorizontalFlip_(v10, v14, hasHorizontalFlip);
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v15, v16);
  objc_msgSend_setHasVerticalFlip_(v10, v18, hasVerticalFlip);
  v21 = objc_msgSend_localizationKey(self, v19, v20);
  objc_msgSend_setLocalizationKey_(v10, v22, v21);

  v25 = objc_msgSend_userDefinedIdentifier(self, v23, v24);
  objc_msgSend_setUserDefinedIdentifier_(v10, v26, v25);

  v29 = objc_msgSend_userDefinedName(self, v27, v28);
  objc_msgSend_setUserDefinedName_(v10, v30, v29);

  objc_msgSend_naturalSize(self, v31, v32);
  objc_msgSend_setNaturalSize_(v10, v33, v34);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5 && (v11.receiver = self, v11.super_class = TSDBezierPathSource, [(TSDPathSource *)&v11 isEqual:equalCopy]) && ((mPath = self->mPath, v8 = *(v5 + 40), mPath == v8) || objc_msgSend_isEqual_(mPath, v6, v8)) && self->mIsRectangular == *(v5 + 48))
    {
      v9 = TSUNearlyEqualSizes();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = TSDBezierPathSource;
  v3 = [(TSDBezierPathSource *)&v19 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v7 = MEMORY[0x277CCACA8];
  v10 = objc_msgSend_localizationKey(self, v8, v9);
  v13 = objc_msgSend_userDefinedName(self, v11, v12);
  v14 = NSStringFromCGSize(self->mNaturalSize);
  v16 = objc_msgSend_stringWithFormat_(v7, v15, @" localizationKey=%@; userDefinedName=%@; naturalSize=%@; path=%@; isRectangular=%d", v10, v13, v14, self->mPath, self->mIsRectangular);;
  objc_msgSend_appendString_(v6, v17, v16);

  return v6;
}

- (void)setNaturalSize:(CGSize)size
{
  self->mNaturalSize = size;
  mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
  self->mBezierPathWithoutFlips = 0;
}

- (CGAffineTransform)transformToNaturalSize
{
  objc_msgSend_bounds(self->mPath, a3, v3);
  v7 = v6;
  v9 = v8;
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result = TSUNearlyEqualSizes();
  if (result)
  {
    v13 = MEMORY[0x277CBF2C0];
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v14;
    *&retstr->tx = *(v13 + 32);
  }

  else
  {
    v15 = 1.0;
    v16 = 1.0;
    if (v7 > 0.01)
    {
      v17 = width / v7;
      v16 = v17;
    }

    if (v9 > 0.01)
    {
      v18 = height / v9;
      v15 = v18;
    }

    if (width == 0.0)
    {
      v16 = 1.0;
    }

    v19 = v16;
    if (height == 0.0)
    {
      v15 = 1.0;
    }

    v20 = v15;
    return CGAffineTransformMakeScale(retstr, v19, v20);
  }

  return result;
}

- (id)bezierPathWithoutFlips
{
  v6 = objc_msgSend_copy(self->mBezierPathWithoutFlips, a2, v2);
  if (!v6)
  {
    v7 = objc_msgSend_copy(self->mPath, v4, v5);
    memset(&v14[1], 0, sizeof(CGAffineTransform));
    objc_msgSend_transformToNaturalSize(self, v8, v9);
    v14[0] = v14[1];
    if (!CGAffineTransformIsIdentity(v14))
    {
      v14[0] = v14[1];
      objc_msgSend_transformUsingAffineTransform_(v7, v10, v14);
    }

    v6 = objc_msgSend_copy(v7, v10, v11);
    mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
    self->mBezierPathWithoutFlips = v7;
  }

  return v6;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  v67 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  if (self->mIsRectangular == *(v8 + 48) && (v9 = objc_msgSend_elementCount(self->mPath, v6, v7), v9 == objc_msgSend_elementCount(*(v8 + 40), v10, v11)) && (isCircular = objc_msgSend_isCircular(self->mPath, v12, v13), isCircular == objc_msgSend_isCircular(*(v8 + 40), v15, v16)) && (isDiamond = objc_msgSend_isDiamond(self->mPath, v17, v18), isDiamond == objc_msgSend_isDiamond(*(v8 + 40), v20, v21)) && (isTriangular = objc_msgSend_isTriangular(self->mPath, v22, v23), isTriangular == objc_msgSend_isTriangular(*(v8 + 40), v25, v26)) && ((v31 = objc_msgSend_elementCount(self->mPath, v27, v28), v31 != objc_msgSend_elementCount(*(v8 + 40), v32, v33)) || (objc_msgSend_localizationKey(self, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend_localizationKey(v8, v37, v38), v39 = objc_claimAutoreleasedReturnValue(), v40 = sub_2767977FC(v36, v39), v39, v36, v40)))
  {
    if (objc_msgSend_isTriangular(self->mPath, v34, v35))
    {
      v41 = v8;
      objc_msgSend_naturalSize(self, v42, v43);
      objc_msgSend_naturalSize(v41, v44, v45);
      if ((TSUEqualSizesWithThreshold() & 1) == 0)
      {
        v48 = objc_msgSend_copy(v41, v46, v47);

        objc_msgSend_naturalSize(self, v49, v50);
        objc_msgSend_setNaturalSize_(v48, v51, v52);
        v53 = v48[5];
        objc_msgSend_transformToNaturalSize(v48, v54, v55);
        objc_msgSend_transformUsingAffineTransform_(v53, v56, &v65);
        v41 = v48;
      }

      if (objc_msgSend_elementCount(self->mPath, v46, v47) < 1)
      {
        v29 = 3;
      }

      else
      {
        v58 = 0;
        v29 = 3;
        while (1)
        {
          objc_msgSend_elementAtIndex_associatedPoints_(self->mPath, v57, v58, &v65);
          objc_msgSend_elementAtIndex_associatedPoints_(v41[5], v59, v58, &v63);
          if (v65 != v63 && vabdd_f64(v65, v63) >= 0.00999999978)
          {
            break;
          }

          v62 = v66;
          if (v66 != v64)
          {
            v62 = vabdd_f64(v66, v64);
            if (v62 >= 0.00999999978)
            {
              break;
            }
          }

          if (++v58 >= objc_msgSend_elementCount(self->mPath, v60, v61, v62))
          {
            goto LABEL_24;
          }
        }

        v29 = 1;
      }

LABEL_24:
    }

    else
    {
      v29 = 3;
    }
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  objc_msgSend_naturalSize(self, v7, v8);
  objc_msgSend_naturalSize(v6, v9, v10);
  TSUMixSizes();
  v12 = v11;
  v14 = v13;
  v17 = objc_msgSend_copy(self, v15, v16);
  objc_msgSend_setNaturalSize_(v17, v18, v19, v12, v14);

  return v17;
}

- (void)p_setBezierPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDBezierPathSource p_setBezierPath:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBezierPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 257, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objc_msgSend_bounds(pathCopy, v4, v5);
  v15 = v14;
  v17 = v16;
  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    CGAffineTransformMakeTranslation(&v28, -v15, -v17);
    objc_msgSend_transformUsingAffineTransform_(pathCopy, v18, &v28);
  }

  mPath = self->mPath;
  self->mPath = pathCopy;
  v20 = pathCopy;

  objc_msgSend_bounds(self->mPath, v21, v22);
  self->mNaturalSize.width = v23;
  self->mNaturalSize.height = v24;
  self->mIsRectangular = objc_msgSend_isRectangular(self->mPath, v25, v26);
  mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
  self->mBezierPathWithoutFlips = 0;
}

- (id)inferredAccessibilityDescription
{
  v4 = objc_msgSend_userDefinedName(self, a2, v2);
  if (!objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_inferredAccessibilityDescription(self->mPath, v7, v8);

    v4 = v9;
  }

  return v4;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end