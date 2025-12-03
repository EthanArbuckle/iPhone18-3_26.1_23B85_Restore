@interface TSDMutableColorFill
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBrightness:(double)brightness;
- (void)setColor:(id)color;
- (void)setHue:(double)hue;
- (void)setOpacity:(double)opacity;
- (void)setSaturation:(double)saturation;
@end

@implementation TSDMutableColorFill

- (void)setColor:(id)color
{
  colorCopy = color;
  v6 = objc_msgSend_color(self, v4, v5);
  if ((objc_msgSend_isEqual_(v6, v7, colorCopy) & 1) == 0)
  {
    objc_msgSend_i_setColor_(self, v8, colorCopy);
  }
}

- (void)setOpacity:(double)opacity
{
  v10 = objc_msgSend_color(self, a2, v3);
  v8 = objc_msgSend_colorWithAlphaComponent_(v10, v6, v7, opacity);
  objc_msgSend_setColor_(self, v9, v8);
}

- (void)setHue:(double)hue
{
  v6 = MEMORY[0x277D81180];
  objc_msgSend_saturation(self, a2, v3);
  v8 = v7;
  objc_msgSend_brightness(self, v9, v10);
  v12 = v11;
  objc_msgSend_opacity(self, v13, v14);
  v19 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(v6, v15, v16, hue, v8, v12, v17);
  objc_msgSend_setColor_(self, v18, v19);
}

- (void)setBrightness:(double)brightness
{
  v6 = MEMORY[0x277D81180];
  objc_msgSend_hue(self, a2, v3);
  v8 = v7;
  objc_msgSend_saturation(self, v9, v10);
  v12 = v11;
  objc_msgSend_opacity(self, v13, v14);
  v19 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(v6, v15, v16, v8, v12, brightness, v17);
  objc_msgSend_setColor_(self, v18, v19);
}

- (void)setSaturation:(double)saturation
{
  v6 = MEMORY[0x277D81180];
  objc_msgSend_hue(self, a2, v3);
  v8 = v7;
  objc_msgSend_brightness(self, v9, v10);
  v12 = v11;
  objc_msgSend_opacity(self, v13, v14);
  v19 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(v6, v15, v16, v8, saturation, v12, v17);
  objc_msgSend_setColor_(self, v18, v19);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDColorFill alloc];
  v7 = objc_msgSend_color(self, v5, v6);
  v9 = objc_msgSend_initWithColor_(v4, v8, v7);

  return v9;
}

@end