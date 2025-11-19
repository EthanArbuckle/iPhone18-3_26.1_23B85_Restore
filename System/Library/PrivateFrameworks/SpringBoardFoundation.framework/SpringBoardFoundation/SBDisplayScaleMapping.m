@interface SBDisplayScaleMapping
+ (id)withDisplay:(id)a3;
- (CGSize)referenceSize;
- (SBDisplayScaleMapping)initWithDisplayHardwareIdentifier:(id)a3 nativePPI:(double)a4 referenceSize:(CGSize)a5 scaleMethod:(unint64_t)a6 supportedScales:(unint64_t)a7 displayScaleToLogicalScale:(id)a8;
- (double)logicalScaleForDisplayScale:(unint64_t)a3;
- (double)ppiForDisplayScale:(unint64_t)a3;
- (id)createDefaultSettings;
- (id)description;
- (unint64_t)_defaultScale;
- (void)_defaultScale;
@end

@implementation SBDisplayScaleMapping

- (SBDisplayScaleMapping)initWithDisplayHardwareIdentifier:(id)a3 nativePPI:(double)a4 referenceSize:(CGSize)a5 scaleMethod:(unint64_t)a6 supportedScales:(unint64_t)a7 displayScaleToLogicalScale:(id)a8
{
  height = a5.height;
  width = a5.width;
  v15 = a3;
  v16 = a8;
  v21.receiver = self;
  v21.super_class = SBDisplayScaleMapping;
  v17 = [(SBDisplayScaleMapping *)&v21 init];
  if (v17)
  {
    v18 = [v15 copy];
    displayHardwareIdentifier = v17->_displayHardwareIdentifier;
    v17->_displayHardwareIdentifier = v18;

    v17->_nativePPI = a4;
    v17->_referenceSize.width = width;
    v17->_referenceSize.height = height;
    v17->_scaleMethod = a6;
    v17->_supportedScales = a7;
    objc_storeStrong(&v17->_displayScaleToLogicalScale, a8);
  }

  return v17;
}

