@interface PRPosterMutableConfiguredProperties
- (BOOL)applyUpdate:(id)a3 error:(id *)a4;
- (BOOL)applyUpdates:(id)a3 error:(id *)a4;
- (void)mergeConfiguredProperties:(id)a3;
@end

@implementation PRPosterMutableConfiguredProperties

- (void)mergeConfiguredProperties:(id)a3
{
  v52 = a3;
  v4 = [v52 titleStyleConfiguration];
  if (v4)
  {
    v5 = v4;
    v6 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];

    if (!v6)
    {
      v7 = [v52 titleStyleConfiguration];
      [(PRPosterConfiguredProperties *)self setTitleStyleConfiguration:v7];
    }
  }

  v8 = [v52 complicationLayout];
  if (v8)
  {
    v9 = v8;
    v10 = [(PRPosterConfiguredProperties *)self complicationLayout];

    if (!v10)
    {
      v11 = [v52 complicationLayout];
      [(PRPosterConfiguredProperties *)self setComplicationLayout:v11];
    }
  }

  v12 = [v52 focusConfiguration];
  if (v12)
  {
    v13 = v12;
    v14 = [(PRPosterConfiguredProperties *)self focusConfiguration];

    if (!v14)
    {
      v15 = [v52 focusConfiguration];
      [(PRPosterConfiguredProperties *)self setFocusConfiguration:v15];
    }
  }

  v16 = [v52 renderingConfiguration];
  if (v16)
  {
    v17 = v16;
    v18 = [(PRPosterConfiguredProperties *)self renderingConfiguration];

    if (!v18)
    {
      v19 = [v52 renderingConfiguration];
      [(PRPosterConfiguredProperties *)self setRenderingConfiguration:v19];
    }
  }

  v20 = [v52 homeScreenConfiguration];
  if (v20)
  {
    v21 = v20;
    v22 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];

    if (!v22)
    {
      v23 = [v52 homeScreenConfiguration];
      [(PRPosterConfiguredProperties *)self setHomeScreenConfiguration:v23];
    }
  }

  v24 = [v52 colorVariationsConfiguration];
  if (v24)
  {
    v25 = v24;
    v26 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];

    if (!v26)
    {
      v27 = [v52 colorVariationsConfiguration];
      [(PRPosterConfiguredProperties *)self setColorVariationsConfiguration:v27];
    }
  }

  v28 = [v52 quickActionsConfiguration];
  if (v28)
  {
    v29 = v28;
    v30 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];

    if (!v30)
    {
      v31 = [v52 quickActionsConfiguration];
      [(PRPosterConfiguredProperties *)self setQuickActionsConfiguration:v31];
    }
  }

  v32 = [v52 ambientConfiguration];
  if (v32)
  {
    v33 = v32;
    v34 = [(PRPosterConfiguredProperties *)self ambientConfiguration];

    if (!v34)
    {
      v35 = [v52 ambientConfiguration];
      [(PRPosterConfiguredProperties *)self setAmbientConfiguration:v35];
    }
  }

  v36 = [v52 suggestionMetadata];
  if (v36)
  {
    v37 = v36;
    v38 = [(PRPosterConfiguredProperties *)self suggestionMetadata];

    if (!v38)
    {
      v39 = [v52 suggestionMetadata];
      [(PRPosterConfiguredProperties *)self setSuggestionMetadata:v39];
    }
  }

  v40 = [v52 otherMetadata];
  if (v40)
  {
    v41 = v40;
    v42 = [(PRPosterConfiguredProperties *)self otherMetadata];

    if (!v42)
    {
      v43 = [v52 otherMetadata];
      [(PRPosterConfiguredProperties *)self setOtherMetadata:v43];
    }
  }

  v44 = [v52 ambientWidgetLayout];
  if (v44)
  {
    v45 = v44;
    v46 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];

    if (!v46)
    {
      v47 = [v52 ambientWidgetLayout];
      [(PRPosterConfiguredProperties *)self setAmbientWidgetLayout:v47];
    }
  }

  v48 = [v52 userInfo];
  if (v48)
  {
    v49 = v48;
    v50 = [(PRPosterConfiguredProperties *)self userInfo];

    if (!v50)
    {
      v51 = [v52 userInfo];
      [(PRPosterConfiguredProperties *)self setUserInfo:v51];
    }
  }
}

