@interface SBApplicationLaunchImageParameters
+ (id)_sanitizedImageNameFromName:(void *)a3 withExtension:(void *)a4 actualExtension:;
+ (id)launchImageParametersFromLaunchImagesInfo:(id)a3 withBundleIdentifier:(id)a4 isMonarchLinked:(BOOL)a5;
+ (id)validInfoPlistOrientationKeys;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)_initWithDefaultPNGName:(void *)a3 extension:(void *)a4 minOSVersionString:(uint64_t)a5 size:(double)a6 interfaceOrientation:(double)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBApplicationLaunchImageParameters

+ (id)launchImageParametersFromLaunchImagesInfo:(id)a3 withBundleIdentifier:(id)a4 isMonarchLinked:(BOOL)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v44 = a4;
  if (!v44)
  {
    [SBApplicationLaunchImageParameters launchImageParametersFromLaunchImagesInfo:a2 withBundleIdentifier:a1 isMonarchLinked:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v10)
    {
      v12 = v10;
      v40 = v8;
      v42 = 0;
      v13 = *v48;
      v14 = *MEMORY[0x277CBF3A8];
      v15 = *(MEMORY[0x277CBF3A8] + 8);
      *&v11 = 138544642;
      v38 = v11;
      v45 = v9;
      while (1)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_autoreleasePoolPush();
            v19 = v17;
            v20 = [(__CFString *)v19 objectForKey:@"UILaunchImageSize"];
            if (!v20)
            {
              v65.width = 320.0;
              v65.height = 480.0;
              v20 = NSStringFromSize(v65);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [(__CFString *)v19 objectForKey:@"UILaunchImageOrientation"];
              if (v21)
              {
                v22 = v21;
              }

              else
              {
                v22 = @"Portrait";
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (+[SBApplicationLaunchImageParameters validInfoPlistOrientationKeys](SBApplicationLaunchImageParameters, "validInfoPlistOrientationKeys"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 containsObject:v22], v23, (v24 & 1) == 0))
              {
                v25 = XBLogCapture();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138544130;
                  *&buf[4] = v44;
                  v52 = 2114;
                  v53 = @"UILaunchImageOrientation";
                  v54 = 2114;
                  v55 = v22;
                  v56 = 2114;
                  v57 = v19;
                  _os_log_debug_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] Incorrect %{public}@ type (requires NSString) or invalid value ('%{public}@'), skipping...\n%{public}@", buf, 0x2Au);
                }

                v9 = v45;
                goto LABEL_49;
              }

              v25 = [(__CFString *)v19 objectForKey:@"UILaunchImageMinimumOSVersion"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v26 = XBLogCapture();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138544130;
                  *&buf[4] = v44;
                  v52 = 2114;
                  v53 = @"UILaunchImageMinimumOSVersion";
                  v54 = 2114;
                  v55 = v25;
                  v56 = 2114;
                  v57 = v19;
                  _os_log_debug_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] Incorrect %{public}@ type (requires NSString) in ('%{public}@'), skipping...\n%{public}@", buf, 0x2Au);
                }

                goto LABEL_48;
              }

              v26 = [(__CFString *)v19 objectForKey:@"UILaunchImageName"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = CGSizeFromString(v20);
                if (v27.width == v14 && v27.height == v15)
                {
                  v28 = XBLogCapture();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543874;
                    *&buf[4] = v44;
                    v52 = 2114;
                    v53 = v20;
                    v54 = 2114;
                    v55 = v19;
                    v29 = v28;
                    v30 = "[.plist ingest] [%{public}@] Invalid size string: %{public}@, skipping...\n%{public}@";
                    v31 = 32;
                    goto LABEL_41;
                  }

LABEL_47:

LABEL_48:
                  v9 = v45;

LABEL_49:
LABEL_50:

                  objc_autoreleasePoolPop(v18);
                  continue;
                }

                v33 = XBInterfaceOrientationForString();
                if ((v33 - 5) < 0xFFFFFFFFFFFFFFFELL || a5 || !BSFloatLessThanFloat())
                {
                  v46 = 0;
                  v41 = [SBApplicationLaunchImageParameters _sanitizedImageNameFromName:v26 withExtension:@"png" actualExtension:&v46];
                  v39 = v33;
                  v28 = v46;
                  v34 = [[SBApplicationLaunchImageParameters alloc] _initWithDefaultPNGName:v41 extension:v28 minOSVersionString:v25 size:v39 interfaceOrientation:v27.width, v27.height];
                  *buf = v34;
                  if (v34)
                  {
                    if (v42)
                    {
                      [v42 addObject:v34];
                    }

                    else
                    {
                      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:buf count:1];
                    }
                  }

                  goto LABEL_47;
                }

                v28 = XBLogCapture();
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_47;
                }

                *buf = v38;
                *&buf[4] = v44;
                v52 = 2114;
                v53 = @"UILaunchImageOrientation";
                v54 = 2114;
                v55 = @"UILaunchImageSize";
                v56 = 2114;
                v57 = v22;
                v58 = 2114;
                v59 = v20;
                v60 = 2114;
                v61 = v19;
                v29 = v28;
                v30 = "[.plist ingest] [%{public}@] Incorrect combination of %{public}@ and %{public}@ ('%{public}@' and '%{public}@'), skipping...\n%{public}@";
                v31 = 62;
              }

              else
              {
                v28 = XBLogCapture();
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_47;
                }

                *buf = 138544130;
                *&buf[4] = v44;
                v52 = 2114;
                v53 = @"UILaunchImageName";
                v54 = 2114;
                v55 = v20;
                v56 = 2114;
                v57 = v19;
                v29 = v28;
                v30 = "[.plist ingest] [%{public}@] Incorrect %{public}@ type (requires NSString) in ('%{public}@'), skipping...\n%{public}@";
                v31 = 42;
              }