+ (id)withDisplay:(id)a3
{
  v130[1] = *MEMORY[0x1E69E9840];
  v101 = a3;
  v3 = [v101 CADisplay];
  v102 = [v3 immutableCopy];

  v103 = [v101 hardwareIdentifier];
  v4 = [SBDisplayScaleMapping alloc];
  v99 = [(SBDisplayScaleMapping *)v4 initWithDisplayHardwareIdentifier:v103 nativePPI:0 referenceSize:0 scaleMethod:0 supportedScales:0.0 displayScaleToLogicalScale:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v5 = +[_SBDisplayScaleMappingCache sharedInstance];
  v100 = [v5 mappingForDisplayIdentifier:v103];

  if (v100)
  {
    v6 = v100;
  }

  else
  {
    if (v103)
    {
      if ([v102 displayType] == 2)
      {
        v7 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v102;
          _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_DEFAULT, "YOU CAN'T JUST ENABLE AIRPLAY DISPLAYS. YOU WILL REGRET THIS! %{public}@", buf, 0xCu);
        }

        v129 = &unk_1F3D3EBB0;
        v130[0] = &unk_1F3D3F3B8;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:&v129 count:1];
        v9 = objc_alloc_init(MEMORY[0x1E6979340]);
        v10 = [v102 preferredModeWithCriteria:v9];

        v6 = -[SBDisplayScaleMapping initWithDisplayHardwareIdentifier:nativePPI:referenceSize:scaleMethod:supportedScales:displayScaleToLogicalScale:]([SBDisplayScaleMapping alloc], "initWithDisplayHardwareIdentifier:nativePPI:referenceSize:scaleMethod:supportedScales:displayScaleToLogicalScale:", v103, 0, 2, v8, 0.0, [v10 width], objc_msgSend(v10, "height"));
      }

      else
      {
        [v102 nativeSize];
        v12 = v11;
        v14 = v13;
        v15 = objc_alloc_init(MEMORY[0x1E6979340]);
        [v15 setResolution:{v12, v14}];
        v93 = v15;
        v96 = [v102 preferredModeWithCriteria:v15];
        v95 = [v102 currentMode];
        [v102 physicalSize];
        v17 = v16;
        size = v18;
        v19 = [v96 width];
        v20 = [v96 height];
        if (v12 != v19 || v14 != v20)
        {
          v22 = SBLogDisplayScaleMapping();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v131.width = v19;
            v131.height = v20;
            v23 = NSStringFromCGSize(v131);
            v132.width = v12;
            v132.height = v14;
            v24 = NSStringFromCGSize(v132);
            *buf = 138543874;
            *&buf[4] = v103;
            *&buf[12] = 2114;
            *&buf[14] = v23;
            *&buf[22] = 2114;
            *v125 = v24;
            _os_log_impl(&dword_1BEA11000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ CADisplay returned referencePixelSize of %{public}@ while the nativeSize is %{public}@", buf, 0x20u);
          }
        }

        if (v20 <= v19)
        {
          v25 = v20;
        }

        else
        {
          v25 = v19;
        }

        if (v20 > v19)
        {
          v19 = v20;
        }

        v26 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v103;
          _os_log_impl(&dword_1BEA11000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ about to calculate available logicalScales. dumping display mode info:", buf, 0xCu);
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v27 = [v102 availableModes];
        v28 = [v27 countByEnumeratingWithState:&v110 objects:v128 count:16];
        if (v28)
        {
          v29 = *v111;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v111 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v110 + 1) + 8 * i);
              v32 = SBLogDisplayScaleMapping();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = [v31 isHighBandwidth];
                [v31 refreshRate];
                v35 = v34;
                v36 = [v31 isVirtual];
                *buf = 138544386;
                *&buf[4] = v103;
                *&buf[12] = 2114;
                *&buf[14] = v31;
                *&buf[22] = 1024;
                *v125 = v33;
                *&v125[4] = 2048;
                *&v125[6] = v35;
                v126 = 1024;
                v127 = v36;
                _os_log_impl(&dword_1BEA11000, v32, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ highBandwidth: %{BOOL}u refreshRate: %.2g virtual: %{BOOL}u", buf, 0x2Cu);
              }
            }

            v28 = [v27 countByEnumeratingWithState:&v110 objects:v128 count:16];
          }

          while (v28);
        }

        v37 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v96 isHighBandwidth];
          [v96 refreshRate];
          v40 = v39;
          v41 = [v96 isVirtual];
          *buf = 138544386;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = v96;
          *&buf[22] = 1024;
          *v125 = v38;
          *&v125[4] = 2048;
          *&v125[6] = v40;
          v126 = 1024;
          v127 = v41;
          _os_log_impl(&dword_1BEA11000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ preferredMode: %{public}@ highBandwidth: %{BOOL}u refreshRate: %.2g virtual: %{BOOL}u", buf, 0x2Cu);
        }

        v42 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v95 isHighBandwidth];
          [v95 refreshRate];
          v45 = v44;
          v46 = [v95 isVirtual];
          *buf = 138544386;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = v95;
          *&buf[22] = 1024;
          *v125 = v43;
          *&v125[4] = 2048;
          *&v125[6] = v45;
          v126 = 1024;
          v127 = v46;
          _os_log_impl(&dword_1BEA11000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ currentMode: %{public}@ highBandwidth: %{BOOL}u refreshRate: %.2g virtual: %{BOOL}u", buf, 0x2Cu);
        }

        v47 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v133.width = v12;
          v133.height = v14;
          v48 = NSStringFromCGSize(v133);
          *buf = 138543618;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = v48;
          _os_log_impl(&dword_1BEA11000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ nativeSize: %{public}@", buf, 0x16u);
        }

        v49 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v134.width = v19;
          v134.height = v25;
          v50 = NSStringFromCGSize(v134);
          *buf = 138543618;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = v50;
          _os_log_impl(&dword_1BEA11000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ referenceSize (from preferred): %{public}@", buf, 0x16u);
        }

        v51 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v135.width = v17;
          v135.height = size;
          v52 = NSStringFromCGSize(v135);
          *buf = 138543618;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = v52;
          _os_log_impl(&dword_1BEA11000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ physicalSize: %{public}@", buf, 0x16u);
        }

        v53 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          [v102 minimumLogicalScale];
          v55 = v54;
          [v102 maximumLogicalScale];
          *buf = 138543874;
          *&buf[4] = v103;
          *&buf[12] = 2048;
          *&buf[14] = v55;
          *&buf[22] = 2048;
          *v125 = v56;
          _os_log_impl(&dword_1BEA11000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ logicalScale bounds: {%.3f, %.3f}", buf, 0x20u);
        }

        v57 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:3];
        v58 = 0;
        if (3840.0 / v19 >= 2160.0 / v25)
        {
          v59 = 3840.0 / v19;
        }

        else
        {
          v59 = 2160.0 / v25;
        }

        v60 = 2;
        do
        {
          if (v58)
          {
            if (v58 == 1)
            {
              v61 = 5120.0;
              v62 = 2880.0;
            }

            else
            {
              v62 = 3384.0;
              v61 = 6016.0;
            }
          }

          else
          {
            if (SBValidateLogicalScale(v102, v59, v19, v25))
            {
              v60 = 2;
            }

            else
            {
              v60 = 1;
            }

            v61 = 3840.0;
            v62 = 2160.0;
          }

          v63 = v61 / v19;
          v64 = v62 / v25;
          v65 = v63 < v64;
          if (v60 == 1)
          {
            v65 = v63 > v64;
          }

          if (v65)
          {
            v66 = v64;
          }

          else
          {
            v66 = v63;
          }

          if (!SBValidateLogicalScale(v102, v66, v19, v25))
          {
            break;
          }

          v67 = [MEMORY[0x1E696AD98] numberWithDouble:v66];
          [v57 addObject:v67];

          ++v58;
        }

        while (v58 != 3);
        v68 = SBLogDisplayScaleMapping();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = @"<invalid>";
          if (v60 == 2)
          {
            v69 = @".AspectFill";
          }

          if (v60 == 1)
          {
            v69 = @".AspectFit";
          }

          v70 = v69;
          *buf = 138543874;
          *&buf[4] = v103;
          *&buf[12] = 2114;
          *&buf[14] = v70;
          *&buf[22] = 2114;
          *v125 = v57;
          _os_log_impl(&dword_1BEA11000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ scaling using: %{public}@; logicalScales before filtering on PPI: %{public}@", buf, 0x20u);
        }

        v71 = 0.0;
        if (size > 0.0)
        {
          v71 = [v96 height] / size;
        }

        if ((BSFloatIsZero() & 1) == 0 && [v57 count])
        {
          v72 = [v57 copy];
          v106[0] = MEMORY[0x1E69E9820];
          v106[1] = 3221225472;
          v106[2] = __37__SBDisplayScaleMapping_withDisplay___block_invoke;
          v106[3] = &unk_1E8080718;
          v109 = v71;
          v73 = v103;
          v107 = v73;
          v74 = v57;
          v108 = v74;
          [v72 enumerateObjectsUsingBlock:v106];
          if (![v74 count])
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v75 = [v72 objectAtIndex:0];
            [v75 doubleValue];
            v77 = v76;

            *v125 = v77;
            v105[0] = 0;
            v105[1] = v105;
            v105[2] = 0x2020000000;
            v105[3] = 0x7FEFFFFFFFFFFFFFLL;
            v104[0] = MEMORY[0x1E69E9820];
            v104[1] = 3221225472;
            v104[2] = __37__SBDisplayScaleMapping_withDisplay___block_invoke_84;
            v104[3] = &unk_1E8080740;
            *&v104[6] = v71;
            v104[4] = v105;
            v104[5] = buf;
            [v72 enumerateObjectsUsingBlock:v104];
            v78 = SBLogDisplayScaleMapping();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = *(*&buf[8] + 24);
              *v120 = 138543618;
              v121 = v73;
              v122 = 2048;
              v123 = v79;
              _os_log_impl(&dword_1BEA11000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ whoops -- we filtered out every logicalScale. stuff the best one back in: %.2f", v120, 0x16u);
            }

            v80 = [MEMORY[0x1E696AD98] numberWithDouble:*(*&buf[8] + 24)];
            [v74 addObject:v80];

            _Block_object_dispose(v105, 8);
            _Block_object_dispose(buf, 8);
          }
        }

        if ([v57 count])
        {
          v81 = [v57 count];
          if ((v81 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
          {
            [(SBDisplayScaleMapping *)a2 withDisplay:a1, v81];
          }

          if (v81 == 2)
          {
            v116[0] = &unk_1F3D3EBC8;
            v82 = [v57 objectAtIndex:0];
            v116[1] = &unk_1F3D3EBB0;
            v117[0] = v82;
            v86 = [v57 objectAtIndex:1];
            v117[1] = v86;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:2];

            v84 = 3;
          }

          else if (v81 == 1)
          {
            v118 = &unk_1F3D3EBB0;
            v82 = [v57 objectAtIndex:0];
            v119 = v82;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
            v84 = 2;
          }

          else
          {
            v114[0] = &unk_1F3D3EBC8;
            v82 = [v57 objectAtIndex:0];
            v115[0] = v82;
            v114[1] = &unk_1F3D3EBB0;
            v87 = [v57 objectAtIndex:1];
            v115[1] = v87;
            v114[2] = &unk_1F3D3EBE0;
            v88 = [v57 objectAtIndex:2];
            v115[2] = v88;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:3];

            v84 = 7;
          }

          v6 = [[SBDisplayScaleMapping alloc] initWithDisplayHardwareIdentifier:v103 nativePPI:v60 referenceSize:v84 scaleMethod:v83 supportedScales:v71 displayScaleToLogicalScale:v19, v25];
          v89 = +[_SBDisplayScaleMappingCache sharedInstance];
          [v89 cacheMapping:v6];
        }

        else
        {
          v85 = SBLogDisplayScaleMapping();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v103;
            _os_log_impl(&dword_1BEA11000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@ not supported because we couldn't derive any usable resolutions", buf, 0xCu);
          }

          v6 = v99;
        }
      }
    }

    else
    {
      v6 = v99;
    }

    if (!v6)
    {
      [(SBDisplayScaleMapping *)a2 withDisplay:a1];
      v6 = 0;
    }
  }

  v90 = SBLogDisplayScaleMapping();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_1BEA11000, v90, OS_LOG_TYPE_DEFAULT, "result: %{public}@", buf, 0xCu);
  }

  v91 = v6;
  return v6;
}

