@interface SBHGhostAppIcon
- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
@end

@implementation SBHGhostAppIcon

- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  if ([MEMORY[0x1E69DD1B8] sbh_iconUserInterfaceStyleFromTraitCollection:{info, collection, context, options}] == 2)
  {
    v15 = 0.07;
    v16 = 1.0;
  }

  else
  {
    v15 = 0.12;
    v16 = 0.0;
  }

  v17 = [MEMORY[0x1E69DC888] colorWithWhite:v16 alpha:v15];
  v18 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v18 setScale:v12];
  v19 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v18 format:{v14, v13}];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__SBHGhostAppIcon_makeIconImageWithInfo_traitCollection_context_options___block_invoke;
  v23[3] = &unk_1E808FA00;
  v25 = v14;
  v26 = v13;
  v27 = v12;
  v28 = v11;
  contextCopy = context;
  v24 = v17;
  v20 = v17;
  v21 = [v19 imageWithActions:v23];

  return v21;
}

void __73__SBHGhostAppIcon_makeIconImageWithInfo_traitCollection_context_options___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (*(a1 + 72))
  {
    v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, *(a1 + 40), *(a1 + 48), *(a1 + 64)}];
    [v5 addClip];
  }

  [*(a1 + 32) set];
  [v6 fillRect:0 blendMode:{0.0, 0.0, v3, v4}];
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  infoCopy = info;
  v13 = objc_alloc_init(SBHGhostAppLayer);
  [(SBHGhostAppLayer *)v13 setBounds:0.0, 0.0, v11, v10];
  [(SBHGhostAppLayer *)v13 setCornerRadius:v9];
  [(SBHGhostAppLayer *)v13 setCornerCurve:*MEMORY[0x1E69796E8]];
  v14 = [MEMORY[0x1E69DD1B8] sbh_iconUserInterfaceStyleFromTraitCollection:infoCopy];

  [(SBHGhostAppLayer *)v13 updateForUserInterfaceStyle:v14];

  return v13;
}

@end