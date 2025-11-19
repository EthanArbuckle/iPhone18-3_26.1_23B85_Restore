@interface OKWidgetEmitterView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)prepareForDisplay:(BOOL)a3;
- (BOOL)prepareForUnload:(BOOL)a3;
- (BOOL)prepareForWarmup:(BOOL)a3;
- (CGPoint)settingEmitterPosition;
- (CGSize)settingEmitterSize;
- (OKWidgetEmitterView)initWithWidget:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pauseEmitter;
- (void)resumeEmitter;
- (void)setSettingEmitterCells:(id)a3;
@end

@implementation OKWidgetEmitterView

- (OKWidgetEmitterView)initWithWidget:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKWidgetEmitterView;
  v3 = [(OKWidgetViewProxy *)&v7 initWithWidget:a3];
  if (v3)
  {
    v3->_seed = rand();
    v4 = objc_alloc(MEMORY[0x277D62790]);
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v5 = [v4 initWithFrame:?];
    v3->_emitterView = v5;
    [(OFEmitterView *)v5 setAutoresizingMask:18];
    -[OFEmitterView setBackgroundColor:](v3->_emitterView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [-[OFEmitterView layer](v3->_emitterView "layer")];
    [(OFEmitterView *)v3->_emitterView setSeed:v3->_seed];
    [(OFEmitterView *)v3->_emitterView setEmitterShape:*MEMORY[0x277CDA218]];
    [(OFEmitterView *)v3->_emitterView setEmitterMode:*MEMORY[0x277CDA208]];
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] addSubview:v3->_emitterView];
  }

  return v3;
}

- (void)dealloc
{
  emitterView = self->_emitterView;
  if (emitterView)
  {

    self->_emitterView = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetEmitterView;
  [(OKWidgetView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = OKWidgetEmitterView;
  [(OKWidgetViewProxy *)&v7 layoutSubviews];
  v6.receiver = self;
  v6.super_class = OKWidgetEmitterView;
  [(OKWidgetViewProxy *)&v6 layoutFactor];
  v5 = fmax(v3, v4);
  [(OFEmitterView *)self->_emitterView setEmitterPosition:v3 * self->_originalEmitterPosition.x, v4 * self->_originalEmitterPosition.y];
  [(OFEmitterView *)self->_emitterView setScale:v5];
}

- (void)pauseEmitter
{
  v2 = [(OFEmitterView *)self->_emitterView layer];
  [v2 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [v2 setSpeed:0.0];

  [v2 setTimeOffset:v4];
}

- (void)resumeEmitter
{
  v2 = [(OFEmitterView *)self->_emitterView layer];
  [v2 timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [v2 setSpeed:v3];
  [v2 setTimeOffset:0.0];
  [v2 setBeginTime:0.0];
  [v2 convertTime:0 fromLayer:CACurrentMediaTime()];
  v6 = v5 - v4;

  [v2 setBeginTime:v6];
}

- (BOOL)prepareForDisplay:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetEmitterView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:a3];
  if (v4)
  {
    [(OKWidgetEmitterView *)self resumeEmitter];
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetEmitterView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForWarmup:a3];
  if (v4)
  {
    [(OKWidgetEmitterView *)self pauseEmitter];
  }

  return v4;
}

- (BOOL)prepareForUnload:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetEmitterView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForUnload:a3];
  if (v4)
  {
    [(OKWidgetEmitterView *)self pauseEmitter];
  }

  return v4;
}

+ (id)supportedSettings
{
  v34[14] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetEmitterView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v33[0] = @"birthRate";
  v31[0] = @"type";
  v31[1] = @"jsExport";
  v32[0] = &unk_287AF1100;
  v32[1] = @"readwrite";
  v34[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v33[1] = @"emitterCells";
  v29[0] = @"type";
  v29[1] = @"subType";
  v30[0] = &unk_287AF1118;
  v30[1] = &unk_287AF1130;
  v29[2] = @"jsExport";
  v30[2] = @"readwrite";
  v34[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v33[2] = @"emitterDepth";
  v27[0] = @"type";
  v27[1] = @"jsExport";
  v28[0] = &unk_287AF1100;
  v28[1] = @"readwrite";
  v34[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v33[3] = @"emitterMode";
  v25[0] = @"type";
  v25[1] = @"jsExport";
  v26[0] = &unk_287AF1148;
  v26[1] = @"readwrite";
  v34[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v33[4] = @"emitterPosition";
  v23[0] = @"type";
  v23[1] = @"jsExport";
  v24[0] = &unk_287AF1160;
  v24[1] = @"readwrite";
  v34[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v33[5] = @"emitterShape";
  v21[0] = @"type";
  v21[1] = @"jsExport";
  v22[0] = &unk_287AF1148;
  v22[1] = @"readwrite";
  v34[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v33[6] = @"emitterSize";
  v19[0] = @"type";
  v19[1] = @"jsExport";
  v20[0] = &unk_287AF1178;
  v20[1] = @"readwrite";
  v34[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v33[7] = @"emitterZPosition";
  v17[0] = @"type";
  v17[1] = @"jsExport";
  v18[0] = &unk_287AF1100;
  v18[1] = @"readwrite";
  v34[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v33[8] = @"lifetime";
  v15[0] = @"type";
  v15[1] = @"jsExport";
  v16[0] = &unk_287AF1100;
  v16[1] = @"readwrite";
  v34[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v33[9] = @"renderMode";
  v13[0] = @"type";
  v13[1] = @"jsExport";
  v14[0] = &unk_287AF1148;
  v14[1] = @"readwrite";
  v34[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v33[10] = @"scale";
  v11[0] = @"type";
  v11[1] = @"jsExport";
  v12[0] = &unk_287AF1100;
  v12[1] = @"readwrite";
  v34[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v33[11] = @"seed";
  v9[0] = @"type";
  v9[1] = @"jsExport";
  v10[0] = &unk_287AF1190;
  v10[1] = @"readwrite";
  v34[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v33[12] = @"spin";
  v7[0] = @"type";
  v7[1] = @"jsExport";
  v8[0] = &unk_287AF1100;
  v8[1] = @"readwrite";
  v34[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v33[13] = @"velocity";
  v5[0] = @"type";
  v5[1] = @"jsExport";
  v6[0] = &unk_287AF1100;
  v6[1] = @"readwrite";
  v34[13] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v34, v33, 14)}];
  return v2;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetEmitterView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

- (void)setSettingEmitterCells:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 parentLoaded:{-[OKPresentationViewControllerProxy presentation](-[OKWidgetViewProxy presentationViewController](self, "presentationViewController"), "presentation")}];
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(OFEmitterView *)self->_emitterView setEmitterCells:v5];
}

- (CGPoint)settingEmitterPosition
{
  [(OFEmitterView *)self->_emitterView emitterPosition];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)settingEmitterSize
{
  [(OFEmitterView *)self->_emitterView emitterSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end