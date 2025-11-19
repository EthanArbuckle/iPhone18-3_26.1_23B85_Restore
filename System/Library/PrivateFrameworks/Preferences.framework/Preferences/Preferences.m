void PSSetCustomWatchCapabilityCheck(void *a1)
{
  v1 = [a1 copy];
  v2 = _CustomCapabilityCheck;
  _CustomCapabilityCheck = v1;
}

uint64_t __ensureDefaultPSViewControllerNavigationCoordinatorRegistration_block_invoke()
{
  result = objc_opt_class();
  defaultPSViewControllerNavigationCoordinatorClass = result;
  return result;
}

uint64_t PSIsInEDUMode()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v9 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getUMUserManagerClass_block_invoke;
    v5[3] = &unk_1E71DBC78;
    v5[4] = &v6;
    __getUMUserManagerClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

void sub_18B00B45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UserManagementLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DEFA8;
    v6 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (UserManagementLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ensureDefaultAppearanceProviderAndNavigationRegistration_block_invoke()
{
  defaultAppearanceProviderClass = objc_opt_class();
  defaultNavigationCoordinatorClass = objc_opt_class();
  result = objc_opt_class();
  defaultPSListControllerSpecifierActionCoordinatorClass = result;
  return result;
}

id _PSLoggingFacility()
{
  if (_PSLoggingFacility_onceToken != -1)
  {
    _PSLoggingFacility_cold_1();
  }

  v1 = _PSLoggingFacility_oslog;

  return v1;
}

double ScreenScale()
{
  result = *&_screenScale;
  if (*&_screenScale == 0.0)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 scale];
    _screenScale = v2;

    return *&_screenScale;
  }

  return result;
}

uint64_t PSSupportedOrientations()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isiPad];

  if (v1)
  {
    return 30;
  }

  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = [v3 fixedCoordinateSpace];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13.origin.x = v6;
  v13.origin.y = v8;
  v13.size.width = v10;
  v13.size.height = v12;
  CGRectGetHeight(v13);
  if (_UIUserInterfaceSizeClassForWidth() == 2)
  {
    return 26;
  }

  else
  {
    return 2;
  }
}

uint64_t PSShouldInsetListView(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 traitCollection];

  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = 1;
  }

  else
  {
    [v1 frame];
    Width = CGRectGetWidth(v12);
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69DDC58], *MEMORY[0x1E69DDC50], 0}];
    v7 = [v3 preferredContentSizeCategory];
    v8 = [v6 containsObject:v7];

    v9 = [v3 horizontalSizeClass];
    if (Width <= 320.0 && (v8 & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      v10 = v9 != 2 || Width <= 320.0;
      v4 = (v10 | v8 ^ 1) & ((Width <= 320.0) | v8) ^ 1;
    }
  }

  return v4 & 1;
}

uint64_t PSIsRunningInAssistant()
{
  if (PSIsRunningInAssistant_onceToken != -1)
  {
    PSIsRunningInAssistant_cold_1();
  }

  return PSIsRunningInAssistant_isRunningInAssistant;
}

void __PSIsRunningInAssistant_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getBYSetupAssistantBundleIdentifierSymbolLoc_ptr;
  v8 = getBYSetupAssistantBundleIdentifierSymbolLoc_ptr;
  if (!getBYSetupAssistantBundleIdentifierSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke;
    v4[3] = &unk_1E71DBC78;
    v4[4] = &v5;
    __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    v3 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  PSIsRunningInAssistant_isRunningInAssistant = [v1 isEqualToString:*v2];
}

id _copyIconForPathFromSpecifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = [v3 stringByDeletingLastPathComponent];
    v6 = [v3 lastPathComponent];
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    v8 = [v7 initWithCapacity:gScale];
    if ([v6 rangeOfString:@".png"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v6 stringByAppendingString:@".png"];

      v6 = v9;
    }

    [v8 addObject:v6];
    if (gScale >= 2)
    {
      v10 = [v6 stringByReplacingOccurrencesOfString:@".png" withString:@"@2x.png" options:13 range:{objc_msgSend(v6, "length") - objc_msgSend(@".png", "length"), objc_msgSend(@".png", "length")}];
      [v8 addObject:v10];

      if (gScale >= 3)
      {
        v11 = [v6 stringByReplacingOccurrencesOfString:@".png" withString:@"@3x.png" options:13 range:{objc_msgSend(v6, "length") - objc_msgSend(@".png", "length"), objc_msgSend(@".png", "length")}];
        [v8 addObject:v11];
      }
    }

    if ([v5 length] < 2)
    {
      v13 = v4;
    }

    else
    {
      if ([v5 hasPrefix:@"~/"])
      {
        [v5 stringByExpandingTildeInPath];
      }

      else
      {
        v14 = v5;
      }
      v15 = ;
      v13 = [v15 stringByResolvingSymlinksInPath];

      v5 = v15;
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__9;
    v25 = __Block_byref_object_dispose__9;
    v26 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___copyIconForPathFromSpecifier_block_invoke;
    v18[3] = &unk_1E71DE680;
    v16 = v13;
    v19 = v16;
    v20 = &v21;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v18];
    v12 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_18B00CC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKLogForCategory(uint64_t a1)
{
  if (PKLogForCategory_loggingToken != -1)
  {
    PKLogForCategory_cold_1();
  }

  v2 = PKLogForCategory_logObjects[a1];

  return v2;
}

void __PKLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.preferences", "Preferences");
  v1 = PKLogForCategory_logObjects[0];
  PKLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.preferences", "LoadFirstPartyBundle");
  v3 = qword_1EA9B3BA8;
  qword_1EA9B3BA8 = v2;

  v4 = os_log_create("com.apple.preferences", "LoadThirdPartyBundle");
  v5 = qword_1EA9B3BB0;
  qword_1EA9B3BB0 = v4;

  v6 = os_log_create("com.apple.preferences", "Navigation");
  v7 = qword_1EA9B3BB8;
  qword_1EA9B3BB8 = v6;

  v8 = os_log_create("com.apple.preferences", "Search");
  v9 = qword_1EA9B3BC0;
  qword_1EA9B3BC0 = v8;

  v10 = os_log_create("com.apple.preferences", "Url");
  v11 = qword_1EA9B3BC8;
  qword_1EA9B3BC8 = v10;

  v12 = os_log_create("com.apple.preferences", "Signposts");
  v13 = qword_1EA9B3BD0;
  qword_1EA9B3BD0 = v12;

  v14 = os_log_create("com.apple.preferences", "Specifier Actions");
  v15 = qword_1EA9B3BD8;
  qword_1EA9B3BD8 = v14;
}

id SpecifiersFromPlistWithCapabilities(void *a1, void *a2, void *a3, void *a4, void *a5, id *a6, void **a7, void *a8, void **a9, char a10)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  if (a9 && !*a9)
  {
    *a9 = objc_opt_new();
  }

  v23 = __SpecifiersFromPlist(v17, v18, v19, v20, v21, a6, a7, v22, a9, a10);

  return v23;
}

id __SpecifiersFromPlist(void *a1, void *a2, void *a3, void *a4, void *a5, id *a6, void **a7, void *a8, void **a9, char a10)
{
  v290 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v225 = a2;
  v228 = a3;
  v226 = a4;
  v18 = a5;
  v224 = a8;
  v222 = [v17 objectForKey:@"title"];
  if (a6)
  {
    if (v18)
    {
      v19 = [v18 localizedStringForKey:v222 value:&stru_1EFE45030 table:v226];
      objc_storeStrong(a6, v19);
    }

    else
    {
      v20 = v222;
      v19 = *a6;
      *a6 = v20;
    }
  }

  if (a7)
  {
    v21 = [v17 objectForKey:@"id"];
    v22 = *a7;
    *a7 = v21;
  }

  v239 = [v17 objectForKey:@"specifierAttributes"];
  v221 = v17;
  v23 = [v17 objectForKey:@"items"];
  v240 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  v280 = 0u;
  obj = v23;
  v241 = [obj countByEnumeratingWithState:&v277 objects:v288 count:16];
  if (v241)
  {
    v238 = *v278;
    v264 = v18;
    do
    {
      v24 = 0;
      do
      {
        if (*v278 != v238)
        {
          objc_enumerationMutation(obj);
        }

        v258 = v24;
        v25 = *(*(&v277 + 1) + 8 * v24);
        v26 = [v25 mutableCopy];

        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v27 = v239;
        v28 = [v27 countByEnumeratingWithState:&v273 objects:v287 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v274;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v274 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v273 + 1) + 8 * i);
              v33 = [v26 objectForKeyedSubscript:v32];

              if (v33)
              {
                v34 = [v26 objectForKeyedSubscript:v32];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = [v27 objectForKeyedSubscript:v32];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v37 = [v27 objectForKeyedSubscript:v32];
                    v38 = [v26 objectForKeyedSubscript:v32];
                    v39 = [v38 mutableCopy];

                    [v39 addObjectsFromArray:v37];
LABEL_27:
                    [v26 setObject:v39 forKeyedSubscript:v32];

                    goto LABEL_28;
                  }
                }

                else
                {
                }

                v37 = [v26 objectForKeyedSubscript:v32];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = [v27 objectForKeyedSubscript:v32];
                  objc_opt_class();
                  v41 = objc_opt_isKindOfClass();

                  if ((v41 & 1) == 0)
                  {
                    continue;
                  }

                  v37 = [v27 objectForKeyedSubscript:v32];
                  v42 = [v26 objectForKeyedSubscript:v32];
                  v39 = [v42 mutableCopy];

                  [v39 addEntriesFromDictionary:v37];
                  goto LABEL_27;
                }
              }

              else
              {
                v37 = [v27 objectForKeyedSubscript:v32];
                [v26 setObject:v37 forKeyedSubscript:v32];
              }

LABEL_28:
            }

            v29 = [v27 countByEnumeratingWithState:&v273 objects:v287 count:16];
          }

          while (v29);
        }

        v43 = objc_opt_class();
        v44 = v26;
        v45 = [v44 objectForKey:@"requiredCapabilities"];
        v46 = v45;
        if (v45)
        {
          HasCapabilities = SystemHasCapabilities(v45);
        }

        else
        {
          HasCapabilities = 1;
        }

        v261 = v44;
        v48 = [v44 objectForKey:@"requiredCapabilitiesOr"];
        v49 = v48;
        if (v48)
        {
          v284 = 0u;
          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v50 = [v48 countByEnumeratingWithState:&v281 objects:v289 count:16];
          if (v50)
          {
            v51 = v50;
            LOBYTE(v52) = 0;
            v53 = *v282;
            do
            {
              for (j = 0; j != v51; ++j)
              {
                if (*v282 != v53)
                {
                  objc_enumerationMutation(v49);
                }

                if (v52)
                {
                  v52 = 1;
                }

                else
                {
                  v52 = SystemHasCapabilities(*(*(&v281 + 1) + 8 * j));
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v281 objects:v289 count:16];
            }

            while (v51);
          }

          else
          {
            v52 = 0;
          }

          HasCapabilities &= v52;
        }

        v18 = v264;
        if (_CustomCapabilityCheck)
        {
          HasCapabilities = (*(_CustomCapabilityCheck + 16))();
        }

        v55 = [v261 objectForKey:@"skippedInEduMode"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v55 BOOLValue])
        {
          v56 = PSIsInEDUMode();
        }

        else
        {
          v56 = 0;
        }

        v57 = v261;
        if ((v56 & 1) != 0 || ((HasCapabilities ^ 1) & 1) != 0 || ProcessedSpecifierBundle(v261, v224, v225, a9, v240)) && (a10)
        {
          v58 = v258;
          goto LABEL_288;
        }

        v259 = v43;
        v59 = v226;
        v60 = [v261 objectForKeyedSubscript:@"strings"];

        if (v60)
        {
          v61 = [v261 objectForKeyedSubscript:@"strings"];

          v59 = v61;
        }

        v62 = v264;
        v63 = [v261 objectForKeyedSubscript:@"stringsBundlePath"];

        if (v63)
        {
          v64 = MEMORY[0x1E696AAE8];
          v65 = [v261 objectForKeyedSubscript:@"stringsBundlePath"];
          v67 = v66 = v65;
          v68 = [v64 bundleWithPath:v67];
        }

        else
        {
          v69 = [v261 objectForKeyedSubscript:@"stringsBundleID"];

          v68 = v62;
          if (!v69)
          {
            goto LABEL_67;
          }

          v70 = MEMORY[0x1E696AAE8];
          v65 = [v261 objectForKeyedSubscript:@"stringsBundleID"];
          v68 = [v70 bundleWithIdentifier:v65];
          v67 = v62;
        }

LABEL_67:
        v251 = v62;
        v237 = [v261 objectForKey:@"cell"];
        v71 = [PSTableCell cellTypeFromString:?];
        v72 = [v261 objectForKey:@"label"];
        v243 = v72;
        if (v72)
        {
          if (v68)
          {
            v255 = [v68 localizedStringForKey:v72 value:&stru_1EFE45030 table:v59];
          }

          else
          {
            v255 = v72;
          }

          v73 = [v261 objectForKey:@"id"];

          if (!v73)
          {
            [v261 setObject:v243 forKey:@"id"];
          }
        }

        else
        {
          v255 = 0;
        }

        v74 = v261;
        v249 = [v261 objectForKey:@"cellSubtitleText"];
        if (v249)
        {
          if (!v68)
          {
            v75 = v249;
LABEL_79:
            [v261 setObject:v75 forKey:@"cellSubtitleText"];

            goto LABEL_80;
          }

          v75 = [v68 localizedStringForKey:v249 value:&stru_1EFE45030 table:v59];

          if (v75)
          {
            goto LABEL_79;
          }
        }

