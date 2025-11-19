@interface SXDOMAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXDOMAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F53BE580 factory:&__block_literal_global_4];

  v6 = [v3 publicContainer];
  v7 = [v6 registerClass:objc_opt_class() factory:&__block_literal_global_76];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_1F53D5B58 factory:&__block_literal_global_86];

  v10 = [v3 publicContainer];
  v11 = [v10 registerProtocol:&unk_1F53D5AE0 factory:&__block_literal_global_93];

  v12 = [v3 publicContainer];
  v13 = [v12 registerProtocol:&unk_1F53D5BB8 factory:&__block_literal_global_97];

  v14 = [v3 publicContainer];
  v15 = [v14 registerProtocol:&unk_1F53E7F88 factory:&__block_literal_global_105];

  v16 = [v3 publicContainer];
  v17 = [v16 registerClass:objc_opt_class() factory:&__block_literal_global_109];

  v18 = [v3 publicContainer];
  v19 = [v18 registerProtocol:&unk_1F53D5A80 factory:&__block_literal_global_117];

  v20 = [v3 privateContainer];
  v21 = [v20 registerClass:objc_opt_class() factory:&__block_literal_global_120];

  v22 = [v3 privateContainer];
  v23 = [v22 registerProtocol:&unk_1F540E9E0 factory:&__block_literal_global_126];

  v24 = [v3 publicContainer];
  v25 = [v24 registerProtocol:&unk_1F53E5E68 factory:&__block_literal_global_130];

  v26 = [v3 callback];
  v27 = TFCallbackScopeAny();
  [v26 whenResolvingProtocol:&unk_1F53AC020 scope:v27 callbackBlock:&__block_literal_global_160];

  v28 = [v3 privateContainer];
  v29 = [v28 registerClass:objc_opt_class() factory:&__block_literal_global_164];
  v30 = [v29 withConfiguration:&__block_literal_global_173_0];

  v31 = [v3 publicContainer];
  v32 = [v31 registerClass:objc_opt_class() factory:&__block_literal_global_188];

  v33 = [v3 privateContainer];
  v34 = [v33 registerProtocol:&unk_1F53E7308 factory:&__block_literal_global_229];

  v35 = [v3 privateContainer];
  v36 = [v35 registerProtocol:&unk_1F53A0DE8 factory:&__block_literal_global_238];

  v37 = [v3 privateContainer];
  v38 = [v37 registerClass:objc_opt_class() factory:&__block_literal_global_242_0];

  v39 = [v3 privateContainer];
  v40 = [v39 registerClass:objc_opt_class() factory:&__block_literal_global_245];

  v41 = [v3 privateContainer];
  v42 = [v41 registerClass:objc_opt_class() factory:&__block_literal_global_248];

  v43 = [v3 privateContainer];
  v44 = [v43 registerClass:objc_opt_class() factory:&__block_literal_global_251];

  v45 = [v3 privateContainer];
  v46 = [v45 registerClass:objc_opt_class() factory:&__block_literal_global_254];

  v47 = [v3 privateContainer];
  v48 = [v47 registerClass:objc_opt_class() factory:&__block_literal_global_257];

  v49 = [v3 privateContainer];
  v50 = [v49 registerClass:objc_opt_class() factory:&__block_literal_global_261];

  v51 = [v3 privateContainer];
  v52 = [v51 registerProtocol:&unk_1F53BA830 factory:&__block_literal_global_263];

  v53 = [v3 privateContainer];
  v54 = [v53 registerClass:objc_opt_class() factory:&__block_literal_global_266];

  v55 = [v3 privateContainer];
  v56 = [v55 registerClass:objc_opt_class() factory:&__block_literal_global_269];

  v57 = [v3 privateContainer];
  v58 = [v57 registerClass:objc_opt_class() factory:&__block_literal_global_316];

  v59 = [v3 privateContainer];
  v60 = [v59 registerClass:objc_opt_class() factory:&__block_literal_global_318];

  v61 = [v3 privateContainer];
  v62 = [v61 registerClass:objc_opt_class() factory:&__block_literal_global_320];

  v63 = [v3 privateContainer];
  v64 = [v63 registerClass:objc_opt_class() name:@"ComponentStyle" factory:&__block_literal_global_323];

  v65 = [v3 privateContainer];
  v66 = [v65 registerClass:objc_opt_class() name:@"ComponentTextStyle" factory:&__block_literal_global_332];

  v67 = [v3 privateContainer];
  v68 = [v67 registerClass:objc_opt_class() name:@"TextStyle" factory:&__block_literal_global_338];

  v69 = [v3 privateContainer];
  v70 = [v69 registerClass:objc_opt_class() name:@"Component" factory:&__block_literal_global_344];

  v71 = [v3 privateContainer];
  v72 = [v71 registerClass:objc_opt_class() name:@"ComponentLayout" factory:&__block_literal_global_350];

  v73 = [v3 privateContainer];
  v74 = [v73 registerClass:objc_opt_class() name:@"AdvertisementAutoPlacement" factory:&__block_literal_global_356];

  v75 = [v3 privateContainer];
  v76 = [v75 registerClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement" factory:&__block_literal_global_362];

  v77 = [v3 privateContainer];
  v78 = [v77 registerClass:objc_opt_class() name:@"DocumentStyle" factory:&__block_literal_global_368];

  v79 = [v3 privateContainer];
  v80 = [v79 registerClass:objc_opt_class() name:@"Component" factory:&__block_literal_global_375];

  v81 = [v3 privateContainer];
  v82 = [v81 registerClass:objc_opt_class() name:@"TextStyle" factory:&__block_literal_global_380];

  v83 = [v3 privateContainer];
  v84 = [v83 registerClass:objc_opt_class() name:@"ComponentTextStyle" factory:&__block_literal_global_382];

  v85 = [v3 privateContainer];
  v86 = [v85 registerClass:objc_opt_class() name:@"ComponentLayout" factory:&__block_literal_global_384_0];

  v87 = [v3 privateContainer];
  v88 = [v87 registerClass:objc_opt_class() name:@"ComponentStyle" factory:&__block_literal_global_386];

  v89 = [v3 privateContainer];
  v90 = [v89 registerClass:objc_opt_class() name:@"AdvertisementAutoPlacement" factory:&__block_literal_global_388];

  v91 = [v3 privateContainer];
  v92 = [v91 registerClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement" factory:&__block_literal_global_390];

  v93 = [v3 privateContainer];
  v94 = [v93 registerClass:objc_opt_class() name:@"DocumentStyle" factory:&__block_literal_global_392];

  v95 = [v3 callback];
  v96 = objc_opt_class();
  v97 = TFCallbackScopeAny();
  [v95 whenResolvingClass:v96 scope:v97 callbackBlock:&__block_literal_global_396];

  v98 = [v3 publicContainer];
  v99 = [v98 registerProtocol:&unk_1F540FF20 factory:&__block_literal_global_421];

  v100 = [v3 privateContainer];
  v101 = [v100 registerClass:objc_opt_class() factory:&__block_literal_global_424];

  v102 = [v3 publicContainer];
  v103 = [v102 registerProtocol:&unk_1F538E720 factory:&__block_literal_global_427];

  v104 = [v3 privateContainer];
  v105 = [v104 registerProtocol:&unk_1F53C6D40 factory:&__block_literal_global_430];

  v106 = [v3 privateContainer];
  v107 = [v106 registerClass:objc_opt_class() factory:&__block_literal_global_434];

  v108 = [v3 privateContainer];
  v109 = [v108 registerClass:objc_opt_class() factory:&__block_literal_global_437];

  v110 = [v3 privateContainer];
  v111 = [v110 registerClass:objc_opt_class() factory:&__block_literal_global_440];

  v112 = [v3 privateContainer];
  v113 = [v112 registerClass:objc_opt_class() factory:&__block_literal_global_443];

  v114 = [v3 privateContainer];
  v115 = [v114 registerClass:objc_opt_class() factory:&__block_literal_global_446];

  v116 = [v3 privateContainer];
  v117 = [v116 registerClass:objc_opt_class() factory:&__block_literal_global_449];

  v118 = [v3 privateContainer];
  v119 = [v118 registerClass:objc_opt_class() factory:&__block_literal_global_452];

  v120 = [v3 privateContainer];
  v121 = [v120 registerClass:objc_opt_class() factory:&__block_literal_global_455];

  v122 = [v3 privateContainer];
  v123 = [v122 registerClass:objc_opt_class() factory:&__block_literal_global_458];

  v124 = [v3 privateContainer];
  v125 = [v124 registerClass:objc_opt_class() factory:&__block_literal_global_461];

  v126 = [v3 privateContainer];
  v127 = [v126 registerClass:objc_opt_class() factory:&__block_literal_global_464];

  v128 = [v3 privateContainer];
  v129 = [v128 registerClass:objc_opt_class() factory:&__block_literal_global_467];

  v130 = [v3 privateContainer];
  v131 = [v130 registerClass:objc_opt_class() factory:&__block_literal_global_470];

  v132 = [v3 privateContainer];
  v133 = [v132 registerClass:objc_opt_class() factory:&__block_literal_global_473];

  v134 = [v3 privateContainer];
  v135 = [v134 registerClass:objc_opt_class() factory:&__block_literal_global_475];

  v136 = [v3 privateContainer];
  v137 = [v136 registerClass:objc_opt_class() factory:&__block_literal_global_477];

  v138 = [v3 privateContainer];
  v139 = [v138 registerClass:objc_opt_class() factory:&__block_literal_global_479];

  v140 = [v3 privateContainer];
  v141 = [v140 registerClass:objc_opt_class() factory:&__block_literal_global_481];

  v142 = [v3 privateContainer];
  v143 = [v142 registerClass:objc_opt_class() factory:&__block_literal_global_483];

  v144 = [v3 privateContainer];
  v145 = [v144 registerClass:objc_opt_class() factory:&__block_literal_global_487];

  v146 = [v3 publicContainer];
  v147 = [v146 registerClass:objc_opt_class() factory:&__block_literal_global_489];

  v148 = [v3 privateContainer];
  v149 = [v148 registerProtocol:&unk_1F53FBEF8 factory:&__block_literal_global_491];
  v150 = [v149 withConfiguration:&__block_literal_global_495];

  v151 = [v3 publicContainer];
  v152 = [v151 registerProtocol:&unk_1F53E0D50 factory:&__block_literal_global_500];

  v153 = [v3 privateContainer];
  v154 = [v153 registerClass:objc_opt_class() factory:&__block_literal_global_503];

  v155 = [v3 privateContainer];
  v156 = [v155 registerProtocol:&unk_1F5429A20 factory:&__block_literal_global_505];

  v157 = [v3 privateContainer];
  v158 = [v157 registerClass:objc_opt_class() factory:&__block_literal_global_508];

  v160 = [v3 privateContainer];

  v159 = [v160 registerClass:objc_opt_class() factory:&__block_literal_global_510];
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_1F53E5E68];
  v3 = [v2 createDOMObjectProvider];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXDocumentProvider *__32__SXDOMAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(SXDocumentProvider);

  return v0;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXDocumentMetadataProvider *__32__SXDOMAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDocumentMetadataProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];

  v5 = [(SXDocumentMetadataProvider *)v3 initWithDocumentProvider:v4];

  return v5;
}

SXDOMFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];

  v5 = [(SXDOMFactory *)v3 initWithDocumentProvider:v4];

  return v5;
}

SXDOMObjectProviderFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMObjectProviderFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5417968];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];
  v6 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];

  v7 = [(SXDOMObjectProviderFactory *)v3 initWithDocumentControllerProvider:v4 componentStyleMerger:v5 componentTextStyleMerger:v6];

  return v7;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addProcessor:v6 type:0];
}

SXDOMModifierManager *__32__SXDOMAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMModifierManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F540E9E0];
  v5 = [v2 resolveProtocol:&unk_1F53A0DE8];
  v6 = [v2 resolveProtocol:&unk_1F53BA830];

  v7 = [(SXDOMModifierManager *)v3 initWithDOMFactory:v4 contextFactory:v5 cacheKeyFactory:v6];

  return v7;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v6];

  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v7];

  v8 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v8];

  v9 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v9];

  v10 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v10];

  v11 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v11];

  v12 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v12];

  v13 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v13];

  v14 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v14];

  v15 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v15];

  v16 = [v5 resolveClass:objc_opt_class()];
  [v4 addModifier:v16];

  v17 = [v5 resolveClass:objc_opt_class()];

  [v4 addModifier:v17];
}

SXDOMConditionResolverModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMConditionResolverModifier alloc];
  v4 = [v2 resolveProtocol:&unk_1F53C6D40];
  v5 = [v2 resolveClass:objc_opt_class() name:@"Component"];
  v6 = [v2 resolveClass:objc_opt_class() name:@"TextStyle"];
  v7 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];
  v15 = [v2 resolveClass:objc_opt_class() name:@"ComponentLayout"];
  v14 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];
  v8 = [v2 resolveClass:objc_opt_class() name:@"AdvertisementAutoPlacement"];
  v9 = [v2 resolveClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement"];
  v10 = [v2 resolveClass:objc_opt_class() name:@"DocumentStyle"];
  v11 = [v2 resolveProtocol:&unk_1F53E7308];

  v13 = [(SXDOMConditionResolverModifier *)v3 initWithValidationContextFactory:v4 componentResolver:v5 textStyleResolver:v6 componentStyleResolver:v7 componentLayoutResolver:v15 componentTextStyleResolver:v14 advertisementAutoPlacementResolver:v8 suggestedArticlesAutoPlacementResolver:v9 documentStyleResolver:v10 instructions:v11];

  return v13;
}

