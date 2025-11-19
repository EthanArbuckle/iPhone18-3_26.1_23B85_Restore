@interface UIVPA
@end

@implementation UIVPA

void ___UIVPA_CATransformDisplacement_block_invoke(uint64_t a1@<X0>, _OWORD *a2@<X1>, double *a3@<X8>)
{
  v5 = a2[5];
  v27[4] = a2[4];
  v27[5] = v5;
  v6 = a2[7];
  v27[6] = a2[6];
  v27[7] = v6;
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v8 = a2[3];
  v27[2] = a2[2];
  v27[3] = v8;
  [*(a1 + 32) setTransform:v27];
  v9 = [*(a1 + 32) valueForKeyPath:@"transform.translation.x"];
  [v9 floatValue];
  a3[6] = v10;

  v11 = [*(a1 + 32) valueForKeyPath:@"transform.translation.y"];
  [v11 floatValue];
  a3[7] = v12;

  v13 = [*(a1 + 32) valueForKeyPath:@"transform.translation.z"];
  [v13 floatValue];
  a3[8] = v14;

  v15 = [*(a1 + 32) valueForKeyPath:@"transform.scale.x"];
  [v15 floatValue];
  a3[3] = v16;

  v17 = [*(a1 + 32) valueForKeyPath:@"transform.scale.y"];
  [v17 floatValue];
  a3[4] = v18;

  v19 = [*(a1 + 32) valueForKeyPath:@"transform.scale.z"];
  [v19 floatValue];
  a3[5] = v20;

  v21 = [*(a1 + 32) valueForKeyPath:@"transform.rotation.x"];
  [v21 floatValue];
  *a3 = v22;

  v23 = [*(a1 + 32) valueForKeyPath:@"transform.rotation.y"];
  [v23 floatValue];
  a3[1] = v24;

  v25 = [*(a1 + 32) valueForKeyPath:@"transform.rotation.z"];
  [v25 floatValue];
  a3[2] = v26;
}

@end