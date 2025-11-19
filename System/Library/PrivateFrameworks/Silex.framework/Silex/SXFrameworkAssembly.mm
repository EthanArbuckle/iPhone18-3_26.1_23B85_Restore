@interface SXFrameworkAssembly
- (SXFrameworkAssembly)init;
@end

@implementation SXFrameworkAssembly

- (SXFrameworkAssembly)init
{
  v53[42] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = SXFrameworkAssembly;
  v2 = [(SXFrameworkAssembly *)&v52 init];
  if (v2)
  {
    SXSetupLogging();
    v51 = v2;
    v3 = objc_alloc_init(MEMORY[0x1E69CE170]);
    v50 = [v3 assemblies];

    v49 = objc_alloc_init(SXCoreAssembly);
    v53[0] = v49;
    v48 = objc_alloc_init(SXDOMAssembly);
    v53[1] = v48;
    v47 = objc_alloc_init(SXComponentAssembly);
    v53[2] = v47;
    v46 = objc_alloc_init(SXTangierAssembly);
    v53[3] = v46;
    v45 = objc_alloc_init(SXActionAssembly);
    v53[4] = v45;
    v44 = objc_alloc_init(SXBookmarkAssembly);
    v53[5] = v44;
    v43 = objc_alloc_init(SXFullscreenAssembly);
    v53[6] = v43;
    v42 = objc_alloc_init(SXStyleAssembly);
    v53[7] = v42;
    v41 = objc_alloc_init(SXAdAssembly);
    v53[8] = v41;
    v40 = objc_alloc_init(SXComponentInsertionAssembly);
    v53[9] = v40;
    v39 = objc_alloc_init(SXQuickLookAssembly);
    v53[10] = v39;
    v38 = objc_alloc_init(SXSubscriptionAssembly);
    v53[11] = v38;
    v37 = objc_alloc_init(SXOfferUpsellScenarioAssembly);
    v53[12] = v37;
    v36 = objc_alloc_init(SXLayoutAssembly);
    v53[13] = v36;
    v35 = objc_alloc_init(SXManagerAssembly);
    v53[14] = v35;
    v34 = objc_alloc_init(SXRenderingConfigurationAssembly);
    v53[15] = v34;
    v33 = objc_alloc_init(SXNewsletterAssembly);
    v53[16] = v33;
    v32 = objc_alloc_init(SXTagSubscriptionStatusAssembly);
    v53[17] = v32;
    v31 = objc_alloc_init(SXFormatAssembly);
    v53[18] = v31;
    v30 = objc_alloc_init(SXTextComponentAssembly);
    v53[19] = v30;
    v29 = objc_alloc_init(SXVideoComponentAssembly);
    v53[20] = v29;
    v28 = objc_alloc_init(SXContainerComponentAssembly);
    v53[21] = v28;
    v27 = objc_alloc_init(SXDataTableComponentAssembly);
    v53[22] = v27;
    v26 = objc_alloc_init(SXEmbedVideoComponentAssembly);
    v53[23] = v26;
    v25 = objc_alloc_init(SXEmbedComponentAssembly);
    v53[24] = v25;
    v24 = objc_alloc_init(SXImageComponentAssembly);
    v53[25] = v24;
    v23 = objc_alloc_init(SXLineComponentAssembly);
    v53[26] = v23;
    v22 = objc_alloc_init(SXScalableImageComponentAssembly);
    v53[27] = v22;
    v21 = objc_alloc_init(SXMapComponentAssembly);
    v53[28] = v21;
    v19 = objc_alloc_init(SXStripGalleryComponentAssembly);
    v53[29] = v19;
    v18 = objc_alloc_init(SXMosaicGalleryComponentAssembly);
    v53[30] = v18;
    v17 = objc_alloc_init(SXSectionComponentAssembly);
    v53[31] = v17;
    v4 = objc_alloc_init(SXAudioComponentAssembly);
    v53[32] = v4;
    v5 = objc_alloc_init(SXWebContentComponentAssembly);
    v53[33] = v5;
    v6 = objc_alloc_init(SXQuickLookComponentAssembly);
    v53[34] = v6;
    v7 = objc_alloc_init(SXFlexibleSpacerComponentAssembly);
    v53[35] = v7;
    v8 = objc_alloc_init(SXButtonComponentAssembly);
    v53[36] = v8;
    v9 = objc_alloc_init(SXSubscriptionButtonComponentAssembly);
    v53[37] = v9;
    v10 = objc_alloc_init(SXIssueCoverComponentAssembly);
    v53[38] = v10;
    v11 = objc_alloc_init(SXPlaceholderArticleThumbnailComponentAssembly);
    v53[39] = v11;
    v12 = objc_alloc_init(SXArticleLinkComponentAssembly);
    v53[40] = v12;
    v13 = objc_alloc_init(SXAdvertisementComponentAssembly);
    v53[41] = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:42];

    v2 = v51;
    v14 = [v50 arrayByAddingObjectsFromArray:v20];
    assemblies = v51->_assemblies;
    v51->_assemblies = v14;
  }

  return v2;
}

@end