- (BOOL)applyUpdate:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  v9 = [(PRPosterMutableConfiguredProperties *)self applyUpdates:v8 error:a4, v11, v12];
  return v9;
}

- (BOOL)applyUpdates:(id)a3 error:(id *)a4
{
  v325 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 count])
  {
    v264 = 1;
    goto LABEL_258;
  }

  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v293 objects:v324 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v294;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v294 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v293 + 1) + 8 * i) type];
        if (v12 <= 0xB && ((1 << v12) & 0xCC0) != 0)
        {
          if (a4)
          {
            v262 = MEMORY[0x1E696ABC0];
            v322 = *MEMORY[0x1E696A588];
            v323 = @"Update type not supported!";
            v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
            *a4 = [v262 pr_errorWithCode:2 userInfo:v263];
          }

          v264 = 0;
          goto LABEL_257;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v293 objects:v324 count:16];
    }

    while (v9);
  }

  v14 = v7;

  v7 = [(PRPosterMutableConfiguredProperties *)self mutableCopy];
  v289 = 0u;
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v289 objects:v321 count:16];
  v17 = v16 != 0;
  if (!v16)
  {
    v268 = 0;
    v269 = 0;
    v270 = 0;
    v259 = 0;
    goto LABEL_251;
  }

  v18 = v16;
  v277 = v16 != 0;
  v278 = self;
  v279 = a4;
  v281 = v6;
  v282 = 0;
  v280 = 0;
  v285 = 0;
  v283 = 0;
  v287 = *MEMORY[0x1E696A588];
  v288 = *v290;
  v284 = v15;