LABEL_80:
        v248 = [v261 objectForKey:@"footerText"];
        if (v248)
        {
          if (v68)
          {
            v76 = [v68 localizedStringForKey:v248 value:&stru_1EFE45030 table:v59];
            [v261 setObject:v76 forKey:@"footerText"];
          }

          else
          {
            [v261 setObject:v248 forKey:@"footerText"];
          }
        }

        v247 = [v261 objectForKey:@"headerDetailText"];
        if (v247)
        {
          if (v68)
          {
            v77 = [v68 localizedStringForKey:v247 value:&stru_1EFE45030 table:v59];
            [v261 setObject:v77 forKey:@"headerDetailText"];
          }

          else
          {
            [v261 setObject:v247 forKey:@"headerDetailText"];
          }
        }

        v78 = [v261 objectForKey:@"keywords"];
        objc_opt_class();
        v246 = v78;
        if (objc_opt_isKindOfClass())
        {
          if (v68)
          {
            v79 = [v68 localizedStringForKey:v78 value:&stru_1EFE45030 table:v59];
            [v261 setObject:v79 forKey:@"keywords"];
          }

          else
          {
            [v261 setObject:v78 forKey:@"keywords"];
          }
        }

        v80 = [v261 objectForKey:@"contentDescription"];
        objc_opt_class();
        v245 = v80;
        if (objc_opt_isKindOfClass())
        {
          if (v68)
          {
            v81 = [v68 localizedStringForKey:v80 value:&stru_1EFE45030 table:v59];
            [v261 setObject:v81 forKey:@"contentDescription"];
          }

          else
          {
            [v261 setObject:v80 forKey:@"contentDescription"];
          }
        }

        v82 = [v261 objectForKey:@"alignment"];
        v256 = v71;
        v236 = v82;
        if (v82)
        {
          v83 = v82;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = AlignmentFromString(v83);
            [v261 setObject:v84 forKey:@"alignment"];
          }

          v85 = [v261 objectForKey:@"footerAlignment"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v86 = AlignmentFromString(v85);
            [v261 setObject:v86 forKey:@"footerAlignment"];
          }

          v87 = v85;
          v71 = v256;
        }

        else
        {
          v87 = [v261 objectForKey:@"footerAlignment"];
        }

        v235 = v87;
        if (v71 > 8)
        {
          if (v71 == 13)
          {
LABEL_121:
            v99 = [v261 objectForKey:@"confirmation"];
            v100 = v99;
            v101 = v99 != 0;
            if (v99)
            {
              v102 = [v99 mutableCopy];
              v103 = [v102 objectForKey:@"cancelTitle"];
              if (v103)
              {
                if (v68)
                {
                  v104 = [v68 localizedStringForKey:v103 value:&stru_1EFE45030 table:v59];
                  [v102 setObject:v104 forKey:@"cancelTitle"];
                }

                else
                {
                  [v102 setObject:v103 forKey:@"cancelTitle"];
                }
              }

              v122 = [v102 objectForKey:@"okTitle"];

              if (v122)
              {
                if (v68)
                {
                  v123 = [v68 localizedStringForKey:v122 value:&stru_1EFE45030 table:v59];
                  [v102 setObject:v123 forKey:@"okTitle"];
                }

                else
                {
                  [v102 setObject:v122 forKey:@"okTitle"];
                }
              }

              v124 = [v102 objectForKey:@"prompt"];

              if (v124)
              {
                if (v68)
                {
                  v125 = [v68 localizedStringForKey:v124 value:&stru_1EFE45030 table:v59];
                  [v102 setObject:v125 forKey:@"prompt"];
                }

                else
                {
                  [v102 setObject:v124 forKey:@"prompt"];
                }
              }

              v126 = [v102 objectForKey:@"title"];

              v74 = v261;
              if (v126)
              {
                if (v68)
                {
                  v127 = [v68 localizedStringForKey:v126 value:&stru_1EFE45030 table:v59];
                  [v102 setObject:v127 forKey:@"title"];

                  v74 = v261;
                }

                else
                {
                  [v102 setObject:v126 forKey:@"title"];
                }
              }

              [v74 setObject:v102 forKey:@"confirmation"];
              v259 = objc_opt_class();
            }

            else
            {
              v102 = 0;
            }

            v263 = 0;
            v262 = 0;
            v88 = 0;
            goto LABEL_190;
          }

          if (v71 == 9)
          {
LABEL_109:
            v88 = [v261 objectForKey:@"validValues"];
            v89 = [v261 objectForKey:@"validTitles"];
            v253 = v89;
            if (v89)
            {
              v90 = v88;
              v91 = v89;
              v263 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v89, "count")}];
              v269 = 0u;
              v270 = 0u;
              v271 = 0u;
              v272 = 0u;
              v92 = v91;
              v93 = [v92 countByEnumeratingWithState:&v269 objects:v286 count:16];
              if (v93)
              {
                v94 = v93;
                v95 = *v270;
                do
                {
                  for (k = 0; k != v94; ++k)
                  {
                    if (*v270 != v95)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v97 = *(*(&v269 + 1) + 8 * k);
                    if (v68)
                    {
                      v98 = [v68 localizedStringForKey:v97 value:&stru_1EFE45030 table:v59];
                      [v263 addObject:v98];
                    }

                    else
                    {
                      [v263 addObject:v97];
                    }
                  }

                  v94 = [v92 countByEnumeratingWithState:&v269 objects:v286 count:16];
                }

                while (v94);
              }

              v74 = v261;
              v88 = v90;
            }

            else
            {
              v263 = 0;
            }

            v107 = [v74 objectForKey:@"shortTitles"];
            v108 = v107;
            if (v107)
            {
              v109 = v88;
              v110 = MEMORY[0x1E695DF70];
              v111 = [v107 count];
              v112 = v110;
              v88 = v109;
              v262 = [v112 arrayWithCapacity:v111];
              v265 = 0u;
              v266 = 0u;
              v267 = 0u;
              v268 = 0u;
              v113 = v108;
              v114 = [v113 countByEnumeratingWithState:&v265 objects:v285 count:16];
              if (v114)
              {
                v115 = v114;
                v116 = *v266;
                do
                {
                  for (m = 0; m != v115; ++m)
                  {
                    if (*v266 != v116)
                    {
                      objc_enumerationMutation(v113);
                    }

                    v118 = *(*(&v265 + 1) + 8 * m);
                    if (v68)
                    {
                      v119 = [v68 localizedStringForKey:v118 value:&stru_1EFE45030 table:v59];
                      [v262 addObject:v119];
                    }

                    else
                    {
                      [v262 addObject:v118];
                    }
                  }

                  v115 = [v113 countByEnumeratingWithState:&v265 objects:v285 count:16];
                }

                while (v115);
              }

              v74 = v261;
              v71 = v256;
              if (!v88)
              {
LABEL_145:
                v120 = [v74 objectForKey:@"valuesDataSource"];
                v121 = v120;
                if (v120)
                {
                  NSSelectorFromString(v120);
                  v88 = SFPerformSelector();
                }

                else
                {
                  v88 = 0;
                }

                v74 = v261;
              }
            }

            else
            {
              v262 = 0;
              if (!v88)
              {
                goto LABEL_145;
              }
            }

            if (!v263)
            {
              v128 = [v74 objectForKey:@"titlesDataSource"];
              v129 = v128;
              if (v128)
              {
                NSSelectorFromString(v128);
                v263 = SFPerformSelector();
              }

              else
              {
                v263 = 0;
              }

              v74 = v261;
            }

            if (!v262)
            {
              v130 = [v74 objectForKey:@"shortTitlesDataSource"];
              v131 = v130;
              if (v130)
              {
                NSSelectorFromString(v130);
                v262 = SFPerformSelector();
              }

              else
              {
                v262 = 0;
              }

              v74 = v261;
            }

            if (v71 == 2)
            {
              v132 = [v74 objectForKey:@"staticTextMessage"];
              if (v132)
              {
                if (v68)
                {
                  v133 = [v68 localizedStringForKey:v132 value:&stru_1EFE45030 table:v59];
                  [v261 setObject:v133 forKey:@"staticTextMessage"];
                }

                else
                {
                  [v261 setObject:v132 forKey:@"staticTextMessage"];
                }
              }

              v74 = v261;
            }

LABEL_182:
            if (v71 != 5)
            {
              goto LABEL_189;
            }

            v134 = v88;
            [v74 objectForKey:@"rightImage"];
            v136 = v135 = v74;
            v137 = [v135 objectForKey:@"leftImage"];
            if (v136)
            {
              v138 = [PSLazyImagePromise imagePromiseWithImageNamed:v136 inBundle:v251];
              [v135 setObject:v138 forKeyedSubscript:@"rightImagePromise"];
              [v135 removeObjectForKey:@"rightImage"];
            }

            if (v137)
            {
              v139 = [PSLazyImagePromise imagePromiseWithImageNamed:v137 inBundle:v251];
              [v261 setObject:v139 forKeyedSubscript:@"leftImagePromise"];
              [v261 removeObjectForKey:@"leftImage"];
            }

            v102 = 0;
            v101 = 0;
            v242 = 0;
            v74 = v261;
            v88 = v134;
            goto LABEL_191;
          }
        }

        else
        {
          if (v71 == 2)
          {
            goto LABEL_109;
          }

          if (v71 == 6)
          {
            goto LABEL_121;
          }
        }

        if ((v71 & 0xFFFFFFFFFFFFFFFBLL) != 8)
        {
          v88 = 0;
          v262 = 0;
          v263 = 0;
          goto LABEL_182;
        }

        v259 = objc_opt_class();
        v105 = [v261 objectForKey:@"placeholder"];
        v88 = v105;
        if (!v105)
        {
          v263 = 0;
          v262 = 0;
LABEL_189:
          v102 = 0;
          v101 = 0;
LABEL_190:
          v242 = 0;
          goto LABEL_191;
        }

        if (v68)
        {
          v106 = [v68 localizedStringForKey:v105 value:&stru_1EFE45030 table:v59];
        }

        else
        {
          v106 = v105;
        }

        v242 = v106;
        [v261 setObject:v106 forKey:@"placeholder"];
        v263 = 0;
        v262 = 0;
        v88 = 0;
        v102 = 0;
        v101 = 0;
LABEL_191:
        v140 = [v74 objectForKey:@"detail"];
        v233 = v140;
        if (v140)
        {
          v141 = NSClassFromString(v140);
LABEL_195:
          v254 = v141;
          goto LABEL_196;
        }

        if (v256 - 1 <= 1)
        {
          v141 = objc_opt_class();
          goto LABEL_195;
        }

        v254 = 0;
LABEL_196:
        v142 = [v74 objectForKey:@"get"];
        v143 = [v74 objectForKey:@"set"];
        v144 = v143;
        v145 = sel_setPreferenceValue_specifier_;
        if (v143)
        {
          v145 = NSSelectorFromString(v143);
        }

        v231 = v144;
        v244 = v102;
        v146 = sel_readPreferenceValue_;
        if (v142)
        {
          v146 = NSSelectorFromString(v142);
        }

        v232 = v142;
        v147 = [v261 objectForKey:@"pane"];
        v260 = [v259 preferenceSpecifierNamed:v255 target:v228 set:v145 get:v146 detail:v254 cell:v256 edit:NSClassFromString(v147)];

        v234 = v88;
        if (v88 && v263)
        {
          v148 = v260;
          [v260 setValues:v88 titles:v263 shortTitles:v262];
          goto LABEL_207;
        }

        v149 = !v101;
        if (!v244)
        {
          v149 = 1;
        }

        if ((v149 & 1) == 0)
        {
          v148 = v260;
          [v260 setupWithDictionary:?];
LABEL_207:
          v18 = v264;
LABEL_208:
          v150 = v261;
          goto LABEL_209;
        }

        v18 = v264;
        v150 = v261;
        v148 = v260;
        if ((v256 & 0xFFFFFFFFFFFFFFFBLL) == 8)
        {
          if (v242)
          {
            [v260 setPlaceholder:?];
          }

          v154 = [v261 objectForKey:@"bestGuess"];
          if ([v154 length] && (v155 = NSSelectorFromString(v154)) != 0)
          {
            v156 = v155;
          }

          else
          {
            v156 = 0;
          }

          v260[28] = v156;

          goto LABEL_208;
        }

LABEL_209:
        v151 = [v150 objectForKey:@"cellClass"];
        v152 = v151;
        if (v151)
        {
          v153 = NSClassFromString(v151);
          if (v153)
          {
            v150 = v261;
            [v261 setObject:v153 forKey:@"cellClass"];
          }

          else
          {
            v150 = v261;
            [v261 removeObjectForKey:@"cellClass"];
            v157 = [PSTableCell cellTypeFromString:v152];
            if ([v148 cellType] == -1 && v157 != -1)
            {
              [v148 setCellType:v157];
            }
          }
        }

        v230 = v152;
        v158 = v150;
        v159 = v251;
        v160 = v59;
        v161 = [MEMORY[0x1E695DF70] array];
        v162 = [v158 objectForKeyedSubscript:@"keywords"];
        objc_opt_class();
        v252 = v158;
        v250 = v161;
        v229 = v162;
        if (objc_opt_isKindOfClass())
        {
          v163 = [v158 objectForKeyedSubscript:@"keywords"];
          [v161 addObjectsFromArray:v163];
          v164 = v148;
        }

        else
        {
          objc_opt_class();
          v164 = v148;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_226;
          }

          v163 = [v158 objectForKeyedSubscript:@"keywords"];
          v165 = [v163 componentsSeparatedByString:{@", "}];
          [v161 addObjectsFromArray:v165];
        }