void __37__SBDisplayScaleMapping_withDisplay___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  [a2 doubleValue];
  v4 = v3;
  v5 = v3 * *(a1 + 48);
  if ((BSFloatLessThanFloat() & 1) != 0 || BSFloatGreaterThanFloat())
  {
    v6 = SBLogDisplayScaleMapping();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543874;
      v11 = v7;
      v12 = 2048;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ logicalScale is out of the supported PPI range, so filtering out: %.2f; ppi: %.2f", &v10, 0x20u);
    }

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    [v8 removeObject:v9];
  }
}

uint64_t __37__SBDisplayScaleMapping_withDisplay___block_invoke_84(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = v3;
  v5 = vabdd_f64(264.0, v3 * *(a1 + 48));
  result = BSFloatLessThanOrEqualToFloat();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = v5;
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  return result;
}

- (double)logicalScaleForDisplayScale:(unint64_t)a3
{
  displayScaleToLogicalScale = self->_displayScaleToLogicalScale;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)displayScaleToLogicalScale objectForKey:v4];

  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)ppiForDisplayScale:(unint64_t)a3
{
  nativePPI = self->_nativePPI;
  displayScaleToLogicalScale = self->_displayScaleToLogicalScale;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(NSDictionary *)displayScaleToLogicalScale objectForKey:v5];

  if (v6)
  {
    [v6 doubleValue];
    v8 = nativePPI * v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)createDefaultSettings
{
  v2 = [objc_alloc(MEMORY[0x1E69D4210]) initWithScale:-[SBDisplayScaleMapping _defaultScale](self overscanCompensation:{"_defaultScale"), 0}];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  displayHardwareIdentifier = self->_displayHardwareIdentifier;
  v5 = [v3 activeMultilinePrefix];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __36__SBDisplayScaleMapping_description__block_invoke;
  v12 = &unk_1E807F290;
  v13 = v3;
  v14 = self;
  v6 = v3;
  [v6 appendBodySectionWithName:displayHardwareIdentifier multilinePrefix:v5 block:&v9];

  v7 = [v6 build];

  return v7;
}