LABEL_16:
  v19 = 0;
  v286 = v18;
  while (2)
  {
    if (*v290 != v288)
    {
      objc_enumerationMutation(v15);
    }

    v20 = *(*(&v289 + 1) + 8 * v19);
    v21 = [v20 type];
    switch(v21)
    {
      case 1:
      case 2:
      case 8:
        v22 = [v20 payload];
        v23 = objc_opt_class();
        v24 = v22;
        if (v23)
        {
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        v30 = v25;

        if (!v30 || v21 == 2 && ([v30 complications], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "count"), v31, v32 >= 2))
        {
          v33 = MEMORY[0x1E696ABC0];
          v317 = v287;
          v318 = @"Complication payload was invalid; expected only 1 complication";
          v34 = MEMORY[0x1E695DF20];
          v35 = &v318;
          v36 = &v317;
          goto LABEL_33;
        }

        v39 = [v7 complicationLayout];
        v40 = v39;
        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = [[PRPosterComplicationLayout alloc] initWithInlineComplication:0 sidebarComplicationIconLayout:0 sidebarComplications:0 complicationIconLayout:0 complications:0];
        }

        v37 = v41;

        switch(v21)
        {
          case 1:
            v206 = [PRPosterComplicationLayout alloc];
            v99 = [v37 inlineComplication];
            v100 = [v37 sidebarComplications];
            v207 = v30;
LABEL_174:
            v101 = [v207 complications];
            v103 = -[PRPosterComplicationLayout initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:](v206, "initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:", v99, 0, v100, 0, v101, [v37 complicationsUseBottomLayout]);

LABEL_175:
            v18 = v286;

            [v7 setComplicationLayout:v103];
            v52 = 0;
            v53 = 1;
            v37 = v103;
            v283 = 1;
            goto LABEL_232;
          case 8:
            v206 = [PRPosterComplicationLayout alloc];
            v99 = [v37 inlineComplication];
            v100 = [v30 complications];
            v207 = v37;
            goto LABEL_174;
          case 2:
            v98 = [PRPosterComplicationLayout alloc];
            v99 = [v30 complications];
            v100 = [v99 firstObject];
            v101 = [v37 sidebarComplications];
            v102 = [v37 complications];
            v103 = -[PRPosterComplicationLayout initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:](v98, "initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:", v100, 0, v101, 0, v102, [v37 complicationsUseBottomLayout]);

            v15 = v284;
            goto LABEL_175;
        }

        v208 = MEMORY[0x1E696ABC0];
        v315 = v287;
        v316 = @"Complication payload was invalid";
        v209 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
        v52 = [v208 pr_errorWithCode:3 userInfo:v209];

LABEL_44:
        v53 = 0;
        goto LABEL_232;
      case 3:
      case 4:
      case 5:
        v26 = [v20 payload];
        v27 = objc_opt_class();
        v28 = v26;
        if (v27)
        {
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        v42 = [v30 tristate];
        v43 = [v42 BOOLValue];

        if (!v30 || ([v30 tristate], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
        {
          v48 = MEMORY[0x1E696ABC0];
          v305 = v287;
          v306 = @"Home Screen Legibility payload was invalid; expecting BOOL value not nil";
          v49 = MEMORY[0x1E695DF20];
          v50 = &v306;
          v51 = &v305;
          goto LABEL_42;
        }

        v37 = [v7 homeScreenConfiguration];
        v45 = [v37 mutableCopy];
        v46 = v45;
        if (v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = objc_opt_new();
        }

        v104 = v47;

        if (v21 == 5)
        {
          v109 = [v104 lockPosterAppearance];
          v110 = [v109 allowsModifyingLegibilityBlur];

          if (v110)
          {
            v107 = [v104 lockPosterAppearance];
            v108 = [v107 copyWithLegibilityBlurEnabled:v43];
            [v104 setLockPosterAppearance:v108];
            goto LABEL_101;
          }

          v235 = MEMORY[0x1E696ABC0];
          v301 = v287;
          v302 = @"Lock Screen Poster Apperance payload was invalid; does not allow modifying legibility blur";
          v236 = MEMORY[0x1E695DF20];
          v237 = &v302;
          v238 = &v301;
        }

        else
        {
          if (v21 != 4)
          {
            goto LABEL_203;
          }

          v105 = [v104 homePosterAppearance];
          v106 = [v105 allowsModifyingLegibilityBlur];

          if (v106)
          {
            v107 = [v104 homePosterAppearance];
            v108 = [v107 copyWithLegibilityBlurEnabled:v43];
            [v104 setHomePosterAppearance:v108];
LABEL_101:

            goto LABEL_203;
          }

          v235 = MEMORY[0x1E696ABC0];
          v303 = v287;
          v304 = @"Home Screen Poster Apperance payload was invalid; does not allow modifying legibility blur";
          v236 = MEMORY[0x1E695DF20];
          v237 = &v304;
          v238 = &v303;
        }

        v239 = [v236 dictionaryWithObjects:v237 forKeys:v238 count:1];
        v52 = [v235 pr_errorWithCode:3 userInfo:v239];

        if (v52)
        {
          v53 = 0;
          goto LABEL_204;
        }

LABEL_203:
        [v7 setHomeScreenConfiguration:v104];
        v52 = 0;
        v53 = 1;
        v285 = 1;
LABEL_204:

        v15 = v284;
        goto LABEL_232;
      case 6:
      case 7:
      case 10:
      case 11:
        if (v279)
        {
          v271 = MEMORY[0x1E696ABC0];
          v299 = v287;
          v300 = @"Update type not supported!";
          v272 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
          *v279 = [v271 pr_errorWithCode:2 userInfo:v272];
        }

        v52 = 0;
        goto LABEL_256;
      case 9:
        v78 = [v20 payload];
        v79 = objc_opt_class();
        v80 = v78;
        if (v79)
        {
          if (objc_opt_isKindOfClass())
          {
            v81 = v80;
          }

          else
          {
            v81 = 0;
          }
        }

        else
        {
          v81 = 0;
        }

        v30 = v81;

        if (v30)
        {
          v37 = [v30 propertyListRoot];
          v169 = [PRPosterAmbientWidgetLayout alloc];
          if (v37)
          {
            v170 = v37;
          }

          else
          {
            v170 = MEMORY[0x1E695E0F8];
          }

          v171 = [(PRPosterAmbientWidgetLayout *)v169 initWithDictionary:v170];
          [v7 setAmbientWidgetLayout:v171];

          v52 = 0;
          v53 = 1;
          LOBYTE(v282) = 1;
          goto LABEL_232;
        }

        v48 = MEMORY[0x1E696ABC0];
        v311 = v287;
        v312 = @"Ambient Widgets payload was invalid";
        v49 = MEMORY[0x1E695DF20];
        v50 = &v312;
        v51 = &v311;
LABEL_42:
        v37 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:1];
        v38 = v48;
        goto LABEL_43;
      case 12:
        v74 = [v20 payload];
        v75 = objc_opt_class();
        v76 = v74;
        if (v75)
        {
          if (objc_opt_isKindOfClass())
          {
            v77 = v76;
          }

          else
          {
            v77 = 0;
          }
        }

        else
        {
          v77 = 0;
        }

        v30 = v77;

        v158 = [v7 ambientConfiguration];
        v159 = [v158 mutableCopy];
        v160 = v159;
        if (v159)
        {
          v161 = v159;
        }

        else
        {
          v161 = objc_opt_new();
        }

        v37 = v161;

        v162 = [v30 propertyListRoot];
        v163 = [v162 objectForKey:@"creationBehavior"];

        v164 = v163 != 0;
        if (v163 && ([v30 propertyListRoot], v165 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v165, "objectForKey:", @"creationBehavior"), v166 = objc_claimAutoreleasedReturnValue(), v167 = objc_msgSend(v166, "unsignedIntegerValue"), v166, v165, objc_msgSend(v37, "creationBehavior") != v167))
        {
          [v37 setCreationBehavior:v167];
          v168 = 1;
        }

        else
        {
          v168 = 0;
        }

        v210 = [v30 propertyListRoot];
        v211 = [v210 objectForKey:@"deletionBehavior"];

        if (v211)
        {
          v212 = [v30 propertyListRoot];
          v213 = [v212 objectForKey:@"deletionBehavior"];
          v214 = [v213 unsignedIntegerValue];

          if ([v37 deletionBehavior] == v214)
          {
            v164 = 1;
          }

          else
          {
            [v37 setDeletionBehavior:v214];
            v164 = 1;
            v168 = 1;
          }
        }

        v215 = [v30 propertyListRoot];
        v216 = [v215 objectForKey:@"supportedDataLayout"];

        if (v216)
        {
          v217 = [v30 propertyListRoot];
          v218 = [v217 objectForKey:@"supportedDataLayout"];
          v219 = [v218 unsignedIntegerValue];

          if ([v37 supportedDataLayout] == v219)
          {
            v164 = 1;
          }

          else
          {
            [v37 setSupportedDataLayout:v219];
            v164 = 1;
            v168 = 1;
          }
        }

        v220 = [v30 propertyListRoot];
        v221 = [v220 objectForKey:@"editingBehavior"];

        if (v221)
        {
          v222 = [v30 propertyListRoot];
          v223 = [v222 objectForKey:@"editingBehavior"];
          v224 = [v223 unsignedIntegerValue];

          if ([v37 editingBehavior] != v224)
          {
            [v37 setEditingBehavior:v224];
LABEL_191:
            v225 = [v37 copy];
            [v7 setAmbientConfiguration:v225];
            v52 = 0;
            v53 = 1;
            v280 = 1;
            goto LABEL_216;
          }
        }

        else if (!v164)
        {
          v226 = MEMORY[0x1E696ABC0];
          v309 = v287;
          v310 = @"No changes could be applied; input was not valid";
          v227 = MEMORY[0x1E695DF20];
          v228 = &v310;
          v229 = &v309;
          goto LABEL_215;
        }

        if (v168)
        {
          goto LABEL_191;
        }

        v226 = MEMORY[0x1E696ABC0];
        v307 = v287;
        v308 = @"No changes could be applied; input was valid but matched existing values";
        v227 = MEMORY[0x1E695DF20];
        v228 = &v308;
        v229 = &v307;
LABEL_215:
        v225 = [v227 dictionaryWithObjects:v228 forKeys:v229 count:1];
        v52 = [v226 pr_errorWithCode:3 userInfo:v225];
        v53 = 0;
LABEL_216:

        goto LABEL_231;
      case 13:
        v62 = [v20 payload];
        v63 = objc_opt_class();
        v64 = v62;
        if (v63)
        {
          if (objc_opt_isKindOfClass())
          {
            v65 = v64;
          }

          else
          {
            v65 = 0;
          }
        }

        else
        {
          v65 = 0;
        }

        v30 = v65;

        if (v30)
        {
          v120 = [v30 tristate];
          if (v120)
          {
            v121 = [v30 tristate];
            v122 = [v121 BOOLValue];
          }

          else
          {
            v122 = 0;
          }

          v37 = [v7 homeScreenConfiguration];
          v230 = [v37 customizationConfiguration];
          v231 = [v230 isDimmed];

          if (v122 == v231)
          {
            v18 = v286;
LABEL_198:

            goto LABEL_235;
          }

          v232 = [v37 mutableCopy];
          v233 = v232;
          if (v232)
          {
            v234 = v232;
          }

          else
          {
            v234 = objc_opt_new();
          }

          v254 = v234;

          v255 = [v254 customizationConfiguration];
          v256 = [v255 configurationUpdatingDimmed:v122];
          [v254 setCustomizationConfiguration:v256];

          [v7 setHomeScreenConfiguration:v254];
LABEL_230:
          v52 = 0;
          v53 = 1;
          v285 = 1;
LABEL_231:
          v18 = v286;
        }

        else
        {
          v123 = MEMORY[0x1E696ABC0];
          v313 = v287;
          v314 = @"Home Screen Legibility payload was invalid; expecting BOOL value not nil";
          v53 = 1;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
          v52 = [v123 pr_errorWithCode:3 userInfo:v37];
        }

LABEL_232:

LABEL_233:
        if (v53 && !v52)
        {
LABEL_235:
          if (v18 != ++v19)
          {
            continue;
          }

          v258 = [v15 countByEnumeratingWithState:&v289 objects:v321 count:16];
          v18 = v258;
          if (!v258)
          {

            v259 = v283;
            if (v283)
            {
              v260 = [v7 complicationLayout];
              v261 = v278;
              [(PRPosterConfiguredProperties *)v278 setComplicationLayout:v260];
            }

            else
            {
              v261 = v278;
            }

            if (v285)
            {
              v274 = [v7 homeScreenConfiguration];
              [(PRPosterConfiguredProperties *)v261 setHomeScreenConfiguration:v274];

              v270 = 1;
            }

            else
            {
              v270 = 0;
            }

            if (v280)
            {
              v275 = [v7 ambientConfiguration];
              [(PRPosterConfiguredProperties *)v261 setAmbientConfiguration:v275];

              v269 = 1;
            }

            else
            {
              v269 = 0;
            }

            v6 = v281;
            v17 = v277;
            if (v282)
            {
              v276 = [v7 ambientWidgetLayout];
              [(PRPosterConfiguredProperties *)v261 setAmbientWidgetLayout:v276];

              v268 = 1;
              if ((v282 & 0x100000000) == 0)
              {
                v17 = 0;
                goto LABEL_252;
              }
            }

            else
            {
              v268 = 0;
              if ((v282 & 0x100000000) == 0)
              {
                v17 = 0;
                goto LABEL_252;
              }
            }

            v15 = [v7 userInfo];
            [(PRPosterConfiguredProperties *)v261 setUserInfo:v15];
LABEL_251:

LABEL_252:
            v264 = v17 | v268 | v269 | v270 | v259;
            goto LABEL_257;
          }

          goto LABEL_16;
        }

        if (!v52)
        {
          v265 = MEMORY[0x1E696ABC0];
          v297 = v287;
          v298 = @"unknown error updating configured properties";
          v266 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
          v52 = [v265 pr_errorWithCode:0 userInfo:v266];
        }

        if (v279)
        {
          v267 = v52;
          *v279 = v52;
        }

LABEL_256:

        v264 = 0;
        v6 = v281;
LABEL_257:

LABEL_258:
        return v264 & 1;
      case 14:
        v70 = [v20 payload];
        v71 = objc_opt_class();
        v72 = v70;
        if (v71)
        {
          if (objc_opt_isKindOfClass())
          {
            v73 = v72;
          }

          else
          {
            v73 = 0;
          }
        }

        else
        {
          v73 = 0;
        }

        v131 = v73;

        v132 = [v20 payload];
        v133 = objc_opt_class();
        v134 = v132;
        if (v133)
        {
          if (objc_opt_isKindOfClass())
          {
            v135 = v134;
          }

          else
          {
            v135 = 0;
          }
        }

        else
        {
          v135 = 0;
        }

        v136 = v135;

        if (v136)
        {
          v137 = objc_alloc_init(MEMORY[0x1E69C5558]);
          v138 = [v136 color];
          v139 = [v138 UIColor];
          v140 = [v137 copyWithVariatedColor:v139];
          goto LABEL_134;
        }

        v141 = [v131 variation];
        if (v141 || ([v131 luminance], (v141 = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_133:
          v142 = objc_alloc(MEMORY[0x1E69C5558]);
          v138 = [v131 variation];
          [v138 doubleValue];
          v144 = v143;
          v139 = [v131 luminance];
          [v139 doubleValue];
          v146 = v145;
          v137 = [v131 saturation];
          [v137 doubleValue];
          v148 = v147;
          v149 = [v131 alpha];
          [v149 doubleValue];
          v140 = [v142 initWithVariation:v144 luminance:v146 saturation:v148 alpha:v150];

LABEL_134:
          goto LABEL_135;
        }

        v257 = [v131 saturation];

        if (v257)
        {
          goto LABEL_133;
        }

        v140 = 0;
LABEL_135:
        v151 = [v7 homeScreenConfiguration];
        v152 = [v151 customizationConfiguration];
        v153 = [v152 tintColorStyle];
        v154 = [v153 isEqual:v140];

        if ((v154 & 1) == 0)
        {
          v155 = [v151 mutableCopy];
          v156 = v155;
          if (v155)
          {
            v157 = v155;
          }

          else
          {
            v157 = objc_opt_new();
          }

          v247 = v157;

          v248 = [v247 customizationConfiguration];
          v249 = [v248 configurationUpdatingTintColorStyle:v140];
          [v247 setCustomizationConfiguration:v249];

          [v7 setHomeScreenConfiguration:v247];
          v285 = 1;
        }

        v18 = v286;

        if (v154)
        {
          v15 = v284;
          goto LABEL_235;
        }

        v52 = 0;
        v53 = 1;
        v15 = v284;
        goto LABEL_233;
      case 15:
        v66 = [v20 payload];
        v67 = objc_opt_class();
        v68 = v66;
        if (v67)
        {
          if (objc_opt_isKindOfClass())
          {
            v69 = v68;
          }

          else
          {
            v69 = 0;
          }
        }

        else
        {
          v69 = 0;
        }

        v124 = v69;

        v30 = [v124 color];

        v37 = [v7 homeScreenConfiguration];
        v125 = [v37 customizationConfiguration];
        v126 = [v125 suggestedTintColor];
        v127 = [v126 isEqual:v30];

        if (v127)
        {
          goto LABEL_198;
        }

        v128 = [v37 mutableCopy];
        v129 = v128;
        if (v128)
        {
          v130 = v128;
        }

        else
        {
          v130 = objc_opt_new();
        }

        v243 = v130;

        v244 = [v243 customizationConfiguration];
        v245 = [v30 UIColor];
        v246 = [v244 configurationUpdatingSuggestedTintColor:v245];
        [v243 setCustomizationConfiguration:v246];

        [v7 setHomeScreenConfiguration:v243];
        goto LABEL_230;
      case 16:
        v82 = [v20 payload];
        v83 = objc_opt_class();
        v84 = v82;
        if (v83)
        {
          if (objc_opt_isKindOfClass())
          {
            v85 = v84;
          }

          else
          {
            v85 = 0;
          }
        }

        else
        {
          v85 = 0;
        }

        v172 = v85;

        v173 = [v172 tristate];

        v174 = @"SMALL";
        if (v173)
        {
          v175 = [v173 BOOLValue];
          v176 = @"LARGE";
          if (!v175)
          {
            v176 = @"SMALL";
          }

          v177 = v176;

          v174 = v177;
        }

        v178 = [v7 homeScreenConfiguration];
        v179 = [v178 customizationConfiguration];
        v180 = [v179 iconUserInterfaceSize];
        v181 = [v180 isEqual:v174];

        if ((v181 & 1) == 0)
        {
          v182 = [v178 mutableCopy];
          v183 = v182;
          if (v182)
          {
            v184 = v182;
          }

          else
          {
            v184 = objc_opt_new();
          }

          v250 = v184;

          v251 = [v178 customizationConfiguration];
          v252 = [v251 configurationUpdatingIconUserInterfaceSize:v174];
          [v250 setCustomizationConfiguration:v252];

          [v7 setHomeScreenConfiguration:v250];
          v285 = 1;
          v15 = v284;
          v18 = v286;
        }

        if ((v181 & 1) == 0)
        {
          goto LABEL_220;
        }

        goto LABEL_235;
      case 17:
        v54 = [v20 payload];
        v55 = objc_opt_class();
        v56 = v54;
        if (v55)
        {
          if (objc_opt_isKindOfClass())
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
        }

        v111 = v57;

        v30 = [v111 propertyListRoot];

        v37 = [v7 homeScreenConfiguration];
        v112 = [v37 customizationConfiguration];
        v113 = [v112 iconUserInterfaceStyleType];
        v114 = [v113 isEqual:v30];

        if (v114)
        {
          goto LABEL_198;
        }

        v115 = [v37 mutableCopy];
        v116 = v115;
        if (v115)
        {
          v117 = v115;
        }

        else
        {
          v117 = objc_opt_new();
        }

        v240 = v117;

        v241 = [v37 customizationConfiguration];
        v242 = [v241 configurationUpdatingIconUserInterfaceStyle:v30];
        goto LABEL_227;
      case 18:
        v58 = [v20 payload];
        v59 = objc_opt_class();
        v60 = v58;
        if (v59)
        {
          if (objc_opt_isKindOfClass())
          {
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          v61 = 0;
        }

        v30 = v61;

        if (v30)
        {
          v118 = [v30 propertyListRoot];
          v37 = v118;
          if (v118)
          {
            v119 = v118;
          }

          else
          {
            v119 = MEMORY[0x1E695E0F8];
          }

          [v7 setUserInfo:v119];
          v52 = 0;
          v53 = 1;
          BYTE4(v282) = 1;
          goto LABEL_232;
        }

        v33 = MEMORY[0x1E696ABC0];
        v319 = v287;
        v320 = @"userInfo payload was invalid";
        v34 = MEMORY[0x1E695DF20];
        v35 = &v320;
        v36 = &v319;
LABEL_33:
        v37 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:1];
        v38 = v33;
LABEL_43:
        v52 = [v38 pr_errorWithCode:3 userInfo:v37];
        goto LABEL_44;
      case 19:
        v90 = [v20 payload];
        v91 = objc_opt_class();
        v92 = v90;
        if (v91)
        {
          if (objc_opt_isKindOfClass())
          {
            v93 = v92;
          }

          else
          {
            v93 = 0;
          }
        }

        else
        {
          v93 = 0;
        }

        v192 = v93;

        v30 = [v192 propertyListRoot];

        v37 = [v7 homeScreenConfiguration];
        v193 = [v37 customizationConfiguration];
        v194 = [v193 iconUserInterfaceStyleVariant];
        v195 = [v194 isEqual:v30];

        if (v195)
        {
          goto LABEL_198;
        }

        v196 = [v37 mutableCopy];
        v197 = v196;
        if (v196)
        {
          v198 = v196;
        }

        else
        {
          v198 = objc_opt_new();
        }

        v240 = v198;

        v241 = [v37 customizationConfiguration];
        v242 = [v241 configurationUpdatingIconUserInterfaceStyleVariant:v30];
        goto LABEL_227;
      case 20:
        v94 = [v20 payload];
        v95 = objc_opt_class();
        v96 = v94;
        if (v95)
        {
          if (objc_opt_isKindOfClass())
          {
            v97 = v96;
          }

          else
          {
            v97 = 0;
          }
        }

        else
        {
          v97 = 0;
        }

        v199 = v97;

        v30 = [v199 propertyListRoot];

        v37 = [v7 homeScreenConfiguration];
        v200 = [v37 customizationConfiguration];
        v201 = [v200 userSelectedVariantsForStyleTypes];
        v202 = [v201 isEqualToDictionary:v30];

        if (v202)
        {
          goto LABEL_198;
        }

        v203 = [v37 mutableCopy];
        v204 = v203;
        if (v203)
        {
          v205 = v203;
        }

        else
        {
          v205 = objc_opt_new();
        }

        v240 = v205;

        v241 = [v37 customizationConfiguration];
        v242 = [v241 configurationUpdatingUserSelectedVariantsForStyleTypes:v30];
        goto LABEL_227;
      case 21:
        v86 = [v20 payload];
        v87 = objc_opt_class();
        v88 = v86;
        if (v87)
        {
          if (objc_opt_isKindOfClass())
          {
            v89 = v88;
          }

          else
          {
            v89 = 0;
          }
        }

        else
        {
          v89 = 0;
        }

        v185 = v89;

        v30 = [v185 propertyListRoot];

        v37 = [v7 homeScreenConfiguration];
        v186 = [v37 customizationConfiguration];
        v187 = [v186 iconTintSource];
        v188 = [v187 isEqual:v30];

        if (v188)
        {
          goto LABEL_198;
        }

        v189 = [v37 mutableCopy];
        v190 = v189;
        if (v189)
        {
          v191 = v189;
        }

        else
        {
          v191 = objc_opt_new();
        }

        v240 = v191;

        v241 = [v37 customizationConfiguration];
        v242 = [v241 configurationUpdatingIconTintSource:v30];
LABEL_227:
        v253 = v242;
        [v240 setCustomizationConfiguration:v242];

        [v7 setHomeScreenConfiguration:v240];
        v52 = 0;
        v53 = 1;
        v285 = 1;
        goto LABEL_232;
      default:
LABEL_220:
        v52 = 0;
        v53 = 1;
        goto LABEL_233;
    }
  }
}

@end