SXConditionalResolverModifierInstructions *__32__SXDOMAssembly_loadInRegistry___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalResolverModifierInstructions alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5416848];

  v6 = [(SXConditionalResolverModifierInstructions *)v3 initWithDocumentProvider:v4 hintsConfigurationOptionProvider:v5];

  return v6;
}

SXDOMModificationContextFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMModificationContextFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];

  v5 = [(SXDOMModificationContextFactory *)v3 initWithDocumentProvider:v4];

  return v5;
}

SXContentDisplayContainerModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_18()
{
  v0 = objc_alloc_init(SXContentDisplayContainerModifier);

  return v0;
}

SXHiddenComponentRemovalModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_19()
{
  v0 = objc_alloc_init(SXHiddenComponentRemovalModifier);

  return v0;
}

SXAdComponentRemovalModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_20()
{
  v0 = objc_alloc_init(SXAdComponentRemovalModifier);

  return v0;
}

SXComponentLayoutParentWidthModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_21()
{
  v0 = objc_alloc_init(SXComponentLayoutParentWidthModifier);

  return v0;
}

SXDefaultComponentTextStyleModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_22()
{
  v0 = objc_alloc_init(SXDefaultComponentTextStyleModifier);

  return v0;
}

SXDefaultButtonComponentTextStyleModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_23()
{
  v0 = objc_alloc_init(SXDefaultButtonComponentTextStyleModifier);

  return v0;
}

SXColumnVisualizerModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_24()
{
  v0 = objc_alloc_init(SXColumnVisualizerModifier);

  return v0;
}

SXDOMCacheKeyFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDOMCacheKeyFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5416848];

  v6 = [(SXDOMCacheKeyFactory *)v3 initWithDocumentProvider:v4 hintsConfigurationOptionProvider:v5];

  return v6;
}

SXLineBalancingComponentTextStyleModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLineBalancingComponentTextStyleModifier alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXLineBalancingComponentTextStyleModifier *)v3 initWithSettings:v4];

  return v5;
}

SXDarkModeModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDarkModeModifier alloc];
  v4 = [v2 resolveProtocol:&unk_1F53FBEF8];
  v5 = [v2 resolveProtocol:&unk_1F53E0D50];
  v6 = [v2 resolveProtocol:&unk_1F5429A20];

  v7 = [(SXDarkModeModifier *)v3 initWithPolicyHandler:v4 configuration:v5 namespacedObjectFactory:v6];

  return v7;
}

SXDOMAnalyzerModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_28()
{
  v0 = objc_alloc_init(SXDOMAnalyzerModifier);

  return v0;
}

SXGradientFillToBackgroundColorModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_29()
{
  v0 = objc_alloc_init(SXGradientFillToBackgroundColorModifier);

  return v0;
}