LABEL_41:
              _os_log_debug_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEBUG, v30, buf, v31);
              goto LABEL_47;
            }

            v22 = XBLogCapture();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138544130;
              *&buf[4] = v44;
              v52 = 2114;
              v53 = @"UILaunchImageSize";
              v54 = 2114;
              v55 = v20;
              v56 = 2114;
              v57 = v19;
              _os_log_debug_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] Incorrect %{public}@ type (requires NSString) in ('%{public}@'), skipping...\n%{public}@", buf, 0x2Au);
            }

            goto LABEL_50;
          }

          v32 = XBLogCapture();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            *&buf[4] = v44;
            v52 = 2114;
            v53 = v17;
            _os_log_debug_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] Incorrect launchImageInfo format (requires NSDictionary) in ('%{public}@'), skipping...", buf, 0x16u);
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (!v12)
        {
          v8 = v40;
          v35 = v42;
          goto LABEL_58;
        }
      }
    }
  }

  else
  {
    if (!v8)
    {
      v35 = 0;
      goto LABEL_59;
    }

    v9 = XBLogCapture();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBApplicationLaunchImageParameters launchImageParametersFromLaunchImagesInfo:v44 withBundleIdentifier:v8 isMonarchLinked:v9];
    }
  }

  v35 = 0;
LABEL_58:

LABEL_59:
  v36 = [v35 copy];

  return v36;
}

+ (id)_sanitizedImageNameFromName:(void *)a3 withExtension:(void *)a4 actualExtension:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [v6 pathExtension];
  v9 = v8;
  if (v8 && [v8 length])
  {
    v10 = v9;

    v11 = [v6 substringToIndex:{objc_msgSend(v6, "length") + ~objc_msgSend(v10, "length")}];

    v7 = v10;
    v6 = v11;
  }

  if (a4)
  {
    v12 = v7;
    *a4 = v7;
  }

  return v6;
}

