@interface PRPosterMutableConfiguredProperties
- (BOOL)applyUpdate:(id)update error:(id *)error;
- (BOOL)applyUpdates:(id)updates error:(id *)error;
- (void)mergeConfiguredProperties:(id)properties;
@end

@implementation PRPosterMutableConfiguredProperties

- (void)mergeConfiguredProperties:(id)properties
{
  propertiesCopy = properties;
  titleStyleConfiguration = [propertiesCopy titleStyleConfiguration];
  if (titleStyleConfiguration)
  {
    v5 = titleStyleConfiguration;
    titleStyleConfiguration2 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];

    if (!titleStyleConfiguration2)
    {
      titleStyleConfiguration3 = [propertiesCopy titleStyleConfiguration];
      [(PRPosterConfiguredProperties *)self setTitleStyleConfiguration:titleStyleConfiguration3];
    }
  }

  complicationLayout = [propertiesCopy complicationLayout];
  if (complicationLayout)
  {
    v9 = complicationLayout;
    complicationLayout2 = [(PRPosterConfiguredProperties *)self complicationLayout];

    if (!complicationLayout2)
    {
      complicationLayout3 = [propertiesCopy complicationLayout];
      [(PRPosterConfiguredProperties *)self setComplicationLayout:complicationLayout3];
    }
  }

  focusConfiguration = [propertiesCopy focusConfiguration];
  if (focusConfiguration)
  {
    v13 = focusConfiguration;
    focusConfiguration2 = [(PRPosterConfiguredProperties *)self focusConfiguration];

    if (!focusConfiguration2)
    {
      focusConfiguration3 = [propertiesCopy focusConfiguration];
      [(PRPosterConfiguredProperties *)self setFocusConfiguration:focusConfiguration3];
    }
  }

  renderingConfiguration = [propertiesCopy renderingConfiguration];
  if (renderingConfiguration)
  {
    v17 = renderingConfiguration;
    renderingConfiguration2 = [(PRPosterConfiguredProperties *)self renderingConfiguration];

    if (!renderingConfiguration2)
    {
      renderingConfiguration3 = [propertiesCopy renderingConfiguration];
      [(PRPosterConfiguredProperties *)self setRenderingConfiguration:renderingConfiguration3];
    }
  }

  homeScreenConfiguration = [propertiesCopy homeScreenConfiguration];
  if (homeScreenConfiguration)
  {
    v21 = homeScreenConfiguration;
    homeScreenConfiguration2 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];

    if (!homeScreenConfiguration2)
    {
      homeScreenConfiguration3 = [propertiesCopy homeScreenConfiguration];
      [(PRPosterConfiguredProperties *)self setHomeScreenConfiguration:homeScreenConfiguration3];
    }
  }

  colorVariationsConfiguration = [propertiesCopy colorVariationsConfiguration];
  if (colorVariationsConfiguration)
  {
    v25 = colorVariationsConfiguration;
    colorVariationsConfiguration2 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];

    if (!colorVariationsConfiguration2)
    {
      colorVariationsConfiguration3 = [propertiesCopy colorVariationsConfiguration];
      [(PRPosterConfiguredProperties *)self setColorVariationsConfiguration:colorVariationsConfiguration3];
    }
  }

  quickActionsConfiguration = [propertiesCopy quickActionsConfiguration];
  if (quickActionsConfiguration)
  {
    v29 = quickActionsConfiguration;
    quickActionsConfiguration2 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];

    if (!quickActionsConfiguration2)
    {
      quickActionsConfiguration3 = [propertiesCopy quickActionsConfiguration];
      [(PRPosterConfiguredProperties *)self setQuickActionsConfiguration:quickActionsConfiguration3];
    }
  }

  ambientConfiguration = [propertiesCopy ambientConfiguration];
  if (ambientConfiguration)
  {
    v33 = ambientConfiguration;
    ambientConfiguration2 = [(PRPosterConfiguredProperties *)self ambientConfiguration];

    if (!ambientConfiguration2)
    {
      ambientConfiguration3 = [propertiesCopy ambientConfiguration];
      [(PRPosterConfiguredProperties *)self setAmbientConfiguration:ambientConfiguration3];
    }
  }

  suggestionMetadata = [propertiesCopy suggestionMetadata];
  if (suggestionMetadata)
  {
    v37 = suggestionMetadata;
    suggestionMetadata2 = [(PRPosterConfiguredProperties *)self suggestionMetadata];

    if (!suggestionMetadata2)
    {
      suggestionMetadata3 = [propertiesCopy suggestionMetadata];
      [(PRPosterConfiguredProperties *)self setSuggestionMetadata:suggestionMetadata3];
    }
  }

  otherMetadata = [propertiesCopy otherMetadata];
  if (otherMetadata)
  {
    v41 = otherMetadata;
    otherMetadata2 = [(PRPosterConfiguredProperties *)self otherMetadata];

    if (!otherMetadata2)
    {
      otherMetadata3 = [propertiesCopy otherMetadata];
      [(PRPosterConfiguredProperties *)self setOtherMetadata:otherMetadata3];
    }
  }

  ambientWidgetLayout = [propertiesCopy ambientWidgetLayout];
  if (ambientWidgetLayout)
  {
    v45 = ambientWidgetLayout;
    ambientWidgetLayout2 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];

    if (!ambientWidgetLayout2)
    {
      ambientWidgetLayout3 = [propertiesCopy ambientWidgetLayout];
      [(PRPosterConfiguredProperties *)self setAmbientWidgetLayout:ambientWidgetLayout3];
    }
  }

  userInfo = [propertiesCopy userInfo];
  if (userInfo)
  {
    v49 = userInfo;
    userInfo2 = [(PRPosterConfiguredProperties *)self userInfo];

    if (!userInfo2)
    {
      userInfo3 = [propertiesCopy userInfo];
      [(PRPosterConfiguredProperties *)self setUserInfo:userInfo3];
    }
  }
}

