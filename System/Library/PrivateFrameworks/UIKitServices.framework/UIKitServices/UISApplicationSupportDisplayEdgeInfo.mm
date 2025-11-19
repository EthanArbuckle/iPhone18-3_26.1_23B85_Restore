@interface UISApplicationSupportDisplayEdgeInfo
+ (id)defaultDisplayEdgeInfoForceInsets:(BOOL)a3;
- (NSString)description;
- (UISApplicationSupportDisplayEdgeInfo)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_copyFromOtherInfo:(id)a3;
- (void)_performIvarUpdateIfAllowed:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setHomeAffordanceOverlayAllowance:(id)a3;
- (void)setPeripheryInsets:(id)a3;
- (void)setSafeAreaInsetsLandscapeLeft:(id)a3;
- (void)setSafeAreaInsetsLandscapeRight:(id)a3;
- (void)setSafeAreaInsetsPortrait:(id)a3;
- (void)setSafeAreaInsetsPortraitUpsideDown:(id)a3;
- (void)setSystemMinimumMargin:(id)a3;
@end

@implementation UISApplicationSupportDisplayEdgeInfo

+ (id)defaultDisplayEdgeInfoForceInsets:(BOOL)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__UISApplicationSupportDisplayEdgeInfo_defaultDisplayEdgeInfoForceInsets___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = a3;
  if (qword_1ED51BFC0 != -1)
  {
    dispatch_once(&qword_1ED51BFC0, block);
  }

  v3 = _MergedGlobals_14;

  return v3;
}

void __74__UISApplicationSupportDisplayEdgeInfo_defaultDisplayEdgeInfoForceInsets___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(UISApplicationSupportDisplayEdgeInfo);
  v3 = _MergedGlobals_14;
  _MergedGlobals_14 = v2;

  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
    v6 = CFDictionaryGetValue(v4, @"ArtworkDeviceSubType");
    if ([MEMORY[0x1E699FAB8] isEmulatedDevice])
    {
      v7 = [MEMORY[0x1E699FAB8] emulatedArtworkSubtype];
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = -1;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 < 0)
    {
      v7 = [v6 intValue];
    }

LABEL_8:
    if (v7 < 0)
    {
      CFRelease(v5);
      goto LABEL_67;
    }

    v8 = 1;
    if (v7 <= 2621)
    {
      if (v7 <= 2435)
      {
        if (v7 == 1792 || v7 == 2340)
        {
          goto LABEL_27;
        }
      }

      else if (v7 == 2436 || v7 == 2532 || v7 == 2556)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v7 > 2735)
      {
        if (((v7 - 2736) > 0x3C || ((1 << (v7 + 80)) & 0x1000040000000001) == 0) && v7 != 2868)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (v7 == 2732)
        {
          v9 = MGGetSInt32Answer();
          if ([MEMORY[0x1E699FAB8] isEmulatedDevice])
          {
            v10 = [MEMORY[0x1E699FAB8] emulatedHomeButtonType];
            if (v10 != -1)
            {
              v9 = v10;
            }
          }

          v11 = v9 == 2;
        }

        else
        {
          v11 = v7 == 2388 || v7 == 2360;
        }

        v12 = v11;
        if (((v8 | v12) & 1) != 0 || *(a1 + 32) != 1)
        {
          CFRelease(v5);
          if (!v8)
          {
LABEL_41:
            if (v12)
            {
              v13 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:0.0 left:0.0 bottom:20.0 right:0.0];
              v14 = *(_MergedGlobals_14 + 40);
              *(_MergedGlobals_14 + 40) = v13;

              v15 = *(_MergedGlobals_14 + 32);
              *(_MergedGlobals_14 + 32) = &unk_1F0A84770;
LABEL_66:
            }

LABEL_67:

            goto LABEL_68;
          }
        }

        else
        {
          CFRelease(v5);
          v12 = v7 == 2732;
          if ((v7 - 569) >= 2)
          {
            goto LABEL_41;
          }
        }

        v16 = 44.0;
        if (v7 <= 2621)
        {
          if (v7 <= 2531)
          {
            v17 = 50.0;
            if (v7 != 2340)
            {
              v17 = 44.0;
            }

            if (v7 == 1792)
            {
              v16 = 48.0;
            }

            else
            {
              v16 = v17;
            }

            goto LABEL_65;
          }

          if (v7 != 2532)
          {
            if (v7 != 2556)
            {
LABEL_65:
              v18 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:v16 left:0.0 bottom:34.0 right:0.0];
              v19 = *(_MergedGlobals_14 + 40);
              *(_MergedGlobals_14 + 40) = v18;

              v20 = *(_MergedGlobals_14 + 32);
              *(_MergedGlobals_14 + 32) = &unk_1F0A84760;

              v21 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:32.0 left:0.0 bottom:0.0 right:0.0];
              v15 = *(_MergedGlobals_14 + 16);
              *(_MergedGlobals_14 + 16) = v21;
              goto LABEL_66;
            }

