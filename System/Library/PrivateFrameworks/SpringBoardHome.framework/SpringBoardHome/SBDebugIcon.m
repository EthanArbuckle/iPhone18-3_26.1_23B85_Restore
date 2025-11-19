@interface SBDebugIcon
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
@end

@implementation SBDebugIcon

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v13 setScale:v10];
  v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v13 format:{v12, v11}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__SBDebugIcon_iconImageWithInfo_traitCollection_options___block_invoke;
  v17[3] = &__block_descriptor_64_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v17[4] = v12;
  *&v17[5] = v11;
  *&v17[6] = v10;
  v17[7] = v9;
  v15 = [v14 imageWithActions:v17];

  return v15;
}

void __57__SBDebugIcon_iconImageWithInfo_traitCollection_options___block_invoke(double *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = MEMORY[0x1E69DC728];
  v5 = a1[7];
  v8 = a2;
  v6 = [v4 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v2, v3, v5}];
  [v6 addClip];

  v7 = [MEMORY[0x1E69DC888] colorWithHue:0.5 saturation:0.55 brightness:1.0 alpha:0.3];
  [v7 set];

  [v8 fillRect:0 blendMode:{0.0, 0.0, v2, v3}];
}

@end