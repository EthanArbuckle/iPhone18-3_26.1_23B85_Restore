@interface PBFHomeScreenPreviewImageBuilder
- (id)_imageForView:(id)view;
- (void)homeScreenImageForConfiguration:(id)configuration unlockedPosterSnapshot:(id)snapshot displayContext:(id)context imageScaleRelativeToScreen:(double)screen options:(unint64_t)options completion:(id)completion;
@end

@implementation PBFHomeScreenPreviewImageBuilder

- (void)homeScreenImageForConfiguration:(id)configuration unlockedPosterSnapshot:(id)snapshot displayContext:(id)context imageScaleRelativeToScreen:(double)screen options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  snapshotCopy = snapshot;
  configurationCopy = configuration;
  [contextCopy pbf_frame];
  [contextCopy pbf_scale];
  BSFloatRoundForScale();
  v19 = v18;
  [contextCopy pbf_frame];
  [contextCopy pbf_scale];
  BSFloatRoundForScale();
  v21 = v20;
  v22 = objc_alloc_init(PBFHomeScreenPreviewViewBuilder);
  [(PBFHomeScreenPreviewViewBuilder *)v22 setDisplayContext:contextCopy];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setHomeScreenConfiguration:configurationCopy];

  [(PBFHomeScreenPreviewViewBuilder *)v22 setUnlockedPosterSnapshot:snapshotCopy];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setExcludesSilhouette:options & 1];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setExcludesHomeScreenDock:(options >> 1) & 1];
  [(PBFHomeScreenPreviewViewBuilder *)v22 setViewScreenSizeScale:screen];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __152__PBFHomeScreenPreviewImageBuilder_homeScreenImageForConfiguration_unlockedPosterSnapshot_displayContext_imageScaleRelativeToScreen_options_completion___block_invoke;
  v30[3] = &unk_2782C8FF8;
  v30[4] = self;
  v31 = completionCopy;
  v23 = completionCopy;
  [(PBFHomeScreenPreviewViewBuilder *)v22 setRenderingCompletionHandler:v30];
  buildView = [(PBFHomeScreenPreviewViewBuilder *)v22 buildView];
  layer = [buildView layer];

  [contextCopy pbf_scale];
  v27 = v26;

  [layer setContentsScale:v27];
  memset(&v29, 0, sizeof(v29));
  CGAffineTransformMakeScale(&v29, v27, v27);
  v28 = v29;
  [layer setAffineTransform:&v28];
  [layer setFrame:{0.0, 0.0, v19 * v27, v21 * v27}];
}

void __152__PBFHomeScreenPreviewImageBuilder_homeScreenImageForConfiguration_unlockedPosterSnapshot_displayContext_imageScaleRelativeToScreen_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _imageForView:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)_imageForView:(id)view
{
  v36[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  layer = [viewCopy layer];
  [layer contentsScale];
  v6 = v5;

  layer2 = [viewCopy layer];
  [layer2 bounds];
  v9 = v6 * v8;

  layer3 = [viewCopy layer];
  [layer3 bounds];
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
  newCommandQueue = [v13 newCommandQueue];
  [newCommandQueue setBackgroundGPUPriority:2];
  v21 = *MEMORY[0x277CDA820];
  v35[0] = *MEMORY[0x277CDA818];
  v35[1] = v21;
  v36[0] = v19;
  v36[1] = newCommandQueue;
  v35[2] = @"kCARendererFlags";
  v36[2] = &unk_282D0A4B0;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v23 = [MEMORY[0x277CD9F40] rendererWithMTLTexture:v16 options:v22];
  layer4 = [viewCopy layer];

  [v23 setLayer:layer4];
  [v23 setBounds:{0.0, 0.0, v9, v12}];
  [MEMORY[0x277CD9FF0] flush];
  [v23 beginFrameAtTime:0 timeStamp:0.0];
  [v23 render];
  [v23 endFrame];
  commandBuffer = [newCommandQueue commandBuffer];
  [commandBuffer enqueue];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  cGImageBuilder = [v14 CGImageBuilder];
  v27 = [cGImageBuilder setOpaque:1];
  v28 = CFAutorelease([cGImageBuilder buildCGImage]);
  v29 = MEMORY[0x277D755B8];
  CGImageGetOrientation();
  v30 = [v29 imageWithCGImage:v28 scale:PUIImageOrientationForCGImageOrientation() orientation:v6];

  return v30;
}

@end