LABEL_226:
        v166 = v158;
        v167 = [v158 objectForKeyedSubscript:@"validTitles"];
        v168 = v161;
        [v161 addObjectsFromArray:v167];

        if ([v161 count])
        {
          v169 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v161, "count")}];
          v281 = 0u;
          v282 = 0u;
          v283 = 0u;
          v284 = 0u;
          v170 = v161;
          v171 = [v170 countByEnumeratingWithState:&v281 objects:v289 count:16];
          if (v171)
          {
            v172 = v171;
            v173 = *v282;
            do
            {
              for (n = 0; n != v172; ++n)
              {
                if (*v282 != v173)
                {
                  objc_enumerationMutation(v170);
                }

                v175 = *(*(&v281 + 1) + 8 * n);
                if (v18)
                {
                  v176 = [v159 localizedStringForKey:v175 value:&stru_1EFE45030 table:v160];
                  [v169 addObject:v176];

                  v18 = v264;
                }

                else
                {
                  [v169 addObject:v175];
                }
              }

              v172 = [v170 countByEnumeratingWithState:&v281 objects:v289 count:16];
            }

            while (v172);
          }

          v166 = v252;
          [v252 setObject:v169 forKeyedSubscript:@"keywords"];

          v164 = v260;
          v168 = v250;
        }

        [v164 setProperties:v166];
        v177 = v254;
        if (v254 || v256 <= 8 && ((1 << v256) & 0x106) != 0)
        {
          v178 = [v166 objectForKey:@"isIP"];
          v179 = [v178 BOOLValue];

          if (v179)
          {
            v177 = 3;
          }

          else
          {
            v180 = [v166 objectForKey:@"isURL"];
            v181 = [v180 BOOLValue];

            if (v181)
            {
              v177 = 1;
            }

            else
            {
              v182 = [v166 objectForKey:@"isNumeric"];
              v183 = [v182 BOOLValue];

              if (v183)
              {
                v177 = 2;
              }

              else
              {
                v184 = [v166 objectForKey:@"isEmail"];
                v185 = [v184 BOOLValue];

                if (v185)
                {
                  v177 = 4;
                }

                else
                {
                  v186 = [v166 objectForKey:@"isEmailAddressing"];
                  v187 = [v186 BOOLValue];

                  if (v187)
                  {
                    v177 = 5;
                  }

                  else
                  {
                    v188 = [v166 objectForKey:@"isDecimalPad"];
                    v189 = [v188 BOOLValue];

                    v177 = 6;
                    if (!v189)
                    {
                      v177 = 0;
                    }
                  }
                }
              }
            }
          }
        }

        v164[12] = v177;
        v190 = [v166 objectForKey:@"autoCaps"];
        v164[10] = [PSSpecifier autoCapsTypeForString:v190];

        v191 = [v166 objectForKey:@"autoCorrection"];
        v164[11] = [PSSpecifier autoCorrectionTypeForNumber:v191];

        v192 = [v166 objectForKey:@"keyboard"];
        v164[9] = [PSSpecifier keyboardTypeForString:v192];

        if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
        {
          v193 = [v166 objectForKey:@"action"];
          v58 = v258;
          v257 = v193;
          if (v193)
          {
            v194 = NSSelectorFromString(v193);
          }

          else
          {
            v194 = 0;
          }

          [v164 setLegacyAction:v194];
          v195 = [v166 objectForKey:@"cancel"];
          v196 = v195;
          if (v195)
          {
            v197 = NSSelectorFromString(v195);
          }

          else
          {
            v197 = 0;
          }

          [v164 setLegacyCancel:v197];
          v198 = [MEMORY[0x1E69DC938] currentDevice];
          if (![v198 sf_isInternalInstall])
          {
            goto LABEL_273;
          }

          v199 = [v164 legacyAction];

          if (v199)
          {
            v200 = MEMORY[0x1E696AAE8];
            v201 = [@"/AppleInternal/Library/PreferenceBundles/" stringByAppendingPathComponent:@"Internal Settings"];
            v202 = [v201 stringByAppendingPathExtension:@"bundle"];
            v198 = [v200 bundleWithPath:v202];

            if (v198)
            {
              v203 = [v198 localizedStringForKey:@"SPECIFIER_ACTION_DESCRIPTION" value:&stru_1EFE45030 table:@"SpecifierActions"];
              v223 = v203;
            }

            else
            {
              v203 = @"SPECIFIER_ACTION_DESCRIPTION";
            }

            v204 = NSStringFromSelector([v260 legacyAction]);
            v205 = NSStringFromSelector([v260 legacyCancel]);
            NSLog(&v203->isa, v260, v204, v205);

            if (v198)
            {
            }

            v18 = v264;
            v164 = v260;
LABEL_273:
          }

          else
          {
            v18 = v264;
          }

          goto LABEL_275;
        }

        v58 = v258;
LABEL_275:
        v206 = [v166 objectForKey:@"confirmationAction"];
        if (v206)
        {
          v207 = v206;
          v208 = NSSelectorFromString(v206);
        }

        else
        {
          v207 = 0;
          v208 = 0;
        }

        [v164 setConfirmationAction:v208];
        v209 = [v166 objectForKey:@"cancel"];
        v210 = v209;
        if (v209)
        {
          v211 = NSSelectorFromString(v209);
        }

        else
        {
          v211 = 0;
        }

        [v164 setConfirmationCancelAction:v211];
        v212 = [v166 objectForKey:@"loadAction"];
        v213 = v212;
        if (v212)
        {
          v214 = NSSelectorFromString(v212);
        }

        else
        {
          v214 = 0;
        }

        [v260 setControllerLoadAction:v214];
        v215 = [v166 objectForKey:@"buttonAction"];
        v216 = v215;
        if (v215)
        {
          v217 = NSSelectorFromString(v215);
        }

        else
        {
          v217 = 0;
        }

        [v260 setButtonAction:v217];
        [v260 setupIconImageWithBundle:v159];
        [v240 addObject:v260];

        v57 = v261;
LABEL_288:

        v24 = v58 + 1;
      }

      while (v24 != v241);
      v218 = [obj countByEnumeratingWithState:&v277 objects:v288 count:16];
      v241 = v218;
    }

    while (v218);
  }

  v219 = v240;
  return v240;
}

uint64_t ProcessedSpecifierBundle(void *a1, void *a2, void *a3, void **a4, void *a5)
{
  v115 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = [v9 objectForKey:@"bundle"];
  if (!v13)
  {
    v23 = 0;
    goto LABEL_54;
  }

  v14 = PKLogForCategory(6);
  v15 = os_signpost_id_make_with_pointer(v14, "PSSpecifierLoading.ProcessedSpecifierBundle");

  v16 = PKLogForCategory(6);
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 138543618;
    v112 = v13;
    v113 = 2114;
    v114 = objc_opt_class();
    v18 = v114;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PSSpecifierLoading.ProcessedSpecifierBundle", "%{public}@ loaded from controller %{public}@", buf, 0x16u);
  }

  v19 = [v9 objectForKey:@"internal"];
  v20 = [v19 BOOLValue];

  spid = v15;
  v99 = v15 - 1;
  if (v20)
  {
    v21 = @"/AppleInternal/Library/PreferenceBundles/";
LABEL_7:
    v22 = [(__CFString *)v21 stringByAppendingPathComponent:v13];
    v100 = [v22 stringByAppendingPathExtension:@"bundle"];
LABEL_11:

    goto LABEL_12;
  }

  v24 = [v9 objectForKey:@"developer"];
  v25 = [v24 BOOLValue];

  if (v25)
  {
    v22 = SFDeveloperSettingsBundlesDirectoryPath();
    v26 = [v22 stringByAppendingPathComponent:v13];
    v100 = [v26 stringByAppendingPathExtension:@"bundle"];

    goto LABEL_11;
  }

  v48 = [v9 objectForKey:@"nanoBundlePath"];
  v49 = [v48 BOOLValue];

  if (v49)
  {
    v21 = @"/System/Library/NanoPreferenceBundles/General/";
    goto LABEL_7;
  }

  v74 = [v9 objectForKey:@"nanoInternalBundlePath"];
  v75 = [v74 BOOLValue];

  if (v75)
  {
    v21 = @"/AppleInternal/Library/NanoPreferenceBundles/General/";
    goto LABEL_7;
  }

  v81 = [v9 objectForKey:@"nanoAppsBundlePath"];
  v82 = [v81 BOOLValue];

  if (v82)
  {
    v21 = @"/System/Library/NanoPreferenceBundles/Applications/";
    goto LABEL_7;
  }

  v100 = PSBundlePathForPreferenceBundle(v13);
LABEL_12:
  v27 = [v9 objectForKey:@"isController"];
  v28 = [v27 BOOLValue];

  if ((v28 & 1) == 0)
  {
    v98 = v12;
    v33 = MEMORY[0x1E696AAE8];
    v35 = v34 = v100;
    v36 = [v33 bundleWithPath:v35];

    v37 = [v36 principalClass];
    if (!v37 || ![(objc_class *)v37 isSubclassOfClass:objc_opt_class()])
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromClass(v37);
      NSLog(&cfstr_IncorrectPlugi.isa, v46, v47, v100);

LABEL_31:
      goto LABEL_32;
    }

    v94 = v11;
    v95 = a4;
    if (a4)
    {
      v38 = *a4;
      if (*a4)
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v39 = v38;
        v40 = [v39 countByEnumeratingWithState:&v105 objects:v110 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v106;
          v93 = v10;
LABEL_23:
          v43 = 0;
          while (1)
          {
            if (*v106 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v105 + 1) + 8 * v43);
            if ([v44 isMemberOfClass:v37])
            {
              break;
            }

            if (v41 == ++v43)
            {
              v41 = [v39 countByEnumeratingWithState:&v105 objects:v110 count:16];
              v10 = v93;
              if (v41)
              {
                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }

          v46 = v44;

          v10 = v93;
          v11 = v94;
          a4 = v95;
          if (!v46)
          {
            goto LABEL_63;
          }

          v92 = 0;
          goto LABEL_65;
        }

LABEL_29:

        v11 = v94;
        a4 = v95;
      }
    }

LABEL_63:
    v46 = [[v37 alloc] initWithParentListController:v10 properties:v9];
    v83 = v46 != 0;
    if (!v46)
    {
LABEL_73:
      if (a4 && v83)
      {
        v89 = *a4;
        v11 = v94;
        if (!*a4)
        {
          v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *a4 = v89;
        }

        [v89 addObject:v46];
      }

      else
      {
        v11 = v94;
      }

      goto LABEL_31;
    }

    v92 = 1;
    v93 = v10;
LABEL_65:
    v84 = [v46 specifiersWithSpecifier:v11];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v85 = [v84 countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v102;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v102 != v87)
          {
            objc_enumerationMutation(v84);
          }

          [*(*(&v101 + 1) + 8 * i) setProperty:v13 forKey:@"searchBundle"];
        }

        v86 = [v84 countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v86);
    }

    [v98 addObjectsFromArray:v84];

    v10 = v93;
    a4 = v95;
    v83 = v92;
    goto LABEL_73;
  }

  v30 = v29 = v100;
  [v9 setObject:v30 forKey:@"lazy-bundle"];

  v31 = [v9 objectForKey:@"loadAction"];

  if (v31)
  {
    if (!CFPreferencesGetAppBooleanValue(@"kDontUseOldAction", @"com.apple.Preferences", 0))
    {
      v32 = [v9 objectForKey:@"action"];

      if (v32)
      {
        [v9 removeObjectForKey:@"loadAction"];
      }
    }
  }

  else
  {
    [v9 setObject:@"lazyLoadBundle:" forKey:@"loadAction"];
  }

  v50 = [v9 objectForKey:@"hasIcon"];
  v51 = [v50 BOOLValue];

  if (!v51)
  {
    goto LABEL_40;
  }

  v98 = v12;
  v52 = MEMORY[0x1E696AAE8];
  v54 = v53 = v100;
  v36 = [v52 bundleWithPath:v54];

  if (v36)
  {
    v55 = [v9 objectForKey:@"hasBundleIcon"];
    v56 = [v55 BOOLValue];

    if (v56)
    {
      v57 = MEMORY[0x1E69DCAB8];
      v58 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v58 traitCollection];
      v59 = v10;
      v60 = a4;
      v62 = v61 = v11;
      v46 = [v57 imageNamed:@"icon.png" inBundle:v36 compatibleWithTraitCollection:v62];

      v11 = v61;
      a4 = v60;
      v10 = v59;

      [v9 setObject:v46 forKey:@"iconImage"];
    }

    else
    {
      v46 = [v9 objectForKey:@"icon"];
      v76 = [v100 stringByAppendingPathComponent:@"icon.png"];
      if (v46)
      {
        v90 = MEMORY[0x1E69DCAB8];
        [MEMORY[0x1E69DCEB0] mainScreen];
        v96 = a4;
        v78 = v77 = v11;
        v79 = [v78 traitCollection];
        [v90 imageNamed:v46 inBundle:v36 compatibleWithTraitCollection:v79];
        v80 = v91 = v76;

        v11 = v77;
        a4 = v96;
        [v9 setObject:v80 forKey:@"iconImage"];
        [v9 setObject:v91 forKey:@"icon2"];

        v76 = v91;
      }

      else
      {
        [v9 setObject:v76 forKey:@"icon"];
      }
    }

    goto LABEL_31;
  }

LABEL_32:

  v12 = v98;
LABEL_40:
  if (a4)
  {
    v63 = *a4;
  }

  else
  {
    v63 = 0;
  }

  v23 = v28 ^ 1u;
  v64 = v63;
  v65 = [v64 count];
  v66 = PKLogForCategory(6);
  v67 = v66;
  if (v65 == 1)
  {
    if (v99 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
    {
      v68 = [v64 objectAtIndexedSubscript:0];
      v69 = objc_opt_class();
      *buf = 138543362;
      v112 = v69;
      v70 = v11;
      v71 = v69;
      _os_signpost_emit_with_name_impl(&dword_18B008000, v67, OS_SIGNPOST_INTERVAL_END, spid, "PSSpecifierLoading.ProcessedSpecifierBundle", "Bundle Controller: %{public}@", buf, 0xCu);

      v11 = v70;
    }
  }

  else if (v99 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    if ([v64 count])
    {
      v72 = v64;
    }

    else
    {
      v72 = 0;
    }

    *buf = 138543362;
    v112 = v72;
    _os_signpost_emit_with_name_impl(&dword_18B008000, v67, OS_SIGNPOST_INTERVAL_END, spid, "PSSpecifierLoading.ProcessedSpecifierBundle", "Bundle Controllers: %{public}@", buf, 0xCu);
  }

LABEL_54:
  return v23;
}

void *__getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71DEF90;
    v7 = 0;
    SetupAssistantLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = SetupAssistantLibraryCore_frameworkLibrary_0;
    if (SetupAssistantLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "BYSetupAssistantBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ___copyIconForPathFromSpecifier_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [*(a1 + 32) stringByAppendingPathComponent:v6];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:v7];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
      v13 = _PSLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v17 = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v14;
        v15 = " Found  %@ in bundle %@";
LABEL_7:
        _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, v15, &v17, 0x16u);
      }
    }

    else
    {
      v13 = _PSLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v16;
        v15 = "Missing %@ in bundle %@";
        goto LABEL_7;
      }
    }
  }
}

void sub_18B010838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PSPreferencesFrameworkBundle()
{
  if (PSPreferencesFrameworkBundle_onceToken != -1)
  {
    PSPreferencesFrameworkBundle_cold_1();
  }

  v1 = PSPreferencesFrameworkBundle_preferences;

  return v1;
}

void __PSPreferencesFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = PSPreferencesFrameworkBundle_preferences;
  PSPreferencesFrameworkBundle_preferences = v0;
}

BOOL PSObjc_classIsSubclassOfClass(objc_class *Superclass, objc_class *a2)
{
  do
  {
    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass && Superclass != a2);
  return Superclass == a2;
}

id PSBlankIconImage()
{
  if (PSBlankIconImage_onceToken != -1)
  {
    PSBlankIconImage_cold_1();
  }

  v1 = PSBlankIconImage_result;

  return v1;
}

void __PSBlankIconImage_block_invoke()
{
  v7 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v0 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  v1 = [v7 prepareImageForDescriptor:v0];
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [v1 CGImage];
    [v2 scale];
    v5 = [v3 imageWithCGImage:v4 scale:0 orientation:?];
    v6 = PSBlankIconImage_result;
    PSBlankIconImage_result = v5;
  }
}

