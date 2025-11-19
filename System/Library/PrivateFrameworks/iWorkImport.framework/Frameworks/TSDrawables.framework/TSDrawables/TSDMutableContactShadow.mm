@interface TSDMutableContactShadow
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAngle:(double)a3;
- (void)setColor:(id)a3;
- (void)setOffset:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setRadius:(double)a3;
@end

@implementation TSDMutableContactShadow

- (void)setAngle:(double)a3
{
  TSUNormalizeAngleInDegrees();

  objc_msgSend_i_setAngle_(self, v4, v5);
}

- (void)setOffset:(double)a3
{
  objc_msgSend_clampOffset_(self, a2, v3, a3);

  objc_msgSend_i_setOffset_(self, v5, v6);
}

- (void)setRadius:(double)a3
{
  objc_msgSend_clampRadius_(self, a2, v3, a3);

  objc_msgSend_i_setRadius_(self, v5, v6);
}

- (void)setOpacity:(double)a3
{
  objc_msgSend_clampOpacity_(self, a2, v3, a3);

  objc_msgSend_i_setOpacity_(self, v5, v6);
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSDMutableContactShadow setColor:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadowMutableMethods.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 35, 0, "invalid nil value for '%{public}s'", "color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = 0;
  }

  objc_msgSend_i_setColor_(self, v4, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDContactShadow alloc];
  objc_msgSend_offset(self, v5, v6);
  v8 = v7;
  objc_msgSend_height(self, v9, v10);
  v12 = v11;
  objc_msgSend_radius(self, v13, v14);
  v16 = v15;
  objc_msgSend_opacity(self, v17, v18);
  v20 = v19;
  v23 = objc_msgSend_color(self, v21, v22);
  isEnabled = objc_msgSend_isEnabled(self, v24, v25);
  v28 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v4, v27, v23, isEnabled, v8, v12, v16, v20);

  return v28;
}

@end