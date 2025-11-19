@interface OKJavaScriptContext
- (OKJavaScriptContext)init;
- (id)valueFromJSValue:(id)a3;
- (void)dealloc;
- (void)setupActions;
- (void)setupConsole;
- (void)setupContentFilters;
- (void)setupControllers;
- (void)setupConvenienceMethods;
- (void)setupNativeObjects;
- (void)setupNativeStructs;
- (void)setupOpus;
- (void)setupWidgets;
@end

@implementation OKJavaScriptContext

- (OKJavaScriptContext)init
{
  v4.receiver = self;
  v4.super_class = OKJavaScriptContext;
  v2 = [(OKJavaScriptContext *)&v4 init];
  if (v2)
  {
    [OKRuntime setupJavascriptContext:v2];
    [(OKJavaScriptContext *)v2 setupExceptionHandler];
    [(OKJavaScriptContext *)v2 setupConsole];
    [(OKJavaScriptContext *)v2 setupNativeStructs];
    [(OKJavaScriptContext *)v2 setupNativeObjects];
    [(OKJavaScriptContext *)v2 setupConvenienceMethods];
    [(OKJavaScriptContext *)v2 setupOpus];
    [(OKJavaScriptContext *)v2 setupControllers];
    [(OKJavaScriptContext *)v2 setupWidgets];
    [(OKJavaScriptContext *)v2 setupContentFilters];
    [(OKJavaScriptContext *)v2 setupActions];
    [(OKJavaScriptContext *)v2 setupTransitions];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKJavaScriptContext;
  [(OKJavaScriptContext *)&v2 dealloc];
}

uint64_t __44__OKJavaScriptContext_setupExceptionHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    return [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Javascript/OKJavaScriptContext.m" line:175 andFormat:@"OKJavaScript Exception in context %@: %@", a2, a3, v3, v4];
  }

  return result;
}

- (void)setupConsole
{
  v3 = objc_opt_class();

  [(OKJavaScriptContext *)self setObject:v3 forKeyedSubscript:@"console"];
}

