@interface TSDMagicMoveMatchObject
+ (id)matchObjectWithTextRep:(id)a3 position:(CGPoint)a4 stringValue:(id)a5 stringRange:(_NSRange)a6;
- (BOOL)conflictsWithMatchObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)position;
- (TSDMagicMoveMatchObject)init;
- (TSDMagicMoveMatchObject)initWithRep:(id)a3 position:(CGPoint)a4 stringValue:(id)a5 stringRange:(_NSRange)a6;
- (_NSRange)stringRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSDMagicMoveMatchObject

- (TSDMagicMoveMatchObject)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMagicMoveMatchObject init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 534, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDMagicMoveMatchObject init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSDMagicMoveMatchObject)initWithRep:(id)a3 position:(CGPoint)a4 stringValue:(id)a5 stringRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v13 = a5;
  v44.receiver = self;
  v44.super_class = TSDMagicMoveMatchObject;
  v14 = [(TSDMagicMoveMatchObject *)&v44 init];
  v16 = v14;
  if (v14)
  {
    objc_msgSend_setRep_(v14, v15, v12);
    objc_msgSend_setPosition_(v16, v17, v18, x, y);
    objc_msgSend_setStringValue_(v16, v19, v13);
    objc_msgSend_setStringRange_(v16, v20, location, length);
    v23 = objc_msgSend_canvas(v12, v21, v22);
    v26 = objc_msgSend_allRepsOrdered(v23, v24, v25);
    v28 = objc_msgSend_indexOfObject_(v26, v27, v12);
    objc_msgSend_setZOrder_(v16, v29, v28);

    if (objc_msgSend_zOrder(v16, v30, v31) >= 10000)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSDMagicMoveMatchObject initWithRep:position:stringValue:stringRange:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
      v39 = objc_msgSend_zOrder(v16, v37, v38);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v34, v36, 547, 0, "zOrder is too large (%ld > 10000)", v39);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    }
  }

  return v16;
}

+ (id)matchObjectWithTextRep:(id)a3 position:(CGPoint)a4 stringValue:(id)a5 stringRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v12 = a3;
  v13 = [TSDMagicMoveMatchObject alloc];
  v15 = objc_msgSend_initWithRep_position_stringValue_stringRange_(v13, v14, v12, v11, location, length, x, y);

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDMagicMoveMatchObject alloc];
  v7 = objc_msgSend_rep(self, v5, v6);
  objc_msgSend_position(self, v8, v9);
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_stringValue(self, v14, v15);
  v19 = objc_msgSend_stringRange(self, v17, v18);
  v21 = objc_msgSend_initWithRep_position_stringValue_stringRange_(v4, v20, v7, v16, v19, v20, v11, v13);

  v24 = objc_msgSend_attributes(self, v22, v23);
  objc_msgSend_setAttributes_(v21, v25, v24);

  v28 = objc_msgSend_name(self, v26, v27);
  objc_msgSend_setName_(v21, v29, v28);

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  if (!objc_msgSend_isEqual_(v5, v7, v6))
  {
    goto LABEL_3;
  }

  v10 = objc_msgSend_rep(self, v8, v9);
  v13 = objc_msgSend_rep(v4, v11, v12);

  if (v10 != v13)
  {
    goto LABEL_3;
  }

  v20 = objc_msgSend_stringValue(self, v14, v15);
  if (v20)
  {
    v13 = objc_msgSend_stringValue(v4, v18, v19);
    if (!v13)
    {

LABEL_3:
      v16 = 0;
      goto LABEL_4;
    }
  }

  v21 = objc_msgSend_stringValue(self, v18, v19);
  if (v21)
  {

    if (v20)
    {
    }
  }

  else
  {
    v26 = objc_msgSend_stringValue(v4, v22, v23);

    if (v20)
    {
    }

    if (v26)
    {
      goto LABEL_3;
    }
  }

  v27 = objc_msgSend_stringValue(self, v24, v25);
  if (v27)
  {
    v30 = v27;
    v31 = objc_msgSend_stringValue(v4, v28, v29);
    if (v31)
    {
      v34 = v31;
      v35 = objc_msgSend_stringValue(self, v32, v33);
      v38 = objc_msgSend_stringValue(v4, v36, v37);
      isEqual = objc_msgSend_isEqual_(v35, v39, v38);

      if (!isEqual)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  v41 = objc_msgSend_stringRange(self, v28, v29);
  v43 = v42;
  v16 = v41 == objc_msgSend_stringRange(v4, v42, v44) && v43 == v45;
LABEL_4:

  return v16;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_rep(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_stringValue(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) + v7;
  v16 = v13 + 10000 * objc_msgSend_stringRange(self, v14, v15);
  objc_msgSend_stringRange(self, v17, v18);
  v20 = v16 + 1000000 * v19;

  return v20;
}

- (id)description
{
  v4 = objc_msgSend_name(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_name(self, v5, v6);
  }

  else
  {
    v8 = objc_msgSend_stringValue(self, v5, v6);

    v9 = MEMORY[0x277CCACA8];
    v12 = objc_msgSend_rep(self, v10, v11);
    v13 = objc_opt_class();
    v16 = objc_msgSend_description(v13, v14, v15);
    v21 = objc_msgSend_rep(self, v17, v18);
    if (v8)
    {
      v22 = objc_msgSend_stringValue(self, v19, v20);
      v38.location = objc_msgSend_stringRange(self, v23, v24);
      v25 = NSStringFromRange(v38);
      objc_msgSend_position(self, v26, v27);
      v28 = NSStringFromCGPoint(v39);
      v7 = objc_msgSend_stringWithFormat_(v9, v29, @"<%@: %p> (%@)(%@) @ %@", v16, v21, v22, v25, v28);
    }

    else
    {
      objc_msgSend_position(self, v19, v20);
      v22 = NSStringFromCGPoint(v40);
      v7 = objc_msgSend_stringWithFormat_(v9, v30, @"<%@: %p> @ %@", v16, v21, v22);
    }
  }

  v31 = MEMORY[0x277CCACA8];
  v36.receiver = self;
  v36.super_class = TSDMagicMoveMatchObject;
  v32 = [(TSDMagicMoveMatchObject *)&v36 description];
  v34 = objc_msgSend_stringWithFormat_(v31, v33, @"%@: %@", v32, v7);

  return v34;
}

- (BOOL)conflictsWithMatchObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_rep(self, v5, v6);
  v10 = objc_msgSend_rep(v4, v8, v9);

  if (v7 == v10)
  {
    v14 = objc_msgSend_stringValue(self, v11, v12);
    if (v14 && (v17 = v14, objc_msgSend_stringValue(v4, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      v21 = objc_msgSend_stringRange(self, v19, v20);
      v23 = v22;
      v28.location = objc_msgSend_stringRange(v4, v22, v24);
      v28.length = v25;
      v27.location = v21;
      v27.length = v23;
      v13 = NSIntersectionRange(v27, v28).length != 0;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)stringRange
{
  length = self->_stringRange.length;
  location = self->_stringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end