void sub_18B0129EC(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v3 identifier];
    [v2 setAccessibilityIdentifier_];

    [v2 setType_];
    [v2 setTag_];
    v5 = [v3 cellType];
    if ((v5 - 1) > 0xC)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18B105558[(v5 - 1)];
    }

    [v2 setSelectionStyle_];
    v7 = [v3 values];
    if (v7)
    {
    }

    else
    {
      [v3 loadValuesAndTitlesFromDataSource];
    }

    if ([v3 cellType] == 1 || objc_msgSend(v3, sel_cellType) == 2 || objc_msgSend(v3, sel_cellType) == 4 || objc_msgSend(v3, sel_cellType) == 3)
    {
      [v2 _updateAccessoryTypeForSpecifier_];
LABEL_13:
      sub_18B012D24(v3);
LABEL_14:
      [v2 setIsCopyable_];
      sub_18B0EDA98(v3);

      return;
    }

    if ([v3 cellType] == 13)
    {
      [v2 setAccessoryType_];
    }

    else
    {
      if ([v3 cellType] == 10)
      {
        v10 = 0u;
        v11 = 0u;
        v8 = OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel;
        swift_beginAccess();
        sub_18B0142BC(&v10, v2 + v8);
        v9 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v9);
        *(&v11 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B08);
        v12 = sub_18B0DE9C0(&qword_1EA9B2B10, &qword_1EA9B2B08);
        __swift_allocate_boxed_opaque_existential_1(&v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B18);
        sub_18B0E6C68();
        sub_18B0F4F30();
        MEMORY[0x18CFEE4A0](&v10);
        goto LABEL_14;
      }

      if ([v3 cellType] != 11)
      {
        goto LABEL_13;
      }
    }

    sub_18B0E64BC(v3);
    goto LABEL_14;
  }
}

uint64_t sub_18B012D24(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel;
  swift_beginAccess();
  sub_18B012F6C(v2 + v4, v10);
  if (v11)
  {
    type metadata accessor for PSSpecifierLabeledContentViewModel();
    if (swift_dynamicCast())
    {
      v5 = [objc_opt_self() areAnimationsEnabled];
      MEMORY[0x1EEE9AC00](v5);
      v10[0] = 0;
      sub_18B0F4CE0();
      sub_18B0F4D60();
    }
  }

  else
  {
    sub_18B012FDC(v10);
  }

  v7 = type metadata accessor for PSSpecifierLabeledContentViewModel();
  swift_allocObject();
  v8 = a1;
  v9 = sub_18B013498(v8);

  v11 = v7;
  v10[0] = v9;
  swift_beginAccess();

  sub_18B0142BC(v10, v2 + v4);
  swift_endAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B58);
  v12 = sub_18B0DE9C0(&qword_1EA9B0EA0, &qword_1EA9B2B58);
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_18B0143A0();
  sub_18B0F4F30();
  MEMORY[0x18CFEE4A0](v10);
}

uint64_t sub_18B012F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B012FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PSSpecifierLabeledContentViewModel()
{
  result = qword_1EA9B0FE8;
  if (!qword_1EA9B0FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B013090()
{
  if (!qword_1EA9B0DE8)
  {
    _s9ImageTypeOMa();
    v0 = sub_18B0F5280();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9B0DE8);
    }
  }
}

void sub_18B0130E8()
{
  sub_18B013090();
  if (v0 <= 0x3F)
  {
    sub_18B0F4C30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t _s9ImageTypeOMa()
{
  result = qword_1EA9B0DF0;
  if (!qword_1EA9B0DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B013228()
{
  sub_18B013350();
  if (v0 <= 0x3F)
  {
    sub_18B0132E4(319, &qword_1EA9B0E10);
    if (v1 <= 0x3F)
    {
      sub_18B0132E4(319, &unk_1EA9B0E18);
      if (v2 <= 0x3F)
      {
        sub_18B0133F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_18B0132E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for ISIconShape(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_18B013350()
{
  if (!qword_1EA9B10B8)
  {
    v0 = sub_18B0F4BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9B10B8);
    }
  }
}

void sub_18B0133AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_18B0133F8()
{
  if (!qword_1EA9B0DC8)
  {
    v0 = sub_18B013450(0, &qword_1EA9B0DC0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9B0DC8);
    }
  }
}

uint64_t sub_18B013450(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_18B013498(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v37 - v5);
  v7 = sub_18B0F4BD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType;
  v12 = _s9ImageTypeOMa();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = &v2[OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__primaryText];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v2[OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__secondaryText];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_18B0F4C20();
  *(v2 + 2) = a1;
  v15 = a1;
  v16 = [v15 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_18B0F51B0();
    v20 = v19;
  }

  else
  {
    sub_18B0F4BC0();
    v18 = sub_18B0F4BB0();
    v20 = v21;
    (*(v8 + 8))(v10, v7);
  }

  *(v2 + 3) = v18;
  *(v2 + 4) = v20;
  sub_18B01376C(v6);
  v22 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType;
  sub_18B013FFC(&v2[OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType]);
  sub_18B014064(v6, &v2[v22]);
  v23 = sub_18B0140D4();
  v25 = v24;
  v26 = &v2[OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__primaryText];

  *v26 = v23;
  *(v26 + 1) = v25;
  v27 = [v15 displayStringForCurrentValue];
  if (v27)
  {
    v28 = v27;
    v29 = sub_18B0F51B0();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = &v2[OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__secondaryText];

  *v32 = v29;
  v32[1] = v31;
  v33 = sub_18B0F51B0();
  v35 = sub_18B013E38(v33, v34, 1u);

  v2[OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled] = (v35 & 1) == 0;
  return v2;
}

uint64_t sub_18B01376C@<X0>(void *a1@<X8>)
{
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AC8);
  v2 = (MEMORY[0x1EEE9AC00])();
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - v5;
  v7 = sub_18B0F4BA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if ([v1 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    v14 = swift_dynamicCast();
    (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v15 = *(v8 + 32);
      v15(v13, v6, v7);
      v16 = v34;
      v17 = v34;
      v18 = v13;
LABEL_29:
      v15(v17, v18, v7);
      v27 = _s9ImageTypeOMa();
      goto LABEL_41;
    }
  }

  else
  {
    sub_18B0DEA24(&v39, &qword_1EA9B29F8);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_18B0DEA24(v6, &qword_1EA9B2AC8);
  if ([v1 &selRef_operation])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_18B0F4B90();

    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      v15 = *(v8 + 32);
      v15(v11, v4, v7);
      v16 = v34;
      v17 = v34;
      v18 = v11;
      goto LABEL_29;
    }

    v19 = &qword_1EA9B2AC8;
    v20 = v4;
  }

  else
  {
    v19 = &qword_1EA9B29F8;
    v20 = &v39;
  }

  sub_18B0DEA24(v20, v19);
LABEL_17:
  v21 = sub_18B0F51B0();
  v23 = sub_18B013E38(v21, v22, 0);

  if (v23)
  {
    if ([v1 &selRef_operation])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast())
      {
LABEL_23:
        v24 = v35;
        v25 = v36;
        v26 = sub_18B0ED9D0();
        v16 = v34;
        *v34 = v24;
        v16[1] = v25;
        v16[2] = v26;
        v27 = _s9ImageTypeOMa();
LABEL_41:
        swift_storeEnumTagMultiPayload();
        return (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
      }
    }

    else
    {
      sub_18B0DEA24(&v39, &qword_1EA9B29F8);
    }
  }

  v28 = sub_18B0F51B0();
  v30 = sub_18B013E38(v28, v29, 0);

  if (v30)
  {
    if ([v1 &selRef_operation])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_18B0DEA24(&v39, &qword_1EA9B29F8);
    }
  }

  if ([v1 &selRef_operation])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    sub_18B013450(0, &qword_1EA9B0DC0);
    if (swift_dynamicCast())
    {
      v16 = v34;
      *v34 = v35;
      v27 = _s9ImageTypeOMa();
      goto LABEL_41;
    }
  }

  else
  {
    sub_18B0DEA24(&v39, &qword_1EA9B29F8);
  }

  v32 = _s9ImageTypeOMa();
  return (*(*(v32 - 8) + 56))(v34, 1, 1, v32);
}

uint64_t sub_18B013E38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_18B0F5180();
  v6 = [v3 propertyForKey_];

  if (v6)
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      a3 = v10;
      return a3 & 1;
    }
  }

  else
  {
    sub_18B0DEA24(&v13, &qword_1EA9B29F8);
  }

  v7 = sub_18B0F5180();
  v8 = [v3 propertyForKey_];

  if (v8)
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_18B013450(0, &qword_1EA9B2A90);
    if (swift_dynamicCast())
    {
      a3 = [v10 BOOLValue];
    }
  }

  else
  {
    sub_18B0DEA24(&v13, &qword_1EA9B29F8);
  }

  return a3 & 1;
}

uint64_t sub_18B013FFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B014064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18B0140D4()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18B0F51B0();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  result = [v0 displayStringForCurrentValue];
  if (result)
  {
    v8 = result;
    v9 = sub_18B0F51B0();

    return v9;
  }

  return result;
}

uint64_t sub_18B0142BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_18B0143A0()
{
  result = qword_1EA9B1078;
  if (!qword_1EA9B1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1078);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18B014408()
{
  if ([v0 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_18B0DEA24(v5, &qword_1EA9B29F8);
    return 0;
  }

  return result;
}

void sub_18B01450C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_18B014674();
  v5 = v4;
  v6 = sub_18B0F5260();

  if (v6)
  {
    sub_18B0146C0(a1);
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B014C9C();
    sub_18B0F4C00();
  }
}

unint64_t sub_18B014674()
{
  result = qword_1EA9B0DE0;
  if (!qword_1EA9B0DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9B0DE0);
  }

  return result;
}

uint64_t sub_18B0146C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v31 - v5);
  v7 = sub_18B0F4BD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_18B0F51B0();
    v15 = v14;
  }

  else
  {
    sub_18B0F4BC0();
    v13 = sub_18B0F4BB0();
    v15 = v16;
    (*(v8 + 8))(v10, v7);
  }

  sub_18B014B28(v13, v15);
  sub_18B01376C(v6);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v31 - 2) = v2;
  *(&v31 - 1) = v6;
  v32 = v2;
  sub_18B014C9C();
  sub_18B0F4C00();

  sub_18B013FFC(v6);
  v18 = sub_18B0140D4();
  sub_18B014DEC(v18, v19, &OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__primaryText);
  v20 = [a1 displayStringForCurrentValue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_18B0F51B0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_18B014DEC(v22, v24, &OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__secondaryText);
  v25 = sub_18B0F51B0();
  v27 = sub_18B013E38(v25, v26, 1u);

  v29 = (v27 ^ 1) & 1;
  if (v29 == *(v2 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled))
  {
    *(v2 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled) = v29;
  }

  else
  {
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30);
    *(&v31 - 2) = v2;
    *(&v31 - 8) = v29;
    v32 = v2;
    sub_18B0F4C00();
  }

  return result;
}

uint64_t sub_18B014B28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_18B0F5350() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B014C9C();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B014C5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B014B28(v1, v2);
}

unint64_t sub_18B014C9C()
{
  result = qword_1EA9B0FF8;
  if (!qword_1EA9B0FF8)
  {
    type metadata accessor for PSSpecifierLabeledContentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0FF8);
  }

  return result;
}

uint64_t sub_18B014CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B014D80(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType;
  swift_beginAccess();
  sub_18B014CF4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_18B014DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_18B0F5350() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B014C9C();
    sub_18B0F4C00();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

uint64_t type metadata accessor for SpecifierImageView()
{
  result = qword_1EA9B10A0;
  if (!qword_1EA9B10A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B014F88()
{
  result = _s9ImageTypeOMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18B015254()
{
  result = qword_1EA9B0E50;
  if (!qword_1EA9B0E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0E50);
  }

  return result;
}

unint64_t sub_18B0152B8()
{
  result = qword_1EA9B0E58;
  if (!qword_1EA9B0E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B2730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0E58);
  }

  return result;
}

uint64_t sub_18B015334(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B015384@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_18B0F4E30();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18B0F4F50();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2920);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2928);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v32 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2930);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v15 = &v32 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2938);
  v16 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v32 - v18;
  v50 = a1;
  v51 = a2;
  v48 = a1;
  v49 = a2;
  v33 = a1;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2948);
  sub_18B015254();
  sub_18B0DC7FC();
  sub_18B0F4D20();
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2958);
  sub_18B0F50C0();
  v19 = v52;
  swift_getKeyPath();
  v53 = v19;
  sub_18B015334(&qword_1EA9B0FF8, type metadata accessor for PSSpecifierLabeledContentViewModel);
  sub_18B0F4C10();

  LODWORD(a2) = *(v19 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled);

  if (a2)
  {
    v20 = 0.5;
  }

  else
  {
    v20 = 1.0;
  }

  (*(v9 + 32))(v13, v11, v36);
  v21 = v35;
  *&v13[*(v35 + 36)] = v20;
  v22 = v37;
  sub_18B0F4F40();
  v23 = sub_18B0DC904();
  v24 = v21;
  sub_18B0F5010();
  (*(v40 + 8))(v22, v43);
  sub_18B0DCA1C(v13);
  v53 = v33;
  v54 = v34;
  sub_18B0F50C0();
  v25 = v52;
  swift_getKeyPath();
  v53 = v25;
  sub_18B0F4C10();

  v53 = v24;
  v54 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v38;
  v27 = v42;
  sub_18B0F4FF0();

  (*(v44 + 8))(v15, v27);
  sub_18B0F4E20();
  v28 = v39;
  sub_18B0F4D50();
  v29 = v46;
  v30 = *(v45 + 8);
  v30(v7, v46);
  sub_18B015A18(v26);
  sub_18B0F4E10();
  sub_18B0F4D50();
  v30(v7, v29);
  return sub_18B015A18(v28);
}

uint64_t sub_18B015A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B015A80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B2730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2960);
  sub_18B0152B8();
  sub_18B015B44();
  return sub_18B0F50A0();
}

unint64_t sub_18B015B44()
{
  result = qword_1EA9B0ED8;
  if (!qword_1EA9B0ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2960);
    sub_18B015334(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0ED8);
  }

  return result;
}

uint64_t sub_18B015C00@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2958);
  sub_18B0F50C0();
  swift_getKeyPath();
  sub_18B015334(&qword_1EA9B0FF8, type metadata accessor for PSSpecifierLabeledContentViewModel);
  sub_18B0F4C10();

  v2 = *(v8 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__primaryText + 8);

  if (v2)
  {
    sub_18B015D34();
    result = sub_18B0F4FC0();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

unint64_t sub_18B015D34()
{
  result = qword_1EA9B0E28;
  if (!qword_1EA9B0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0E28);
  }

  return result;
}

