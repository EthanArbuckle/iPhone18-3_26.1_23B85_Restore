@interface JSValue(OKJavaScriptValue)
+ (uint64_t)valueWithCATransform3D:()OKJavaScriptValue inContext:;
+ (uint64_t)valueWithCoodinateRegion:()OKJavaScriptValue inContext:;
+ (uint64_t)valueWithEdgeInsets:()OKJavaScriptValue inContext:;
+ (uint64_t)valueWithLocationCoordinate2D:()OKJavaScriptValue inContext:;
+ (uint64_t)valueWithOffset:()OKJavaScriptValue inContext:;
+ (uint64_t)valueWithVector3:()OKJavaScriptValue inContext:;
+ (uint64_t)valueWithVector4:()OKJavaScriptValue inContext:;
- (double)toCoordinateRegion;
- (double)toEdgeInsets;
- (double)toLocationCoordinate2D;
- (double)toOffset;
- (float)toVector3;
- (float)toVector4;
- (uint64_t)toCATransform3D;
@end

@implementation JSValue(OKJavaScriptValue)

+ (uint64_t)valueWithEdgeInsets:()OKJavaScriptValue inContext:
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CD4658];
  v13[0] = @"top";
  v14[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v13[1] = @"left";
  v14[1] = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v13[2] = @"bottom";
  v14[2] = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v13[3] = @"right";
  v14[3] = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  return [v11 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v14, v13, 4), a7}];
}

+ (uint64_t)valueWithLocationCoordinate2D:()OKJavaScriptValue inContext:
{
  v10[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CD4658];
  v9[0] = @"latitude";
  v9[1] = @"longitude";
  v10[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v10[1] = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  return [v7 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v10, v9, 2), a5}];
}

+ (uint64_t)valueWithCoodinateRegion:()OKJavaScriptValue inContext:
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CD4658];
  v13[0] = @"latitude";
  v14[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v13[1] = @"longitude";
  v14[1] = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v13[2] = @"latitudeDelta";
  v14[2] = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v13[3] = @"longitudeDelta";
  v14[3] = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  return [v11 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v14, v13, 4), a7}];
}

+ (uint64_t)valueWithOffset:()OKJavaScriptValue inContext:
{
  v10[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CD4658];
  v9[0] = @"horizontal";
  v9[1] = @"vertical";
  v10[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v10[1] = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  return [v7 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v10, v9, 2), a5}];
}

+ (uint64_t)valueWithVector3:()OKJavaScriptValue inContext:
{
  v14[3] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CD4658];
  v13[0] = @"x";
  v14[0] = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v13[1] = @"y";
  *&v10 = a2;
  v14[1] = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v13[2] = @"z";
  *&v11 = a3;
  v14[2] = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  return [v9 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v14, v13, 3), a6}];
}

+ (uint64_t)valueWithVector4:()OKJavaScriptValue inContext:
{
  v17[4] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CD4658];
  v16[0] = @"x";
  v17[0] = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v16[1] = @"y";
  *&v12 = a2;
  v17[1] = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v16[2] = @"z";
  *&v13 = a3;
  v17[2] = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v16[3] = @"w";
  *&v14 = a4;
  v17[3] = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  return [v11 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v17, v16, 4), a7}];
}

+ (uint64_t)valueWithCATransform3D:()OKJavaScriptValue inContext:
{
  v9[16] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CD4658];
  v8[0] = @"m11";
  v9[0] = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
  v8[1] = @"m12";
  v9[1] = [MEMORY[0x277CCABB0] numberWithDouble:a3[1]];
  v8[2] = @"m13";
  v9[2] = [MEMORY[0x277CCABB0] numberWithDouble:a3[2]];
  v8[3] = @"m14";
  v9[3] = [MEMORY[0x277CCABB0] numberWithDouble:a3[3]];
  v8[4] = @"m21";
  v9[4] = [MEMORY[0x277CCABB0] numberWithDouble:a3[4]];
  v8[5] = @"m22";
  v9[5] = [MEMORY[0x277CCABB0] numberWithDouble:a3[5]];
  v8[6] = @"m23";
  v9[6] = [MEMORY[0x277CCABB0] numberWithDouble:a3[6]];
  v8[7] = @"m24";
  v9[7] = [MEMORY[0x277CCABB0] numberWithDouble:a3[7]];
  v8[8] = @"m31";
  v9[8] = [MEMORY[0x277CCABB0] numberWithDouble:a3[8]];
  v8[9] = @"m32";
  v9[9] = [MEMORY[0x277CCABB0] numberWithDouble:a3[9]];
  v8[10] = @"m33";
  v9[10] = [MEMORY[0x277CCABB0] numberWithDouble:a3[10]];
  v8[11] = @"m34";
  v9[11] = [MEMORY[0x277CCABB0] numberWithDouble:a3[11]];
  v8[12] = @"m41";
  v9[12] = [MEMORY[0x277CCABB0] numberWithDouble:a3[12]];
  v8[13] = @"m42";
  v9[13] = [MEMORY[0x277CCABB0] numberWithDouble:a3[13]];
  v8[14] = @"m43";
  v9[14] = [MEMORY[0x277CCABB0] numberWithDouble:a3[14]];
  v8[15] = @"m44";
  v9[15] = [MEMORY[0x277CCABB0] numberWithDouble:a3[15]];
  return [v6 valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v9, v8, 16), a4}];
}

- (double)toEdgeInsets
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"top", "toDouble"}];
  v3 = v2;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"left", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"bottom", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"right", "toDouble"}];
  return v3;
}

- (double)toLocationCoordinate2D
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"latitude", "toDouble"}];
  v3 = v2;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"longitude", "toDouble"}];
  return v3;
}

- (double)toCoordinateRegion
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"latitude", "toDouble"}];
  v3 = v2;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"longitude", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"latitudeDelta", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"longitudeDelta", "toDouble"}];
  return v3;
}

- (double)toOffset
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"horizontal", "toDouble"}];
  v3 = v2;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"vertical", "toDouble"}];
  return v3;
}

- (float)toVector3
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"x", "toDouble"}];
  v3 = v2;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"y", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"z", "toDouble"}];
  return v3;
}

- (float)toVector4
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"x", "toDouble"}];
  v3 = v2;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"y", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"z", "toDouble"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"w", "toDouble"}];
  return v3;
}

- (uint64_t)toCATransform3D
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m11", "toDouble"}];
  *a2 = v4;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m12", "toDouble"}];
  a2[1] = v5;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m13", "toDouble"}];
  a2[2] = v6;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m14", "toDouble"}];
  a2[3] = v7;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m21", "toDouble"}];
  a2[4] = v8;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m22", "toDouble"}];
  a2[5] = v9;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m23", "toDouble"}];
  a2[6] = v10;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m24", "toDouble"}];
  a2[7] = v11;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m31", "toDouble"}];
  a2[8] = v12;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m32", "toDouble"}];
  a2[9] = v13;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m33", "toDouble"}];
  a2[10] = v14;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m34", "toDouble"}];
  a2[11] = v15;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m41", "toDouble"}];
  a2[12] = v16;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m42", "toDouble"}];
  a2[13] = v17;
  [objc_msgSend(a1 objectForKeyedSubscript:{@"m43", "toDouble"}];
  a2[14] = v18;
  result = [objc_msgSend(a1 objectForKeyedSubscript:{@"m44", "toDouble"}];
  a2[15] = v20;
  return result;
}

@end