SXAccessibilityHyphenationModifier *__32__SXDOMAssembly_loadInRegistry___block_invoke_30()
{
  v0 = objc_alloc_init(SXAccessibilityHyphenationModifier);

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_31()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A538];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_32()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A550];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_33()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A568];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXJSONObjectMerger alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXJSONObjectMerger *)v3 initWithClassProvider:v4 exclusionKeys:&unk_1F538A580];

  return v5;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_35()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A598];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_36()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A5B0];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_37()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A5C8];

  return v0;
}

SXJSONObjectMerger *__32__SXDOMAssembly_loadInRegistry___block_invoke_38()
{
  v0 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:&unk_1F538A5E0];

  return v0;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_39(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"Component"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"TextStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentLayout"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_43(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"AdvertisementAutoPlacement"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"SuggestedArticlesAutoPlacement"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

SXConditionalObjectResolver *__32__SXDOMAssembly_loadInRegistry___block_invoke_46(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXConditionalObjectResolver alloc];
  v4 = [v2 resolveProtocol:&unk_1F538E720];
  v5 = [v2 resolveClass:objc_opt_class() name:@"DocumentStyle"];

  v6 = [(SXConditionalObjectResolver *)v3 initWithConditionValidator:v4 objectMerger:v5];

  return v6;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v6];

  v7 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v7];

  v8 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v8];

  v9 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v9];

  v10 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v10];

  v11 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v11];

  v12 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v12];

  v13 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v13];

  v14 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v14];

  v15 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v15];

  v16 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v16];

  v17 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v17];

  v18 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v18];

  v19 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v19];

  v20 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v20];

  v21 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v21];

  v22 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v22];

  v23 = [v4 resolveClass:objc_opt_class()];
  [v5 addConditionValidator:v23];

  v24 = [v4 resolveClass:objc_opt_class()];

  [v5 addConditionValidator:v24];
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_48(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXConditionValidatorManager *__32__SXDOMAssembly_loadInRegistry___block_invoke_49()
{
  v0 = objc_alloc_init(SXConditionValidatorManager);

  return v0;
}

id __32__SXDOMAssembly_loadInRegistry___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXConditionValidationContextFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_51()
{
  v0 = objc_alloc_init(SXConditionValidationContextFactory);

  return v0;
}

SXPlatformConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_52()
{
  v0 = [[SXPlatformConditionValidator alloc] initWithPlatform:@"ios"];

  return v0;
}

SXSpecVersionConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_53()
{
  v0 = [[SXSpecVersionConditionValidator alloc] initWithSpecVersion:@"1.30"];

  return v0;
}

SXViewportConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_54()
{
  v0 = objc_alloc_init(SXViewportConditionValidator);

  return v0;
}

SXSizeClassConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_55()
{
  v0 = objc_alloc_init(SXSizeClassConditionValidator);

  return v0;
}

SXColumnConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_56()
{
  v0 = objc_alloc_init(SXColumnConditionValidator);

  return v0;
}

SXContentSizeCategoryValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_57()
{
  v0 = objc_alloc_init(SXContentSizeCategoryValidator);

  return v0;
}

SXSubscriptionStatusConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_58()
{
  v0 = objc_alloc_init(SXSubscriptionStatusConditionValidator);

  return v0;
}

SXSubscriptionActivationEligibilityConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_59()
{
  v0 = objc_alloc_init(SXSubscriptionActivationEligibilityConditionValidator);

  return v0;
}

SXOfferIdentifierConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_60()
{
  v0 = objc_alloc_init(SXOfferIdentifierConditionValidator);

  return v0;
}

SXOfferUpsellScenarioConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_61()
{
  v0 = objc_alloc_init(SXOfferUpsellScenarioConditionValidator);

  return v0;
}

SXTestingConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_62()
{
  v0 = objc_alloc_init(SXTestingConditionValidator);

  return v0;
}

SXViewLocationConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_63()
{
  v0 = objc_alloc_init(SXViewLocationConditionValidator);

  return v0;
}

SXForwardCompatibleConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_64()
{
  v0 = objc_alloc_init(SXForwardCompatibleConditionValidator);

  return v0;
}

SXPreferredColorSchemeConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_65()
{
  v0 = objc_alloc_init(SXPreferredColorSchemeConditionValidator);

  return v0;
}

SXNewsletterConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_66()
{
  v0 = objc_alloc_init(SXNewsletterConditionValidator);

  return v0;
}

SXFollowingConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_67()
{
  v0 = objc_alloc_init(SXFollowingConditionValidator);

  return v0;
}

SXConfiguredConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_68()
{
  v0 = objc_alloc_init(SXConfiguredConditionValidator);

  return v0;
}

SXAppConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_69()
{
  v0 = objc_alloc_init(SXAppConditionValidator);

  return v0;
}

SXExperimentConditionValidator *__32__SXDOMAssembly_loadInRegistry___block_invoke_70(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXExperimentConditionValidator alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E2F18];

  v5 = [(SXExperimentConditionValidator *)v3 initWithExperimentationManager:v4];

  return v5;
}