uint64_t sub_18B015D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2968);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v20[0] = type metadata accessor for SpecifierImageView();
  MEMORY[0x1EEE9AC00](v20[0]);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9ImageTypeOMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v20 - v15;
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2958);
  sub_18B0F50C0();
  v17 = v23;
  swift_getKeyPath();
  v21 = v17;
  sub_18B015334(&qword_1EA9B0FF8, type metadata accessor for PSSpecifierLabeledContentViewModel);
  sub_18B0F4C10();

  v18 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType;
  swift_beginAccess();
  sub_18B016184(v17 + v18, v16);

  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_18B015334(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    return sub_18B0F4F10();
  }

  else
  {
    sub_18B01625C(v16, v13);
    sub_18B0161F4(v13, v9, _s9ImageTypeOMa);
    sub_18B0161F4(v9, v7, type metadata accessor for SpecifierImageView);
    swift_storeEnumTagMultiPayload();
    sub_18B015334(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    sub_18B0F4F10();
    sub_18B0162C0(v9, type metadata accessor for SpecifierImageView);
    return sub_18B0162C0(v13, _s9ImageTypeOMa);
  }
}

uint64_t sub_18B016184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B0161F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B01625C(uint64_t a1, uint64_t a2)
{
  v4 = _s9ImageTypeOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B0162C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18B016354()
{
  result = qword_1EA9B0EB0;
  if (!qword_1EA9B0EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AF8);
    sub_18B0163E0();
    sub_18B0164C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EB0);
  }

  return result;
}

unint64_t sub_18B0163E0()
{
  result = qword_1EA9B0EC0;
  if (!qword_1EA9B0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AC0);
    sub_18B0DE9C0(&qword_1EA9B0F98, &qword_1EA9B2AD0);
    sub_18B0DE9C0(&qword_1EA9B0FA0, &qword_1EA9B2AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EC0);
  }

  return result;
}

unint64_t sub_18B0164C4()
{
  result = qword_1EA9B0EE0;
  if (!qword_1EA9B0EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AA0);
    sub_18B0DE9C0(&qword_1EA9B0FA0, &qword_1EA9B2AA8);
    sub_18B01657C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EE0);
  }

  return result;
}

unint64_t sub_18B01657C()
{
  result = qword_1EA9B0F78;
  if (!qword_1EA9B0F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AD8);
    sub_18B016608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F78);
  }

  return result;
}

unint64_t sub_18B016608()
{
  result = qword_1EA9B1090;
  if (!qword_1EA9B1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1090);
  }

  return result;
}

uint64_t sub_18B01665C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A98);
  MEMORY[0x1EEE9AC00](v57);
  v2 = &v54 - v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AA0);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v54 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AA8);
  v61 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v60 = &v54 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AB0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v54 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AB8);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v54 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AC0);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AD0);
  v12 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v54 - v13;
  v15 = sub_18B0F4BA0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s9ImageTypeOMa();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B0171F0(v62, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v16 + 32))(v18, v21, v15);
      (*(v16 + 16))(v11, v18, v15);
      (*(v16 + 56))(v11, 0, 1, v15);
      sub_18B0F4CD0();
      v23 = v56;
      (*(v12 + 16))(v7, v14, v56);
      swift_storeEnumTagMultiPayload();
      sub_18B0DE9C0(&qword_1EA9B0F98, &qword_1EA9B2AD0);
      sub_18B0DE9C0(&qword_1EA9B0FA0, &qword_1EA9B2AA8);
      v24 = v58;
      sub_18B0F4F10();
      sub_18B017254(v24, v65, &qword_1EA9B2AC0);
      swift_storeEnumTagMultiPayload();
      sub_18B0163E0();
      sub_18B0164C4();
      sub_18B0F4F10();
      sub_18B0DEA24(v24, &qword_1EA9B2AC0);
      (*(v12 + 8))(v14, v23);
      return (*(v16 + 8))(v18, v15);
    }

    v39 = *(v21 + 2);
    v40 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v41 = sub_18B0F5180();

    v42 = [v40 initWithBundleIdentifier_];

    v43 = sub_18B0E5DAC(v39);
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    v45 = v43;
    v46 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AE0);
    sub_18B0E5F20();
    v34 = v60;
    sub_18B0F4C50();
    v35 = v61;
    v36 = v66;
    (*(v61 + 16))(v7, v34, v66);
    swift_storeEnumTagMultiPayload();
    sub_18B0DE9C0(&qword_1EA9B0F98, &qword_1EA9B2AD0);
    sub_18B0DE9C0(&qword_1EA9B0FA0, &qword_1EA9B2AA8);
    v37 = v58;
    sub_18B0F4F10();
    v38 = &qword_1EA9B2AC0;
    sub_18B017254(v37, v65, &qword_1EA9B2AC0);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v26 = *(v21 + 2);
    v27 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v28 = sub_18B0F5180();

    v29 = [v27 initWithType_];

    v30 = sub_18B0E5DAC(v26);
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    v32 = v30;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AE0);
    sub_18B0E5F20();
    v34 = v60;
    sub_18B0F4C50();
    v35 = v61;
    v36 = v66;
    (*(v61 + 16))(v2, v34, v66);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AD8);
    sub_18B0DE9C0(&qword_1EA9B0FA0, &qword_1EA9B2AA8);
    sub_18B01657C();
    v37 = v59;
    sub_18B0F4F10();
    v38 = &qword_1EA9B2AA0;
    sub_18B017254(v37, v65, &qword_1EA9B2AA0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    sub_18B0163E0();
    sub_18B0164C4();
    sub_18B0F4F10();
    sub_18B0DEA24(v37, v38);
    return (*(v35 + 8))(v34, v36);
  }

  v47 = *v21;
  [v47 size];
  [v47 size];
  sub_18B0F5110();
  sub_18B0F4D10();
  v48 = v69;
  v49 = v70;
  v50 = v71;
  v51 = v72;
  *v2 = v47;
  *(v2 + 1) = v48;
  v2[16] = v49;
  *(v2 + 3) = v50;
  v2[32] = v51;
  *(v2 + 40) = v73;
  swift_storeEnumTagMultiPayload();
  v52 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AD8);
  sub_18B0DE9C0(&qword_1EA9B0FA0, &qword_1EA9B2AA8);
  sub_18B01657C();
  v53 = v59;
  sub_18B0F4F10();
  sub_18B017254(v53, v65, &qword_1EA9B2AA0);
  swift_storeEnumTagMultiPayload();
  sub_18B0163E0();
  sub_18B0164C4();
  sub_18B0F4F10();

  return sub_18B0DEA24(v53, &qword_1EA9B2AA0);
}

uint64_t sub_18B0171A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B0171F0(uint64_t a1, uint64_t a2)
{
  v4 = _s9ImageTypeOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B017254(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B0172BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18B017320();

  return MEMORY[0x1EEDDA9C0](a1, a2, a3, v6);
}

unint64_t sub_18B017320()
{
  result = qword_1EA9B1098;
  if (!qword_1EA9B1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1098);
  }

  return result;
}

uint64_t sub_18B017378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18B017320();

  return MEMORY[0x1EEDDAA30](a1, a2, a3, v6);
}

id sub_18B0173E4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v1 setContentMode_];
  LODWORD(v2) = 1132068864;
  [v1 setContentHuggingPriority:1 forAxis:v2];
  LODWORD(v3) = 1132068864;
  [v1 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v1 setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v5];
  return v1;
}

uint64_t sub_18B017E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B26E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B017F78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0DF200(v1, v2);
}

uint64_t sub_18B017FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B018134(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0E1B24(v1, v2);
}

uint64_t sub_18B018264()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B0182AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18B0F4DE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B018314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B018398()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B0183D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_18B018448(uint64_t a1, uint64_t a2)
{
  v4 = _s9ImageTypeOMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B0184B4(uint64_t a1, uint64_t a2)
{
  v4 = _s9ImageTypeOMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B01852C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18CFEDFF0]();
  *a1 = result;
  return result;
}

uint64_t sub_18B018584()
{
  MEMORY[0x18CFEFEB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B0185BC()
{
  MEMORY[0x18CFEFEB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B0185F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0E1D8C(v1, v2);
}

uint64_t sub_18B018638()
{
  MEMORY[0x18CFEFEB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B018670()
{
  MEMORY[0x18CFEFEB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_18B018800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MomentsOnboardingAndSettingsLibraryCore()
{
  if (!MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary)
  {
    MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary;
}

uint64_t __MomentsOnboardingAndSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

PSAccessoriesPolicyController *__getMOApprovedApplicationsManagerClass_block_invoke(uint64_t a1)
{
  if (!MomentsOnboardingAndSettingsLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("MOApprovedApplicationsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMOApprovedApplicationsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getMOApprovedApplicationsManagerClass_block_invoke_cold_1();
    return [(PSAccessoriesPolicyController *)v4 initWithAppBundleID:v5, v6];
  }

  return result;
}

void sub_18B018AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getDADaemonSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDADaemonSessionClass_softClass;
  v7 = getDADaemonSessionClass_softClass;
  if (!getDADaemonSessionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDADaemonSessionClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getDADaemonSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B018BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B0193BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getDADaemonSessionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DeviceAccessLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DeviceAccessLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DBD30;
    v6 = 0;
    DeviceAccessLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (DeviceAccessLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DADaemonSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDADaemonSessionClass_block_invoke_cold_1();
  }

  getDADaemonSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DeviceAccessLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DeviceAccessLibraryCore_frameworkLibrary = result;
  return result;
}

id getOBPrivacyPresenterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBPrivacyPresenterClass_softClass;
  v7 = getOBPrivacyPresenterClass_softClass;
  if (!getOBPrivacyPresenterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOBPrivacyPresenterClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getOBPrivacyPresenterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B01A2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBPrivacyPresenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DBE00;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyPresenterClass_block_invoke_cold_1();
  }

  getOBPrivacyPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

void PSCalendarAuthorizationStates(void *a1, void *a2, void *a3)
{
  v6 = tcc_server_create();
  v7 = tcc_service_singleton_for_CF_name();
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = _PSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service kTCCServiceCalendar", buf, 2u);
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  tcc_server_message_get_authorization_records_by_service();
  if (a1)
  {
    *a1 = [v12 copy];
  }

  if (a2)
  {
    *a2 = [v13 copy];
  }

  if (a3)
  {
    *a3 = [v14 copy];
  }
}

void __PSCalendarAuthorizationStates_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_15;
        case 2:
          v9 = 32;
          goto LABEL_15;
        case 4:
          v9 = 40;
LABEL_15:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_17;
  }

  v10 = _PSLoggingFacility();
  v11 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PSCalendarAuthorizationStates_block_invoke_cold_1(a3, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for kTCCServiceCalendar", v12, 2u);
  }

LABEL_17:
}

void sub_18B020920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id bundleIdentifiersWithPickerAccess()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getCNPrivateAccessAggregatorClass_softClass;
  v9 = getCNPrivateAccessAggregatorClass_softClass;
  if (!getCNPrivateAccessAggregatorClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCNPrivateAccessAggregatorClass_block_invoke;
    v5[3] = &unk_1E71DBC78;
    v5[4] = &v6;
    __getCNPrivateAccessAggregatorClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 allLoggedBundledIdentifiers];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];

  return v3;
}

void sub_18B0212C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B0218C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNLimitedAccessContactPickerViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLimitedAccessContactPickerViewControllerClass_softClass;
  v7 = getCNLimitedAccessContactPickerViewControllerClass_softClass;
  if (!getCNLimitedAccessContactPickerViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNLimitedAccessContactPickerViewControllerClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCNLimitedAccessContactPickerViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B021FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PSContactsAuthorizationStatesForService(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = tcc_server_create();
  v9 = tcc_service_singleton_for_CF_name();
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = _PSLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = a1;
    _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", buf, 0xCu);
  }

  v17 = MEMORY[0x1E69E9820];
  v14 = v10;
  v18 = v14;
  v15 = v11;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  tcc_server_message_get_authorization_records_by_service();
  if (a2)
  {
    *a2 = [v14 copy];
  }

  if (a3)
  {
    *a3 = [v15 copy];
  }

  if (v16)
  {
    *a4 = [v16 copy];
  }
}

void *__getCNContactStoreDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactStoreDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactStoreDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DBEE0;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCNPrivateAccessAggregatorClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPrivateAccessAggregator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPrivateAccessAggregatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNPrivateAccessAggregatorClass_block_invoke_cold_1();
    ContactsUILibrary();
  }
}

void ContactsUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ContactsUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71DBEF8;
    v3 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContactsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNContactStoreClass_block_invoke_cold_1();
    return __getCNLimitedAccessContactPickerViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getCNLimitedAccessContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNLimitedAccessContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLimitedAccessContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNLimitedAccessContactPickerViewControllerClass_block_invoke_cold_1();
    return __PSContactsAuthorizationStatesForService_block_invoke(v3);
  }

  return result;
}

void __PSContactsAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_14;
        case 2:
          v9 = 32;
          goto LABEL_14;
        case 3:
          v9 = 40;
LABEL_14:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_16;
  }

  v10 = _PSLoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PSContactsAuthorizationStatesForService_block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v12, 0xCu);
  }

LABEL_16:
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_18B024BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getDriverManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDriverManagerClass_softClass;
  v7 = getDriverManagerClass_softClass;
  if (!getDriverManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDriverManagerClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getDriverManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0250D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDriverManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DriverManagementLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DriverManagementLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC040;
    v6 = 0;
    DriverManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (DriverManagementLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DriverManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDriverManagerClass_block_invoke_cold_1();
  }

  getDriverManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DriverManagementLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DriverManagementLibraryCore_frameworkLibrary = result;
  return result;
}

id PSPhotosPolicyBundleIdentifiersWithRecentPickerUsage()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = [getPLPrivacyClass() sharedInstance];
  v2 = [v1 photosPickerPresentedLibraryLogsByClient];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = getPLPhotosPickerLogClientBundleIdentifierKey();
        v10 = [v8 objectForKeyedSubscript:{v9, v16}];

        v11 = getPLPhotosPickerLogPresentedTimestampKey();
        v12 = [v8 objectForKeyedSubscript:v11];

        [v12 timeIntervalSinceNow];
        if (v13 <= 0.0 && v13 > -2592000.0)
        {
          [v0 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v0 copy];

  return v14;
}

id getPLPrivacyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLPrivacyClass_softClass;
  v7 = getPLPrivacyClass_softClass;
  if (!getPLPrivacyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPLPrivacyClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getPLPrivacyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B027134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPLPhotosPickerLogClientBundleIdentifierKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPLPhotosPickerLogClientBundleIdentifierKeySymbolLoc_ptr;
  v8 = getPLPhotosPickerLogClientBundleIdentifierKeySymbolLoc_ptr;
  if (!getPLPhotosPickerLogClientBundleIdentifierKeySymbolLoc_ptr)
  {
    v1 = PhotoLibraryServicesCoreLibrary();
    v6[3] = dlsym(v1, "PLPhotosPickerLogClientBundleIdentifierKey");
    getPLPhotosPickerLogClientBundleIdentifierKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getPLPhotosPickerLogPresentedTimestampKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getPLPhotosPickerLogPresentedTimestampKeySymbolLoc_ptr;
  v8 = getPLPhotosPickerLogPresentedTimestampKeySymbolLoc_ptr;
  if (!getPLPhotosPickerLogPresentedTimestampKeySymbolLoc_ptr)
  {
    v1 = PhotoLibraryServicesCoreLibrary();
    v6[3] = dlsym(v1, "PLPhotosPickerLogPresentedTimestampKey");
    getPLPhotosPickerLogPresentedTimestampKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void PSPXTCCSettingsLimitedAccessSubtitle(void *a1)
{
  v1 = a1;
  PXTCCSettingsLimitedAccessSubtitleSymbolLoc = getPXTCCSettingsLimitedAccessSubtitleSymbolLoc();
  if (PXTCCSettingsLimitedAccessSubtitleSymbolLoc)
  {
    v3 = PXTCCSettingsLimitedAccessSubtitleSymbolLoc(v1);

    v4 = v3;
  }

  else
  {
    v5 = [PSContactsAuthorizationLevelController dealloc];
    [(PSPhotoServicesAuthorizationLevelController *)v5 setSpecifier:v6, v7];
  }
}

void sub_18B028CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B02912C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class __getPLPrivacyClass_block_invoke(uint64_t a1)
{
  PhotoLibraryServicesCoreLibrary();
  result = objc_getClass("PLPrivacy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLPrivacyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPLPrivacyClass_block_invoke_cold_1();
    return PhotoLibraryServicesCoreLibrary();
  }

  return result;
}

uint64_t PhotoLibraryServicesCoreLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryServicesCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DC120;
    v5 = 0;
    PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotoLibraryServicesCoreLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotoLibraryServicesCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPLPhotosPickerLogClientBundleIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesCoreLibrary();
  result = dlsym(v2, "PLPhotosPickerLogClientBundleIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLPhotosPickerLogClientBundleIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPLPhotosPickerLogPresentedTimestampKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesCoreLibrary();
  result = dlsym(v2, "PLPhotosPickerLogPresentedTimestampKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLPhotosPickerLogPresentedTimestampKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotosUICoreLibraryCore()
{
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    PhotosUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PhotosUICoreLibraryCore_frameworkLibrary;
}

uint64_t getPXTCCSettingsFullAccessSubtitleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr;
  v6 = getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr;
  if (!getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr)
  {
    v1 = PhotosUICoreLibrary();
    v4[3] = dlsym(v1, "PXTCCSettingsFullAccessSubtitle");
    getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18B02A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PhotosUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPXTCCSettingsFullAccessSubtitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosUICoreLibrary();
  result = dlsym(v2, "PXTCCSettingsFullAccessSubtitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotosUICoreLibrary()
{
  v0 = PhotosUICoreLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getPXTCCSettingsLimitedAccessSubtitleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr;
  v6 = getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr;
  if (!getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr)
  {
    v1 = PhotosUICoreLibrary();
    v4[3] = dlsym(v1, "PXTCCSettingsLimitedAccessSubtitle");
    getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18B02A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosUICoreLibrary();
  result = dlsym(v2, "PXTCCSettingsLimitedAccessSubtitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t TCCLibraryCore()
{
  if (!TCCLibraryCore_frameworkLibrary)
  {
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return TCCLibraryCore_frameworkLibrary;
}

uint64_t gettcc_server_message_prompt_authorization_valueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr;
  v6 = gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr;
  if (!gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __gettcc_server_message_prompt_authorization_valueSymbolLoc_block_invoke;
    v2[3] = &unk_1E71DBC78;
    v2[4] = &v3;
    __gettcc_server_message_prompt_authorization_valueSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18B02A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TCCLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  return result;
}

void *__gettcc_server_message_prompt_authorization_valueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "tcc_server_message_prompt_authorization_value");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18B02AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B02BBF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18B02C748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(a15 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void sub_18B02C780(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18B02C758);
}

id getNudityDetectionPreferencesHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNudityDetectionPreferencesHelperClass_softClass;
  v7 = getNudityDetectionPreferencesHelperClass_softClass;
  if (!getNudityDetectionPreferencesHelperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNudityDetectionPreferencesHelperClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getNudityDetectionPreferencesHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B02CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B02D1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getACActivityAuthorizationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACActivityAuthorizationClass_softClass;
  v7 = getACActivityAuthorizationClass_softClass;
  if (!getACActivityAuthorizationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getACActivityAuthorizationClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getACActivityAuthorizationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B02D418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B02D890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B02E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFOAuthorizationCenterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFOAuthorizationCenterClass_softClass;
  v7 = getFOAuthorizationCenterClass_softClass;
  if (!getFOAuthorizationCenterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFOAuthorizationCenterClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getFOAuthorizationCenterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B02E53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B02F484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B030C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B031508(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_18B03183C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18B032784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B033A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B033FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPRSettingsProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSettingsProviderClass_softClass;
  v7 = getPRSettingsProviderClass_softClass;
  if (!getPRSettingsProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRSettingsProviderClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getPRSettingsProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B03469C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBBObserverClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BulletinBoardLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BulletinBoardLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC318;
    v6 = 0;
    BulletinBoardLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BulletinBoardLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BBObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBBObserverClass_block_invoke_cold_1();
  }

  getBBObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BulletinBoardLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getNudityDetectionPreferencesHelperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CommunicationSafetySettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CommunicationSafetySettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC330;
    v6 = 0;
    CommunicationSafetySettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CommunicationSafetySettingsUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NudityDetectionPreferencesHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNudityDetectionPreferencesHelperClass_block_invoke_cold_1();
  }

  getNudityDetectionPreferencesHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CommunicationSafetySettingsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CommunicationSafetySettingsUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getACActivityCenterClass_block_invoke(uint64_t a1)
{
  ActivityKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ACActivityCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACActivityCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getACActivityCenterClass_block_invoke_cold_1();
    ActivityKitLibrary();
  }
}

void ActivityKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ActivityKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ActivityKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71DC348;
    v3 = 0;
    ActivityKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ActivityKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ActivityKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ActivityKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getACActivityAuthorizationClass_block_invoke(uint64_t a1)
{
  ActivityKitLibrary();
  result = objc_getClass("ACActivityAuthorization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACActivityAuthorizationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getACActivityAuthorizationClass_block_invoke_cold_1();
    return MomentsOnboardingAndSettingsLibraryCore_0(v3);
  }

  return result;
}

uint64_t MomentsOnboardingAndSettingsLibraryCore_0()
{
  if (!MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary_0)
  {
    MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary_0;
}

uint64_t __MomentsOnboardingAndSettingsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MomentsOnboardingAndSettingsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPSAppCellularUsageSpecifierClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SettingsCellularLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SettingsCellularLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC378;
    v6 = 0;
    SettingsCellularLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SettingsCellularLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSAppCellularUsageSpecifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSAppCellularUsageSpecifierClass_block_invoke_cold_1();
  }

  getPSAppCellularUsageSpecifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SettingsCellularLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SettingsCellularLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFOAuthorizationCenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyControlsObjCLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyControlsObjCLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC390;
    v6 = 0;
    FamilyControlsObjCLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FamilyControlsObjCLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FOAuthorizationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFOAuthorizationCenterClass_block_invoke_cold_1();
  }

  getFOAuthorizationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyControlsObjCLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FamilyControlsObjCLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getADTrackingTransparencyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LimitAdTrackingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LimitAdTrackingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC3A8;
    v6 = 0;
    LimitAdTrackingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LimitAdTrackingLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ADTrackingTransparency");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getADTrackingTransparencyClass_block_invoke_cold_1();
  }

  getADTrackingTransparencyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LimitAdTrackingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LimitAdTrackingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDOCDocumentSourceClass_block_invoke(uint64_t a1)
{
  if (!DocumentManagerLibrary_frameworkLibrary)
  {
    DocumentManagerLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/DocumentManager.framework/DocumentManager", 2);
  }

  result = objc_getClass("DOCDocumentSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDOCDocumentSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDOCDocumentSourceClass_block_invoke_cold_1();
    return __getPRSettingsProviderClass_block_invoke(v3);
  }

  return result;
}

Class __getPRSettingsProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ProximityReaderLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ProximityReaderLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC3C0;
    v6 = 0;
    ProximityReaderLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ProximityReaderLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSettingsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSettingsProviderClass_block_invoke_cold_1();
  }

  getPRSettingsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ProximityReaderLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ProximityReaderLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B036EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B037104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose((v6 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B037234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B037490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B0383BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAnalyticsWorkspaceClass_block_invoke(uint64_t a1)
{
  if (!SymptomAnalyticsLibrary_frameworkLibrary)
  {
    SymptomAnalyticsLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomAnalytics.framework/SymptomAnalytics", 2);
  }

  result = objc_getClass("AnalyticsWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAnalyticsWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAnalyticsWorkspaceClass_block_invoke_cold_1();
    return __getProcessAnalyticsClass_block_invoke(v3);
  }

  return result;
}

Class __getProcessAnalyticsClass_block_invoke(uint64_t a1)
{
  if (!SymptomAnalyticsLibrary_frameworkLibrary)
  {
    SymptomAnalyticsLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomAnalytics.framework/SymptomAnalytics", 2);
  }

  result = objc_getClass("ProcessAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getProcessAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getProcessAnalyticsClass_block_invoke_cold_1();
    return __getPRSettingsProviderClass_block_invoke_0(v3);
  }

  return result;
}

Class __getPRSettingsProviderClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ProximityReaderLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ProximityReaderLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC420;
    v6 = 0;
    ProximityReaderLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (ProximityReaderLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSettingsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSettingsProviderClass_block_invoke_cold_1();
  }

  getPRSettingsProviderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ProximityReaderLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ProximityReaderLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getFOAuthorizationCenterClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyControlsObjCLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyControlsObjCLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC438;
    v6 = 0;
    FamilyControlsObjCLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (FamilyControlsObjCLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FOAuthorizationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFOAuthorizationCenterClass_block_invoke_cold_1();
  }

  getFOAuthorizationCenterClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyControlsObjCLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FamilyControlsObjCLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id getOBPrivacyPresenterClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBPrivacyPresenterClass_softClass_0;
  v7 = getOBPrivacyPresenterClass_softClass_0;
  if (!getOBPrivacyPresenterClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOBPrivacyPresenterClass_block_invoke_0;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getOBPrivacyPresenterClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B038FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBPrivacyPresenterClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC450;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyPresenterClass_block_invoke_cold_1();
  }

  getOBPrivacyPresenterClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_18B03A220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBTextWelcomeControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC468;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBTextWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBTextWelcomeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_18B03A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVSAccountStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VideoSubscriberAccountLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VideoSubscriberAccountLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC480;
    v6 = 0;
    VideoSubscriberAccountLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VideoSubscriberAccountLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VSAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVSAccountStoreClass_block_invoke_cold_1();
  }

  getVSAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VideoSubscriberAccountLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VideoSubscriberAccountLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B03AB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFKPrivacySettingsControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FinanceKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FinanceKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC498;
    v6 = 0;
    FinanceKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FinanceKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FKPrivacySettingsController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFKPrivacySettingsControllerClass_block_invoke_cold_1();
  }

  getFKPrivacySettingsControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FinanceKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FinanceKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B03D11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke();
  _Unwind_Resume(a1);
}

void sub_18B03ED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOBPrivacyAppleIDIdentifier()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getOBPrivacyAppleIDIdentifierSymbolLoc_ptr;
  v8 = getOBPrivacyAppleIDIdentifierSymbolLoc_ptr;
  if (!getOBPrivacyAppleIDIdentifierSymbolLoc_ptr)
  {
    v1 = OnBoardingKitLibrary();
    v6[3] = dlsym(v1, "OBPrivacyAppleIDIdentifier");
    getOBPrivacyAppleIDIdentifierSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_18B03F0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAppleIDAuthenticationInAppContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationInAppContextClass_softClass;
  v7 = getAKAppleIDAuthenticationInAppContextClass_softClass;
  if (!getAKAppleIDAuthenticationInAppContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAKAppleIDAuthenticationInAppContextClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B03FA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAuthenticationNewAppleIDSetupInfoKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAKAuthenticationNewAppleIDSetupInfoKeySymbolLoc_ptr;
  v8 = getAKAuthenticationNewAppleIDSetupInfoKeySymbolLoc_ptr;
  if (!getAKAuthenticationNewAppleIDSetupInfoKeySymbolLoc_ptr)
  {
    v1 = AuthKitLibrary();
    v6[3] = dlsym(v1, "AKAuthenticationNewAppleIDSetupInfoKey");
    getAKAuthenticationNewAppleIDSetupInfoKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAKAppleIDAuthenticationErrorDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  v8 = getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr;
  if (!getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr)
  {
    v1 = AuthKitLibrary();
    v6[3] = dlsym(v1, "AKAppleIDAuthenticationErrorDomain");
    getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_18B04088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B040E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B041DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBBundleClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBBundleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOBBundleClass_block_invoke_cold_1();
    return OnBoardingKitLibrary();
  }

  return result;
}

uint64_t OnBoardingKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __OnBoardingKitLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DC658;
    v5 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = OnBoardingKitLibraryCore_frameworkLibrary_2;
  v1 = v3[0];
  if (!OnBoardingKitLibraryCore_frameworkLibrary_2)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getOBPrivacyAppleIDIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OnBoardingKitLibrary();
  result = dlsym(v2, "OBPrivacyAppleIDIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getOBPrivacyAppleIDIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getOBPrivacyPresenterClass_block_invoke_1(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBPrivacyPresenterClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBPrivacyPresenterClass_block_invoke_cold_1();
    return __getAKAppleIDAuthenticationInAppContextClass_block_invoke(v3);
  }

  return result;
}

Class __getAKAppleIDAuthenticationInAppContextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AuthKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AuthKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC670;
    v6 = 0;
    AuthKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AuthKitUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1();
  }

  getAKAppleIDAuthenticationInAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AuthKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAKAuthenticationNewAppleIDSetupInfoKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAuthenticationNewAppleIDSetupInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationNewAppleIDSetupInfoKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AuthKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DC688;
    v5 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AuthKitLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AuthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAKAppleIDAuthenticationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAppleIDAuthenticationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAppleIDAuthenticationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAADeviceInfoClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AADeviceInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAADeviceInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAADeviceInfoClass_block_invoke_cold_1();
    AppleAccountLibrary();
  }
}

void AppleAccountLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppleAccountLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71DC6A0;
    v3 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppleAccountLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAAURLConfigurationClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  result = objc_getClass("AAURLConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAURLConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAAURLConfigurationClass_block_invoke_cold_1();
    return __getRemoteUIControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getRemoteUIControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RemoteUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RemoteUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC6B8;
    v6 = 0;
    RemoteUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (RemoteUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RemoteUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRemoteUIControllerClass_block_invoke_cold_1();
  }

  getRemoteUIControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RemoteUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RemoteUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getiCloudMailAccountProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!iCloudMailAccountUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iCloudMailAccountUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC6D0;
    v6 = 0;
    iCloudMailAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudMailAccountUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("iCloudMailAccountProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getiCloudMailAccountProviderClass_block_invoke_cold_1();
  }

  getiCloudMailAccountProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudMailAccountUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iCloudMailAccountUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
    return PSHasStockholmPass(v3);
  }

  return result;
}

BOOL PSHasStockholmPass()
{
  PKPassLibraryClass = getPKPassLibraryClass();
  if (![PKPassLibraryClass isPassLibraryAvailable])
  {
    return 0;
  }

  v1 = objc_alloc_init(PKPassLibraryClass);
  v2 = [v1 passesOfType:1];
  v3 = [v2 count] != 0;

  return v3;
}

id getPKPassLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPassLibraryClass_softClass;
  v7 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKPassLibraryClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getPKPassLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B042F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PSStockholmLocallyStoredValuePassNames()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  PKPassLibraryClass = getPKPassLibraryClass();
  if ([(objc_class *)PKPassLibraryClass isPassLibraryAvailable])
  {
    v2 = objc_alloc_init(PKPassLibraryClass);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v2 paymentPassesWithLocallyStoredValue];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) localizedDescription];
          if (v8)
          {
            [v0 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  return v0;
}

id PSLocalizableStockholmStringForKey(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE45030 table:@"Payment_Prefs"];

  return v3;
}

Class __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PassKitCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC6E8;
    v6 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PassKitCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKPassLibraryClass_block_invoke_cold_1();
  }

  getPKPassLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B043CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B0445E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t TopToBottomLeftToRightViewCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 frame];
  v6 = v5;
  [v4 frame];
  [v3 convertRect:v4 fromView:?];
  if (v6 >= v7)
  {
    [v3 frame];
    v10 = v9;
    [v4 frame];
    [v3 convertRect:v4 fromView:?];
    if (v10 > v11)
    {
      v8 = 1;
      goto LABEL_7;
    }

    [v3 frame];
    v13 = v12;
    [v4 frame];
    [v3 convertRect:v4 fromView:?];
    if (v13 >= v14)
    {
      [v3 frame];
      v16 = v15;
      [v4 frame];
      [v3 convertRect:v4 fromView:?];
      v8 = v16 > v17;
      goto LABEL_7;
    }
  }

  v8 = -1;
LABEL_7:

  return v8;
}