void __36__SBDisplayScaleMapping_description__block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__SBDisplayScaleMapping_description__block_invoke_2;
  v13[3] = &unk_1E8080768;
  v13[4] = a1[2].i64[1];
  [v2 appendCustomFormatWithName:@".Reference" block:v13];
  v3 = a1[2].i64[0];
  v4 = *(a1[2].i64[1] + 40);
  v5 = @"<invalid>";
  if (v4 == 2)
  {
    v5 = @".AspectFill";
  }

  if (v4 == 1)
  {
    v6 = @".AspectFit";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = [v3 activeMultilinePrefix];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SBDisplayScaleMapping_description__block_invoke_3;
  v11[3] = &unk_1E807F290;
  v10 = a1[2];
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  [v3 appendBodySectionWithName:v7 multilinePrefix:v8 block:v11];
}

void __36__SBDisplayScaleMapping_description__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  IsZero = BSFloatIsZero();
  v5 = NSStringFromCGSize(*(*(a1 + 32) + 24));
  v7 = v5;
  if (IsZero)
  {
    [v3 appendFormat:@"res: %@", v5, v6];
  }

  else
  {
    [v3 appendFormat:@"res: %@; ppi: %.2f", v5, *(*(a1 + 32) + 16)];
  }
}

void __36__SBDisplayScaleMapping_description__block_invoke_3(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = *(*(a1 + 32) + 48);
    if ((SBSDisplayScaleMaskFromScale() & ~v3) == 0)
    {
      v4 = [*(a1 + 32) _defaultScale];
      v5 = @"[ ]";
      if (i == v4)
      {
        v5 = @"[d]";
      }

      v6 = *(a1 + 40);
      v7 = MEMORY[0x1E696AEC0];
      v8 = v5;
      v9 = SBSDisplayScaleDescription();
      v10 = [v7 stringWithFormat:@"%@%@", v8, v9];

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36__SBDisplayScaleMapping_description__block_invoke_4;
      v11[3] = &unk_1E8080790;
      v11[4] = *(a1 + 32);
      v11[5] = i;
      [v6 appendCustomFormatWithName:v10 block:v11];
    }
  }
}

