@interface PBFHomeScreenPreviewImageBuilder
- (id)_imageForView:(id)a3;
- (void)homeScreenImageForConfiguration:(id)a3 unlockedPosterSnapshot:(id)a4 displayContext:(id)a5 imageScaleRelativeToScreen:(double)a6 options:(unint64_t)a7 completion:(id)a8;
@end

@implementation PBFHomeScreenPreviewImageBuilder

- (void)homeScreenImageForConfiguration:(id)a3 unlockedPosterSnapshot:(id)a4 displayContext:(id)a5 imageScaleRelativeToScreen:(double)a6 options:(unint64_t)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  [v15 pbf_frame];
  [v15 pbf_scale];
  BSFloatRoundForScale();
  v19 = v18;
  [v15 pbf_frame];
  [v15 pbf_scale];
  BSFloatRoundForScale();
  v21 = v20;
  v22 = objc_alloc_init(PBFHomeScreenPreviewViewBuilder);
  [(PBFHomeScreenPreviewViewBuilder *)v22 setDisplayContext:v15];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setHomeScreenConfiguration:v17];

  [(PBFHomeScreenPreviewViewBuilder *)v22 setUnlockedPosterSnapshot:v16];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setExcludesSilhouette:a7 & 1];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setExcludesHomeScreenDock:(a7 >> 1) & 1];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setViewScreenSizeScale:a6];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __152__PBFHomeScreenPreviewImageBuilder_homeScreenImageForConfiguration_unlockedPosterSnapshot_displayContext_imageScaleRelativeToScreen_options_completion___block_invoke;
  v30[3] = &unk_2782C8FF8;
  v30[4] = self;
  v31 = v14;
  v23 = v14;
  [(PBFHomeScreenPreviewViewBuilder *)v22 setRenderingCompletionHandler:v30];
  v24 = [(PBFHomeScreenPreviewViewBuilder *)v22 buildView];
  v25 = [v24 layer];

  [v15 pbf_scale];
  v27 = v26;

  [v25 setContentsScale:v27];
  memset(&v29, 0, sizeof(v29));
  CGAffineTransformMakeScale(&v29, v27, v27);
  v28 = v29;
  [v25 setAffineTransform:&v28];
  [v25 setFrame:{0.0, 0.0, v19 * v27, v21 * v27}];
}

void __152__PBFHomeScreenPreviewImageBuilder_homeScreenImageForConfiguration_unlockedPosterSnapshot_displayContext_imageScaleRelativeToScreen_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _imageForView:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)_imageForView:(id)a3
{
  v36[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 layer];
  [v4 contentsScale];
  v6 = v5;

  v7 = [v3 layer];
  [v7 bounds];
  v9 = v6 * v8;

  v10 = [v3 layer];
  [v10 bounds];
  v12 = v6 * v11;

  v13 = MTLCreateSystemDefaultDevice();
  v33 = v13;
  v34 = 1;
  v14 = [MEMORY[0x277CD2930] bs_IOSurfaceWithWidth:v9 height:v12 options:&v34];
  v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:80 width:v9 height:v12 mipmapped:0];
  [v15 setUsage:4];
  v16 = [v13 newTextureWithDescriptor:v15 iosurface:v14 plane:0];
  v32 = v16;
  v17 = MGGetBoolAnswer();
  v18 = MEMORY[0x277CBF430];
  if (!v17)
  {
    v18 = MEMORY[0x277CBF4B8];
  }

  v19 = CGColorSpaceCreateWithName(*v18);
  v20 = [v13 newCommandQueue];
  [v20 setBackgroundGPUPriority:2];
  v21 = *MEMORY[0x277CDA820];
  v35[0] = *MEMORY[0x277CDA818];
  v35[1] = v21;
  v36[0] = v19;
  v36[1] = v20;
  v35[2] = @"kCARendererFlags";
  v36[2] = &unk_282D0A4B0;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v23 = [MEMORY[0x277CD9F40] rendererWithMTLTexture:v16 options:v22];
  v24 = [v3 layer];

  [v23 setLayer:v24];
  [v23 setBounds:{0.0, 0.0, v9, v12}];
  [MEMORY[0x277CD9FF0] flush];
  [v23 beginFrameAtTime:0 timeStamp:0.0];
  [v23 render];
  [v23 endFrame];
  v25 = [v20 commandBuffer];
  [v25 enqueue];
  [v25 commit];
  [v25 waitUntilCompleted];
  v26 = [v14 CGImageBuilder];
  v27 = [v26 setOpaque:1];
  v28 = CFAutorelease([v26 buildCGImage]);
  v29 = MEMORY[0x277D755B8];
  CGImageGetOrientation();
  v30 = [v29 imageWithCGImage:v28 scale:PUIImageOrientationForCGImageOrientation() orientation:v6];

  return v30;
}

@end