void sub_18B04DDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B04E704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC900;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_18B0517D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DC918;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_18B053BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNPSDomainAccessorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSDomainAccessorClass_softClass;
  v7 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNPSDomainAccessorClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getNPSDomainAccessorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B053CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
    NanoPreferencesSyncLibrary();
  }
}

void NanoPreferencesSyncLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71DC9E0;
    v3 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getNPSManagerClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSManagerClass_block_invoke_cold_1();
    return OUTLINED_FUNCTION_0_2();
  }

  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_18B057FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_18B05B1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_18B05B81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PSStorageLocStr(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];

  return v3;
}

void sub_18B0633D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPXTCCPhotoGridViewClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary_0();
  result = objc_getClass("PXTCCPhotoGridView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPXTCCPhotoGridViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPXTCCPhotoGridViewClass_block_invoke_cold_1();
    return PhotosUICoreLibrary_0();
  }

  return result;
}

uint64_t PhotosUICoreLibrary_0()
{
  v0 = PhotosUICoreLibraryCore_0();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t PhotosUICoreLibraryCore_0()
{
  if (!PhotosUICoreLibraryCore_frameworkLibrary_0)
  {
    PhotosUICoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return PhotosUICoreLibraryCore_frameworkLibrary_0;
}

uint64_t __PhotosUICoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PhotosUICoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t getPXTCCSettingsGridTitleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPXTCCSettingsGridTitleSymbolLoc_ptr;
  v6 = getPXTCCSettingsGridTitleSymbolLoc_ptr;
  if (!getPXTCCSettingsGridTitleSymbolLoc_ptr)
  {
    v1 = PhotosUICoreLibrary_0();
    v4[3] = dlsym(v1, "PXTCCSettingsGridTitle");
    getPXTCCSettingsGridTitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18B0636BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPXTCCSettingsGridTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosUICoreLibrary_0();
  result = dlsym(v2, "PXTCCSettingsGridTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPXTCCSettingsGridTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPXTCCSettingsGridSubtitleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPXTCCSettingsGridSubtitleSymbolLoc_ptr;
  v6 = getPXTCCSettingsGridSubtitleSymbolLoc_ptr;
  if (!getPXTCCSettingsGridSubtitleSymbolLoc_ptr)
  {
    v1 = PhotosUICoreLibrary_0();
    v4[3] = dlsym(v1, "PXTCCSettingsGridSubtitle");
    getPXTCCSettingsGridSubtitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18B0637F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPXTCCSettingsGridSubtitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosUICoreLibrary_0();
  result = dlsym(v2, "PXTCCSettingsGridSubtitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPXTCCSettingsGridSubtitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18B066E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B069C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CreateRangeTitleLabel()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v1 = [MEMORY[0x1E69DC888] clearColor];
  [v0 setBackgroundColor:v1];

  v2 = +[PSListController appearance];
  v3 = [v2 textColor];
  [v0 setTextColor:v3];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];

  return v0;
}

id CreateRangeTimeLabel()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v1 = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
  [v0 setTextColor:v1];

  v2 = [MEMORY[0x1E69DC888] clearColor];
  [v0 setBackgroundColor:v2];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];

  return v0;
}

void sub_18B06CB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B06CD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t PSPNCreateFormattedStringWithCountry(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getPNCreateFormattedStringWithCountrySymbolLoc_ptr;
  v11 = getPNCreateFormattedStringWithCountrySymbolLoc_ptr;
  if (!getPNCreateFormattedStringWithCountrySymbolLoc_ptr)
  {
    v5 = PhoneNumbersLibrary();
    v9[3] = dlsym(v5, "PNCreateFormattedStringWithCountry");
    getPNCreateFormattedStringWithCountrySymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v7 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2, 2, 0);
}

id getkSecureBackupCountryCodeKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupCountryCodeKeySymbolLoc_ptr;
  v8 = getkSecureBackupCountryCodeKeySymbolLoc_ptr;
  if (!getkSecureBackupCountryCodeKeySymbolLoc_ptr)
  {
    v1 = CloudServicesLibrary();
    v6[3] = dlsym(v1, "kSecureBackupCountryCodeKey");
    getkSecureBackupCountryCodeKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getPNCreateFormattedStringWithCountrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhoneNumbersLibrary();
  result = dlsym(v2, "PNCreateFormattedStringWithCountry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPNCreateFormattedStringWithCountrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhoneNumbersLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhoneNumbersLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhoneNumbersLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DCE60;
    v5 = 0;
    PhoneNumbersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhoneNumbersLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PhoneNumbersLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhoneNumbersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhoneNumbersLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSecureBackupSMSTargetInfoKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary();
  result = dlsym(v2, "kSecureBackupSMSTargetInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CloudServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CloudServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CloudServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DCE78;
    v5 = 0;
    CloudServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CloudServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary();
  result = dlsym(v2, "kSecureBackupSMSTargetPhoneNumberKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupCountryDialCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary();
  result = dlsym(v2, "kSecureBackupCountryDialCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupCountryDialCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupCountryCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary();
  result = dlsym(v2, "kSecureBackupCountryCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupCountryCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupMetadataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary();
  result = dlsym(v2, "kSecureBackupMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupMetadataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkSecureBackupMetadataKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupMetadataKeySymbolLoc_ptr_0;
  v8 = getkSecureBackupMetadataKeySymbolLoc_ptr_0;
  if (!getkSecureBackupMetadataKeySymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_0();
    v6[3] = dlsym(v1, "kSecureBackupMetadataKey");
    getkSecureBackupMetadataKeySymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getSecureBackupClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSecureBackupClass_softClass;
  v7 = getSecureBackupClass_softClass;
  if (!getSecureBackupClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSecureBackupClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getSecureBackupClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0740E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B07543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSecureBackupRecordStatusKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupRecordStatusKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupRecordStatusKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CloudServicesLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CloudServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CloudServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DCF30;
    v5 = 0;
    CloudServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CloudServicesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!CloudServicesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CloudServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkSecureBackupRecordStatusInvalidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupRecordStatusInvalid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupRecordStatusInvalidSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupEscrowTrustStatusKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupEscrowTrustStatusKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupEscrowTrustStatusKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupIsEnabledKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupIsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupIsEnabledKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUsesRandomPassphraseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupUsesRandomPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupMetadataKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupMetadataKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUsesComplexPassphraseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupUsesComplexPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUsesNumericPassphraseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupUsesNumericPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSecureBackupClass_block_invoke(uint64_t a1)
{
  CloudServicesLibrary_0();
  result = objc_getClass("SecureBackup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSecureBackupClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSecureBackupClass_block_invoke_cold_1();
    return __getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupSMSTargetPhoneNumberKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupCountryDialCodeKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupCountryDialCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupCountryCodeKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupCountryCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupCountryCodeKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupAuthenticationAppleIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupAuthenticationAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupAuthenticationPasswordSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupAuthenticationPassword");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupAuthenticationPasswordSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_0();
  result = dlsym(v2, "kSecureBackupErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PSKeychainSyncIsUsingICDP()
{
  CDPAccountClass = getCDPAccountClass();
  v1 = [getCDPAccountClass() sharedInstance];
  v2 = [v1 primaryAccountDSID];
  v3 = [CDPAccountClass isICDPEnabledForDSID:v2];

  return v3;
}

id getCDPAccountClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPAccountClass_softClass;
  v7 = getCDPAccountClass_softClass;
  if (!getCDPAccountClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPAccountClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCDPAccountClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B076008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSKeychainSyncGetStatus(void *a1)
{
  if (!PSKeychainSyncIsUsingICDP())
  {
    v5 = [MEMORY[0x1E6959A48] defaultStore];
    v6 = [v5 aa_primaryAppleAccount];
    if (v6)
    {
      v7 = SOSCCThisDeviceIsInCircle();
      if (v7 <= 3)
      {
        v4 = dword_18B103D20[v7];
        goto LABEL_13;
      }
    }

    else if (a1)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Preferences.KeychainSync" code:3 userInfo:0];
      *a1 = v4 = 0;
LABEL_13:

      return v4;
    }

    v4 = 0;
    goto LABEL_13;
  }

  v2 = [getCDPKeychainSyncClass() isUserVisibleKeychainSyncEnabled];
  v3 = @"DISABLED";
  if (v2)
  {
    v3 = @"ENABLED";
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  NSLog(&cfstr_IcdpUserVisibl.isa, v3);
  return v4;
}

id getCDPKeychainSyncClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPKeychainSyncClass_softClass;
  v7 = getCDPKeychainSyncClass_softClass;
  if (!getCDPKeychainSyncClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPKeychainSyncClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCDPKeychainSyncClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0761FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSKeychainSyncGetCircleMembershipStatus(_BYTE *a1, _BYTE *a2)
{
  v4 = SOSCCThisDeviceIsInCircle();
  if (v4 >= 4)
  {
    NSLog(&cfstr_UnexpectedCirc.isa, v4);
    return 0;
  }

  else
  {
    if (a1)
    {
      *a1 = (7u >> (v4 & 0xF)) & 1;
    }

    if (a2)
    {
      *a2 = 1u >> (v4 & 0xF);
    }

    return 1;
  }
}

uint64_t PSIsUsingPasscode(BOOL *a1)
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = v2;
  if (a1)
  {
    *a1 = [v2 unlockScreenType] == 0;
  }

  v4 = [v3 isPasscodeSet];

  return v4;
}

id PSSecureBackupAccountInfo(void *a1, char a2)
{
  v4 = PSSecureBackupAccountInfo__infoQueue;
  if (!PSSecureBackupAccountInfo__infoQueue)
  {
    v5 = dispatch_queue_create("preferences-securebackup-info", 0);
    v6 = PSSecureBackupAccountInfo__infoQueue;
    PSSecureBackupAccountInfo__infoQueue = v5;

    v4 = PSSecureBackupAccountInfo__infoQueue;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PSSecureBackupAccountInfo_block_invoke;
  block[3] = &unk_1E71DCF60;
  v11 = a2;
  block[4] = &v12;
  block[5] = &v18;
  dispatch_sync(v4, block);
  if (a1)
  {
    v7 = v13[5];
    if (v7)
    {
      *a1 = v7;
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PSSecureBackupAccountInfo_block_invoke(uint64_t a1)
{
  if (!PSSecureBackupAccountInfo__secureBackup)
  {
    v2 = objc_alloc_init(getSecureBackupClass_0());
    v3 = PSSecureBackupAccountInfo__secureBackup;
    PSSecureBackupAccountInfo__secureBackup = v2;
  }

  v4 = PSSecureBackupAccountInfo__accountInfoDict;
  if (!PSSecureBackupAccountInfo__accountInfoDict || *(a1 + 48) == 1)
  {
    PSSecureBackupAccountInfo__accountInfoDict = 0;

    v13 = 0;
    v5 = [PSSecureBackupAccountInfo__secureBackup getAccountInfoWithInfo:0 results:&v13];
    v6 = v13;
    v7 = v13;
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v5;

    objc_storeStrong(&PSSecureBackupAccountInfo__accountInfoDict, v6);
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      NSLog(&cfstr_ErrorLoadingAc.isa, *(*(*(a1 + 32) + 8) + 40));
    }

    v4 = PSSecureBackupAccountInfo__accountInfoDict;
  }

  v10 = [v4 copy];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

id getSecureBackupClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSecureBackupClass_softClass_0;
  v7 = getSecureBackupClass_softClass_0;
  if (!getSecureBackupClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSecureBackupClass_block_invoke_0;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getSecureBackupClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0766B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSIsKeychainSecureBackupEnabled(void *a1)
{
  v1 = PSSecureBackupAccountInfo(a1, 1);
  v2 = getkSecureBackupIsEnabledKey();
  v3 = [v1 objectForKey:v2];
  v4 = [v3 BOOLValue];

  return v4;
}

id getkSecureBackupIsEnabledKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupIsEnabledKeySymbolLoc_ptr_0;
  v8 = getkSecureBackupIsEnabledKeySymbolLoc_ptr_0;
  if (!getkSecureBackupIsEnabledKeySymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupIsEnabledKey");
    getkSecureBackupIsEnabledKeySymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void PSShowEnableKeychainSync(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (PSKeychainSyncIsUsingICDP())
  {
    CDPKeychainSyncClass = getCDPKeychainSyncClass();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __PSShowEnableKeychainSync_block_invoke;
    v10[3] = &unk_1E71DCFB0;
    v13 = v7;
    v11 = v6;
    v12 = v5;
    [CDPKeychainSyncClass setUserVisibleKeychainSyncEnabled:1 withCompletion:v10];
  }

  else
  {
    v9 = +[PSKeychainSyncManager sharedManager];
    [v9 showEnableSyncFlowWithSpecifier:v5 overController:v6 completion:v7];
  }
}

void __PSShowEnableKeychainSync_block_invoke(id *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1[6] + 2);
LABEL_9:
    v7();
    goto LABEL_10;
  }

  v8 = [v5 domain];
  v9 = getCDPStateErrorDomain();
  if ([v8 isEqualToString:v9])
  {
    v10 = [v6 code];

    if (v10 == -5700)
    {
      v11 = objc_opt_new();
      v12 = [v11 aa_primaryAppleAccount];
      v13 = objc_alloc_init(getCDPContextClass());
      v14 = [v12 aa_appleId];
      [v13 setAppleID:v14];

      v15 = MEMORY[0x1E696AD98];
      v16 = [v12 aa_personID];
      v17 = [v15 numberWithInteger:{objc_msgSend(v16, "integerValue")}];
      [v13 setDsid:v17];

      v18 = [objc_alloc(getCDPStateControllerClass()) initWithContext:v13];
      v19 = [objc_alloc(getCDPUIControllerClass()) initWithPresentingViewController:a1[4]];
      [v18 setUiProvider:v19];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __PSShowEnableKeychainSync_block_invoke_2;
      v21[3] = &unk_1E71DCF88;
      v22 = a1[5];
      v23 = a1[4];
      v24 = a1[6];
      [v18 repairCloudDataProtectionStateWithCompletion:v21];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v20 = a1[6];
  if (v20)
  {
    v7 = *(v20 + 2);
    goto LABEL_9;
  }

LABEL_10:
}

id getCDPStateErrorDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCDPStateErrorDomainSymbolLoc_ptr;
  v8 = getCDPStateErrorDomainSymbolLoc_ptr;
  if (!getCDPStateErrorDomainSymbolLoc_ptr)
  {
    v1 = CoreCDPLibrary();
    v6[3] = dlsym(v1, "CDPStateErrorDomain");
    getCDPStateErrorDomainSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getCDPContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPContextClass_softClass;
  v7 = getCDPContextClass_softClass;
  if (!getCDPContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPContextClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCDPContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B076D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCDPStateControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPStateControllerClass_softClass;
  v7 = getCDPStateControllerClass_softClass;
  if (!getCDPStateControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPStateControllerClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCDPStateControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B076E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCDPUIControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPUIControllerClass_softClass;
  v7 = getCDPUIControllerClass_softClass;
  if (!getCDPUIControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCDPUIControllerClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCDPUIControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B076F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PSShowEnableKeychainSync_block_invoke_2(void *a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    PSShowEnableKeychainSync(a1[4], a1[5], a1[6]);
  }

  else
  {
    v5 = a1[6];
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

void PSShowKeychainSyncRecovery(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = +[PSKeychainSyncManager sharedManager];
  [v8 showRecoveryFlowWithSpecifier:v7 overController:v6 completion:v5];
}

uint64_t PSKeychainSyncCircleExists()
{
  v0 = SOSCCThisDeviceIsInCircle();
  if ((v0 + 1) >= 5)
  {
    NSLog(&cfstr_UnexpectedCirc.isa, v0);
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0xEu >> (v0 + 1);
  }

  return v1 & 1;
}

id getkSecureBackupMetadataKey_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupMetadataKeySymbolLoc_ptr_1;
  v8 = getkSecureBackupMetadataKeySymbolLoc_ptr_1;
  if (!getkSecureBackupMetadataKeySymbolLoc_ptr_1)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupMetadataKey");
    getkSecureBackupMetadataKeySymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupUsesComplexPassphraseKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr_0;
  v8 = getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr_0;
  if (!getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupUsesComplexPassphraseKey");
    getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupUsesRandomPassphraseKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr_0;
  v8 = getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr_0;
  if (!getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupUsesRandomPassphraseKey");
    getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupUsesNumericPassphraseKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr_0;
  v8 = getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr_0;
  if (!getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupUsesNumericPassphraseKey");
    getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupNumericPassphraseLengthKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupNumericPassphraseLengthKeySymbolLoc_ptr;
  v8 = getkSecureBackupNumericPassphraseLengthKeySymbolLoc_ptr;
  if (!getkSecureBackupNumericPassphraseLengthKeySymbolLoc_ptr)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupNumericPassphraseLengthKey");
    getkSecureBackupNumericPassphraseLengthKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAKAppleIDAuthenticationInAppContextClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationInAppContextClass_softClass_0;
  v7 = getAKAppleIDAuthenticationInAppContextClass_softClass_0;
  if (!getAKAppleIDAuthenticationInAppContextClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAKAppleIDAuthenticationInAppContextClass_block_invoke_0;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B079AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAppleIDAuthenticationControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationControllerClass_softClass_0;
  v7 = getAKAppleIDAuthenticationControllerClass_softClass_0;
  if (!getAKAppleIDAuthenticationControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAKAppleIDAuthenticationControllerClass_block_invoke_0;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getAKAppleIDAuthenticationControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B079BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr;
  v7 = getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr;
  if (!getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr)
  {
    v1 = HSAAuthenticationLibrary();
    v5[3] = dlsym(v1, "HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier");
    getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0(@"KeychainSyncSMSValidation");
}

id getkSecureBackupSMSTargetInfoKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr_0;
  v8 = getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr_0;
  if (!getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupSMSTargetInfoKey");
    getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupSMSTargetPhoneNumberKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_1;
  v8 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_1;
  if (!getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_1)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupSMSTargetPhoneNumberKey");
    getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupCountryDialCodeKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_1;
  v8 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_1;
  if (!getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_1)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupCountryDialCodeKey");
    getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupCountryCodeKey_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupCountryCodeKeySymbolLoc_ptr_1;
  v8 = getkSecureBackupCountryCodeKeySymbolLoc_ptr_1;
  if (!getkSecureBackupCountryCodeKeySymbolLoc_ptr_1)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupCountryCodeKey");
    getkSecureBackupCountryCodeKeySymbolLoc_ptr_1 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupPassphraseKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupPassphraseKeySymbolLoc_ptr;
  v8 = getkSecureBackupPassphraseKeySymbolLoc_ptr;
  if (!getkSecureBackupPassphraseKeySymbolLoc_ptr)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupPassphraseKey");
    getkSecureBackupPassphraseKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupAuthenticationAppleID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr_0;
  v8 = getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr_0;
  if (!getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupAuthenticationAppleID");
    getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupAuthenticationPassword()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupAuthenticationPasswordSymbolLoc_ptr_0;
  v8 = getkSecureBackupAuthenticationPasswordSymbolLoc_ptr_0;
  if (!getkSecureBackupAuthenticationPasswordSymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupAuthenticationPassword");
    getkSecureBackupAuthenticationPasswordSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkSecureBackupErrorDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSecureBackupErrorDomainSymbolLoc_ptr_0;
  v8 = getkSecureBackupErrorDomainSymbolLoc_ptr_0;
  if (!getkSecureBackupErrorDomainSymbolLoc_ptr_0)
  {
    v1 = CloudServicesLibrary_1();
    v6[3] = dlsym(v1, "kSecureBackupErrorDomain");
    getkSecureBackupErrorDomainSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getFTDeviceSupportClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFTDeviceSupportClass_softClass;
  v7 = getFTDeviceSupportClass_softClass;
  if (!getFTDeviceSupportClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFTDeviceSupportClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getFTDeviceSupportClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B081528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PSHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr;
  v8 = getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr;
  if (!getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr)
  {
    v3 = HSAAuthenticationLibrary();
    v6[3] = dlsym(v3, "HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier");
    getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2(v1, @"KeychainSyncSMSValidation");
}

Class __getCDPAccountClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCDPAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCDPAccountClass_block_invoke_cold_1();
    return CoreCDPLibrary();
  }

  return result;
}

uint64_t CoreCDPLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreCDPLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DD638;
    v5 = 0;
    CoreCDPLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreCDPLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreCDPLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreCDPLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCDPKeychainSyncClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPKeychainSync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCDPKeychainSyncClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCDPKeychainSyncClass_block_invoke_cold_1();
    return __getSecureBackupClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSecureBackupClass_block_invoke_0(uint64_t a1)
{
  CloudServicesLibrary_1();
  result = objc_getClass("SecureBackup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSecureBackupClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSecureBackupClass_block_invoke_cold_1();
    return CloudServicesLibrary_1();
  }

  return result;
}

uint64_t CloudServicesLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CloudServicesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CloudServicesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DD650;
    v5 = 0;
    CloudServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = CloudServicesLibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!CloudServicesLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  CloudServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getkSecureBackupIsEnabledKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupIsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupIsEnabledKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCDPStateErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreCDPLibrary();
  result = dlsym(v2, "CDPStateErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCDPStateErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCDPContextClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCDPContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCDPContextClass_block_invoke_cold_1();
    return __getCDPStateControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getCDPStateControllerClass_block_invoke(uint64_t a1)
{
  CoreCDPLibrary();
  result = objc_getClass("CDPStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCDPStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCDPStateControllerClass_block_invoke_cold_1();
    return __getCDPUIControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getCDPUIControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreCDPUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreCDPUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DD668;
    v6 = 0;
    CoreCDPUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreCDPUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CDPUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPUIControllerClass_block_invoke_cold_1();
  }

  getCDPUIControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreCDPUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSecureBackupMetadataKeySymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupMetadataKeySymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUsesComplexPassphraseKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupUsesComplexPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUsesRandomPassphraseKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupUsesRandomPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUsesNumericPassphraseKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupUsesNumericPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupNumericPassphraseLengthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupNumericPassphraseLengthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupNumericPassphraseLengthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAKAppleIDAuthenticationInAppContextClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AuthKitUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AuthKitUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DD680;
    v6 = 0;
    AuthKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (AuthKitUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1_0();
  }

  getAKAppleIDAuthenticationInAppContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AuthKitUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke_0(uint64_t a1)
{
  AuthKitLibrary_0();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAppleIDAuthenticationControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1_0();
    return AuthKitLibrary_0();
  }

  return result;
}

uint64_t AuthKitLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AuthKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DD698;
    v5 = 0;
    AuthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AuthKitLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AuthKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getAKAuthenticationUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationRawPasswordKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationRawPasswordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationRawPasswordKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationDSIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationDSIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationDSIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HSAAuthenticationLibrary();
  result = dlsym(v2, "HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HSAAuthenticationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HSAAuthenticationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __HSAAuthenticationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DD6B0;
    v5 = 0;
    HSAAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HSAAuthenticationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!HSAAuthenticationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HSAAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HSAAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAKAuthenticationPasswordKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationPasswordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationPasswordKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupSMSTargetInfoKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupSMSTargetInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupSMSTargetPhoneNumberKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupCountryDialCodeKeySymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupCountryDialCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupCountryCodeKeySymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupCountryCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupCountryCodeKeySymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupPassphraseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupPassphraseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupAuthenticationAppleIDSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupAuthenticationAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupAuthenticationPasswordSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupAuthenticationPassword");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupAuthenticationPasswordSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupErrorDomainSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupErrorDomainSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupVerificationTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupVerificationTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupVerificationTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupAccountIsHighSecurityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupAccountIsHighSecurityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupAccountIsHighSecurityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupRecoveryRequiresVerificationTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupRecoveryRequiresVerificationTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFTDeviceSupportClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FTServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FTServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DD6C8;
    v6 = 0;
    FTServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FTServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FTDeviceSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFTDeviceSupportClass_block_invoke_cold_1();
  }

  getFTDeviceSupportClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FTServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FTServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HSAAuthenticationLibrary();
  result = dlsym(v2, "HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupRecoveryVerificationTokenLengthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupRecoveryVerificationTokenLengthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupUseCachedPassphraseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudServicesLibrary_1();
  result = dlsym(v2, "kSecureBackupUseCachedPassphraseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupUseCachedPassphraseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCFPhoneNumberCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhoneNumbersLibrary_0();
  result = dlsym(v2, "CFPhoneNumberCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCFPhoneNumberCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhoneNumbersLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhoneNumbersLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhoneNumbersLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DD708;
    v5 = 0;
    PhoneNumbersLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = PhoneNumbersLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!PhoneNumbersLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhoneNumbersLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PhoneNumbersLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getCFPhoneNumberCreateStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhoneNumbersLibrary_0();
  result = dlsym(v2, "CFPhoneNumberCreateString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCFPhoneNumberCreateStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecureBackupIsEnabledKeySymbolLoc_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CloudServicesLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CloudServicesLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71DD7A0;
    v7 = 0;
    CloudServicesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v3 = v5[0];
    v2 = CloudServicesLibraryCore_frameworkLibrary_2;
    if (CloudServicesLibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CloudServicesLibraryCore_frameworkLibrary_2;
LABEL_5:
  result = dlsym(v2, "kSecureBackupIsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecureBackupIsEnabledKeySymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudServicesLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  CloudServicesLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71DD7B8;
    v7 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SetupAssistantLibraryCore_frameworkLibrary;
    if (SetupAssistantLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}