- (BOOL)applyUpdate:(id)update error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  if (!update)
  {
    return 1;
  }

  updateCopy = update;
  v6 = MEMORY[0x1E695DEC8];
  updateCopy2 = update;
  v8 = [v6 arrayWithObjects:&updateCopy count:1];

  v9 = [(PRPosterMutableConfiguredProperties *)self applyUpdates:v8 error:error, updateCopy, v12];
  return v9;
}

- (BOOL)applyUpdates:(id)updates error:(id *)error
{
  v325 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if (![updatesCopy count])
  {
    v264 = 1;
    goto LABEL_258;
  }

  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v7 = updatesCopy;
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

        type = [*(*(&v293 + 1) + 8 * i) type];
        if (type <= 0xB && ((1 << type) & 0xCC0) != 0)
        {
          if (error)
          {
            v262 = MEMORY[0x1E696ABC0];
            v322 = *MEMORY[0x1E696A588];
            v323 = @"Update type not supported!";
            v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
            *error = [v262 pr_errorWithCode:2 userInfo:v263];
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
  userInfo = v14;
  v16 = [userInfo countByEnumeratingWithState:&v289 objects:v321 count:16];
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
  selfCopy = self;
  errorCopy = error;
  v281 = updatesCopy;
  v282 = 0;
  v280 = 0;
  v285 = 0;
  v283 = 0;
  v287 = *MEMORY[0x1E696A588];
  v288 = *v290;
  v284 = userInfo;
LABEL_16:
  v19 = 0;
  v286 = v18;
  while (2)
  {
    if (*v290 != v288)
    {
      objc_enumerationMutation(userInfo);
    }

    v20 = *(*(&v289 + 1) + 8 * v19);
    type2 = [v20 type];
    switch(type2)
    {
      case 1:
      case 2:
      case 8:
        payload = [v20 payload];
        v23 = objc_opt_class();
        v24 = payload;
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

        color2 = v25;

        if (!color2 || type2 == 2 && ([color2 complications], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "count"), v31, v32 >= 2))
        {
          v33 = MEMORY[0x1E696ABC0];
          v317 = v287;
          v318 = @"Complication payload was invalid; expected only 1 complication";
          v34 = MEMORY[0x1E695DF20];
          v35 = &v318;
          v36 = &v317;
          goto LABEL_33;
        }

        complicationLayout = [v7 complicationLayout];
        v40 = complicationLayout;
        if (complicationLayout)
        {
          v41 = complicationLayout;
        }

        else
        {
          v41 = [[PRPosterComplicationLayout alloc] initWithInlineComplication:0 sidebarComplicationIconLayout:0 sidebarComplications:0 complicationIconLayout:0 complications:0];
        }

        homeScreenConfiguration = v41;

        switch(type2)
        {
          case 1:
            v206 = [PRPosterComplicationLayout alloc];
            inlineComplication = [homeScreenConfiguration inlineComplication];
            sidebarComplications = [homeScreenConfiguration sidebarComplications];
            v207 = color2;
LABEL_174:
            complications = [v207 complications];
            v103 = -[PRPosterComplicationLayout initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:](v206, "initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:", inlineComplication, 0, sidebarComplications, 0, complications, [homeScreenConfiguration complicationsUseBottomLayout]);

LABEL_175:
            v18 = v286;

            [v7 setComplicationLayout:v103];
            v52 = 0;
            v53 = 1;
            homeScreenConfiguration = v103;
            v283 = 1;
            goto LABEL_232;
          case 8:
            v206 = [PRPosterComplicationLayout alloc];
            inlineComplication = [homeScreenConfiguration inlineComplication];
            sidebarComplications = [color2 complications];
            v207 = homeScreenConfiguration;
            goto LABEL_174;
          case 2:
            v98 = [PRPosterComplicationLayout alloc];
            inlineComplication = [color2 complications];
            sidebarComplications = [inlineComplication firstObject];
            complications = [homeScreenConfiguration sidebarComplications];
            complications2 = [homeScreenConfiguration complications];
            v103 = -[PRPosterComplicationLayout initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:](v98, "initWithInlineComplication:sidebarComplicationIconLayout:sidebarComplications:complicationIconLayout:complications:complicationsUseBottomLayout:", sidebarComplications, 0, complications, 0, complications2, [homeScreenConfiguration complicationsUseBottomLayout]);

            userInfo = v284;
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
        payload2 = [v20 payload];
        v27 = objc_opt_class();
        v28 = payload2;
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

        color2 = v29;

        tristate = [color2 tristate];
        bOOLValue = [tristate BOOLValue];

        if (!color2 || ([color2 tristate], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
        {
          v48 = MEMORY[0x1E696ABC0];
          v305 = v287;
          v306 = @"Home Screen Legibility payload was invalid; expecting BOOL value not nil";
          v49 = MEMORY[0x1E695DF20];
          v50 = &v306;
          v51 = &v305;
          goto LABEL_42;
        }

        homeScreenConfiguration = [v7 homeScreenConfiguration];
        v45 = [homeScreenConfiguration mutableCopy];
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

        if (type2 == 5)
        {
          lockPosterAppearance = [v104 lockPosterAppearance];
          allowsModifyingLegibilityBlur = [lockPosterAppearance allowsModifyingLegibilityBlur];

          if (allowsModifyingLegibilityBlur)
          {
            lockPosterAppearance2 = [v104 lockPosterAppearance];
            v108 = [lockPosterAppearance2 copyWithLegibilityBlurEnabled:bOOLValue];
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
          if (type2 != 4)
          {
            goto LABEL_203;
          }

          homePosterAppearance = [v104 homePosterAppearance];
          allowsModifyingLegibilityBlur2 = [homePosterAppearance allowsModifyingLegibilityBlur];

          if (allowsModifyingLegibilityBlur2)
          {
            lockPosterAppearance2 = [v104 homePosterAppearance];
            v108 = [lockPosterAppearance2 copyWithLegibilityBlurEnabled:bOOLValue];
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

        userInfo = v284;
        goto LABEL_232;
      case 6:
      case 7:
      case 10:
      case 11:
        if (errorCopy)
        {
          v271 = MEMORY[0x1E696ABC0];
          v299 = v287;
          v300 = @"Update type not supported!";
          v272 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
          *errorCopy = [v271 pr_errorWithCode:2 userInfo:v272];
        }

        v52 = 0;
        goto LABEL_256;
      case 9:
        payload3 = [v20 payload];
        v79 = objc_opt_class();
        v80 = payload3;
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

        color2 = v81;

        if (color2)
        {
          homeScreenConfiguration = [color2 propertyListRoot];
          v169 = [PRPosterAmbientWidgetLayout alloc];
          if (homeScreenConfiguration)
          {
            v170 = homeScreenConfiguration;
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
        homeScreenConfiguration = [v49 dictionaryWithObjects:v50 forKeys:v51 count:1];
        v38 = v48;
        goto LABEL_43;
      case 12:
        payload4 = [v20 payload];
        v75 = objc_opt_class();
        v76 = payload4;
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

        color2 = v77;

        ambientConfiguration = [v7 ambientConfiguration];
        v159 = [ambientConfiguration mutableCopy];
        v160 = v159;
        if (v159)
        {
          v161 = v159;
        }

        else
        {
          v161 = objc_opt_new();
        }

        homeScreenConfiguration = v161;

        propertyListRoot = [color2 propertyListRoot];
        v163 = [propertyListRoot objectForKey:@"creationBehavior"];

        v164 = v163 != 0;
        if (v163 && ([color2 propertyListRoot], v165 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v165, "objectForKey:", @"creationBehavior"), v166 = objc_claimAutoreleasedReturnValue(), v167 = objc_msgSend(v166, "unsignedIntegerValue"), v166, v165, objc_msgSend(homeScreenConfiguration, "creationBehavior") != v167))
        {
          [homeScreenConfiguration setCreationBehavior:v167];
          v168 = 1;
        }

        else
        {
          v168 = 0;
        }

        propertyListRoot2 = [color2 propertyListRoot];
        v211 = [propertyListRoot2 objectForKey:@"deletionBehavior"];

        if (v211)
        {
          propertyListRoot3 = [color2 propertyListRoot];
          v213 = [propertyListRoot3 objectForKey:@"deletionBehavior"];
          unsignedIntegerValue = [v213 unsignedIntegerValue];

          if ([homeScreenConfiguration deletionBehavior] == unsignedIntegerValue)
          {
            v164 = 1;
          }

          else
          {
            [homeScreenConfiguration setDeletionBehavior:unsignedIntegerValue];
            v164 = 1;
            v168 = 1;
          }
        }

        propertyListRoot4 = [color2 propertyListRoot];
        v216 = [propertyListRoot4 objectForKey:@"supportedDataLayout"];

        if (v216)
        {
          propertyListRoot5 = [color2 propertyListRoot];
          v218 = [propertyListRoot5 objectForKey:@"supportedDataLayout"];
          unsignedIntegerValue2 = [v218 unsignedIntegerValue];

          if ([homeScreenConfiguration supportedDataLayout] == unsignedIntegerValue2)
          {
            v164 = 1;
          }

          else
          {
            [homeScreenConfiguration setSupportedDataLayout:unsignedIntegerValue2];
            v164 = 1;
            v168 = 1;
          }
        }

        propertyListRoot6 = [color2 propertyListRoot];
        v221 = [propertyListRoot6 objectForKey:@"editingBehavior"];

        if (v221)
        {
          propertyListRoot7 = [color2 propertyListRoot];
          v223 = [propertyListRoot7 objectForKey:@"editingBehavior"];
          unsignedIntegerValue3 = [v223 unsignedIntegerValue];

          if ([homeScreenConfiguration editingBehavior] != unsignedIntegerValue3)
          {
            [homeScreenConfiguration setEditingBehavior:unsignedIntegerValue3];
LABEL_191:
            v225 = [homeScreenConfiguration copy];
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
        payload5 = [v20 payload];
        v63 = objc_opt_class();
        v64 = payload5;
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

        color2 = v65;

        if (color2)
        {
          tristate2 = [color2 tristate];
          if (tristate2)
          {
            tristate3 = [color2 tristate];
            bOOLValue2 = [tristate3 BOOLValue];
          }

          else
          {
            bOOLValue2 = 0;
          }

          homeScreenConfiguration = [v7 homeScreenConfiguration];
          customizationConfiguration = [homeScreenConfiguration customizationConfiguration];
          isDimmed = [customizationConfiguration isDimmed];

          if (bOOLValue2 == isDimmed)
          {
            v18 = v286;
LABEL_198:

            goto LABEL_235;
          }

          v232 = [homeScreenConfiguration mutableCopy];
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

          customizationConfiguration2 = [v254 customizationConfiguration];
          v256 = [customizationConfiguration2 configurationUpdatingDimmed:bOOLValue2];
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
          homeScreenConfiguration = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
          v52 = [v123 pr_errorWithCode:3 userInfo:homeScreenConfiguration];
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

          v258 = [userInfo countByEnumeratingWithState:&v289 objects:v321 count:16];
          v18 = v258;
          if (!v258)
          {

            v259 = v283;
            if (v283)
            {
              complicationLayout2 = [v7 complicationLayout];
              v261 = selfCopy;
              [(PRPosterConfiguredProperties *)selfCopy setComplicationLayout:complicationLayout2];
            }

            else
            {
              v261 = selfCopy;
            }

            if (v285)
            {
              homeScreenConfiguration2 = [v7 homeScreenConfiguration];
              [(PRPosterConfiguredProperties *)v261 setHomeScreenConfiguration:homeScreenConfiguration2];

              v270 = 1;
            }

            else
            {
              v270 = 0;
            }

            if (v280)
            {
              ambientConfiguration2 = [v7 ambientConfiguration];
              [(PRPosterConfiguredProperties *)v261 setAmbientConfiguration:ambientConfiguration2];

              v269 = 1;
            }

            else
            {
              v269 = 0;
            }

            updatesCopy = v281;
            v17 = v277;
            if (v282)
            {
              ambientWidgetLayout = [v7 ambientWidgetLayout];
              [(PRPosterConfiguredProperties *)v261 setAmbientWidgetLayout:ambientWidgetLayout];

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

            userInfo = [v7 userInfo];
            [(PRPosterConfiguredProperties *)v261 setUserInfo:userInfo];
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

        if (errorCopy)
        {
          v267 = v52;
          *errorCopy = v52;
        }

LABEL_256:

        v264 = 0;
        updatesCopy = v281;
LABEL_257:

LABEL_258:
        return v264 & 1;
      case 14:
        payload6 = [v20 payload];
        v71 = objc_opt_class();
        v72 = payload6;
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

        payload7 = [v20 payload];
        v133 = objc_opt_class();
        v134 = payload7;
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
          saturation = objc_alloc_init(MEMORY[0x1E69C5558]);
          color = [v136 color];
          uIColor = [color UIColor];
          v140 = [saturation copyWithVariatedColor:uIColor];
          goto LABEL_134;
        }

        variation = [v131 variation];
        if (variation || ([v131 luminance], (variation = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_133:
          v142 = objc_alloc(MEMORY[0x1E69C5558]);
          color = [v131 variation];
          [color doubleValue];
          v144 = v143;
          uIColor = [v131 luminance];
          [uIColor doubleValue];
          v146 = v145;
          saturation = [v131 saturation];
          [saturation doubleValue];
          v148 = v147;
          alpha = [v131 alpha];
          [alpha doubleValue];
          v140 = [v142 initWithVariation:v144 luminance:v146 saturation:v148 alpha:v150];

LABEL_134:
          goto LABEL_135;
        }

        saturation2 = [v131 saturation];

        if (saturation2)
        {
          goto LABEL_133;
        }

        v140 = 0;
LABEL_135:
        homeScreenConfiguration3 = [v7 homeScreenConfiguration];
        customizationConfiguration3 = [homeScreenConfiguration3 customizationConfiguration];
        tintColorStyle = [customizationConfiguration3 tintColorStyle];
        v154 = [tintColorStyle isEqual:v140];

        if ((v154 & 1) == 0)
        {
          v155 = [homeScreenConfiguration3 mutableCopy];
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

          customizationConfiguration4 = [v247 customizationConfiguration];
          v249 = [customizationConfiguration4 configurationUpdatingTintColorStyle:v140];
          [v247 setCustomizationConfiguration:v249];

          [v7 setHomeScreenConfiguration:v247];
          v285 = 1;
        }

        v18 = v286;

        if (v154)
        {
          userInfo = v284;
          goto LABEL_235;
        }

        v52 = 0;
        v53 = 1;
        userInfo = v284;
        goto LABEL_233;
      case 15:
        payload8 = [v20 payload];
        v67 = objc_opt_class();
        v68 = payload8;
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

        color2 = [v124 color];

        homeScreenConfiguration = [v7 homeScreenConfiguration];
        customizationConfiguration5 = [homeScreenConfiguration customizationConfiguration];
        suggestedTintColor = [customizationConfiguration5 suggestedTintColor];
        v127 = [suggestedTintColor isEqual:color2];

        if (v127)
        {
          goto LABEL_198;
        }

        v128 = [homeScreenConfiguration mutableCopy];
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

        customizationConfiguration6 = [v243 customizationConfiguration];
        uIColor2 = [color2 UIColor];
        v246 = [customizationConfiguration6 configurationUpdatingSuggestedTintColor:uIColor2];
        [v243 setCustomizationConfiguration:v246];

        [v7 setHomeScreenConfiguration:v243];
        goto LABEL_230;
      case 16:
        payload9 = [v20 payload];
        v83 = objc_opt_class();
        v84 = payload9;
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

        tristate4 = [v172 tristate];

        v174 = @"SMALL";
        if (tristate4)
        {
          bOOLValue3 = [tristate4 BOOLValue];
          v176 = @"LARGE";
          if (!bOOLValue3)
          {
            v176 = @"SMALL";
          }

          v177 = v176;

          v174 = v177;
        }

        homeScreenConfiguration4 = [v7 homeScreenConfiguration];
        customizationConfiguration7 = [homeScreenConfiguration4 customizationConfiguration];
        iconUserInterfaceSize = [customizationConfiguration7 iconUserInterfaceSize];
        v181 = [iconUserInterfaceSize isEqual:v174];

        if ((v181 & 1) == 0)
        {
          v182 = [homeScreenConfiguration4 mutableCopy];
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

          customizationConfiguration8 = [homeScreenConfiguration4 customizationConfiguration];
          v252 = [customizationConfiguration8 configurationUpdatingIconUserInterfaceSize:v174];
          [v250 setCustomizationConfiguration:v252];

          [v7 setHomeScreenConfiguration:v250];
          v285 = 1;
          userInfo = v284;
          v18 = v286;
        }

        if ((v181 & 1) == 0)
        {
          goto LABEL_220;
        }

        goto LABEL_235;
      case 17:
        payload10 = [v20 payload];
        v55 = objc_opt_class();
        v56 = payload10;
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

        color2 = [v111 propertyListRoot];

        homeScreenConfiguration = [v7 homeScreenConfiguration];
        customizationConfiguration9 = [homeScreenConfiguration customizationConfiguration];
        iconUserInterfaceStyleType = [customizationConfiguration9 iconUserInterfaceStyleType];
        v114 = [iconUserInterfaceStyleType isEqual:color2];

        if (v114)
        {
          goto LABEL_198;
        }

        v115 = [homeScreenConfiguration mutableCopy];
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

        customizationConfiguration10 = [homeScreenConfiguration customizationConfiguration];
        v242 = [customizationConfiguration10 configurationUpdatingIconUserInterfaceStyle:color2];
        goto LABEL_227;
      case 18:
        payload11 = [v20 payload];
        v59 = objc_opt_class();
        v60 = payload11;
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

        color2 = v61;

        if (color2)
        {
          propertyListRoot8 = [color2 propertyListRoot];
          homeScreenConfiguration = propertyListRoot8;
          if (propertyListRoot8)
          {
            v119 = propertyListRoot8;
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
        homeScreenConfiguration = [v34 dictionaryWithObjects:v35 forKeys:v36 count:1];
        v38 = v33;
LABEL_43:
        v52 = [v38 pr_errorWithCode:3 userInfo:homeScreenConfiguration];
        goto LABEL_44;
      case 19:
        payload12 = [v20 payload];
        v91 = objc_opt_class();
        v92 = payload12;
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

        color2 = [v192 propertyListRoot];

        homeScreenConfiguration = [v7 homeScreenConfiguration];
        customizationConfiguration11 = [homeScreenConfiguration customizationConfiguration];
        iconUserInterfaceStyleVariant = [customizationConfiguration11 iconUserInterfaceStyleVariant];
        v195 = [iconUserInterfaceStyleVariant isEqual:color2];

        if (v195)
        {
          goto LABEL_198;
        }

        v196 = [homeScreenConfiguration mutableCopy];
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

        customizationConfiguration10 = [homeScreenConfiguration customizationConfiguration];
        v242 = [customizationConfiguration10 configurationUpdatingIconUserInterfaceStyleVariant:color2];
        goto LABEL_227;
      case 20:
        payload13 = [v20 payload];
        v95 = objc_opt_class();
        v96 = payload13;
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

        color2 = [v199 propertyListRoot];

        homeScreenConfiguration = [v7 homeScreenConfiguration];
        customizationConfiguration12 = [homeScreenConfiguration customizationConfiguration];
        userSelectedVariantsForStyleTypes = [customizationConfiguration12 userSelectedVariantsForStyleTypes];
        v202 = [userSelectedVariantsForStyleTypes isEqualToDictionary:color2];

        if (v202)
        {
          goto LABEL_198;
        }

        v203 = [homeScreenConfiguration mutableCopy];
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

        customizationConfiguration10 = [homeScreenConfiguration customizationConfiguration];
        v242 = [customizationConfiguration10 configurationUpdatingUserSelectedVariantsForStyleTypes:color2];
        goto LABEL_227;
      case 21:
        payload14 = [v20 payload];
        v87 = objc_opt_class();
        v88 = payload14;
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

        color2 = [v185 propertyListRoot];

        homeScreenConfiguration = [v7 homeScreenConfiguration];
        customizationConfiguration13 = [homeScreenConfiguration customizationConfiguration];
        iconTintSource = [customizationConfiguration13 iconTintSource];
        v188 = [iconTintSource isEqual:color2];

        if (v188)
        {
          goto LABEL_198;
        }

        v189 = [homeScreenConfiguration mutableCopy];
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

        customizationConfiguration10 = [homeScreenConfiguration customizationConfiguration];
        v242 = [customizationConfiguration10 configurationUpdatingIconTintSource:color2];
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