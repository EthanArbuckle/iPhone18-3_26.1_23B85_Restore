@interface TSDMutableShadow
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAngle:(double)angle;
- (void)setColor:(id)color;
- (void)setOffset:(double)offset;
- (void)setOpacity:(double)opacity;
- (void)setRadius:(double)radius;
@end

@implementation TSDMutableShadow

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMutableShadow copyWithZone:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 574, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSDMutableShadow copyWithZone:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v19, v13, v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (void)setAngle:(double)angle
{
  TSUNormalizeAngleInDegrees();

  objc_msgSend_i_setAngle_(self, v4, v5);
}

- (void)setOffset:(double)offset
{
  objc_msgSend_clampOffset_(self, a2, v3, offset);

  objc_msgSend_i_setOffset_(self, v5, v6);
}

- (void)setRadius:(double)radius
{
  objc_msgSend_clampRadius_(self, a2, v3, radius);

  objc_msgSend_i_setRadius_(self, v5, v6);
}

- (void)setOpacity:(double)opacity
{
  objc_msgSend_clampOpacity_(self, a2, v3, opacity);

  objc_msgSend_i_setOpacity_(self, v5, v6);
}

- (void)setColor:(id)color
{
  colorCopy = color;
  v12 = colorCopy;
  if (!colorCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSDMutableShadow setColor:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadowMutableMethods.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 35, 0, "invalid nil value for '%{public}s'", "color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    colorCopy = 0;
  }

  objc_msgSend_i_setColor_(self, colorCopy, colorCopy);
}

@end