- (void)setupNativeStructs
{
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_12 forKeyedSubscript:@"PointMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_19_0 forKeyedSubscript:@"SizeMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_25_0 forKeyedSubscript:@"RectMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_31 forKeyedSubscript:@"RangeMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_36 forKeyedSubscript:@"EdgeInsetsMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_41 forKeyedSubscript:@"LocationCoordinate2DMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_46 forKeyedSubscript:@"CoordinateRegionMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_51 forKeyedSubscript:@"OffsetMake"];
  v3 = *(MEMORY[0x277CD9DE8] + 80);
  v7[4] = *(MEMORY[0x277CD9DE8] + 64);
  v7[5] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 112);
  v7[6] = *(MEMORY[0x277CD9DE8] + 96);
  v7[7] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 16);
  v7[0] = *MEMORY[0x277CD9DE8];
  v7[1] = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 48);
  v7[2] = *(MEMORY[0x277CD9DE8] + 32);
  v7[3] = v6;
  -[OKJavaScriptContext setObject:forKeyedSubscript:](self, "setObject:forKeyedSubscript:", [MEMORY[0x277CD4658] valueWithCATransform3D:v7 inContext:self], @"Transform3DIdentity");
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_60_0 forKeyedSubscript:@"Transform3DMakeTranslation"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_65 forKeyedSubscript:@"Transform3DMakeScale"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_70_0 forKeyedSubscript:@"Transform3DMakeRotation"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_76 forKeyedSubscript:@"Transform3DTranslate"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_81_0 forKeyedSubscript:@"Transform3DScale"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_87 forKeyedSubscript:@"Transform3DRotate"];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke(double a1, double a2)
{
  v4 = MEMORY[0x277CD4658];
  v5 = [MEMORY[0x277CD4640] currentContext];

  return [v4 valueWithPoint:v5 inContext:{a1, a2}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_2(double a1, double a2)
{
  v4 = MEMORY[0x277CD4658];
  v5 = [MEMORY[0x277CD4640] currentContext];

  return [v4 valueWithSize:v5 inContext:{a1, a2}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_3(double a1, double a2, double a3, double a4)
{
  v8 = MEMORY[0x277CD4658];
  v9 = [MEMORY[0x277CD4640] currentContext];

  return [v8 valueWithRect:v9 inContext:{a1, a2, a3, a4}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CD4658];
  v6 = [MEMORY[0x277CD4640] currentContext];

  return [v5 valueWithRange:a2 inContext:{a3, v6}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_5(double a1, double a2, double a3, double a4)
{
  v8 = MEMORY[0x277CD4658];
  v9 = [MEMORY[0x277CD4640] currentContext];

  return [v8 valueWithEdgeInsets:v9 inContext:{a1, a2, a3, a4}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_6(CLLocationDegrees a1, CLLocationDegrees a2)
{
  v2 = CLLocationCoordinate2DMake(a1, a2);
  v3 = MEMORY[0x277CD4658];
  v4 = [MEMORY[0x277CD4640] currentContext];

  return [v3 valueWithLocationCoordinate2D:v4 inContext:{v2.latitude, v2.longitude}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_7(CLLocationDegrees a1, CLLocationDegrees a2, double a3, double a4)
{
  v6 = MEMORY[0x277CD4658];
  v7 = CLLocationCoordinate2DMake(a1, a2);
  v8 = [MEMORY[0x277CD4640] currentContext];

  return [v6 valueWithCoodinateRegion:v8 inContext:{v7.latitude, v7.longitude, a3, a4}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_8(double a1, double a2)
{
  v4 = MEMORY[0x277CD4658];
  v5 = [MEMORY[0x277CD4640] currentContext];

  return [v4 valueWithOffset:v5 inContext:{a1, a2}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_9(CGFloat a1, CGFloat a2, CGFloat a3)
{
  v3 = MEMORY[0x277CD4658];
  CATransform3DMakeTranslation(&v5, a1, a2, a3);
  return [v3 valueWithCATransform3D:&v5 inContext:{objc_msgSend(MEMORY[0x277CD4640], "currentContext")}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_10(CGFloat a1, CGFloat a2, CGFloat a3)
{
  v3 = MEMORY[0x277CD4658];
  CATransform3DMakeScale(&v5, a1, a2, a3);
  return [v3 valueWithCATransform3D:&v5 inContext:{objc_msgSend(MEMORY[0x277CD4640], "currentContext")}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_11(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = MEMORY[0x277CD4658];
  CATransform3DMakeRotation(&v6, a1, a2, a3, a4);
  return [v4 valueWithCATransform3D:&v6 inContext:{objc_msgSend(MEMORY[0x277CD4640], "currentContext")}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_12(CGFloat a1, CGFloat a2, CGFloat a3, uint64_t a4, _OWORD *a5)
{
  v5 = MEMORY[0x277CD4658];
  v6 = a5[5];
  *&v11.m31 = a5[4];
  *&v11.m33 = v6;
  v7 = a5[7];
  *&v11.m41 = a5[6];
  *&v11.m43 = v7;
  v8 = a5[1];
  *&v11.m11 = *a5;
  *&v11.m13 = v8;
  v9 = a5[3];
  *&v11.m21 = a5[2];
  *&v11.m23 = v9;
  CATransform3DTranslate(&v12, &v11, a1, a2, a3);
  return [v5 valueWithCATransform3D:&v12 inContext:{objc_msgSend(MEMORY[0x277CD4640], "currentContext")}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_13(CGFloat a1, CGFloat a2, CGFloat a3, uint64_t a4, _OWORD *a5)
{
  v5 = MEMORY[0x277CD4658];
  v6 = a5[5];
  *&v11.m31 = a5[4];
  *&v11.m33 = v6;
  v7 = a5[7];
  *&v11.m41 = a5[6];
  *&v11.m43 = v7;
  v8 = a5[1];
  *&v11.m11 = *a5;
  *&v11.m13 = v8;
  v9 = a5[3];
  *&v11.m21 = a5[2];
  *&v11.m23 = v9;
  CATransform3DScale(&v12, &v11, a1, a2, a3);
  return [v5 valueWithCATransform3D:&v12 inContext:{objc_msgSend(MEMORY[0x277CD4640], "currentContext")}];
}

uint64_t __41__OKJavaScriptContext_setupNativeStructs__block_invoke_14(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, _OWORD *a6)
{
  v6 = MEMORY[0x277CD4658];
  v7 = a6[5];
  *&v12.m31 = a6[4];
  *&v12.m33 = v7;
  v8 = a6[7];
  *&v12.m41 = a6[6];
  *&v12.m43 = v8;
  v9 = a6[1];
  *&v12.m11 = *a6;
  *&v12.m13 = v9;
  v10 = a6[3];
  *&v12.m21 = a6[2];
  *&v12.m23 = v10;
  CATransform3DRotate(&v13, &v12, a1, a2, a3, a4);
  return [v6 valueWithCATransform3D:&v13 inContext:{objc_msgSend(MEMORY[0x277CD4640], "currentContext")}];
}

- (void)setupNativeObjects
{
  v29[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  [(OKJavaScriptContext *)self setObject:v3 forKeyedSubscript:NSStringFromClass(v4)];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_94 forKeyedSubscript:@"RGBAColorMake"];
  v5 = objc_opt_class();
  v6 = [-[OKJavaScriptContext objectForKeyedSubscript:](self objectForKeyedSubscript:{NSStringFromClass(v5)), "objectForKeyedSubscript:", @"prototype"}];
  v8 = MEMORY[0x277CBEC28];
  v9 = *MEMORY[0x277CD4610];
  v10 = MEMORY[0x277CBEC38];
  v27[0] = *MEMORY[0x277CD4618];
  v7 = v27[0];
  v27[1] = v9;
  v29[0] = MEMORY[0x277CBEC28];
  v29[1] = MEMORY[0x277CBEC38];
  v28 = *MEMORY[0x277CD4620];
  v11 = v28;
  v29[2] = &__block_literal_global_106_0;
  [v6 defineProperty:@"r" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, v27, 3)}];
  v12 = objc_opt_class();
  v25[0] = v7;
  v25[1] = v9;
  v26[0] = v8;
  v26[1] = v10;
  v25[2] = v11;
  v26[2] = &__block_literal_global_112;
  [objc_msgSend(-[OKJavaScriptContext objectForKeyedSubscript:](self objectForKeyedSubscript:{NSStringFromClass(v12)), "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"g", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v26, v25, 3)}];
  v13 = objc_opt_class();
  v23[0] = v7;
  v23[1] = v9;
  v24[0] = v8;
  v24[1] = v10;
  v23[2] = v11;
  v24[2] = &__block_literal_global_117;
  [objc_msgSend(-[OKJavaScriptContext objectForKeyedSubscript:](self objectForKeyedSubscript:{NSStringFromClass(v13)), "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"b", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, v23, 3)}];
  v14 = objc_opt_class();
  v21[0] = v7;
  v21[1] = v9;
  v22[0] = v8;
  v22[1] = v10;
  v21[2] = v11;
  v22[2] = &__block_literal_global_122_0;
  [objc_msgSend(-[OKJavaScriptContext objectForKeyedSubscript:](self objectForKeyedSubscript:{NSStringFromClass(v14)), "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"a", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v22, v21, 3)}];
  [(OKJavaScriptContext *)self setObject:objc_opt_class() forKeyedSubscript:@"NSIndexPath"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_129 forKeyedSubscript:@"IndexPath2DMake"];
  v15 = [-[OKJavaScriptContext objectForKeyedSubscript:](self objectForKeyedSubscript:{@"NSIndexPath", "objectForKeyedSubscript:", @"prototype"}];
  v19[0] = v7;
  v19[1] = v9;
  v20[0] = v8;
  v20[1] = v10;
  v19[2] = v11;
  v20[2] = &__block_literal_global_138;
  [v15 defineProperty:@"row" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 3)}];
  v16 = [-[OKJavaScriptContext objectForKeyedSubscript:](self objectForKeyedSubscript:{@"NSIndexPath", "objectForKeyedSubscript:", @"prototype"}];
  v17[0] = v7;
  v17[1] = v9;
  v18[0] = v8;
  v18[1] = v10;
  v17[2] = v11;
  v18[2] = &__block_literal_global_143;
  [v16 defineProperty:@"section" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v18, v17, 3)}];
  [(OKJavaScriptContext *)self setObject:objc_opt_class() forKeyedSubscript:@"CAAnimation"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_150 forKeyedSubscript:@"BasicAnimationMake"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_158_0 forKeyedSubscript:@"GroupAnimationMake"];
}

double __41__OKJavaScriptContext_setupNativeObjects__block_invoke_2()
{
  v1 = 0.0;
  [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  return v1;
}

double __41__OKJavaScriptContext_setupNativeObjects__block_invoke_3()
{
  v1 = 0.0;
  [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  return v1;
}

double __41__OKJavaScriptContext_setupNativeObjects__block_invoke_4()
{
  v1 = 0.0;
  [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  return v1;
}

double __41__OKJavaScriptContext_setupNativeObjects__block_invoke_5()
{
  v1 = 0.0;
  [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  return v1;
}

uint64_t __41__OKJavaScriptContext_setupNativeObjects__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  v4[1] = a3;
  return [MEMORY[0x277CCAA70] indexPathWithIndexes:v4 length:2];
}

uint64_t __41__OKJavaScriptContext_setupNativeObjects__block_invoke_7()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 indexAtPosition:1];
}

uint64_t __41__OKJavaScriptContext_setupNativeObjects__block_invoke_8()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 indexAtPosition:0];
}

void *__41__OKJavaScriptContext_setupNativeObjects__block_invoke_9(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:a4];
  [v14 setDuration:a1];
  if (([a7 isEqualToString:*MEMORY[0x277CDA7C8]] & 1) != 0 || (objc_msgSend(a7, "isEqualToString:", *MEMORY[0x277CDA7B0]) & 1) != 0 || (objc_msgSend(a7, "isEqualToString:", *MEMORY[0x277CDA7C0]) & 1) != 0 || (objc_msgSend(a7, "isEqualToString:", *MEMORY[0x277CDA7B8]) & 1) != 0 || objc_msgSend(a7, "isEqualToString:", *MEMORY[0x277CDA7A8]))
  {
    [v14 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", a7)}];
  }

  if (([a5 isNull] & 1) == 0)
  {
    [v14 setFromValue:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentContext"), "valueFromJSValue:", a5)}];
  }

  [v14 setToValue:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentContext"), "valueFromJSValue:", a6)}];
  if (a8)
  {
    LODWORD(v15) = 2139095039;
    [v14 setRepeatCount:v15];
  }

  [v14 setBeginTime:a2];
  return v14;
}

void *__41__OKJavaScriptContext_setupNativeObjects__block_invoke_10(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v11 = [MEMORY[0x277CD9E00] animation];
  [v11 setAnimations:a4];
  if (([a5 isEqualToString:*MEMORY[0x277CDA7C8]] & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7B0]) & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7C0]) & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7B8]) & 1) != 0 || objc_msgSend(a5, "isEqualToString:", *MEMORY[0x277CDA7A8]))
  {
    [v11 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", a5)}];
  }

  [v11 setDuration:a1];
  if (a6)
  {
    LODWORD(v12) = 2139095039;
    [v11 setRepeatCount:v12];
  }

  [v11 setRemovedOnCompletion:0];
  [v11 setBeginTime:a2];
  return v11;
}

- (id)valueFromJSValue:(id)a3
{
  if (![a3 isNumber])
  {
    return 0;
  }

  return [a3 toNumber];
}

- (void)setupConvenienceMethods
{
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_165 forKeyedSubscript:@"degreesToRadians"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_170 forKeyedSubscript:@"radiansToDegrees"];
  [(OKJavaScriptContext *)self setObject:*MEMORY[0x277CDA7C8] forKeyedSubscript:@"OKTimingFunctionLinear"];
  [(OKJavaScriptContext *)self setObject:*MEMORY[0x277CDA7B0] forKeyedSubscript:@"OKTimingFunctionEaseIn"];
  [(OKJavaScriptContext *)self setObject:*MEMORY[0x277CDA7C0] forKeyedSubscript:@"OKTimingFunctionEaseOut"];
  [(OKJavaScriptContext *)self setObject:*MEMORY[0x277CDA7B8] forKeyedSubscript:@"OKTimingFunctionEaseInEaseOut"];
  [(OKJavaScriptContext *)self setObject:*MEMORY[0x277CDA7A8] forKeyedSubscript:@"OKTimingFunctionDefault"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_191_0 forKeyedSubscript:@"linearInterpolationBetweenTwoValues"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_203 forKeyedSubscript:@"linearInterpolationBetweenTwoPoints"];
  [(OKJavaScriptContext *)self setObject:&__block_literal_global_213_0 forKeyedSubscript:@"curveInterpolationBetweenTwoPoints"];

  [(OKJavaScriptContext *)self setObject:&__block_literal_global_220 forKeyedSubscript:@"setTimeout"];
}

uint64_t __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_3(float a1, float a2, double a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_4;
  v6[3] = &unk_279C918E8;
  v6[4] = a5;
  v7 = a1;
  v8 = a2;
  return [objc_msgSend(MEMORY[0x277D627D8] interpolateValueForKey:@"animatedFloat" animation:v6 progress:{a3), "floatValue"}];
}

void *__46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"animatedFloat"];
  [v2 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *(a1 + 32))}];
  LODWORD(v3) = *(a1 + 40);
  [v2 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v3)}];
  LODWORD(v4) = *(a1 + 44);
  [v2 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v4)}];
  return v2;
}

uint64_t __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_5(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_6;
  v8[3] = &unk_279C91930;
  v8[4] = a7;
  *&v8[5] = a1;
  *&v8[6] = a2;
  *&v8[7] = a3;
  *&v8[8] = a4;
  return [objc_msgSend(MEMORY[0x277D627D8] interpolateValueForKey:@"animatedPoint" animation:v8 progress:{a5), "CGPointValue"}];
}

void *__46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"animatedPoint"];
  [v2 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *(a1 + 32))}];
  [v2 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", *(a1 + 40), *(a1 + 48))}];
  [v2 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", *(a1 + 56), *(a1 + 64))}];
  return v2;
}

uint64_t __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_7(double a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_8;
  v10[3] = &unk_279C91978;
  v10[4] = a9;
  *&v10[5] = a1;
  *&v10[6] = a2;
  *&v10[7] = a3;
  *&v10[8] = a4;
  *&v10[9] = a5;
  *&v10[10] = a6;
  return [objc_msgSend(MEMORY[0x277D627D8] interpolateValueForKey:@"animatedPoint" animation:v10 progress:{a7), "CGPointValue"}];
}

void *__46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"animatedPoint"];
  [v2 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *(a1 + 32))}];
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, *(a1 + 40), *(a1 + 48));
  CGPathAddQuadCurveToPoint(Mutable, 0, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  [v2 setPath:Mutable];
  if (Mutable)
  {
    CGPathRelease(Mutable);
  }

  return v2;
}

void __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_9(double a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch_time(0, (a1 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__OKJavaScriptContext_setupConvenienceMethods__block_invoke_10;
  block[3] = &unk_279C8E818;
  block[4] = a3;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)setupOpus
{
  v3 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:objc_msgSend(+[OKRuntime opusKitBundle](OKRuntime encoding:"opusKitBundle") error:{"URLForResource:withExtension:", @"Opus", @"js", 4, 0}];

  [(OKJavaScriptContext *)self evaluateScript:v3];
}

- (void)setupControllers
{
  [(OKPresentationViewControllerProxy *)OKPresentationViewController setupJavascriptContext:self];
  [(OKNavigatorViewControllerProxy *)OKNavigatorViewController setupJavascriptContext:self];
  [(OKNavigatorFixedViewControllerProxy *)OKNavigatorFixedViewController setupJavascriptContext:self];
  [OKNavigatorLinearViewController setupJavascriptContext:self];
  [(OKNavigatorOriginalLinearViewControllerProxy *)OKNavigatorOriginalLinearViewController setupJavascriptContext:self];
  [(OKNavigatorScrollViewControllerProxy *)OKNavigatorScrollViewController setupJavascriptContext:self];
  [(OKNavigatorCollectionViewControllerProxy *)OKNavigatorCollectionViewController setupJavascriptContext:self];
  [OKPageViewController setupJavascriptContext:self];

  [OKPageUXViewController setupJavascriptContext:self];
}

- (void)setupWidgets
{
  [(OKWidgetViewProxy *)OKWidgetView setupJavascriptContext:self];
  [(OKWidgetMediaViewProxy *)OKWidgetMediaView setupJavascriptContext:self];
  [OKWidgetMediaAnimationView setupJavascriptContext:self];
  [(OKWidgetTextViewProxy *)OKWidgetTextView setupJavascriptContext:self];
  [(OKWidgetLabelViewProxy *)OKWidgetLabelView setupJavascriptContext:self];
  [OKWidgetLinearGradientView setupJavascriptContext:self];
  [(OKWidgetMapViewProxy *)OKWidgetMapView setupJavascriptContext:self];
  [(OKWidgetMicaViewProxy *)OKWidgetMicaView setupJavascriptContext:self];
  [OKWidgetCALayerProxy setupJavascriptContext:self];
  [OKWidgetCATextLayerProxy setupJavascriptContext:self];
  [OKWidgetWebView setupJavascriptContext:self];
  [OKWidgetCameraView setupJavascriptContext:self];

  [OKWidgetGroupView setupJavascriptContext:self];
}

- (void)setupContentFilters
{
  [OKWidgetContentSepiaFilter setupJavascriptContext:self];
  [OKWidgetContentPolaroidFilter setupJavascriptContext:self];
  [OKWidgetContentBlackAndWhiteFilter setupJavascriptContext:self];
  [OKWidgetContentColorInvertFilter setupJavascriptContext:self];
  [OKWidgetContentColorPosterizeFilter setupJavascriptContext:self];
  [OKWidgetContentComicEffectFilter setupJavascriptContext:self];
  [OKWidgetContentColorControlsFilter setupJavascriptContext:self];
  [OKWidgetContentGaussianBlurFilter setupJavascriptContext:self];
  [OKWidgetContentCompositeFilter setupJavascriptContext:self];
  [OKWidgetContentColorCubeFilter setupJavascriptContext:self];

  [OKWidgetContentImageFilter setupJavascriptContext:self];
}

- (void)setupActions
{
  [OKAction setupJavascriptContext:self];
  [OKActionTap setupJavascriptContext:self];
  [OKActionLongPress setupJavascriptContext:self];
  [OKActionSwipe setupJavascriptContext:self];
  [OKActionPan setupJavascriptContext:self];
  [OKActionPinch setupJavascriptContext:self];
  [OKActionMicrophoneNoise setupJavascriptContext:self];
  [OKActionScroll setupJavascriptContext:self];
  [OKActionTransition setupJavascriptContext:self];
  [OKActionEdgePan setupJavascriptContext:self];
  [OKActionDynamicPan setupJavascriptContext:self];

  [OKActionMotion setupJavascriptContext:self];
}

@end