@interface WBSCoreProfilesConstants
+ (NSArray)availableSymbolImageNames;
+ (NSArray)orderedProfileColorOptions;
+ (WBSNamedColorOption)defaultPersonalProfileColor;
+ (id)_availableSymbolImageNamesToAccessibilityLabels;
+ (id)accessibilityLabelForSymbol:(id)a3;
@end

@implementation WBSCoreProfilesConstants

+ (NSArray)availableSymbolImageNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSCoreProfilesConstants_availableSymbolImageNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (availableSymbolImageNames_onceToken != -1)
  {
    dispatch_once(&availableSymbolImageNames_onceToken, block);
  }

  v2 = availableSymbolImageNames_orderedSymbolImageNames;

  return v2;
}

+ (id)_availableSymbolImageNamesToAccessibilityLabels
{
  if (_availableSymbolImageNamesToAccessibilityLabels_onceToken != -1)
  {
    +[WBSCoreProfilesConstants _availableSymbolImageNamesToAccessibilityLabels];
  }

  v3 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;

  return v3;
}

void __75__WBSCoreProfilesConstants__availableSymbolImageNamesToAccessibilityLabels__block_invoke()
{
  v0 = objc_alloc_init(WBSMutableOrderedDictionary);
  v1 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels = v0;

  v2 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v3 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_29];
  [v2 setObject:v3 forKey:@"person.lanyardcard.fill"];

  v4 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v5 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_37_0];
  [v4 setObject:v5 forKey:@"graduationcap.fill"];

  v6 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v7 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_45];
  [v6 setObject:v7 forKey:@"bag.fill"];

  v8 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v9 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_53];
  [v8 setObject:v9 forKey:@"hammer.fill"];

  v10 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v11 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_61_0];
  [v10 setObject:v11 forKey:@"building.2.fill"];

  v12 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v13 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_69];
  [v12 setObject:v13 forKey:@"emoji.face.grinning"];

  v14 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v15 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_77];
  [v14 setObject:v15 forKey:@"books.vertical.fill"];

  v16 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v17 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_85];
  [v16 setObject:v17 forKey:@"rocket.fill"];

  v18 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v19 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_93];
  [v18 setObject:v19 forKey:@"gift.fill"];

  v20 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v21 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_101];
  [v20 setObject:v21 forKey:@"doc.fill"];

  v22 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v23 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_109];
  [v22 setObject:v23 forKey:@"book.closed.fill"];

  v24 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v25 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_117];
  [v24 setObject:v25 forKey:@"creditcard.fill"];

  v26 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v27 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_125];
  [v26 setObject:v27 forKey:@"fork.knife"];

  v28 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v29 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_133];
  [v28 setObject:v29 forKey:@"pills.fill"];

  v30 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v31 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_141];
  [v30 setObject:v31 forKey:@"stethoscope"];

  v32 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v33 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_149];
  [v32 setObject:v33 forKey:@"house.fill"];

  v34 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v35 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_157];
  [v34 setObject:v35 forKey:@"building.columns.fill"];

  v36 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v37 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_165];
  [v36 setObject:v37 forKey:@"tv.fill"];

  v38 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v39 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_173];
  [v38 setObject:v39 forKey:@"headphones"];

  v40 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v41 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_181];
  [v40 setObject:v41 forKey:@"leaf.fill"];

  v42 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v43 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_189];
  [v42 setObject:v43 forKey:@"figure.stand"];

  v44 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v45 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_197];
  [v44 setObject:v45 forKey:@"pawprint.fill"];

  v46 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v47 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_205];
  [v46 setObject:v47 forKey:@"cart.fill"];

  v48 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v49 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_213];
  [v48 setObject:v49 forKey:@"shippingbox.fill"];

  v50 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v51 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_221];
  [v50 setObject:v51 forKey:@"tram.fill"];

  v52 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v53 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_229];
  [v52 setObject:v53 forKey:@"snowflake"];

  v54 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v55 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_237];
  [v54 setObject:v55 forKey:@"flame.fill"];

  v56 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v57 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_245];
  [v56 setObject:v57 forKey:@"wrench.and.screwdriver.fill"];

  v58 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v59 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_253];
  [v58 setObject:v59 forKey:@"scissors"];

  v60 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v61 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_261];
  [v60 setObject:v61 forKey:@"curlybraces"];

  v62 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v63 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_269];
  [v62 setObject:v63 forKey:@"lightbulb.fill"];

  v64 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v65 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_277];
  [v64 setObject:v65 forKey:@"staroflife.fill"];

  v66 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v67 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_285];
  [v66 setObject:v67 forKey:@"square.fill"];

  v68 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v69 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_293];
  [v68 setObject:v69 forKey:@"triangle.fill"];

  v70 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v71 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_301];
  [v70 setObject:v71 forKey:@"diamond.fill"];

  v72 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v73 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_309];
  [v72 setObject:v73 forKey:@"heart.fill"];

  v74 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v75 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_317];
  [v74 setObject:v75 forKey:@"star.fill"];

  v76 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v77 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_325];
  [v76 setObject:v77 forKey:@"guitars.fill"];

  v78 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v79 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_333];
  [v78 setObject:v79 forKey:@"paintpalette.fill"];

  v80 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v81 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_341];
  [v80 setObject:v81 forKey:@"globe.americas.fill"];

  v82 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v83 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_349];
  [v82 setObject:v83 forKey:@"pencil"];

  v84 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v85 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_357];
  [v84 setObject:v85 forKey:@"bicycle"];

  v86 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v87 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_365];
  [v86 setObject:v87 forKey:@"sunrise.fill"];

  v88 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v89 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_373];
  [v88 setObject:v89 forKey:@"sunset.fill"];

  v90 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v91 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_381];
  [v90 setObject:v91 forKey:@"apple.mindfulness"];

  v92 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v93 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_389];
  [v92 setObject:v93 forKey:@"airplane.departure"];

  v94 = _availableSymbolImageNamesToAccessibilityLabels_availableSymbolImageNamesToAccessibilityLabels;
  v95 = [[WBSLazyString alloc] initWithProvider:&__block_literal_global_397];
  [v94 setObject:v95 forKey:@"person.fill"];
}