+ (id)validInfoPlistOrientationKeys
{
  v6[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D65700];
  v6[0] = *MEMORY[0x277D656F8];
  v6[1] = v2;
  v3 = *MEMORY[0x277D656E8];
  v6[2] = *MEMORY[0x277D656E0];
  v6[3] = v3;
  v6[4] = *MEMORY[0x277D656F0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_defaultPNGName];
  v5 = [v3 appendObject:self->_extension];
  v6 = [v3 appendObject:self->_minOSVersionString];
  v7 = [v3 appendCGSize:{self->_size.width, self->_size.height}];
  v8 = [v3 appendInteger:self->_interfaceOrientation];
  v9 = [v3 hash];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  defaultPNGName = self->_defaultPNGName;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__SBApplicationLaunchImageParameters_isEqual___block_invoke;
  v29[3] = &unk_2783B1D60;
  v7 = v4;
  v30 = v7;
  v8 = [v5 appendString:defaultPNGName counterpart:v29];
  extension = self->_extension;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__SBApplicationLaunchImageParameters_isEqual___block_invoke_2;
  v27[3] = &unk_2783B1D60;
  v10 = v7;
  v28 = v10;
  v11 = [v5 appendString:extension counterpart:v27];
  minOSVersionString = self->_minOSVersionString;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __46__SBApplicationLaunchImageParameters_isEqual___block_invoke_3;
  v25[3] = &unk_2783B1D60;
  v13 = v10;
  v26 = v13;
  v14 = [v5 appendString:minOSVersionString counterpart:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__SBApplicationLaunchImageParameters_isEqual___block_invoke_4;
  v23[3] = &unk_2783BA168;
  v15 = v13;
  v24 = v15;
  v16 = [v5 appendCGSize:v23 counterpart:{self->_size.width, self->_size.height}];
  interfaceOrientation = self->_interfaceOrientation;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__SBApplicationLaunchImageParameters_isEqual___block_invoke_5;
  v21[3] = &unk_2783ACDE0;
  v22 = v15;
  v18 = v15;
  v19 = [v5 appendInteger:interfaceOrientation counterpart:v21];
  LOBYTE(interfaceOrientation) = [v5 isEqual];

  return interfaceOrientation;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__SBApplicationLaunchImageParameters_description__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v4 = v3;
  v5 = [v4 modifyProem:&v8];
  v6 = [v4 build];

  return v6;
}

void __49__SBApplicationLaunchImageParameters_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"name" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"ext" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"minOS" skipIfNil:1];
  v5 = [*(a1 + 32) appendSize:@"size" withName:{*(*(a1 + 40) + 32), *(*(a1 + 40) + 40)}];
  v6 = *(a1 + 32);
  v8 = XBStringForInterfaceOrientation();
  v7 = [v6 appendObject:v8 withName:0];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_initWithDefaultPNGName:(void *)a3 extension:(void *)a4 minOSVersionString:(uint64_t)a5 size:(double)a6 interfaceOrientation:(double)a7
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  if (a1)
  {
    if ((a5 - 1) >= 4)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:sel__initWithDefaultPNGName_extension_minOSVersionString_size_interfaceOrientation_ object:a1 file:@"SBApplicationLaunchImageParameters.m" lineNumber:53 description:{@"orientation=%li is not a valid interfaceOrientation", a5}];
    }

    v24.receiver = a1;
    v24.super_class = SBApplicationLaunchImageParameters;
    a1 = objc_msgSendSuper2(&v24, sel_init);
    if (a1)
    {
      v17 = [v13 copy];
      v18 = *(a1 + 1);
      *(a1 + 1) = v17;

      v19 = [v14 copy];
      v20 = *(a1 + 2);
      *(a1 + 2) = v19;

      v21 = [v15 copy];
      v22 = *(a1 + 3);
      *(a1 + 3) = v21;

      *(a1 + 4) = a6;
      *(a1 + 5) = a7;
      *(a1 + 6) = a5;
    }
  }

  return a1;
}

+ (void)launchImageParametersFromLaunchImagesInfo:(uint64_t)a1 withBundleIdentifier:(uint64_t)a2 isMonarchLinked:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationLaunchImageParameters.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

+ (void)launchImageParametersFromLaunchImagesInfo:(uint64_t)a1 withBundleIdentifier:(uint64_t)a2 isMonarchLinked:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "[.plist ingest] [%{public}@] Incorrect launchImagesInfo format (requires NSArray) in ('%{public}@'), skipping...", &v3, 0x16u);
}

@end