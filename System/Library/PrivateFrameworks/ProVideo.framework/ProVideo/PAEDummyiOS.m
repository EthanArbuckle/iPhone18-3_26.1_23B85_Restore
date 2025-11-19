@interface PAEDummyiOS
+ (void)setup;
@end

@implementation PAEDummyiOS

+ (void)setup
{
  v2 = [[PAEGaussianBlur alloc] initWithAPIManager:0];
  v3 = [[PAEColorSolid alloc] initWithAPIManager:0];
  v4 = [[PAECheckerboard alloc] initWithAPIManager:0];
  v5 = [[PAEStripesGenerator alloc] initWithAPIManager:0];
  v6 = [[PAEVignette alloc] initWithAPIManager:0];
  v7 = [[PAEColorBalance alloc] initWithAPIManager:0];
  v8 = [[PAELevels alloc] initWithAPIManager:0];
  v9 = [[PAEChannelMixer alloc] initWithAPIManager:0];
  v10 = [[PAELumaKeyer alloc] initWithAPIManager:0];
  v11 = [[PAEGamma alloc] initWithAPIManager:0];
  v12 = [[PAEInvert alloc] initWithAPIManager:0];
  v13 = [[PAEMinMax alloc] initWithAPIManager:0];
  v14 = [[PAETint alloc] initWithAPIManager:0];
  v15 = [[PAEBrightness alloc] initWithAPIManager:0];
  v16 = [[PAEColorize alloc] initWithAPIManager:0];
  v17 = [[PAEContrast alloc] initWithAPIManager:0];
  v18 = [[PAEDesaturate alloc] initWithAPIManager:0];
  v19 = [[PAEHSVAdjust alloc] initWithAPIManager:0];
  v20 = [[PAEThreshold alloc] initWithAPIManager:0];
  v21 = [[PAECompoundBlur alloc] initWithAPIManager:0];
  v22 = [[PAEGlow alloc] initWithAPIManager:0];
  v23 = [[PAEAddNoise alloc] initWithAPIManager:0];
  v24 = [[PAEBadFilm alloc] initWithAPIManager:0];
  v25 = [[PAEGloom alloc] initWithAPIManager:0];
  v26 = [[PAEGradient alloc] initWithAPIManager:0];
  v27 = [[PAEGradientColorize alloc] initWithAPIManager:0];
  v28 = [[PAESimpleBorder alloc] initWithAPIManager:0];
  v29 = [[PAESharpen alloc] initWithAPIManager:0];
  v30 = [[PAEUnderwater alloc] initWithAPIManager:0];
  v31 = [[PAEUnsharpMask alloc] initWithAPIManager:0];
  v32 = [[PAEDirectionalBlur alloc] initWithAPIManager:0];
  v33 = [[PAEGradientBlur alloc] initWithAPIManager:0];
  v34 = [[PAEOffset alloc] initWithAPIManager:0];
  v35 = [[PAEFracturedFilter alloc] initWithAPIManager:0];
  v36 = [[PAEFracturedTransition alloc] initWithAPIManager:0];
  v37 = [[PAEPhotosFilters alloc] initWithAPIManager:0];
  v38 = [[PAEMono alloc] initWithAPIManager:0];
  v39 = [[PAETonal alloc] initWithAPIManager:0];
  v40 = [[PAENoir alloc] initWithAPIManager:0];
  v41 = [[PAEFade alloc] initWithAPIManager:0];
  v42 = [[PAEChrome alloc] initWithAPIManager:0];
  v43 = [[PAEProcess alloc] initWithAPIManager:0];
  v44 = [[PAETransfer alloc] initWithAPIManager:0];
  v45 = [[PAEInstant alloc] initWithAPIManager:0];
  v46 = [[PAEBleach alloc] initWithAPIManager:0];
  v47 = [[PAECalifornia alloc] initWithAPIManager:0];
  v48 = [[PAEGrayscale alloc] initWithAPIManager:0];
  v49 = [[PAENevada alloc] initWithAPIManager:0];
  v50 = [[PAENewYork alloc] initWithAPIManager:0];
  v51 = [[PAESixties alloc] initWithAPIManager:0];
  v52 = [[PAEMirror alloc] initWithAPIManager:0];
  v53 = [[PAEStarburst alloc] initWithAPIManager:0];
  v54 = [[PAEPoke alloc] initWithAPIManager:0];
  v55 = [[PAETwirl alloc] initWithAPIManager:0];
  v56 = [[PAEFunHouse alloc] initWithAPIManager:0];
  v57 = [[PAEiOSKaleidoscope alloc] initWithAPIManager:0];
  v58 = [[PAEiOSStretch alloc] initWithAPIManager:0];
  v59 = [[PAEiOSLightTunnel alloc] initWithAPIManager:0];
  v60 = [[PAEiOSTwirl alloc] initWithAPIManager:0];
  v61 = [[PAEPixellate alloc] initWithAPIManager:0];
  v62 = [[PAETextureWrap alloc] initWithAPIManager:0];
  v63 = [[PAEOverlappingCircles alloc] initWithAPIManager:0];
  v64 = [[PAEComicTown alloc] initWithAPIManager:0];
  v65 = [[PAEStyleTransfer alloc] initWithAPIManager:0];
  v66 = [[PAEFill alloc] initWithAPIManager:0];
  v67 = [[PAEEquirectProject alloc] initWithAPIManager:0];
  v68 = [[PAEEquirectProjectFilter alloc] initWithAPIManager:0];
  v69 = [[PAEOuterGlow alloc] initWithAPIManager:0];
  v70 = [[PAEHalftone alloc] initWithAPIManager:0];
  v71 = [[PAEVividStandardBG alloc] initWithAPIManager:0];
  v72 = [[PAEVividCoolBG alloc] initWithAPIManager:0];
  v73 = [[PAEVividWarmBG alloc] initWithAPIManager:0];
  v74 = [[PAEDramaticFG alloc] initWithAPIManager:0];
  v75 = [[PAEDramaticBG alloc] initWithAPIManager:0];
  v76 = [[PAEDramaticCoolBG alloc] initWithAPIManager:0];
  v77 = [[PAEDramaticCoolFG alloc] initWithAPIManager:0];
  v78 = [[PAEDramaticWarmBG alloc] initWithAPIManager:0];
  v79 = [[PAEDramaticWarmFG alloc] initWithAPIManager:0];
  v80 = [[PAESilvertone alloc] initWithAPIManager:0];
  v81 = [[PAEBlackAndWhiteNoir alloc] initWithAPIManager:0];
  v82 = [[PAEBlackAndWhiteMono alloc] initWithAPIManager:0];
  v83 = [[PAECool alloc] initWithAPIManager:0];
  v84 = [[PAEBloom alloc] initWithAPIManager:0];
  v85 = [[PAEChromaKeyeriOS alloc] initWithAPIManager:0];
  v86 = [[PAECamcorder alloc] initWithAPIManager:0];
  v87 = [[PAEToneMap alloc] initWithAPIManager:0];
  v88 = [[PAEInverseToneMap alloc] initWithAPIManager:0];
  v89 = [[PAE_HLG_Inverse_OETF alloc] initWithAPIManager:0];
  v90 = [[PAE_HLG_OETF alloc] initWithAPIManager:0];
  v91 = [[PAELightRays alloc] initWithAPIManager:0];
  v92 = [[PAEDroplet alloc] initWithAPIManager:0];
  v93 = [[PAEBulge alloc] initWithAPIManager:0];
  v94 = [[PAESlitScan alloc] initWithAPIManager:0];
  v95 = [[PAEHSCurvesEffect alloc] initWithAPIManager:0];
  v96 = [[PAELUTFile alloc] initWithAPIManager:0];
  v97 = [(PAESharedDefaultBase *)[PAEPageCurlFilter alloc] initWithAPIManager:0];
  v98 = [[PAEVariableBlur alloc] initWithAPIManager:0];
  v99 = [[PAESphere alloc] initWithAPIManager:0];
  v100 = [[PAESoftGradient alloc] initWithAPIManager:0];

  v101 = v100;
}

@end