@interface WAGradientProvider
- ($C28CD4A45FD07A4F97CC9D5F91F25271)mixedColorsForIndex:(int64_t)a3 solarHeight:(float)a4 condition:(int64_t)a5 latitude:(float)a6;
- ($D093EE1BE403EA09038249188A8DF7BB)mixedGradientForSunheight:(SEL)a3 hourAngle:(double)a4 condition:(double)a5 latitude:(int64_t)a6;
- (id)gradientForConditionCode:(int64_t)a3 isDay:(BOOL)a4;
- (void)getTopColor:(id *)a3 middleColor:(id *)a4 bottomColor:(id *)a5 gradientStopPoint:(double *)a6 forCity:(id)a7 date:(id)a8;
@end

@implementation WAGradientProvider

- (id)gradientForConditionCode:(int64_t)a3 isDay:(BOOL)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = -90.0;
  if (a4)
  {
    v4 = 90.0;
  }

  [(WAGradientProvider *)self mixedGradientForSunheight:a3 hourAngle:v4 condition:0.0 latitude:0.0, 0, 0];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D75348] colorWithRed:v13 green:v14 blue:v15 alpha:1.0];
  v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v5 addObjectsFromArray:v9];

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)getTopColor:(id *)a3 middleColor:(id *)a4 bottomColor:(id *)a5 gradientStopPoint:(double *)a6 forCity:(id)a7 date:(id)a8
{
  v13 = a7;
  if ([v13 isDay])
  {
    v14 = 90.0;
  }

  else
  {
    v14 = -90.0;
  }

  v15 = [v13 conditionCode];

  [(WAGradientProvider *)self mixedGradientForSunheight:v15 hourAngle:v14 condition:0.0 latitude:0.0];
  if (a3)
  {
    *a3 = [MEMORY[0x277D75348] colorWithRed:*&v16 green:*(&v16 + 1) blue:v17 alpha:1.0];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  }

  *a6 = 0.0;
}

- ($D093EE1BE403EA09038249188A8DF7BB)mixedGradientForSunheight:(SEL)a3 hourAngle:(double)a4 condition:(double)a5 latitude:(int64_t)a6
{
  v11 = a4;
  *&a4 = v11;
  *&a5 = a7;
  [(WAGradientProvider *)self mixedColorsForIndex:0 solarHeight:a6 condition:a4 latitude:a5];
  v35 = v13;
  v36 = v12;
  v15 = v14;
  v17 = v16;
  *&v18 = v11;
  *&v19 = a7;
  [(WAGradientProvider *)self mixedColorsForIndex:1 solarHeight:a6 condition:v18 latitude:v19];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *&v28 = v11;
  *&v29 = a7;
  result = [(WAGradientProvider *)self mixedColorsForIndex:2 solarHeight:a6 condition:v28 latitude:v29];
  retstr->var0.var0 = v36;
  retstr->var0.var1 = v35;
  retstr->var0.var2 = v15;
  retstr->var0.var3 = v17;
  retstr->var1.var0 = v21;
  retstr->var1.var1 = v23;
  retstr->var1.var2 = v25;
  retstr->var1.var3 = v27;
  retstr->var2.var0 = v31;
  retstr->var2.var1 = v32;
  retstr->var2.var2 = v33;
  retstr->var2.var3 = v34;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)mixedColorsForIndex:(int64_t)a3 solarHeight:(float)a4 condition:(int64_t)a5 latitude:(float)a6
{
  if (a5 > 0x2F)
  {
    v7 = &clearDay;
    v6 = &clearNight;
  }

  else
  {
    v6 = *(&off_279E68BB0 + a5);
    v7 = *(&off_279E68D30 + a5);
  }

  v8 = fabsf(a4);
  v9 = 0.0;
  if (a4 > -9.0)
  {
    v9 = 1.0;
  }

  v10 = (a4 + 9.0) / 18.0;
  if (v8 >= 9.0)
  {
    v10 = v9;
  }

  v11 = &v7[4 * a3];
  v12 = *v11;
  v13.f64[0] = v11[1].f64[0];
  v14 = &v6[4 * a3];
  v15.f64[0] = v14[1].f64[0];
  v13.f64[1] = v7[a3 + 12];
  v15.f64[1] = v6[a3 + 12];
  v16 = vmlaq_n_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v12), v13), v10), vcvt_hight_f32_f64(vcvt_f32_f64(*v14), v15), 1.0 - v10);
  v17 = v16.f32[1];
  v19 = v16.f32[3];
  v18 = v16.f32[2];
  result.var0 = v16.f32[0];
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  return result;
}

@end