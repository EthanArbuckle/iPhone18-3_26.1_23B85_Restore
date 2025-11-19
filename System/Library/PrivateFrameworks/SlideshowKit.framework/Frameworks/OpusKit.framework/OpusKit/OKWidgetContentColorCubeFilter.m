@interface OKWidgetContentColorCubeFilter
+ (id)filterWithMinHueAngle:(id)a3 inputMaxHueAngle:(id)a4 inputReplaceColor:(id)a5;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (id)inputKeys;
- (id)outputImage;
- (void)createCubeWithMinHueAngle:(double)a3 maxHueAngle:(double)a4;
- (void)dealloc;
- (void)rgbToHSV:(float *)a3 hsv:(float *)a4;
- (void)setSettingInputMaxHueAngle:(id)a3;
- (void)setSettingInputMinHueAngle:(id)a3;
- (void)setSettingInputReplaceColor:(id)a3;
@end

@implementation OKWidgetContentColorCubeFilter

- (void)dealloc
{
  inputMaxHueAngle = self->_inputMaxHueAngle;
  if (inputMaxHueAngle)
  {

    self->_inputMaxHueAngle = 0;
  }

  inputMinHueAngle = self->_inputMinHueAngle;
  if (inputMinHueAngle)
  {

    self->_inputMinHueAngle = 0;
  }

  cubeData = self->_cubeData;
  if (cubeData)
  {

    self->_cubeData = 0;
  }

  inputReplaceColor = self->_inputReplaceColor;
  if (inputReplaceColor)
  {

    self->_inputReplaceColor = 0;
  }

  v7.receiver = self;
  v7.super_class = OKWidgetContentColorCubeFilter;
  [(OKWidgetBasicFilter *)&v7 dealloc];
}

+ (id)supportedSettings
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetContentColorCubeFilter;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v11[0] = @"inputMinHueAngle";
  v9 = @"type";
  v10 = &unk_287AF1460;
  v12[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11[1] = @"inputMaxHueAngle";
  v7 = @"type";
  v8 = &unk_287AF1460;
  v12[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v11[2] = @"inputReplaceColor";
  v5 = @"type";
  v6 = &unk_287AF1478;
  v12[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  return v2;
}

- (void)setSettingInputReplaceColor:(id)a3
{
  inputReplaceColor = self->_inputReplaceColor;
  if (inputReplaceColor)
  {

    self->_inputReplaceColor = 0;
  }

  self->_inputReplaceColor = a3;
}

- (void)setSettingInputMinHueAngle:(id)a3
{
  inputMinHueAngle = self->_inputMinHueAngle;
  if (inputMinHueAngle)
  {

    self->_inputMinHueAngle = 0;
  }

  self->_inputMinHueAngle = a3;
}

- (void)setSettingInputMaxHueAngle:(id)a3
{
  inputMaxHueAngle = self->_inputMaxHueAngle;
  if (inputMaxHueAngle)
  {

    self->_inputMaxHueAngle = 0;
  }

  self->_inputMaxHueAngle = a3;
}

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentColorCubeFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF25A8];
  return v2;
}

- (id)outputImage
{
  cubeData = self->_cubeData;
  if (!cubeData)
  {
    [(NSNumber *)self->_inputMinHueAngle floatValue];
    v5 = v4;
    [(NSNumber *)self->_inputMaxHueAngle floatValue];
    [(OKWidgetContentColorCubeFilter *)self createCubeWithMinHueAngle:v5 maxHueAngle:v6];
    cubeData = self->_cubeData;
  }

  v7 = [MEMORY[0x277CBF750] filterWithName:@"CIColorCube" keysAndValues:{@"inputCubeDimension", &unk_287AF1490, @"inputCubeData", cubeData, *MEMORY[0x277CBFAF0], -[OKWidgetBasicFilter inputImage](self, "inputImage"), 0}];
  v8 = *MEMORY[0x277CBFB50];

  return [v7 valueForKey:v8];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentColorCubeFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

+ (id)filterWithMinHueAngle:(id)a3 inputMaxHueAngle:(id)a4 inputReplaceColor:(id)a5
{
  v8 = objc_alloc_init(OKWidgetContentColorCubeFilter);
  [(OKWidgetContentColorCubeFilter *)v8 setInputMinHueAngle:a3];
  [(OKWidgetContentColorCubeFilter *)v8 setInputMaxHueAngle:a4];
  [(OKWidgetContentColorCubeFilter *)v8 setInputReplaceColor:a5];

  return v8;
}

- (void)createCubeWithMinHueAngle:(double)a3 maxHueAngle:(double)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = malloc_type_malloc(0x400000uLL, 0x100004052888210uLL);
  v8 = 0;
  v9 = 0.0;
  v10 = v7;
  do
  {
    v11 = 0;
    v12 = v9 / 63.0;
    v28 = v12;
    v13 = 0.0;
    do
    {
      v14 = v13 / 63.0;
      v27 = v14;
      v15 = 0.0;
      v16 = 64;
      do
      {
        v17 = v15 / 63.0;
        v26 = v17;
        [(OKWidgetContentColorCubeFilter *)self rgbToHSV:&v26 hsv:v25];
        v18 = v25[0];
        if (v25[0] > a3 && v18 < a4)
        {
          v21 = [(UIColor *)self->_inputReplaceColor CGColor];
          if (CGColorGetNumberOfComponents(v21) != 4)
          {
            goto LABEL_12;
          }

          Components = CGColorGetComponents(v21);
          *v10 = vcvt_f32_f64(*Components);
          v23 = Components[1].f64[1];
          v24 = Components[1].f64[0];
          v10[1].f32[0] = v24;
          v20 = v23;
        }

        else
        {
          v10->f32[0] = v26;
          v10->f32[1] = v27;
          v10[1].f32[0] = v28;
          v20 = 1.0;
        }

        v10[1].f32[1] = v20;
LABEL_12:
        v10 += 2;
        v15 = v15 + 1.0;
        --v16;
      }

      while (v16);
      v13 = v13 + 1.0;
      ++v11;
    }

    while (v11 != 64);
    v9 = v9 + 1.0;
    ++v8;
  }

  while (v8 != 64);
  self->_cubeData = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:0x400000 freeWhenDone:1];
}

- (void)rgbToHSV:(float *)a3 hsv:(float *)a4
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = fmaxf(fmaxf(*a3, v5), v6);
  a4[2] = v7;
  if (v7 == 0.0)
  {
    a4[1] = 0.0;
    v12 = -1.0;
  }

  else
  {
    v8 = v7 - fminf(fminf(v4, v5), v6);
    a4[1] = v8 / v7;
    v9 = *a3;
    v10 = a3[1];
    if (*a3 == v7)
    {
      v11 = (v10 - a3[2]) / v8;
    }

    else
    {
      if (v10 == v7)
      {
        v13 = (a3[2] - v9) / v8;
        v14 = 2.0;
      }

      else
      {
        v13 = (v9 - v10) / v8;
        v14 = 4.0;
      }

      v11 = v13 + v14;
    }

    v12 = v11 * 60.0;
    if (v12 < 0.0)
    {
      v12 = v12 + 360.0;
    }
  }

  *a4 = v12;
}

@end