void __53__WBSCoreProfilesConstants_availableSymbolImageNames__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _availableSymbolImageNamesToAccessibilityLabels];
  v1 = [v3 orderedKeys];
  v2 = availableSymbolImageNames_orderedSymbolImageNames;
  availableSymbolImageNames_orderedSymbolImageNames = v1;
}

+ (id)accessibilityLabelForSymbol:(id)a3
{
  v4 = a3;
  v5 = [a1 _availableSymbolImageNamesToAccessibilityLabels];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 string];

  return v7;
}

+ (NSArray)orderedProfileColorOptions
{
  if (orderedProfileColorOptions_onceToken != -1)
  {
    +[WBSCoreProfilesConstants orderedProfileColorOptions];
  }

  v3 = orderedProfileColorOptions_colors;

  return v3;
}

void __54__WBSCoreProfilesConstants_orderedProfileColorOptions__block_invoke()
{
  v51[16] = *MEMORY[0x1E69E9840];
  v0 = [WBSNamedColorOption alloc];
  v50 = _WBSLocalizedString(@"no color", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v49 = [(WBSNamedColorOption *)v0 initWithColorName:@"clear" red:v50 green:0.0 blue:0.0 alpha:0.0 accessibilityName:0.0];
  v51[0] = v49;
  v1 = [WBSNamedColorOption alloc];
  v48 = _WBSLocalizedString(@"Teal Blue", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v47 = [(WBSNamedColorOption *)v1 initWithColorName:@"lightSkyBlue" red:v48 green:0.307263 blue:0.782123 alpha:0.912477 accessibilityName:1.0];
  v51[1] = v47;
  v2 = [WBSNamedColorOption alloc];
  v46 = _WBSLocalizedString(@"Purple", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v45 = [(WBSNamedColorOption *)v2 initWithColorName:@"violet" red:v46 green:0.82 blue:0.35 alpha:0.99 accessibilityName:1.0];
  v51[2] = v45;
  v3 = [WBSNamedColorOption alloc];
  v44 = _WBSLocalizedString(@"Amber", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v43 = [(WBSNamedColorOption *)v3 initWithColorName:@"orange" red:v44 green:0.987167 blue:0.641658 alpha:0.483712 accessibilityName:1.0];
  v51[3] = v43;
  v4 = [WBSNamedColorOption alloc];
  v42 = _WBSLocalizedString(@"Teal", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v41 = [(WBSNamedColorOption *)v4 initWithColorName:@"heatherBlue" red:v42 green:0.62 blue:0.72 alpha:0.74 accessibilityName:1.0];
  v51[4] = v41;
  v5 = [WBSNamedColorOption alloc];
  v40 = _WBSLocalizedString(@"Cool Grey", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v39 = [(WBSNamedColorOption *)v5 initWithColorName:@"lolaViolet" red:v40 green:0.72 blue:0.65 alpha:0.72 accessibilityName:1.0];
  v51[5] = v39;
  v6 = [WBSNamedColorOption alloc];
  v38 = _WBSLocalizedString(@"Light Blue", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v37 = [(WBSNamedColorOption *)v6 initWithColorName:@"mayaBlue" red:v38 green:0.46 blue:0.65 alpha:1.0 accessibilityName:1.0];
  v51[6] = v37;
  v7 = [WBSNamedColorOption alloc];
  v36 = _WBSLocalizedString(@"Pink", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v35 = [(WBSNamedColorOption *)v7 initWithColorName:@"paleVioletRed" red:v36 green:0.93 blue:0.44 alpha:0.62 accessibilityName:1.0];
  v51[7] = v35;
  v8 = [WBSNamedColorOption alloc];
  v34 = _WBSLocalizedString(@"Orange", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v33 = [(WBSNamedColorOption *)v8 initWithColorName:@"goldenYellow" red:v34 green:0.874891 blue:0.743657 alpha:0.40245 accessibilityName:1.0];
  v51[8] = v33;
  v9 = [WBSNamedColorOption alloc];
  v32 = _WBSLocalizedString(@"Green", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v31 = [(WBSNamedColorOption *)v9 initWithColorName:@"raineeGreen" red:v32 green:0.69 blue:0.76 alpha:0.67 accessibilityName:1.0];
  v51[9] = v31;
  v10 = [WBSNamedColorOption alloc];
  v30 = _WBSLocalizedString(@"Warm Grey", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v29 = [(WBSNamedColorOption *)v10 initWithColorName:@"tideBrown" red:v30 green:0.73 blue:0.69 alpha:0.65 accessibilityName:1.0];
  v51[10] = v29;
  v11 = [WBSNamedColorOption alloc];
  v28 = _WBSLocalizedString(@"Mauve", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v12 = [(WBSNamedColorOption *)v11 initWithColorName:@"mediumSlateBlue" red:v28 green:0.69 blue:0.55 alpha:0.99 accessibilityName:1.0];
  v51[11] = v12;
  v13 = [WBSNamedColorOption alloc];
  v14 = _WBSLocalizedString(@"Red", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v15 = [(WBSNamedColorOption *)v13 initWithColorName:@"sweetPink" red:v14 green:1.0 blue:0.56 alpha:0.51 accessibilityName:1.0];
  v51[12] = v15;
  v16 = [WBSNamedColorOption alloc];
  v17 = _WBSLocalizedString(@"Yellow", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v18 = [(WBSNamedColorOption *)v16 initWithColorName:@"jonquilGreen" red:v17 green:0.767932 blue:0.801688 alpha:0.472574 accessibilityName:1.0];
  v51[13] = v18;
  v19 = [WBSNamedColorOption alloc];
  v20 = _WBSLocalizedString(@"Light Green", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v21 = [(WBSNamedColorOption *)v19 initWithColorName:@"green" red:v20 green:0.646673 blue:0.805998 alpha:0.515464 accessibilityName:1.0];
  v51[14] = v21;
  v22 = [WBSNamedColorOption alloc];
  v23 = _WBSLocalizedString(@"Grey", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v24 = [(WBSNamedColorOption *)v22 initWithColorName:@"grey" red:v23 green:0.5 blue:0.5 alpha:0.5 accessibilityName:1.0];
  v51[15] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:16];
  v26 = orderedProfileColorOptions_colors;
  orderedProfileColorOptions_colors = v25;

  v27 = *MEMORY[0x1E69E9840];
}

+ (WBSNamedColorOption)defaultPersonalProfileColor
{
  v2 = [a1 orderedProfileColorOptions];
  v3 = [v2 objectAtIndexedSubscript:0];

  return v3;
}

@end