LABEL_58:
            v16 = 59.0;
            goto LABEL_65;
          }
        }

        else
        {
          if (v7 <= 2777)
          {
            if (v7 != 2622)
            {
              if (v7 == 2736)
              {
                v16 = 68.0;
              }

              goto LABEL_65;
            }

LABEL_64:
            v16 = 62.0;
            goto LABEL_65;
          }

          if (v7 != 2778)
          {
            if (v7 != 2796)
            {
              if (v7 != 2868)
              {
                goto LABEL_65;
              }

              goto LABEL_64;
            }

            goto LABEL_58;
          }
        }

        v16 = 47.0;
        goto LABEL_65;
      }

      if (v7 == 2622 || v7 == 2688)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

LABEL_68:
  *(_MergedGlobals_14 + 8) |= 1u;
}

- (void)_performIvarUpdateIfAllowed:(id)a3
{
  if (self->_infoFlags.asInt)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISApplicationSupportDisplayEdgeInfo.m" lineNumber:253 description:@"Invalid attempt to mutate immutable UISApplicationSupportDisplayEdgeInfo instance"];
  }

  else
  {
    v4 = *(a3 + 2);

    v4(a3);
  }
}

- (void)setPeripheryInsets:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__UISApplicationSupportDisplayEdgeInfo_setPeripheryInsets___block_invoke;
  v6[3] = &unk_1E7458FE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UISApplicationSupportDisplayEdgeInfo *)self _performIvarUpdateIfAllowed:v6];
}

- (void)setSystemMinimumMargin:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__UISApplicationSupportDisplayEdgeInfo_setSystemMinimumMargin___block_invoke;
  v6[3] = &unk_1E7458FE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UISApplicationSupportDisplayEdgeInfo *)self _performIvarUpdateIfAllowed:v6];
}

- (void)setHomeAffordanceOverlayAllowance:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__UISApplicationSupportDisplayEdgeInfo_setHomeAffordanceOverlayAllowance___block_invoke;
  v6[3] = &unk_1E7458FE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UISApplicationSupportDisplayEdgeInfo *)self _performIvarUpdateIfAllowed:v6];
}

- (void)setSafeAreaInsetsPortrait:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__UISApplicationSupportDisplayEdgeInfo_setSafeAreaInsetsPortrait___block_invoke;
  v6[3] = &unk_1E7458FE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UISApplicationSupportDisplayEdgeInfo *)self _performIvarUpdateIfAllowed:v6];
}

- (void)setSafeAreaInsetsLandscapeLeft:(id)a3
{
  v5 = a3;
  if (self->_infoFlags.asInt)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISApplicationSupportDisplayEdgeInfo.m" lineNumber:286 description:@"Invalid attempt to mutate immutable UISApplicationSupportDisplayEdgeInfo instance"];
  }

  safeAreaInsetsLandscapeLeft = self->_safeAreaInsetsLandscapeLeft;
  self->_safeAreaInsetsLandscapeLeft = v5;
}

- (void)setSafeAreaInsetsPortraitUpsideDown:(id)a3
{
  v5 = a3;
  if (self->_infoFlags.asInt)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISApplicationSupportDisplayEdgeInfo.m" lineNumber:291 description:@"Invalid attempt to mutate immutable UISApplicationSupportDisplayEdgeInfo instance"];
  }

  safeAreaInsetsPortraitUpsideDown = self->_safeAreaInsetsPortraitUpsideDown;
  self->_safeAreaInsetsPortraitUpsideDown = v5;
}

- (void)setSafeAreaInsetsLandscapeRight:(id)a3
{
  v5 = a3;
  if (self->_infoFlags.asInt)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISApplicationSupportDisplayEdgeInfo.m" lineNumber:296 description:@"Invalid attempt to mutate immutable UISApplicationSupportDisplayEdgeInfo instance"];
  }

  safeAreaInsetsLandscapeRight = self->_safeAreaInsetsLandscapeRight;
  self->_safeAreaInsetsLandscapeRight = v5;
}

