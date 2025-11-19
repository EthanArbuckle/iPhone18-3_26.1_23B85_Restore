@interface UIViewCALayerKeyValueMapper
@end

@implementation UIViewCALayerKeyValueMapper

void __63___UIViewCALayerKeyValueMapper_CALayerKeyPathForUIViewKeyPath___block_invoke()
{
  v0 = qword_1ED4A2C88;
  qword_1ED4A2C88 = &unk_1EFE34BD0;

  v1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:&unk_1EFE34BD0];
  v2 = _MergedGlobals_1392;
  _MergedGlobals_1392 = v1;
}

void __72___UIViewCALayerKeyValueMapper_CALayerValueForUIViewValue_forUIViewKey___block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"backgroundColor";
  v0 = [&__block_literal_global_41_3 copy];
  v4[1] = @"transform";
  v5[0] = v0;
  v1 = [&__block_literal_global_47_6 copy];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = qword_1ED4A2C98;
  qword_1ED4A2C98 = v2;
}

uint64_t __72___UIViewCALayerKeyValueMapper_CALayerValueForUIViewValue_forUIViewKey___block_invoke_2(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

id __72___UIViewCALayerKeyValueMapper_CALayerValueForUIViewValue_forUIViewKey___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  if (a2)
  {
    [a2 CGAffineTransformValue];
  }

  else
  {
    memset(&v5, 0, sizeof(v5));
  }

  CATransform3DMakeAffineTransform(&v6, &v5);
  v3 = [v2 valueWithCATransform3D:&v6];

  return v3;
}

@end