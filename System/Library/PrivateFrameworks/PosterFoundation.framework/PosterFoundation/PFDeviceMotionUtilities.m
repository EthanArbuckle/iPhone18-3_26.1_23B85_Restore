@interface PFDeviceMotionUtilities
+ (__n128)rotationFromSerializedRepresentation:(void *)a1@<X2>;
+ (id)serializedRepresentationFromRotation:(double *)a3;
@end

@implementation PFDeviceMotionUtilities

+ (id)serializedRepresentationFromRotation:(double *)a3
{
  v3 = *a3;
  v13 = *(a3 + 1);
  v4 = a3[3];
  v5 = a3[1];
  v6 = MEMORY[0x1E695DEC8];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*&v13];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v11 = [v6 arrayWithObjects:{v7, v8, v9, v10, 0}];

  return v11;
}

+ (__n128)rotationFromSerializedRepresentation:(void *)a1@<X2>
{
  v3 = a1;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v17 = v5;
  v6 = [v3 objectAtIndexedSubscript:1];
  [v6 doubleValue];
  v14 = v7;
  v8 = [v3 objectAtIndexedSubscript:2];
  [v8 doubleValue];
  v15 = v9;
  v10 = [v3 objectAtIndexedSubscript:3];

  [v10 doubleValue];
  v11.n128_u64[0] = v17;
  v11.n128_u64[1] = v14;
  v18 = v11;
  v11.n128_u64[0] = v15;
  v11.n128_u64[1] = v12;
  v16 = v11;

  result = v18;
  *a2 = v18;
  a2[1] = v16;
  return result;
}

@end