- (void)_copyFromOtherInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 peripheryInsets];
  peripheryInsets = self->_peripheryInsets;
  self->_peripheryInsets = v5;

  v7 = [v4 systemMinimumMargin];
  systemMinimumMargin = self->_systemMinimumMargin;
  self->_systemMinimumMargin = v7;

  v9 = [v4 safeAreaInsetsPortrait];
  safeAreaInsetsPortrait = self->_safeAreaInsetsPortrait;
  self->_safeAreaInsetsPortrait = v9;

  v11 = [v4 homeAffordanceOverlayAllowance];
  homeAffordanceOverlayAllowance = self->_homeAffordanceOverlayAllowance;
  self->_homeAffordanceOverlayAllowance = v11;

  v13 = [v4 safeAreaInsetsLandscapeLeft];
  safeAreaInsetsLandscapeLeft = self->_safeAreaInsetsLandscapeLeft;
  self->_safeAreaInsetsLandscapeLeft = v13;

  v15 = [v4 safeAreaInsetsPortraitUpsideDown];
  safeAreaInsetsPortraitUpsideDown = self->_safeAreaInsetsPortraitUpsideDown;
  self->_safeAreaInsetsPortraitUpsideDown = v15;

  v17 = [v4 safeAreaInsetsLandscapeRight];
  safeAreaInsetsLandscapeRight = self->_safeAreaInsetsLandscapeRight;
  self->_safeAreaInsetsLandscapeRight = v17;

  v19 = v4[1];
  self->_infoFlags.asInt = v19;
  LOBYTE(self->_infoFlags.asInt) = v19 & 0xFE;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _copyFromOtherInfo:self];
  return v4;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_uint64(xdict, "UISApplicationSupportDisplayEdgeInfoFlags", self->_infoFlags.asInt);
  [(NSNumber *)self->_systemMinimumMargin doubleValue];
  xpc_dictionary_set_double(xdict, "UISApplicationSupportDisplaySystemMinimumMargin", v4);
  [(NSNumber *)self->_homeAffordanceOverlayAllowance doubleValue];
  xpc_dictionary_set_double(xdict, "UISApplicationSupportDisplayHomeAffordanceOverlayAllowance", v5);
  if (self->_peripheryInsets)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  if (self->_safeAreaInsetsPortrait)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  if (self->_safeAreaInsetsLandscapeLeft)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  if (self->_safeAreaInsetsPortraitUpsideDown)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  if (self->_safeAreaInsetsLandscapeRight)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  MEMORY[0x1EEE66BB8]();
}

- (UISApplicationSupportDisplayEdgeInfo)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UISApplicationSupportDisplayEdgeInfo;
  v5 = [(UISApplicationSupportDisplayEdgeInfo *)&v21 init];
  if (v5)
  {
    v5->_infoFlags.asInt = xpc_dictionary_get_uint64(v4, "UISApplicationSupportDisplayEdgeInfoFlags");
    if (xpc_dictionary_get_double(v4, "UISApplicationSupportDisplaySystemMinimumMargin") != 0.0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      systemMinimumMargin = v5->_systemMinimumMargin;
      v5->_systemMinimumMargin = v6;
    }

    if (xpc_dictionary_get_double(v4, "UISApplicationSupportDisplayHomeAffordanceOverlayAllowance") != 0.0)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      homeAffordanceOverlayAllowance = v5->_homeAffordanceOverlayAllowance;
      v5->_homeAffordanceOverlayAllowance = v8;
    }

    v10 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    peripheryInsets = v5->_peripheryInsets;
    v5->_peripheryInsets = v10;

    v12 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    safeAreaInsetsPortrait = v5->_safeAreaInsetsPortrait;
    v5->_safeAreaInsetsPortrait = v12;

    v14 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    safeAreaInsetsLandscapeLeft = v5->_safeAreaInsetsLandscapeLeft;
    v5->_safeAreaInsetsLandscapeLeft = v14;

    v16 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    safeAreaInsetsPortraitUpsideDown = v5->_safeAreaInsetsPortraitUpsideDown;
    v5->_safeAreaInsetsPortraitUpsideDown = v16;

    v18 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    safeAreaInsetsLandscapeRight = v5->_safeAreaInsetsLandscapeRight;
    v5->_safeAreaInsetsLandscapeRight = v18;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_systemMinimumMargin withName:@"systemMinimumMargin" skipIfNil:1];
  v5 = [v3 appendObject:self->_peripheryInsets withName:@"peripheryInsets" skipIfNil:1];
  v6 = [v3 appendObject:self->_safeAreaInsetsPortrait withName:@"safeAreaInsetsPortrait" skipIfNil:1];
  v7 = [v3 appendObject:self->_homeAffordanceOverlayAllowance withName:@"homeAffordanceOverlayAllowance" skipIfNil:1];
  v8 = [v3 appendObject:self->_safeAreaInsetsLandscapeLeft withName:@"safeAreaInsetsLandscapeLeft" skipIfNil:1];
  v9 = [v3 appendObject:self->_safeAreaInsetsPortraitUpsideDown withName:@"safeAreaInsetsPortraitUpsideDown" skipIfNil:1];
  v10 = [v3 appendObject:self->_safeAreaInsetsLandscapeRight withName:@"safeAreaInsetsLandscapeRight" skipIfNil:1];
  v11 = [v3 build];

  return v11;
}

@end