SXComponentMergerClassProvider *__32__SXDOMAssembly_loadInRegistry___block_invoke_71()
{
  v0 = objc_alloc_init(SXComponentMergerClassProvider);

  return v0;
}

SXLineBalancingSettings *__32__SXDOMAssembly_loadInRegistry___block_invoke_72()
{
  v0 = [[SXLineBalancingSettings alloc] initWithLineBalancingEnabled:0];

  return v0;
}

SXDarkModePolicyHandler *__32__SXDOMAssembly_loadInRegistry___block_invoke_73(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDarkModePolicyHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F53E0D50];

  v6 = [(SXDarkModePolicyHandler *)v3 initWithDocumentProvider:v4 darkModeConfiguration:v5];

  return v6;
}

void __32__SXDOMAssembly_loadInRegistry___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 addPolicyException:v6];

  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 addPolicyException:v7];

  v8 = [v5 resolveClass:objc_opt_class()];

  [v4 addPolicyException:v8];
}

SXDarkModeConfiguration *__32__SXDOMAssembly_loadInRegistry___block_invoke_75()
{
  v0 = [[SXDarkModeConfiguration alloc] initWithAutoDarkModeEnabled:0 inversionBehavior:2 saturationThreshold:0 colors:1.0];

  return v0;
}

SXFullscreenCaptionDarkModePolicyException *__32__SXDOMAssembly_loadInRegistry___block_invoke_76()
{
  v0 = objc_alloc_init(SXFullscreenCaptionDarkModePolicyException);

  return v0;
}

SXNamespacedObjectFactory *__32__SXDOMAssembly_loadInRegistry___block_invoke_77()
{
  v0 = objc_alloc_init(SXNamespacedObjectFactory);

  return v0;
}

SXTextContrastDarkModePolicyException *__32__SXDOMAssembly_loadInRegistry___block_invoke_78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTextContrastDarkModePolicyException alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"ComponentStyle"];
  v5 = [v2 resolveClass:objc_opt_class() name:@"ComponentTextStyle"];

  v6 = [(SXTextContrastDarkModePolicyException *)v3 initWithComponentStyleMerger:v4 componentTextStyleMerger:v5];

  return v6;
}

SXGradientFillDarkModePolicyException *__32__SXDOMAssembly_loadInRegistry___block_invoke_79()
{
  v0 = objc_alloc_init(SXGradientFillDarkModePolicyException);

  return v0;
}

@end