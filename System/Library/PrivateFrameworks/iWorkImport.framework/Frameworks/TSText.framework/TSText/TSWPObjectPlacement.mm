@interface TSWPObjectPlacement
+ (id)objectPlacementWithObject:(id)object uuidPath:(id)path index:(int)index;
- (TSWPObjectPlacement)initWithObject:(id)object uuidPath:(id)path index:(int)index;
@end

@implementation TSWPObjectPlacement

- (TSWPObjectPlacement)initWithObject:(id)object uuidPath:(id)path index:(int)index
{
  objectCopy = object;
  pathCopy = path;
  v11 = pathCopy;
  if (objectCopy && pathCopy)
  {
    objc_opt_class();
    v12 = TSUDynamicCast();
    v15 = objc_msgSend_drawable(v12, v13, v14);
    v18 = v15;
    if (v15)
    {
      indexCopy = index;
      v19 = objc_msgSend_objectUUID(v15, v16, v17);
      v22 = objc_msgSend_lastUUID(v11, v20, v21);
      isEqual = objc_msgSend_isEqual_(v19, v23, v22);

      if ((isEqual & 1) == 0)
      {
        v41 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPObjectPlacement initWithObject:uuidPath:index:]");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPObjectPlacement.m");
        v39 = objc_msgSend_objectUUID(v18, v28, v29);
        v32 = objc_msgSend_lastUUID(v11, v30, v31);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v33, v40, v27, 35, 0, "drawable UUID %{public}@ does not match UUIDPath's %{public}@", v39, v32);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      }

      index = indexCopy;
    }
  }

  v43.receiver = self;
  v43.super_class = TSWPObjectPlacement;
  v36 = [(TSWPObjectPlacement *)&v43 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_uuidPath, path);
    v37->_index = index;
    objc_storeStrong(&v37->_object, object);
  }

  return v37;
}

+ (id)objectPlacementWithObject:(id)object uuidPath:(id)path index:(int)index
{
  v5 = *&index;
  pathCopy = path;
  objectCopy = object;
  v10 = [self alloc];
  v12 = objc_msgSend_initWithObject_uuidPath_index_(v10, v11, objectCopy, pathCopy, v5);

  return v12;
}

@end