void __36__SBDisplayScaleMapping_description__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 logicalScaleForDisplayScale:v4];
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = v6 * *(v8 + 24);
  v10 = v6 * *(v8 + 32);
  if (BSFloatIsZero())
  {
    v15.width = v9;
    v15.height = v10;
    v13 = NSStringFromCGSize(v15);
    [v5 appendFormat:@"scale: %.2f; res: %@", *&v7, v13, v12];
  }

  else
  {
    v11 = v7 * *(*(a1 + 32) + 16);
    v16.width = v9;
    v16.height = v10;
    v13 = NSStringFromCGSize(v16);
    [v5 appendFormat:@"scale: %.2f; res: %@; ppi: %.2f", *&v7, v13, *&v11];
  }
}

- (unint64_t)_defaultScale
{
  if (!self->_supportedScales)
  {
    [(SBDisplayScaleMapping *)a2 _defaultScale];
  }

  if (BSFloatIsZero())
  {
    return 1;
  }

  v4 = 0;
  v3 = 1;
  do
  {
    supportedScales = self->_supportedScales;
    if ((SBSDisplayScaleMaskFromScale() & ~supportedScales) == 0)
    {
      [(SBDisplayScaleMapping *)self ppiForDisplayScale:v4];
      if (BSFloatLessThanOrEqualToFloat())
      {
        v3 = v4;
      }
    }

    ++v4;
  }

  while (v4 != 3);
  return v3;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)withDisplay:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDisplayScaleMapping.m" lineNumber:310 description:{@"unexpected number of logicalScales: %lu", a3}];
}

+ (void)withDisplay:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayScaleMapping.m" lineNumber:339 description:{@"we should always have a non-nil result, even for unsupported displays"}];
}

- (void)_defaultScale
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayScaleMapping.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"_supportedScales != SBSDisplayScaleMaskNone"}];
}

@end