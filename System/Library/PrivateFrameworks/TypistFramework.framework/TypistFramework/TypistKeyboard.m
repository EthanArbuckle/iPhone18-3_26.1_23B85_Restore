@interface TypistKeyboard
+ (void)typeStringOnHardwareKeyboard:(id)a3 withLanguage:(id)a4;
- (BOOL)_isPlaneControlKey:(id)a3;
- (BOOL)dictationSupported;
- (BOOL)hasCandidate:(id)a3;
- (BOOL)hasCandidate:(id)a3 inRange:(_NSRange)a4;
- (BOOL)hasCandidates:(id)a3;
- (BOOL)hasCandidates:(id)a3 inRange:(_NSRange)a4;
- (BOOL)isAutoshiftedToCapitalPlane:(id)a3;
- (BOOL)isAvailableFlickOnCurrentPlane:(id)a3 withDirection:(id)a4;
- (BOOL)isAvailableGestureOnCurrentPlane:(id)a3 withDirection:(id)a4;
- (BOOL)isAvailableKeyOnCurrentPlane:(id)a3;
- (BOOL)isAvailablePopoverOnCurrentPlane:(id)a3;
- (BOOL)isSwitchedToCapitalPlane:(id)a3 previous:(id)a4 currentPlane:(id)a5 context:(id)a6;
- (CGAffineTransform)_determineTransformationInFrame:(SEL)a3 segmentStart:(CGRect)a4 totalSegmentWidth:(double)a5 scale:(unint64_t)a6 characterHeight:(double)a7 characterWidth:(double)a8 dimensions:(double)a9 isLatex:(id)a10;
- (CGPoint)_determinePointBetween:(CGPoint)a3 nextPoint:(CGPoint)a4;
- (CGPoint)_guardAgainstOffScreenPoint:(CGPoint)a3;
- (CGPoint)calculateCoordinatesForFlickGesture:(CGPoint)a3 direction:(id)a4 offset:(float)a5;
- (CGPoint)centerOfKey:(CGPoint)a3 withOffset:(CGPoint)a4;
- (CGRect)_determineHandwritingBound;
- (TypistKeyboard)initWithCoder:(id)a3;
- (TypistKeyboard)initWithHardwareKeyboard:(id)a3;
- (double)_getScaleInFrame:(CGRect)a3 isPencil:(BOOL)a4 dimensions:(id)a5;
- (id)_character_set_pattern_from_string:(id)a3;
- (id)_constructSwitchPath:(id)a3 toPlane:(id)a4 fromPlane:(id)a5;
- (id)_convertCollationCharacters:(id)a3;
- (id)_dimensionsForLatex:(id)a3 formula:(id)a4 withPathMap:(id)a5 regionCode:(id)a6 isCursive:(BOOL)a7 cumulativeWidth:(unint64_t)a8 totalWidth:(unint64_t)a9 primaryTextDirection:(unint64_t)a10 rotationBias:(double)a11 characterByCharacterPaths:(id)a12;
- (id)_dimensionsForText:(id)a3 withPathMap:(id)a4 regionCode:(id)a5 isCursive:(BOOL)a6 cumulativeWidth:(unint64_t *)a7 totalWidth:(unint64_t)a8 segmentTextDirection:(unint64_t)a9 primaryTextDirection:(unint64_t)a10 rotationBias:(double)a11 characterByCharacterPaths:(id)a12;
- (id)_generateArgumentList:(id)a3;
- (id)_sanitizedStringForAutoShiftCheck:(id)a3;
- (id)_setupAutoShiftRegex;
- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6;
- (id)attemptToFindKeystrokeAsSecondaryDisplay:(id)a3;
- (id)changeKeyNameToGenericCharacter:(id)a3;
- (id)createAutoshiftRegularExpressionWithDelimitingCharacters:(id)a3 sentenceTrailingCharacters:(id)a4 sentencePrefixingCharacters:(id)a5;
- (id)findKey:(id)a3 inPlane:(id)a4;
- (id)findKeyInOtherPlanes:(id)a3 currentPlane:(id)a4;
- (id)findKeyOnAnyPlane:(id)a3;
- (id)findKeyOnCurrentPlane:(id)a3;
- (id)generateKeyplaneSwitchTable:(id)a3;
- (id)generateKeyplaneSwitchTableFor10Key:(id)a3;
- (id)generateKeystrokeStream:(id)a3;
- (id)generatePencilGestureStream:(int)a3 gestureStyle:(int)a4 inFrame:(CGRect)a5;
- (id)generateSwipeStream:(id)a3;
- (id)getActionForKeystroke:(id)a3 fromKeyPlane:(id)a4;
- (id)getAllCandidates;
- (id)getAlternatePlanesForDefaultPlane;
- (id)getAlternativeKeyPlaneName:(id)a3;
- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4;
- (id)getShiftPlaneForAlternatePlane;
- (id)getShiftPlaneForDefaultPlane;
- (id)getShiftedKeyPlaneName:(id)a3;
- (id)getVisibleCandidates;
- (id)init:(id)a3 options:(id)a4;
- (id)init:(id)a3 options:(id)a4 locale:(id)a5;
- (id)keysDataForInputMode:(id)a3 andFileName:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (id)splitKeystrokeStreamByWord:(id)a3 originalText:(id)a4;
- (id)switchToPlane:(id)a3 fromPlane:(id)a4;
- (int64_t)commitCandidate:(id)a3;
- (int64_t)commitCandidateAtIndex:(int64_t)a3;
- (void)_bailWithError:(id)a3 completion:(id)a4;
- (void)_setKeyboardUserPreferences:(id)a3;
- (void)activateWithKeyboardList:(id)a3 appendKeyboard:(BOOL)a4;
- (void)attachHardwareKeyboard:(id)a3;
- (void)attachHardwareKeyboardWithCountryCode:(id)a3;
- (void)dealloc;
- (void)detachHardwareKeyboard;
- (void)dragFromKey:(id)a3 toKey:(id)a4 completion:(id)a5;
- (void)dragPopoverKey:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)flickKey:(id)a3 withDirection:(id)a4 completion:(id)a5;
- (void)moveFloatingKeyboardToPosition:(CGPoint)a3;
- (void)preprocessing;
- (void)pressAndHoldHardwareKeys:(id)a3 forDuration:(double)a4 withValidation:(id)a5 validateAfter:(double)a6;
- (void)setOneHandedPosition:(id)a3;
- (void)setPressDuration:(id)a3;
- (void)setTapStyleNoise:(id)a3;
- (void)setTargetApplicationBundleIdentifier:(id)a3;
- (void)setTouchMajorRadius:(id)a3;
- (void)setTypeInterval:(id)a3;
- (void)setupSentenceBoundryStrings;
- (void)swipeGestureKey:(id)a3 withDirection:(id)a4 completion:(id)a5;
- (void)swipeGestureOrFlickKey:(id)a3 withDirection:(id)a4 completion:(id)a5;
- (void)swipeString:(id)a3;
- (void)switchKeyPlaneOnActiveKeyboard:(id)a3;
- (void)tapGlobeKey;
- (void)tapKey:(id)a3 tapCount:(unint64_t)a4 completion:(id)a5;
- (void)tapKey:(id)a3 tapCount:(unint64_t)a4 overriddenTypeInterval:(id)a5 completion:(id)a6;
- (void)tapMoreKey;
- (void)toggleCapsLock;
- (void)typeKeystrokeStream:(id)a3;
- (void)typeKeystrokeStream:(id)a3 completion:(id)a4;
- (void)typeKeystrokeStreamWithPredictive:(id)a3 originalText:(id)a4 completion:(id)a5;
- (void)typeString:(id)a3;
- (void)typeString:(id)a3 completion:(id)a4;
- (void)typeString:(id)a3 withCommit:(id)a4;
- (void)typeStringWithHardwareKeyboard:(id)a3;
- (void)typeWordKeystrokeWithPredictive:(id)a3 atIndex:(int64_t)a4 completion:(id)a5;
- (void)typeWordKeystrokes:(id)a3 expectedWord:(id)a4 atIndex:(int64_t)a5 completion:(id)a6;
@end

@implementation TypistKeyboard

- (void)setPressDuration:(id)a3
{
  v24 = a3;
  if (!v24 || [v24 compare:&unk_288029510] == -1)
  {
    v9 = [(TypistKeyboard *)self pressDuration];

    if (v9)
    {
      v23 = [(TypistKeyboard *)self pressDuration];
      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid pressDuration was provided: %@. The existing value of (%@) will continue to be used!", v10, v11, v12, v13, v14, v15, v24);
    }

    else
    {
      pressDuration = self->_pressDuration;
      self->_pressDuration = &unk_288029520;

      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid pressDuration was provided: %@. The default value of %@ will be used instead.", v17, v18, v19, v20, v21, v22, v24);
    }
  }

  else
  {
    v5 = [(TypistKeyboard *)self hardwareKeyboard];

    if (v5)
    {
      [v24 doubleValue];
      v7 = v6;
      v8 = [(TypistKeyboard *)self hardwareKeyboard];
      [v8 setPressDuration:v7];
    }

    objc_storeStrong(&self->_pressDuration, a3);
  }
}

- (void)setTypeInterval:(id)a3
{
  v24 = a3;
  if (!v24 || [v24 compare:&unk_288029510] == -1)
  {
    v9 = [(TypistKeyboard *)self typeInterval];

    if (v9)
    {
      v23 = [(TypistKeyboard *)self typeInterval];
      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid typeInterval was provided: %@. The existing value of (%@) will continue to be used!", v10, v11, v12, v13, v14, v15, v24);
    }

    else
    {
      typeInterval = self->_typeInterval;
      self->_typeInterval = &unk_288029520;

      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid typeInterval was provided: %@. The default value of %@ will be used instead.", v17, v18, v19, v20, v21, v22, v24);
    }
  }

  else
  {
    v5 = [(TypistKeyboard *)self hardwareKeyboard];

    if (v5)
    {
      [v24 doubleValue];
      v7 = v6;
      v8 = [(TypistKeyboard *)self hardwareKeyboard];
      [v8 setTypeInterval:v7];
    }

    objc_storeStrong(&self->_typeInterval, a3);
  }
}

- (void)setTouchMajorRadius:(id)a3
{
  v12 = a3;
  [v12 doubleValue];
  if (v11 <= 0.0)
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"Invalid touch radius was provided: %@. Ignoring.", v5, v6, v7, v8, v9, v10, v12);
  }

  else
  {
    objc_storeStrong(&self->_touchMajorRadius, a3);
    [TypistKeyboardUtilities setTapTouchRadius:v12];
  }
}

- (void)dealloc
{
  +[TypistKeyboardUtilities tearDownRecapInlinePlayer];
  [TypistKeyboardUtilities setTapTouchRadius:0];
  v3.receiver = self;
  v3.super_class = TypistKeyboard;
  [(TypistKeyboard *)&v3 dealloc];
}

- (id)init:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasPrefix:@"fr"])
  {
    v8 = TypistKeyboardFrench;
  }

  else if ([v6 hasPrefix:@"fa"])
  {
    v8 = TypistKeyboardFarsi;
  }

  else if ([v6 hasPrefix:@"ja_JP"])
  {
    v8 = TypistKeyboardJapanese;
  }

  else if (([v6 hasPrefix:@"zh_Han"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"yue_Hant"))
  {
    v8 = TypistKeyboardChinese;
  }

  else if ([v6 hasPrefix:@"ko_KR"])
  {
    v8 = TypistKeyboardKorean;
  }

  else if ([v6 hasPrefix:@"chr"])
  {
    v8 = TypistKeyboardCherokee;
  }

  else if ([v6 hasPrefix:@"cs_CZ"])
  {
    v8 = TypistKeyboardCzech;
  }

  else if ([v6 hasPrefix:@"haw"])
  {
    v8 = TypistKeyboardHawaiian;
  }

  else if ([v6 hasPrefix:@"el_GR"])
  {
    v8 = TypistKeyboardGreek;
  }

  else if ([v6 hasPrefix:@"lut"])
  {
    v8 = TypistKeyboardLushootseed;
  }

  else if ([v6 hasPrefix:@"isc"])
  {
    v8 = TypistKeyboardIskonawa;
  }

  else if ([v6 hasPrefix:@"shp"])
  {
    v8 = TypistKeyboardShipiboKonibo;
  }

  else if (([v6 hasPrefix:@"bo"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"dz"))
  {
    v8 = TypistKeyboardTibetan;
  }

  else if ([v6 hasPrefix:@"ta"] && (objc_msgSend(v6, "hasPrefix:", @"ta@sw=Tamil-QWERTY") & 1) == 0)
  {
    v8 = TypistKeyboardTamil;
  }

  else if ([v6 hasPrefix:@"pa@sw=Punjabi-Phonetic"])
  {
    v8 = TypistKeyboardPunjabi;
  }

  else if ([v6 hasPrefix:@"si"])
  {
    v8 = TypistKeyboardSinhala;
  }

  else if ([v6 hasPrefix:@"ug"])
  {
    v8 = TypistKeyboardUyghur;
  }

  else if ([v6 hasPrefix:@"am"])
  {
    v8 = TypistKeyboardAmharic;
  }

  else if ([v6 hasPrefix:@"my@sw=Burmese"])
  {
    v8 = TypistKeyboardBurmese;
  }

  else if ([v6 hasPrefix:@"th_TH"])
  {
    v8 = TypistKeyboardThai;
  }

  else
  {
    if (![v6 containsString:@"emoji"])
    {
      v9 = [[TypistKeyboard alloc] init:v6 options:v7 locale:0];
      goto LABEL_11;
    }

    v8 = TypistKeyboardEmoji;
  }

  v9 = [[v8 alloc] init:v6 options:v7];
LABEL_11:
  v10 = v9;

  return v10;
}

- (id)init:(id)a3 options:(id)a4 locale:(id)a5
{
  v7 = a3;
  v8 = a4;
  v42.receiver = self;
  v42.super_class = TypistKeyboard;
  v9 = [(TypistKeyboard *)&v42 init];
  if (!v9)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    TYLog(@"Initializing TypistKeyboard: [%@]", v12, v13, v14, v15, v16, v17, v18, v11);

    v19 = [v8 objectForKeyedSubscript:@"forceInProcessDataClient"];
    if (v19)
    {
      v20 = [v8 objectForKeyedSubscript:@"forceInProcessDataClient"];
      v21 = [v20 BOOLValue] ^ 1;
    }

    else
    {
      v21 = 1;
    }

    v22 = [v8 objectForKeyedSubscript:@"targetApplication"];
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        [(TypistKeyboard *)v9 setTargetApplicationBundleIdentifier:v22];
        v41 = [(TypistKeyboard *)v9 getTargetApplicationBundleIdentifier];
        TYLog(@"Setting keyboard %@ of target application: %@", v24, v25, v26, v27, v28, v29, v30, v7);
      }
    }

    else
    {
      [TypistKeyboardData setForceLegacyImplementation:1];
    }
  }

  v31 = [(TypistKeyboard *)v9 setupKeyboardInfo:v7 options:v8];
  if (v31)
  {
    v38 = v31;
    TYLogl(OS_LOG_TYPE_ERROR, @"%@", v32, v33, v34, v35, v36, v37, v31);

    v39 = 0;
  }

  else
  {
LABEL_13:
    v39 = v9;
  }

  return v39;
}

- (void)setupSentenceBoundryStrings
{
  v6 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getSentenceBoundaryStrings];
  v3 = [v6 objectForKeyedSubscript:@"sentenceTrailingCharacters"];
  [(TypistKeyboard *)self setSentenceTrailingCharacters:v3];

  v4 = [v6 objectForKeyedSubscript:@"sentenceDelimitingCharacters"];
  [(TypistKeyboard *)self setSentenceDelimitingCharacters:v4];

  v5 = [v6 objectForKeyedSubscript:@"sentencePrefixingCharacters"];
  [(TypistKeyboard *)self setSentencePrefixingCharacters:v5];
}

- (id)_setupAutoShiftRegex
{
  v3 = [(TypistKeyboard *)self sentenceDelimitingCharacters];
  v4 = [(TypistKeyboard *)self sentenceTrailingCharacters];
  v5 = [(TypistKeyboard *)self sentencePrefixingCharacters];
  v6 = [(TypistKeyboard *)self createAutoshiftRegularExpressionWithDelimitingCharacters:v3 sentenceTrailingCharacters:v4 sentencePrefixingCharacters:v5];

  return v6;
}

- (void)setTapStyleNoise:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 caseInsensitiveCompare:@"anyInRect"])
    {
      if ([v6 caseInsensitiveCompare:@"normal"])
      {
        if ([v6 caseInsensitiveCompare:@"uniform"])
        {
          if (![v6 caseInsensitiveCompare:@"none"])
          {
            goto LABEL_11;
          }

          v5 = 0;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 1;
    }

    [(TypistKeyboard *)self setTapStyle:v5];
  }

LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (void)_setKeyboardUserPreferences:(id)a3
{
  v53 = a3;
  v4 = [v53 objectForKeyedSubscript:@"typeInterval"];

  if (v4)
  {
    v5 = [v53 objectForKeyedSubscript:@"typeInterval"];
    [(TypistKeyboard *)self setTypeInterval:v5];
  }

  else
  {
    [(TypistKeyboard *)self setTypeInterval:&unk_288029520];
  }

  v6 = [v53 objectForKeyedSubscript:@"touchMajorRadius"];

  if (v6)
  {
    v7 = [v53 objectForKeyedSubscript:@"touchMajorRadius"];
    [(TypistKeyboard *)self setTouchMajorRadius:v7];
  }

  v8 = [v53 objectForKeyedSubscript:@"pressDuration"];

  if (v8)
  {
    v9 = [v53 objectForKeyedSubscript:@"pressDuration"];
    [(TypistKeyboard *)self setPressDuration:v9];
  }

  else
  {
    [(TypistKeyboard *)self setPressDuration:&unk_288029520];
  }

  v10 = [v53 objectForKeyedSubscript:@"fastTyping"];
  if (v10)
  {
    v11 = [v53 objectForKeyedSubscript:@"fastTyping"];
    -[TypistKeyboard setFastTyping:](self, "setFastTyping:", [v11 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setFastTyping:0];
  }

  v12 = [v53 objectForKeyedSubscript:@"flickTyping"];
  if (v12)
  {
    v13 = [v53 objectForKeyedSubscript:@"flickTyping"];
    -[TypistKeyboard setFlickTyping:](self, "setFlickTyping:", [v13 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setFlickTyping:0];
  }

  v14 = [v53 objectForKeyedSubscript:@"usePredictionBar"];
  if (v14)
  {
    v15 = [v53 objectForKeyedSubscript:@"usePredictionBar"];
    -[TypistKeyboard setUsePredictionBar:](self, "setUsePredictionBar:", [v15 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setUsePredictionBar:0];
  }

  v16 = [v53 objectForKeyedSubscript:@"prefersPopoverKeys"];
  if (v16)
  {
    v17 = [v53 objectForKeyedSubscript:@"prefersPopoverKeys"];
    -[TypistKeyboard setPrefersPopoverKeys:](self, "setPrefersPopoverKeys:", [v17 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setPrefersPopoverKeys:1];
  }

  v18 = [v53 objectForKeyedSubscript:@"FORCE_SPACE"];
  if (v18)
  {
    v19 = [v53 objectForKeyedSubscript:@"FORCE_SPACE"];
    -[TypistKeyboard setSwipeForceSpace:](self, "setSwipeForceSpace:", [v19 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setSwipeForceSpace:0];
  }

  v20 = [v53 objectForKeyedSubscript:@"ALPHA"];
  if (v20)
  {
    v21 = [v53 objectForKeyedSubscript:@"ALPHA"];
    v22 = [TypistKeyboardUtilities validateProbability:v21];
    [(TypistKeyboard *)self setSwipeAlpha:v22];
  }

  else
  {
    [(TypistKeyboard *)self setSwipeAlpha:&unk_288029530];
  }

  v23 = [v53 objectForKeyedSubscript:@"SIGMA"];
  if (v23)
  {
    v24 = [v53 objectForKeyedSubscript:@"SIGMA"];
    [v24 doubleValue];
    if (v25 <= 0.0)
    {
      [(TypistKeyboard *)self setSwipeSigma:&unk_2880299A0];
    }

    else
    {
      v26 = [v53 objectForKeyedSubscript:@"SIGMA"];
      [(TypistKeyboard *)self setSwipeSigma:v26];
    }
  }

  else
  {
    [(TypistKeyboard *)self setSwipeSigma:&unk_2880299A0];
  }

  v27 = [v53 objectForKeyedSubscript:@"P_PIVOT"];
  if (v27)
  {
    v28 = [v53 objectForKeyedSubscript:@"P_PIVOT"];
    v29 = [TypistKeyboardUtilities validateProbability:v28];
    [(TypistKeyboard *)self setSwipePivotProbability:v29];
  }

  else
  {
    [(TypistKeyboard *)self setSwipePivotProbability:&unk_2880299A0];
  }

  v30 = [v53 objectForKeyedSubscript:@"tapNoiseStyle"];
  [(TypistKeyboard *)self setTapStyleNoise:v30];

  v31 = [v53 objectForKeyedSubscript:@"tapNoiseSigma"];
  v32 = v31;
  if (v31 && ([v31 doubleValue], v33 > 0.0))
  {
    v34 = v32;
  }

  else
  {
    v34 = &unk_2880299A0;
  }

  [(TypistKeyboard *)self setTapSigma:v34];
  v35 = [v53 objectForKeyedSubscript:@"tapNoiseBounds"];
  v36 = v35;
  if (v35 && ([v35 doubleValue], v37 > 0.0))
  {
    v38 = v36;
  }

  else
  {
    v38 = &unk_2880299A0;
  }

  [(TypistKeyboard *)self setTapBounds:v38];
  v39 = [v53 objectForKeyedSubscript:@"P_ERRANT"];
  if (v39)
  {
    v40 = [v53 objectForKeyedSubscript:@"P_ERRANT"];
    v41 = [TypistKeyboardUtilities validateProbability:v40];
    [(TypistKeyboard *)self setSwipeErrantProbability:v41];
  }

  else
  {
    [(TypistKeyboard *)self setSwipeErrantProbability:&unk_2880299A0];
  }

  v42 = [v53 objectForKeyedSubscript:@"SIGMA_PIVOT"];
  if (v42)
  {
    v43 = [v53 objectForKeyedSubscript:@"SIGMA_PIVOT"];
    [v43 doubleValue];
    if (v44 <= 0.0)
    {
      [(TypistKeyboard *)self setSwipeErrantSigma:&unk_2880299A0];
    }

    else
    {
      v45 = [v53 objectForKeyedSubscript:@"SIGMA_PIVOT"];
      [(TypistKeyboard *)self setSwipeErrantSigma:v45];
    }
  }

  else
  {
    [(TypistKeyboard *)self setSwipeErrantSigma:&unk_2880299A0];
  }

  v46 = [v53 objectForKeyedSubscript:@"P_CONVEX"];
  if (v46)
  {
    v47 = [v53 objectForKeyedSubscript:@"P_CONVEX"];
    v48 = [TypistKeyboardUtilities validateProbability:v47];
    [(TypistKeyboard *)self setSwipeConvexProbability:v48];
  }

  else
  {
    [(TypistKeyboard *)self setSwipeConvexProbability:&unk_2880299A0];
  }

  v49 = [v53 objectForKeyedSubscript:@"SIGMA_CONVEX"];
  if (v49)
  {
    v50 = [v53 objectForKeyedSubscript:@"SIGMA_CONVEX"];
    [v50 doubleValue];
    if (v51 <= 0.0)
    {
      [(TypistKeyboard *)self setSwipeConvexSigma:&unk_2880299A0];
    }

    else
    {
      v52 = [v53 objectForKeyedSubscript:@"SIGMA_CONVEX"];
      [(TypistKeyboard *)self setSwipeConvexSigma:v52];
    }
  }

  else
  {
    [(TypistKeyboard *)self setSwipeConvexSigma:&unk_2880299A0];
  }
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v214[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 rangeOfString:@";ml="];
  v10 = v8;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 substringToIndex:v9];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(%@){1}(hw=.+)?$", v10];;
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", v11];
  v13 = 0x279DF4000uLL;
  v14 = +[TypistKeyboardUtilities generateKeyboardList];
  v15 = v14;
  if (!v8 || ([v14 filteredArrayUsingPredicate:v12], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v18 = v17 == 1, v13 = 0x279DF4000, !v18))
  {
    v40 = MEMORY[0x277CCACA8];
    v41 = [*(v13 + 560) getMobileGestalt:@"HWModelStr"];
    v42 = [v40 stringWithFormat:@"CRITICAL WARNING: The keyboard ID (%@) is not valid on this device (%@)", v8, v41];

    v43 = MEMORY[0x277CCA9B8];
    v213 = *MEMORY[0x277CCA470];
    v214[0] = v42;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:&v213 count:1];
    v45 = [v43 errorWithDomain:@"TypistUnsupportedKeyboardIDError" code:2 userInfo:v44];

    v46 = v45;
    goto LABEL_33;
  }

  [(TypistKeyboard *)self setKeyboardID:v8];
  [(TypistKeyboard *)self setIsCapsLockedState:0];
  [(TypistKeyboard *)self setUsePopupKeys:1];
  v19 = [v8 componentsSeparatedByString:@"@"];
  v20 = v19;
  v136 = v15;
  if (v19)
  {
    v21 = [v19 objectAtIndexedSubscript:0];
    [(TypistKeyboard *)self setLayoutName:v21];

    v22 = [(TypistKeyboard *)self layoutName];
    v203 = [v22 containsString:@"_"];

    v23 = [(TypistKeyboard *)self layoutName];
    [v23 componentsSeparatedByString:@"_"];
    v25 = v24 = v20;
    [v25 objectAtIndexedSubscript:0];
    v27 = v26 = self;
    [(TypistKeyboard *)v26 setLanguageID:v27];

    self = v26;
    v20 = v24;

    v28 = [(TypistKeyboard *)v26 layoutName];
    v29 = [v28 componentsSeparatedByString:@"_"];
    v30 = [v29 objectAtIndexedSubscript:v203];
    [(TypistKeyboard *)self setRegionCode:v30];
  }

  v31 = [(TypistKeyboard *)self keyboardID];
  v32 = [v31 componentsSeparatedByString:@"sw="];
  v33 = [v32 objectAtIndexedSubscript:1];

  v132 = v33;
  v34 = [v33 componentsSeparatedByString:@""];;
  v35 = [v34 objectAtIndexedSubscript:0];
  [(TypistKeyboard *)self setKeyboardSW:v35];

  v36 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData setTIPreferences:"setTIPreferences:", v7];
  v191 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData setKeyboardUISettings:"setKeyboardUISettings:", v7];
  [(TypistKeyboard *)self _setKeyboardUserPreferences:v7];
  v37 = *MEMORY[0x277D6F928];
  v192 = v36;
  v38 = [v36 objectForKeyedSubscript:*MEMORY[0x277D6F928]];
  LODWORD(v36) = [v38 BOOLValue];

  v193 = v8;
  v135 = v11;
  v134 = v12;
  v133 = v20;
  v137 = self;
  if (v36)
  {
    v39 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v39];
  }

  else
  {
    [(TypistKeyboard *)self setCandidatebar:0];
  }

  v187 = [v7 objectForKeyedSubscript:@"keyboardList"];
  v185 = [v7 objectForKeyedSubscript:@"targetApplication"];
  v189 = [v7 objectForKeyedSubscript:@"appendKeyboard"];
  v180 = [v7 objectForKeyedSubscript:@"perfConditions"];
  v178 = [v7 objectForKeyedSubscript:@"preprocessing"];
  v131 = *MEMORY[0x277D6F7C8];
  v176 = [v7 objectForKeyedSubscript:?];
  v174 = [v7 objectForKeyedSubscript:@"typeInterval"];
  v172 = [v7 objectForKeyedSubscript:@"touchMajorRadius"];
  v170 = [v7 objectForKeyedSubscript:@"fastTyping"];
  v130 = *MEMORY[0x277D6FA70];
  v168 = [v7 objectForKeyedSubscript:?];
  v129 = *MEMORY[0x277D6FD18];
  v166 = [v7 objectForKeyedSubscript:?];
  v164 = [v7 objectForKeyedSubscript:@"flickTyping"];
  v158 = [v7 objectForKeyedSubscript:@"prefersPopoverKeys"];
  v198 = *MEMORY[0x277D6F7B8];
  v156 = [v7 objectForKeyedSubscript:?];
  v197 = *MEMORY[0x277D6F7C0];
  v162 = [v7 objectForKeyedSubscript:?];
  v196 = *MEMORY[0x277D6F820];
  v154 = [v7 objectForKeyedSubscript:?];
  v195 = *MEMORY[0x277D6F920];
  v152 = [v7 objectForKeyedSubscript:?];
  v194 = *MEMORY[0x277D6F818];
  v150 = [v7 objectForKeyedSubscript:?];
  v148 = [v7 objectForKeyedSubscript:v37];
  v204 = *MEMORY[0x277D6F630];
  v146 = [v7 objectForKeyedSubscript:?];
  v201 = *MEMORY[0x277D6FA88];
  v160 = [v7 objectForKeyedSubscript:?];
  v199 = *MEMORY[0x277D6FA78];
  v142 = [v7 objectForKeyedSubscript:?];
  v200 = *MEMORY[0x277D76AA8];
  v140 = [v7 objectForKeyedSubscript:?];
  v182 = *MEMORY[0x277D6F7A0];
  v144 = [v7 objectForKeyedSubscript:?];
  v128 = [v7 objectForKeyedSubscript:@"LowerCaseKeyboard"];
  v127 = [v7 objectForKeyedSubscript:@"usePredictionBar"];
  v126 = [v7 objectForKeyedSubscript:@"dictation"];
  v183 = *MEMORY[0x277D6FA80];
  v139 = [v7 objectForKeyedSubscript:?];
  v184 = *MEMORY[0x277D6F640];
  v125 = [v7 objectForKeyedSubscript:?];
  v138 = [v7 objectForKeyedSubscript:@"tapNoiseStyle"];
  v124 = [v7 objectForKeyedSubscript:@"FORCE_SPACE"];
  v123 = [v7 objectForKeyedSubscript:@"ALPHA"];
  v122 = [v7 objectForKeyedSubscript:@"SIGMA"];
  v120 = [v7 objectForKeyedSubscript:@"P_PIVOT"];
  v119 = [v7 objectForKeyedSubscript:@"P_ERRANT"];
  v118 = [v7 objectForKeyedSubscript:@"SIGMA_PIVOT"];
  v121 = [v7 objectForKeyedSubscript:@"P_CONVEX"];
  v117 = [v7 objectForKeyedSubscript:@"SIGMA_CONVEX"];
  v116 = v144;
  v115 = v140;
  v114 = v142;
  v112 = v201;
  v113 = v160;
  v111 = v146;
  v109 = v37;
  v110 = v148;
  v108 = v150;
  v107 = v152;
  v106 = v154;
  v105 = v162;
  TYLog(@"######## SPECIFIED KEYBOARD OPTIONS FOR %@\n%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@", v47, v48, v49, v50, v51, v52, v53, v8);

  v190 = [v192 objectForKeyedSubscript:v198];
  v177 = [v190 BOOLValue];
  v188 = [v192 objectForKeyedSubscript:v197];
  v173 = [v188 BOOLValue];
  v186 = [v192 objectForKeyedSubscript:v196];
  v169 = [v186 BOOLValue];
  v181 = [v192 objectForKeyedSubscript:v195];
  v165 = [v181 BOOLValue];
  v179 = [v192 objectForKeyedSubscript:v194];
  v161 = [v179 BOOLValue];
  v175 = [v192 objectForKeyedSubscript:v37];
  v157 = [v175 BOOLValue];
  v171 = [v192 objectForKeyedSubscript:v204];
  v153 = [v171 BOOLValue];
  v167 = [v192 objectForKeyedSubscript:v201];
  v149 = [v167 BOOLValue];
  v163 = [v192 objectForKeyedSubscript:v199];
  v145 = [v163 BOOLValue];
  v159 = [v191 objectForKeyedSubscript:v200];
  v143 = [v159 BOOLValue];
  v155 = [v192 objectForKeyedSubscript:v182];
  v141 = [v155 BOOLValue];
  v151 = [v191 objectForKeyedSubscript:@"LowerCaseKeyboard"];
  v54 = [v151 BOOLValue];
  v147 = [v191 objectForKeyedSubscript:@"dictation"];
  v55 = [v147 BOOLValue];
  v56 = [v192 objectForKeyedSubscript:v183];
  v57 = [v56 BOOLValue];
  v58 = [v192 objectForKeyedSubscript:v184];
  v104 = [v58 BOOLValue];
  v103 = v57;
  v102 = v55;
  v101 = v54;
  v100 = v201;
  TYLog(@"######## ACTUAL KEYBOARD AND ACCESSIBILITY SETTINGS ON SYSTEM\n%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d; \n########", v59, v60, v61, v62, v63, v64, v65, v198);

  v66 = [v7 objectForKeyedSubscript:@"appendKeyboard"];
  v67 = [v66 BOOLValue];

  v68 = [(TypistKeyboard *)self keyboardID];
  v212 = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v212 count:1];

  v70 = [v7 objectForKeyedSubscript:@"keyboardList"];
  if (!v70)
  {
    v78 = v69;
    v8 = v193;
    v11 = v135;
    goto LABEL_28;
  }

  v71 = v70;
  v72 = [v7 objectForKeyedSubscript:@"keyboardList"];
  v73 = [v72 count];

  if (!v73)
  {
    v78 = v69;
    v8 = v193;
    v11 = v135;
    self = v137;
LABEL_28:
    [(TypistKeyboard *)self activateWithKeyboardList:v78 appendKeyboard:v67];
    [(TypistKeyboard *)self setupSentenceBoundryStrings];
    v87 = [(TypistKeyboard *)self _setupAutoShiftRegex];
    [(TypistKeyboard *)self setAutoshiftRegex:v87];

    v88 = [v7 objectForKeyedSubscript:@"preprocessing"];
    if (!v88 || (v89 = v88, [v7 objectForKeyedSubscript:@"preprocessing"], v90 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend(v90, "BOOLValue"), v90, v89, v91))
    {
      [(TypistKeyboard *)self preprocessing];
    }

    v46 = 0;
    goto LABEL_32;
  }

  v202 = v67;
  v74 = [v7 objectForKeyedSubscript:@"keyboardList"];
  v75 = [(TypistKeyboard *)v137 keyboardID];
  v76 = [v74 arrayByAddingObject:v75];

  v77 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v76, "count")}];
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v78 = v76;
  v79 = [v78 countByEnumeratingWithState:&v205 objects:v211 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v206;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v206 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v205 + 1) + 8 * i);

        v84 = [v83 rangeOfString:@";ml="];
        if (v84 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v83;
        }

        else
        {
          v10 = [v83 substringToIndex:v84];
        }

        [v77 addObject:v10];
      }

      v80 = [v78 countByEnumeratingWithState:&v205 objects:v211 count:16];
    }

    while (v80);
  }

  v85 = [MEMORY[0x277CBEB98] setWithArray:v136];
  v86 = [v77 isSubsetOfSet:v85];

  if (v86)
  {

    v10 = 0;
    v8 = v193;
    v11 = v135;
    v12 = v134;
    self = v137;
    v67 = v202;
    goto LABEL_28;
  }

  v94 = MEMORY[0x277CCACA8];
  v95 = [TypistKeyboardUtilities getMobileGestalt:@"HWModelStr"];
  v96 = [v94 stringWithFormat:@"CRITICAL WARNING: Some keyboards specified are not valid on this device (%@)", v95, v177, v197, v173, v196, v169, v195, v165, v194, v161, v109, v157, v204, v153, v100, v149, v199, v145, v200, v143, v182, v141, @"LowerCaseKeyboard", v101, @"dictation", v102, v183, v103, v184, v104, v105, v196, v106, v195, v107, v194, v108, v109, v110, v204, v111, v112, v113, v199, v114, v200, v115, v182, v116, @"LowerCaseKeyboard", v128, @"usePredictionBar", v127, @"dictation", v126, v183, v139, v184, v125, @"tapNoiseStyle"];

  v97 = MEMORY[0x277CCA9B8];
  v209 = *MEMORY[0x277CCA470];
  v210 = v96;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
  v99 = [v97 errorWithDomain:@"TypistUnsupportedKeyboardIDError" code:2 userInfo:v98];

  v46 = v99;
  v10 = 0;
  v78 = v69;
  v8 = v193;
  v11 = v135;
  v12 = v134;
LABEL_32:

  v15 = v136;
  v42 = v133;
LABEL_33:

  v92 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)_character_set_pattern_from_string:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCAC68] escapedPatternForString:a3];
  v5 = [v3 stringWithFormat:@"[%@]", v4];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];

  return v6;
}

- (id)createAutoshiftRegularExpressionWithDelimitingCharacters:(id)a3 sentenceTrailingCharacters:(id)a4 sentencePrefixingCharacters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TypistKeyboard *)self _character_set_pattern_from_string:@"  "];
  v12 = MEMORY[0x277CCACA8];
  v13 = [(TypistKeyboard *)self _character_set_pattern_from_string:v10];

  v14 = [(TypistKeyboard *)self _character_set_pattern_from_string:v9];

  v15 = [v12 stringWithFormat:@"\\A|\\n|(?:%@){3}|((?:\\b\\w++(?:\\.\\w++)*)?(?:%@))(?:%@)*(?:%@)", v11, v13, v14, v11];

  v16 = MEMORY[0x277CCACA8];
  v17 = [(TypistKeyboard *)self _character_set_pattern_from_string:v8];

  v18 = [v16 stringWithFormat:@"(?:%@)(?:%@)*(?:%@)*\\Z", v15, v11, v17];

  v29 = 0;
  v19 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v18 options:16 error:&v29];
  v20 = v29;
  v27 = v20;
  if (!v19)
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"Failed to create autoshift regular expression: %@", v21, v22, v23, v24, v25, v26, v20);
  }

  return v19;
}

- (void)activateWithKeyboardList:(id)a3 appendKeyboard:(BOOL)a4
{
  v4 = a4;
  v19 = a3;
  v6 = +[TypistKeyboardData keyboardData];
  if (v4)
  {
    v7 = [(objc_class *)v6 addKeyboards:v19];
  }

  else
  {
    v8 = [(objc_class *)v6 setKeyboards:v19];
  }

  v9 = [(TypistKeyboard *)self keyboardID];
  TYLog(@"Switching keyboard to %@", v10, v11, v12, v13, v14, v15, v16, v9);

  v17 = +[TypistKeyboardData keyboardData];
  v18 = [(TypistKeyboard *)self keyboardID];
  [(objc_class *)v17 switchToKeyboard:v18];
}

- (id)generateKeyplaneSwitchTable:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData generateKeyplaneSwitchTable:"generateKeyplaneSwitchTable:", v3];

  return v4;
}

- (id)generateKeyplaneSwitchTableFor10Key:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData generateKeyplaneSwitchTableFor10Key:"generateKeyplaneSwitchTableFor10Key:", v3];

  return v4;
}

- (void)setOneHandedPosition:(id)a3
{
  v26 = a3;
  TYLog(@"######## SETTING ONE HANDED (REACHABLE) KEYBOARD", v4, v5, v6, v7, v8, v9, v10, v24);
  v11 = +[TypistKeyboardUtilities getUIInterfaceOrientation];
  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom] == 1)
  {
    goto LABEL_6;
  }

  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 _referenceBounds];
  if (v14 <= 320.0)
  {

LABEL_6:
    goto LABEL_7;
  }

  if (v11 == 1)
  {
    v21 = +[TypistKeyboardData keyboardData];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v26 forKey:*MEMORY[0x277D6F7C8]];
    v23 = [(objc_class *)v21 setKeyboardUISettings:v22];

    [(TypistKeyboard *)self preprocessing];
    goto LABEL_8;
  }

LABEL_7:
  TYLogl(OS_LOG_TYPE_ERROR, @"### WARNING: setOneHandedPosition - The one handed mode is not supported on this device with current orientation. Nothing to do...", v15, v16, v17, v18, v19, v20, v25);
LABEL_8:
}

- (void)moveFloatingKeyboardToPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v34[2] = *MEMORY[0x277D85DE8];
  if ([(TypistKeyboard *)self isFloating])
  {
    +[TypistKeyboardUtilities floatingKeyboardDraggablePoint];
    v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
    v34[0] = v13;
    v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
    v34[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

    v16 = MEMORY[0x277CCABB0];
    v17 = 1.0 / +[TypistKeyboardUtilities touchScanRate];
    *&v17 = v17;
    v18 = [v16 numberWithFloat:v17];
    v32[0] = @"ALPHA";
    LODWORD(v19) = 1.0;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v32[1] = @"CPPATHGEN_TIME_INTERVAL";
    v33[0] = v20;
    v33[1] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v22 = [TypistPathUtilities generatePathArgumentStringWithParameters:v21 fromPoints:v15];

    v29[0] = @"action";
    v29[1] = @"argumentList";
    v30[0] = @"mt";
    v30[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v31 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

    v25 = [TypistKeyboardUtilities convertRecapCommandsFromListOfActions:v24];
    [TypistKeyboardUtilities launchRecap:v25];

    v26 = [(TypistKeyboard *)self typeInterval];
    [v26 doubleValue];
    [TypistKeyboardUtilities waitFor:?];

    [(TypistKeyboard *)self preprocessing];
    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v28 = *MEMORY[0x277D85DE8];

    TYLog(@"Keyboard is not currently in a floating state.", v6, v7, v8, v9, v10, v11, v12, v36);
  }
}

- (id)keysDataForInputMode:(id)a3 andFileName:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 stringWithFormat:@"%@/System/Library/TextInput/TextInput_%@.bundle/%@", GSSystemRootDirectory(), v7, v6];

  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v8 options:1 error:0];
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:0];

  return v10;
}

- (BOOL)dictationSupported
{
  v2 = [(TypistKeyboard *)self keyboardID];
  v3 = [TypistKeyboardUtilities isDictationSupported:v2];

  return v3;
}

- (void)setTargetApplicationBundleIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(TypistKeyboard *)self getTargetApplicationBundleIdentifier];

  v5 = v6;
  if (v4 != v6)
  {
    [TypistKeyboardData setTargetApplicationBundleID:v6];
    v5 = v6;
  }
}

- (id)getShiftPlaneForDefaultPlane
{
  v3 = [(TypistKeyboard *)self planeSwitchTable];
  v4 = [(TypistKeyboard *)self defaultPlaneName];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 allKeysForObject:@"⇧"];
  v7 = [v6 lastObject];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_288014100;
  }

  v9 = v8;

  return v8;
}

- (id)getShiftPlaneForAlternatePlane
{
  v3 = [(TypistKeyboard *)self planeSwitchTable];
  v4 = [(TypistKeyboard *)self defaultPlaneName];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 allKeysForObject:@"🔤"];
  v7 = [v6 lastObject];

  if (v7)
  {
    v8 = [(TypistKeyboard *)self planeSwitchTable];
    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = [v9 allKeysForObject:@"⇧"];
    v11 = [v10 lastObject];
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_288014100;
  }

  v13 = v12;

  return v12;
}

- (id)getAlternatePlanesForDefaultPlane
{
  v3 = objc_opt_new();
  v4 = [(TypistKeyboard *)self planeSwitchTable];
  v5 = [(TypistKeyboard *)self defaultPlaneName];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 allKeysForObject:@"🔤"];
  v8 = [v7 lastObject];

  if (v8)
  {
    [v3 addObject:v8];
    v9 = [(TypistKeyboard *)self planeSwitchTable];
    v10 = [v9 objectForKeyedSubscript:v8];
    v11 = [v10 allKeysForObject:@"⇧"];
    v12 = [v11 lastObject];

    if (v12)
    {
      [v3 addObject:v12];
    }

    v13 = v3;
  }

  else
  {
    v13 = &unk_28802A2A0;
  }

  return v13;
}

- (void)preprocessing
{
  v10 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardLayout:"getKeyboardLayout:", self];
  v3 = [v10 objectForKeyedSubscript:@"keyPlanes"];
  [(TypistKeyboard *)self setKeyPlanes:v3];

  v4 = [v10 objectForKeyedSubscript:@"defaultPlaneName"];
  [(TypistKeyboard *)self setDefaultPlaneName:v4];

  v5 = [v10 objectForKeyedSubscript:@"planeSwitchTable"];
  [(TypistKeyboard *)self setPlaneSwitchTable:v5];

  v6 = [v10 objectForKeyedSubscript:@"extraKeyplaneData"];

  if (v6)
  {
    v7 = [v10 objectForKeyedSubscript:@"extraKeyplaneData"];
    [(TypistKeyboard *)self setupExtraKeyplaneDataIfNeeded:v7];
  }

  v8 = +[TypistKeyboardData keyboardData];
  v9 = [(TypistKeyboard *)self defaultPlaneName];
  [(objc_class *)v8 switchToPlane:v9];

  [TypistKeyboardUtilities waitFor:0.2];
}

- (id)changeKeyNameToGenericCharacter:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [v4 containsString:@"space-key"];

  if (v5)
  {
    v6 = @" ";
  }

  else
  {
    v7 = [v3 lowercaseString];
    v8 = [v7 containsString:@"return-key"];

    if (v8)
    {
      v6 = @"⏎";
    }

    else
    {
      v9 = [v3 lowercaseString];
      v10 = [v9 containsString:@"delete"];

      if (v10)
      {
        v6 = @"⌫";
      }

      else
      {
        v11 = [v3 lowercaseString];
        v12 = [v11 containsString:@"international"];

        if (v12)
        {
          v6 = @"🌐";
        }

        else
        {
          v13 = [v3 lowercaseString];
          v14 = [v13 containsString:@"writeboard-key"];

          if (v14)
          {
            v6 = @"☝";
          }

          else
          {
            v15 = [v3 lowercaseString];
            v16 = [v15 containsString:@"shift"];

            if (v16)
            {
              v6 = @"⇧";
            }

            else
            {
              v17 = [v3 lowercaseString];
              v18 = [v17 containsString:@"tab-key"];

              if (v18)
              {
                v6 = @"⇥";
              }

              else
              {
                v19 = [v3 lowercaseString];
                v20 = [v19 containsString:@"more-key"];

                if (v20)
                {
                  v6 = @"🔤";
                }

                else
                {
                  v21 = [v3 lowercaseString];
                  v22 = [v21 containsString:@"dictation"];

                  if (v22)
                  {
                    v6 = @"🎙";
                  }

                  else
                  {
                    v23 = [v3 lowercaseString];
                    v24 = [v23 containsString:@"undo"];

                    if (v24)
                    {
                      v6 = @"↩";
                    }

                    else
                    {
                      v25 = [v3 lowercaseString];
                      v26 = [v25 containsString:@"redo"];

                      if (v26)
                      {
                        v6 = @"↪";
                      }

                      else
                      {
                        v6 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (CGPoint)calculateCoordinatesForFlickGesture:(CGPoint)a3 direction:(id)a4 offset:(float)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_2701AD026;
  v22 = x;
  v23 = y;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__TypistKeyboard_calculateCoordinatesForFlickGesture_direction_offset___block_invoke;
  v14[3] = &unk_279DF47C8;
  v9 = v8;
  v17 = a5;
  v15 = v9;
  v16 = &v18;
  [TypistKeyboardUtilities runOnMainThread:v14];
  v10 = v19[4];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

void __71__TypistKeyboard_calculateCoordinatesForFlickGesture_direction_offset___block_invoke(uint64_t a1)
{
  v12 = 0.0;
  v13 = 0.0;
  if ([*(a1 + 32) isEqualToString:@"↓"])
  {
    v2 = *(a1 + 48) + 0.0;
LABEL_5:
    v13 = v2;
    goto LABEL_15;
  }

  if ([*(a1 + 32) isEqualToString:@"↑"])
  {
    v2 = 0.0 - *(a1 + 48);
    goto LABEL_5;
  }

  if ([*(a1 + 32) isEqualToString:@"←"])
  {
    v3 = 0.0 - *(a1 + 48);
  }

  else if ([*(a1 + 32) isEqualToString:@"→"])
  {
    v3 = *(a1 + 48) + 0.0;
  }

  else if ([*(a1 + 32) isEqualToString:@"↙"])
  {
    v4 = *(a1 + 48);
    v5 = v4 + 0.0;
    v3 = 0.0 - v4;
    v13 = v5;
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"↘"])
    {
      goto LABEL_15;
    }

    v3 = *(a1 + 48) + 0.0;
    v13 = v3;
  }

  v12 = v3;
LABEL_15:
  v6 = [MEMORY[0x277D75418] currentDevice];
  +[TypistKeyboardUtilities correctForRotation:orientation:](TypistKeyboardUtilities, "correctForRotation:orientation:", &v12, [v6 orientation]);

  v7 = *(*(a1 + 40) + 8);
  v8 = v13;
  v9 = *(v7 + 32) + v12;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  *(v7 + 32) = v9;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40) + v8;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  *(v10 + 40) = v11;
}

- (id)addKeyboardPopupKeys:(id)a3 inPlane:(id)a4 addTo:(id)a5 keyplaneKeycaps:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData addKeyboardPopupKeys:"addKeyboardPopupKeys:keys:inPlane:addTo:keyplaneKeycaps:" keys:self inPlane:v13 addTo:v12 keyplaneKeycaps:v11, v10];

  return v14;
}

- (BOOL)_isPlaneControlKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"⇧"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"⌫") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"🔤") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"🌐") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"⇪"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"⏎"];
  }

  return v4;
}

- (CGPoint)_guardAgainstOffScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  GSMainScreenPointSize();
  v7 = 0.0;
  if (x >= 0.0)
  {
    v8 = x;
  }

  else
  {
    v8 = 0.0;
  }

  if (y >= 0.0)
  {
    v7 = y;
  }

  if (v8 <= v5)
  {
    v5 = v8;
  }

  if (v7 <= v6)
  {
    v6 = v7;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_determinePointBetween:(CGPoint)a3 nextPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  [TypistKeyboardUtilities generateGaussianPointWithMean:a3.x andSigma:a3.y, 5.0];
  v10 = x - v7;
  if (v10 >= 0.0)
  {
    if (v8 >= v7)
    {
      goto LABEL_7;
    }

    v12 = v7 - v8;
    v13 = 2.0;
  }

  else
  {
    if (v8 <= v7)
    {
      goto LABEL_7;
    }

    v12 = v8 - v7;
    v13 = -2.0;
  }

  v8 = v8 + v12 * v13;
LABEL_7:
  v11 = y - v6;
  if (v11 >= 0.0)
  {
    if (v9 < v6)
    {
      v14 = v6 - v9;
      v15 = 2.0;
      goto LABEL_12;
    }
  }

  else if (v9 > v6)
  {
    v14 = v9 - v6;
    v15 = -2.0;
LABEL_12:
    v9 = v9 + v14 * v15;
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_generateArgumentList:(id)a3
{
  v96[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TypistKeyboard *)self swipeAlpha];
  [v5 doubleValue];
  v83 = v6;

  v7 = [(TypistKeyboard *)self swipeSigma];
  [v7 doubleValue];
  v9 = v8;

  v10 = [(TypistKeyboard *)self swipePivotProbability];
  [v10 doubleValue];
  v88 = v11;

  v12 = [(TypistKeyboard *)self swipeErrantProbability];
  [v12 doubleValue];
  v87 = v13;

  v14 = [(TypistKeyboard *)self swipeErrantSigma];
  [v14 doubleValue];
  v86 = v15;

  v16 = [(TypistKeyboard *)self swipeConvexProbability];
  [v16 doubleValue];
  v89 = v17;

  v18 = [(TypistKeyboard *)self swipeConvexSigma];
  [v18 doubleValue];
  v85 = v19;

  v20 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_288014100];
  v21 = objc_opt_new();
  if ([v4 count])
  {
    v22 = 0;
    v82 = 0.333333333;
    v81 = 0.666666667;
    v80 = 0.666666667;
    v79 = 0.333333333;
    do
    {
      v23 = [v4 objectAtIndexedSubscript:{v22, *&v79, *&v80, *&v81, *&v82}];
      [v23 floatValue];
      v25 = v24;

      v26 = [v4 objectAtIndexedSubscript:v22 + 1];
      [v26 floatValue];
      v28 = v27;

      if (!v22)
      {
        [TypistKeyboardUtilities generateGaussianPointWithMean:v25 andSigma:v28, v9];
        [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
        v29 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
        [v21 addObject:v29];
      }

      [TypistKeyboardUtilities generateGaussianPointWithMean:v25 andSigma:v28, v9];
      [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
      v31 = v30;
      v33 = v32;
      v34 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
      [v21 addObject:v34];

      if (v22 <= [v4 count] - 4 && objc_msgSend(v4, "count") >= 3)
      {
        if (arc4random() / 4294967300.0 <= v87)
        {
          [TypistKeyboardUtilities generateGaussianPointWithMean:v31 andSigma:v33, v86];
          [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
          v31 = v35;
          v33 = v36;
          v37 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
          [v21 addObject:v37];
        }

        if (arc4random() / 4294967300.0 <= v88 && v22 != 0)
        {
          v39 = [v4 objectAtIndexedSubscript:v22 + 2];
          [v39 floatValue];
          v41 = v40;
          v42 = [v4 objectAtIndexedSubscript:v22 + 3];
          [v42 floatValue];
          v44 = v43;

          [(TypistKeyboard *)self _determinePointBetween:v31 nextPoint:v33, v41, v44];
          [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
          v31 = v45;
          v33 = v46;
          v47 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
          [v21 addObject:v47];
        }

        if (arc4random() / 4294967300.0 <= v89)
        {
          v48 = [v4 objectAtIndexedSubscript:v22 + 2];
          [v48 floatValue];
          v50 = v49;
          v51 = [v4 objectAtIndexedSubscript:v22 + 3];
          [v51 floatValue];
          v53 = v52;

          if (arc4random() / 4294967300.0 <= v89)
          {
            [TypistKeyboardUtilities generateGaussianPointWithMean:v50 * v82 + v31 * v81 andSigma:v53 * v82 + v33 * v81, v85];
            [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
            v59 = v58;
            v84 = v60;
            [TypistKeyboardUtilities generateGaussianPointWithMean:v50 * v80 + v31 * v79 andSigma:v53 * v80 + v33 * v79, v85];
            [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
            v55 = v61;
            v57 = v62;
            v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v84}];
            [v21 addObject:v63];
          }

          else
          {
            [TypistKeyboardUtilities generateGaussianPointWithMean:(v31 + v50) * 0.5 andSigma:(v33 + v53) * 0.5, v85];
            [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
            v55 = v54;
            v57 = v56;
          }

          v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v55, v57}];
          [v21 addObject:v64];
        }
      }

      if (v22 == [v4 count] - 2)
      {
        [TypistKeyboardUtilities generateGaussianPointWithMean:v25 andSigma:v28, v9];
        [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
        v65 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
        [v21 addObject:v65];
      }

      v22 += 2;
    }

    while (v22 < [v4 count]);
  }

  v66 = 1.0 / +[TypistKeyboardUtilities touchScanRate];
  *&v66 = v66;
  v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
  v95[0] = @"ALPHA";
  HIDWORD(v68) = HIDWORD(v83);
  *&v68 = v83;
  v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  v96[0] = v69;
  v96[1] = v67;
  v95[1] = @"CPPATHGEN_TIME_INTERVAL";
  v95[2] = @"CPPATHGEN_TIMING_ALGORITHM";
  v95[3] = @"CPPATHGEN_VELOCITY";
  v96[2] = @"EQUIDISTANT";
  v96[3] = &unk_28802A898;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:4];

  v71 = [TypistPathUtilities generatePathArgumentStringWithParameters:v70 fromPoints:v21];
  [v20 appendString:v71];

  v92[0] = @"action";
  v92[1] = @"argumentList";
  v93[0] = @"mt";
  v93[1] = v20;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v94[0] = v72;
  v90[0] = @"action";
  v90[1] = @"time";
  v91[0] = @"wait";
  v73 = [(TypistKeyboard *)self typeInterval];
  v74 = [v73 stringValue];
  v91[1] = v74;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v94[1] = v75;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];

  v77 = *MEMORY[0x277D85DE8];

  return v76;
}

- (id)generateSwipeStream:(id)a3
{
  v219[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    TYLogl(OS_LOG_TYPE_DEBUG, @"Generating swipe stream for input: [%@]", v5, v6, v7, v8, v9, v10, v4);
    [TypistKeyboardUtilities waitFor:0.1];
    v194 = +[TypistKeyboardUtilities formattedKeyplaneName];
    v12 = objc_opt_new();
    v218[0] = @"action";
    v218[1] = @"time";
    v219[0] = @"wait";
    v13 = [(TypistKeyboard *)self typeInterval];
    v14 = [v13 stringValue];
    v219[1] = v14;
    v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:2];

    v176 = [(TypistKeyboard *)self swipeForceSpace];
    v15 = objc_opt_new();
    if ([v11 length])
    {
      v16 = 0;
      v190 = 1;
      v192 = v12;
      v182 = self;
      v186 = v15;
      while (1)
      {
        v17 = [v11 rangeOfComposedCharacterSequenceAtIndex:v16];
        v19 = v16 - v17;
        if (v16 < v17)
        {
          v19 = 0;
        }

        v195 = v16;
        if (v16 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v16;
        }

        v21 = v18 - v19;
        v22 = [v11 substringWithRange:{v20, v18 - v19}];
        v23 = [(TypistKeyboard *)self _multiCharacterTrailForGrapheme:v22];
        obj = v23;
        if (v23)
        {
          v199 = 0u;
          v200 = 0u;
          v197 = 0u;
          v198 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v197 objects:v217 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v198;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v198 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v197 + 1) + 8 * i);
                v29 = [v28 length];
                v30 = [v11 substringWithRange:{v21 + v20, v29}];
                LODWORD(v28) = [v30 isEqualToString:v28];

                if (v28)
                {
                  v21 += v29;
                  v31 = [v11 substringWithRange:{v20, v21}];

                  v22 = v31;
                }
              }

              v25 = [obj countByEnumeratingWithState:&v197 objects:v217 count:16];
            }

            while (v25);
          }
        }

        v32 = v22;
        v33 = v32;
        if (v21)
        {
          v34 = v21 - 1;
          v35 = v32;
          self = v182;
          v12 = v192;
          while (1)
          {
            v36 = [(TypistKeyboard *)v182 findKeyOnAnyPlane:v35];

            if (v36)
            {
              break;
            }

            v37 = [v11 substringWithRange:{v20, v34}];

            --v34;
            v35 = v37;
            if (v34 == -1)
            {
              goto LABEL_26;
            }
          }

          v37 = v35;

          v195 += v34;
          v33 = v37;
        }

        else
        {
          v37 = v32;
          self = v182;
          v12 = v192;
        }

LABEL_26:
        v38 = objc_opt_new();
        if ([v33 isEqualToString:@"⇪"])
        {
          [v38 addObject:v187];
          v39 = [(TypistKeyboard *)self generateKeystrokeStream:v33];
          [v38 addObjectsFromArray:v39];

          v15 = v186;
          if ([v186 count])
          {
            v215 = @"actions";
            v40 = [(TypistKeyboard *)self _generateArgumentList:v186];
            v216 = v40;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
            [v12 addObject:v41];

            [v186 removeAllObjects];
          }

          [v12 addObject:v187];
          [v12 addObjectsFromArray:v38];
          v190 = 1;
          goto LABEL_133;
        }

        v183 = v38;
        v42 = [(TypistKeyboard *)self getPostfixKey:v33];

        v43 = v42;
        v44 = [(TypistKeyboard *)self keyPlanes];
        v45 = [v44 objectForKeyedSubscript:v194];
        v46 = [v45 objectForKeyedSubscript:v43];
        v47 = [v46 mutableCopy];

        v48 = v47;
        if (!v47)
        {
          break;
        }

        v49 = [v47 objectForKeyedSubscript:@"key"];
        v12 = v192;
        v193 = v43;
        if (![v49 isEqualToString:@" "])
        {

LABEL_40:
          v61 = v38;
          v62 = [v48 objectForKeyedSubscript:@"plane"];
          v63 = [v62 isEqualToString:&stru_288014100];
          v64 = v194;
          if ((v63 & 1) == 0)
          {
            v174 = [v48 objectForKeyedSubscript:@"plane"];
            v64 = v174;
          }

          if ([v194 isEqualToString:v64])
          {
            [v48 objectForKeyedSubscript:@"key"];
            v66 = v65 = v48;
            v67 = [v66 isEqualToString:@" "];

            v48 = v65;
            if (v63)
            {
              goto LABEL_47;
            }

LABEL_46:
          }

          else
          {
            v67 = 1;
            if ((v63 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

LABEL_47:

          v179 = 0;
          v190 |= v67;
          v38 = v61;
LABEL_48:
          v43 = v193;
LABEL_98:
          v108 = [v48 objectForKeyedSubscript:@"plane"];
          v109 = [v108 isEqualToString:&stru_288014100];

          v110 = v190;
          if (v109)
          {
            [v48 setObject:v194 forKey:@"plane"];
            v110 = 1;
          }

          v189 = v48;
          if (v195)
          {
            v111 = [v11 substringWithRange:{v195 - 1, 1}];
            v175 = v111;
          }

          else
          {
            v111 = 0;
          }

          v112 = [v11 substringToIndex:v20];
          v113 = [(TypistKeyboard *)self isSwitchedToCapitalPlane:v48 previous:v111 currentPlane:v194 context:v112];

          if (v195)
          {
          }

          v15 = v186;
          if (v113)
          {
            v114 = [(TypistKeyboard *)self defaultPlaneName];
            [(TypistKeyboard *)self getShiftedKeyPlaneName:v114];
          }

          else
          {
            v114 = [v48 objectForKeyedSubscript:@"plane"];
            [(TypistKeyboard *)self getExpectedPlaneNameForKey:v43 currentPlane:v114];
          }
          v178 = ;

          v115 = +[TypistKeyboardData keyboardData];
          v116 = [v48 objectForKeyedSubscript:@"plane"];
          v117 = [(objc_class *)v115 getKeyplaneDescription:v116];

          if ((v110 & 1) != 0 && [v186 count])
          {
            v209 = @"actions";
            [(TypistKeyboard *)self _generateArgumentList:v186];
            v119 = v118 = v117;
            v210 = v119;
            v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
            [v192 addObject:v120];

            v117 = v118;
            [v186 removeAllObjects];
          }

          v185 = v117;
          v193 = v43;
          if ([v117 isLetters] && (objc_msgSend(v48, "objectForKeyedSubscript:", @"key"), v121 = objc_claimAutoreleasedReturnValue(), v122 = -[TypistKeyboard _isPlaneControlKey:](self, "_isPlaneControlKey:", v121), v121, !v122))
          {
            v133 = [v48 objectForKeyedSubscript:@"type"];
            v134 = [v133 isEqualToString:@"popover"];

            if (v134)
            {
              v135 = MEMORY[0x277CBEB38];
              v136 = [(TypistKeyboard *)self keyPlanes];
              v137 = [v48 objectForKeyedSubscript:@"plane"];
              [v136 objectForKeyedSubscript:v137];
              v139 = v138 = v38;
              v140 = [v189 objectForKeyedSubscript:@"basekey"];
              v141 = [v139 objectForKeyedSubscript:v140];
              v142 = [v135 dictionaryWithDictionary:v141];

              v15 = v186;
              v38 = v138;

              v143 = [v142 objectForKeyedSubscript:@"x"];
              [v189 setObject:v143 forKey:@"x"];

              v144 = [v142 objectForKeyedSubscript:@"y"];
              [v189 setObject:v144 forKey:@"y"];

              [v189 setObject:@"tap" forKey:@"action"];
            }

            v145 = MEMORY[0x277CCABB0];
            v146 = [v189 objectForKeyedSubscript:@"x"];
            [v146 floatValue];
            v147 = [v145 numberWithFloat:?];
            [v15 addObject:v147];

            v148 = MEMORY[0x277CCABB0];
            v149 = [v189 objectForKeyedSubscript:@"y"];
            [v149 floatValue];
            v150 = [v148 numberWithFloat:?];
            [v15 addObject:v150];

            if (v179)
            {
              v207 = @"actions";
              v205[0] = @"action";
              v205[1] = @"plane";
              v206[0] = @"waitfor";
              v151 = [v189 objectForKeyedSubscript:?];
              v206[1] = v151;
              v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v206 forKeys:v205 count:2];
              v153 = [v179 arrayByAddingObject:v152];
              v208 = v153;
              v176 = 1;
              v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
              [v192 addObject:v154];

              v15 = v186;
              [(TypistKeyboard *)self setIsCapsLockedState:0];
            }

            else
            {
              v176 |= [(TypistKeyboard *)self swipeForceSpace];
            }

            if (v195 == [v11 length] - 1)
            {
              v203 = @"actions";
              v164 = [(TypistKeyboard *)self _generateArgumentList:v15];
              v204 = v164;
              v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
              v12 = v192;
              [v192 addObject:v165];

              [v15 removeAllObjects];
              v176 = [(TypistKeyboard *)self swipeForceSpace];
              v190 = 0;
              v51 = v189;
            }

            else
            {
              v190 = 0;
              v51 = v189;
              v12 = v192;
            }
          }

          else
          {
            v51 = v48;
            v123 = [v48 objectForKeyedSubscript:@"type"];
            v124 = [v123 isEqualToString:@"basekey"];

            if (v124)
            {
              [v38 addObject:v48];
            }

            else
            {
              v125 = [v48 objectForKeyedSubscript:@"type"];
              v126 = [v125 isEqualToString:@"gesture"];

              if (v126)
              {
                v127 = [(TypistKeyboard *)self keyPlanes];
                v128 = [v48 objectForKeyedSubscript:@"plane"];
                v129 = [v127 objectForKeyedSubscript:v128];
                v130 = [v48 objectForKeyedSubscript:@"basekey"];
                v131 = [v129 objectForKeyedSubscript:v130];

                v15 = v186;
                [v38 addObject:v131];
                [v38 addObject:v51];
                v132 = [v51 objectForKeyedSubscript:@"key"];

                v193 = v132;
              }

              else
              {
                v155 = [v48 objectForKeyedSubscript:@"type"];
                v156 = [v155 isEqualToString:@"popover"];

                if (v156)
                {
                  v157 = MEMORY[0x277CBEB38];
                  v158 = [(TypistKeyboard *)self keyPlanes];
                  v159 = [v48 objectForKeyedSubscript:@"plane"];
                  v160 = [v158 objectForKeyedSubscript:v159];
                  v161 = [v189 objectForKeyedSubscript:@"basekey"];
                  v162 = [v160 objectForKeyedSubscript:v161];
                  v163 = [v157 dictionaryWithDictionary:v162];

                  v51 = v189;
                  [v163 setValue:@"taphold" forKey:@"action"];
                  v38 = v183;
                  [v183 addObject:v163];
                  [v183 addObject:v189];
                }

                else
                {
                  v166 = [(TypistKeyboard *)self keyPlanes];
                  v167 = [v48 objectForKeyedSubscript:@"plane"];
                  v168 = [v166 objectForKeyedSubscript:v167];
                  v169 = [v48 objectForKeyedSubscript:@"basekey"];
                  v170 = [v168 objectForKeyedSubscript:v169];

                  v51 = v189;
                  [v183 addObject:v170];
                  [v183 addObject:v189];

                  v38 = v183;
                }

                v15 = v186;
              }
            }

            v12 = v192;
            [v38 addObject:v187];
            v201[0] = @"keystroke";
            v201[1] = @"actions";
            v202[0] = v193;
            v202[1] = v38;
            v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v202 forKeys:v201 count:2];
            [v192 addObject:v171];

            [v15 removeAllObjects];
            v176 = 1;
            v190 = 1;
          }

          v86 = v185;
          v85 = v178;
          v54 = v179;
LABEL_131:

          v194 = v85;
          goto LABEL_132;
        }

        v50 = [(TypistKeyboard *)self swipeForceSpace];

        if (v50)
        {
          goto LABEL_40;
        }

        v51 = v48;
        if ([v186 count])
        {
          v211 = @"actions";
          v52 = [(TypistKeyboard *)self _generateArgumentList:v186];
          v212 = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
          [v192 addObject:v53];

          [v186 removeAllObjects];
        }

        v54 = 0;
        v190 = 1;
        if (v176)
        {
          v179 = 0;
          goto LABEL_48;
        }

        v176 = 0;
        v15 = v186;
LABEL_132:

        v33 = v193;
LABEL_133:

        v16 = v195 + 1;
        if (v195 + 1 >= [v11 length])
        {
          goto LABEL_134;
        }
      }

      v55 = [@"⊎" stringByAppendingString:v43];
      v56 = [(TypistKeyboard *)self keyPlanes];
      v57 = [v56 objectForKeyedSubscript:v194];
      v184 = v55;
      v58 = [v57 objectForKeyedSubscript:v55];
      v59 = [v58 mutableCopy];

      v48 = v59;
      if (v59)
      {
        v179 = 0;
        v60 = v184;
LABEL_97:

        goto LABEL_98;
      }

      v68 = [(TypistKeyboard *)self findKeyInOtherPlanes:v43 currentPlane:v194];
      v69 = v43;
      v51 = [v68 mutableCopy];

      v12 = v192;
      v193 = v69;
      if (!v51)
      {
        TYLogl(OS_LOG_TYPE_ERROR, @"CRITICAL WARNING: key '%@' cannot be found in any of the keyboard planes, or is not supported.", v70, v71, v72, v73, v74, v75, v69);
        v54 = 0;
        v85 = v194;
        v86 = v184;
        v15 = v186;
        goto LABEL_131;
      }

      if ([(TypistKeyboard *)self isCapsLockedState])
      {
        v76 = [v51 objectForKeyedSubscript:@"plane"];
        v77 = [(TypistKeyboard *)self getShiftedKeyPlaneName:v194];
        v78 = [v76 isEqualToString:v77];

        if (v78)
        {
          v79 = [v193 lowercaseString];

          v188 = [(TypistKeyboard *)self keyPlanes];
          v177 = [v188 objectForKeyedSubscript:v194];
          v80 = [v177 objectForKeyedSubscript:v79];
          v48 = [v80 mutableCopy];

          v81 = 0;
          v43 = v79;
          v60 = v184;
LABEL_96:
          v179 = v81;

          goto LABEL_97;
        }
      }

      v188 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyplaneDescription:"getKeyplaneDescription:", v194];
      v82 = +[TypistKeyboardData keyboardData];
      v83 = [v51 objectForKeyedSubscript:@"plane"];
      if ([v83 isEqualToString:&stru_288014100])
      {
        v84 = [(objc_class *)v82 getKeyplaneDescription:v194];
      }

      else
      {
        v87 = [v51 objectForKeyedSubscript:@"plane"];
        v84 = [(objc_class *)v82 getKeyplaneDescription:v87];
      }

      v48 = v51;
      v177 = v84;
      if ([v188 isAlphabeticPlane] && objc_msgSend(v188, "isShiftKeyplane") && objc_msgSend(v84, "isAlphabeticPlane") && (objc_msgSend(v84, "isShiftKeyplane") & 1) == 0 && (!objc_msgSend(v188, "isAlphabeticPlane") || !objc_msgSend(v188, "isShiftKeyplane") || !objc_msgSend(v84, "isAlphabeticPlane") || objc_msgSend(v84, "isShiftKeyplane")))
      {
        if (![v188 isAlphabeticPlane])
        {
          goto LABEL_87;
        }

        v60 = v184;
        if (([v188 isShiftKeyplane] & 1) != 0 || !objc_msgSend(v84, "isAlphabeticPlane"))
        {
          v81 = 0;
          v190 = 1;
          v43 = v193;
          goto LABEL_96;
        }

        if (![v84 isShiftKeyplane])
        {
LABEL_87:
          v81 = 0;
          v190 = 1;
          v43 = v193;
          v60 = v184;
          goto LABEL_96;
        }
      }

      v88 = [v51 objectForKeyedSubscript:@"plane"];
      v89 = [v88 isEqualToString:&stru_288014100];

      if (v89)
      {
        [v51 setObject:v194 forKey:@"plane"];
      }

      v90 = [v51 objectForKeyedSubscript:@"plane"];
      v81 = [(TypistKeyboard *)self switchToPlane:v90 fromPlane:v194];

      if (v195 < 1)
      {
LABEL_91:
        v48 = v51;
        v43 = v193;
        v60 = v184;
LABEL_92:
        if (v81 && [v81 count])
        {
          [v38 addObjectsFromArray:v81];
          v213[0] = @"action";
          v213[1] = @"plane";
          v214[0] = @"waitfor";
          v106 = [v48 objectForKeyedSubscript:?];
          v214[1] = v106;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:v213 count:2];
          v107 = v181 = v81;
          [v38 addObject:v107];

          v81 = v181;
          v60 = v184;
          [(TypistKeyboard *)self setIsCapsLockedState:0];
        }

        v190 = 1;
        goto LABEL_96;
      }

      v191 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      if ([v191 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", v195)}])
      {
        v180 = v81;
        v91 = [v11 substringToIndex:v195];
        v92 = [(TypistKeyboard *)self _sanitizedStringForAutoShiftCheck:v91];
        v93 = [(TypistKeyboard *)self isAutoshiftedToCapitalPlane:v92];

        if (v93)
        {
          v94 = v180;
          v95 = [v180 count];
          v96 = [v180 lastObject];
          v97 = [v96 objectForKeyedSubscript:@"plane"];
          v98 = [v97 containsString:@"small-letter"];

          if (v98)
          {
            v99 = [v180 count] - 1;
LABEL_69:
            v81 = [v94 subarrayWithRange:{0, v99}];
            v100 = v94;
            v38 = v183;
            v60 = v184;
            v48 = v51;
            v43 = v193;
LABEL_72:

            goto LABEL_92;
          }

          v101 = v95 - 2;
          v38 = v183;
          v48 = v51;
          if (v95 >= 2)
          {
            v94 = v180;
            v191 = [v180 lastObject];
            v102 = [v191 objectForKeyedSubscript:@"action"];
            if ([v102 isEqualToString:@"wait"])
            {
              v103 = [v180 objectAtIndexedSubscript:v101];
              v104 = [v103 objectForKeyedSubscript:@"plane"];
              v105 = [v104 containsString:@"small-letter"];

              if (v105)
              {
                v99 = [v180 count] - 2;
                goto LABEL_69;
              }

              v38 = v183;
              v81 = v180;
              goto LABEL_91;
            }

            v81 = v180;
LABEL_71:
            v43 = v193;
            v60 = v184;
            v100 = v191;
            goto LABEL_72;
          }
        }

        else
        {
          v48 = v51;
        }

        v43 = v193;
        v60 = v184;
        v81 = v180;
        goto LABEL_92;
      }

      v48 = v51;
      goto LABEL_71;
    }

LABEL_134:
  }

  else
  {
    v12 = 0;
  }

  v172 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)generateKeystrokeStream:(id)a3
{
  v227 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 isEqualToString:&stru_288014100] & 1) != 0)
  {
    v188 = 0;
    goto LABEL_155;
  }

  v203 = +[TypistKeyboardUtilities formattedKeyplaneName];
  TYLogl(OS_LOG_TYPE_DEBUG, @"Generating keystroke (tap) stream for input: [%@]", v6, v7, v8, v9, v10, v11, v5);
  v188 = objc_opt_new();
  if ([v5 length])
  {
    v205 = 0;
    v12 = 0;
    v186 = &stru_288014100;
    v208 = self;
    while (1)
    {
      v13 = [v5 substringWithRange:{v12, 1}];
      if ([v13 isEqualToString:@"‍"])
      {
        v14 = [v5 length] - 1;

        if (v12 < v14)
        {
          [v5 rangeOfComposedCharacterSequenceAtIndex:v12 + 1];
          v16 = v15 + 1;
          v17 = v12;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v17 = [v5 rangeOfComposedCharacterSequenceAtIndex:v12];
LABEL_11:
      v18 = v12 - v17;
      if (v12 < v17)
      {
        v18 = 0;
      }

      v196 = v12;
      if (v12 <= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v12;
      }

      v20 = v16 - v18;
      v21 = [v5 substringWithRange:{v19, v16 - v18}];
      v22 = [(TypistKeyboard *)v208 _multiCharacterTrailForGrapheme:v21];
      obj = v22;
      if (v22)
      {
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v210 objects:v226 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v211;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v211 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v210 + 1) + 8 * i);
              v28 = [v27 length];
              v29 = [v5 substringWithRange:{v20 + v19, v28}];
              LODWORD(v27) = [v29 isEqualToString:v27];

              if (v27)
              {
                v20 += v28;
                v30 = [v5 substringWithRange:{v19, v20}];

                v21 = v30;
              }
            }

            v24 = [obj countByEnumeratingWithState:&v210 objects:v226 count:16];
          }

          while (v24);
        }
      }

      v31 = v21;
      v32 = v31;
      if (v20)
      {
        v33 = v20 - 1;
        v34 = v31;
        v35 = v208;
        while (1)
        {
          v36 = [(TypistKeyboard *)v208 findKeyOnAnyPlane:v34];

          if (v36)
          {
            break;
          }

          v37 = [v5 substringWithRange:{v19, v33}];

          --v33;
          v34 = v37;
          if (v33 == -1)
          {
            goto LABEL_33;
          }
        }

        v37 = v34;

        v196 += v33;
        v32 = v37;
      }

      else
      {
        v37 = v31;
        v35 = v208;
      }

LABEL_33:
      v189 = v37;
      if (v205)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v186, v32];
        goto LABEL_35;
      }

      v39 = 0x277CBE000uLL;
      if ([(TypistKeyboard *)v35 isTenKey]|| [(TypistKeyboard *)v35 isKanaKeyboard]|| ([(__CFString *)v32 isEqualToString:@"↓"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"↑"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"←"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"→"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"↙"]& 1) == 0 && ![(__CFString *)v32 isEqualToString:@"↘"])
      {
        if ([(__CFString *)v32 isEqualToString:@"⇪"])
        {
          v40 = [(TypistKeyboard *)v35 keyPlanes];
          v41 = [v40 objectForKeyedSubscript:v203];
          v42 = [v41 objectForKeyedSubscript:v32];

          if (v42)
          {
            v194 = 0;
          }

          else
          {
            [(TypistKeyboard *)v35 setIsCapsLockedState:1];
            v38 = @"⇧";
LABEL_35:
            v194 = v205 ^ 1;

            v32 = v38;
          }

          v39 = 0x277CBE000;
        }

        else
        {
          v194 = 0;
        }

        v197 = objc_opt_new();
        v195 = [(__CFString *)v32 copy];
        v43 = [(TypistKeyboard *)v35 getPostfixKey:v32];

        v44 = [(TypistKeyboard *)v35 getActionForKeystroke:v43 fromKeyPlane:v203];
        v45 = [v44 mutableCopy];

        if (v45)
        {
          v46 = v196;
          goto LABEL_96;
        }

        v47 = [(TypistKeyboard *)v35 findKeyInOtherPlanes:v43 currentPlane:v203];
        v48 = [v47 mutableCopy];

        if (!v48)
        {
          v46 = v196;
          goto LABEL_58;
        }

        v206 = v48;
        if (![(TypistKeyboard *)v35 isCapsLockedState])
        {
          v46 = v196;
          goto LABEL_68;
        }

        v198 = v43;
        v49 = [v48 objectForKeyedSubscript:@"plane"];
        v50 = [(TypistKeyboard *)v35 getShiftedKeyPlaneName:v203];
        v51 = [v49 isEqualToString:v50];

        v46 = v196;
        if (!v51)
        {
          v43 = v198;
          goto LABEL_68;
        }

        v52 = [(__CFString *)v198 lowercaseString];

        v199 = [(TypistKeyboard *)v35 keyPlanes];
        v53 = [v199 objectForKeyedSubscript:v203];
        v54 = v52;
        v55 = [v53 objectForKeyedSubscript:v52];
        v56 = [v55 mutableCopy];

        v43 = v54;
        v206 = v56;
        if (v56)
        {
          goto LABEL_68;
        }

LABEL_58:
        v59 = [(TypistKeyboard *)v35 attemptToFindKeystrokeAsSecondaryDisplay:v43];
        v60 = [v59 mutableCopy];

        v190 = [v60 objectForKeyedSubscript:@"plane"];
        if ([v203 isEqualToString:?])
        {
          v206 = v60;
          v37 = v189;
        }

        else
        {
          v200 = v43;
          v181 = [v60 objectForKeyedSubscript:@"plane"];
          v61 = [TypistKeyboard switchToPlane:v35 fromPlane:"switchToPlane:fromPlane:"];
          if ([v61 count])
          {
            v206 = v60;
          }

          else
          {

            v206 = 0;
          }

          v37 = v189;

          v43 = v200;
        }

        if (!v206)
        {
          v80 = [(TypistKeyboard *)v35 tryAlternateVariationsOfKey:v43];
          if (v80)
          {
            [v188 addObjectsFromArray:v80];
          }

          else
          {
            TYLogl(OS_LOG_TYPE_ERROR, @"CRITICAL WARNING: key '%@' cannot be found in any of the keyboard planes, or is not supported.", v74, v75, v76, v77, v78, v79, v43);
          }

          v192 = v203;
          v58 = obj;
          v57 = v197;
          v82 = v195;
          goto LABEL_145;
        }

LABEL_68:
        v201 = v43;
        v62 = [v206 objectForKeyedSubscript:@"plane"];
        v63 = [v62 isEqualToString:&stru_288014100];

        if (v63)
        {
          [v206 setObject:v203 forKey:@"plane"];
        }

        v64 = [v206 objectForKeyedSubscript:@"plane"];
        if ([v64 isEqualToString:v203])
        {
          goto LABEL_95;
        }

        v65 = [v206 objectForKeyedSubscript:@"plane"];
        v66 = [(TypistKeyboard *)v35 switchToPlane:v65 fromPlane:v203];

        if (v46 < 1)
        {
          v45 = v206;
          goto LABEL_82;
        }

        if (!v66)
        {
          v45 = v206;
          goto LABEL_83;
        }

        v182 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
        if ([v182 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v46)}])
        {
          v191 = v66;
          v67 = [v5 substringToIndex:v46];
          v68 = [(TypistKeyboard *)v35 _sanitizedStringForAutoShiftCheck:v67];
          v69 = [(TypistKeyboard *)v35 isAutoshiftedToCapitalPlane:v68];

          if (!v69)
          {
            goto LABEL_92;
          }

          v183 = [v191 count];
          v70 = [v191 lastObject];
          v71 = [v70 objectForKeyedSubscript:@"plane"];
          v72 = [v71 containsString:@"small-letter"];

          if (v72)
          {
            v73 = -1;
            goto LABEL_77;
          }

          v83 = v183 - 2;
          v43 = v201;
          if (v183 < 2)
          {
LABEL_93:
            v45 = v206;
            v66 = v191;
            goto LABEL_94;
          }

          v66 = v191;
          v81 = [v191 lastObject];
          v184 = [v81 objectForKeyedSubscript:@"action"];
          if ([v184 isEqualToString:@"wait"])
          {
            v84 = [v191 objectAtIndexedSubscript:v83];
            v85 = [v84 objectForKeyedSubscript:@"plane"];
            v86 = [v85 containsString:@"small-letter"];

            if (v86)
            {
              v73 = -2;
LABEL_77:
              v45 = v206;
              v66 = [v191 subarrayWithRange:{0, objc_msgSend(v191, "count") + v73}];

LABEL_82:
              v43 = v201;
              if (!v66)
              {
LABEL_83:
                v35 = v208;
                goto LABEL_96;
              }

LABEL_94:
              v193 = v66;
              [(__CFString *)v197 addObjectsFromArray:v66];
              v224[1] = @"plane";
              v225[0] = @"waitfor";
              v224[0] = @"action";
              v87 = [v45 objectForKeyedSubscript:@"plane"];
              v225[1] = v87;
              v88 = [*(v39 + 2752) dictionaryWithObjects:v225 forKeys:v224 count:2];
              [(__CFString *)v197 addObject:v88];

              v35 = v208;
              [(TypistKeyboard *)v208 setIsCapsLockedState:0];
              v64 = v193;
LABEL_95:

              v45 = v206;
LABEL_96:
              v207 = v45;
              v89 = [v45 objectForKeyedSubscript:@"plane"];
              v90 = [v89 isEqualToString:&stru_288014100];

              if (v90)
              {
                [v207 setObject:v203 forKey:@"plane"];
              }

              if (v46)
              {
                v91 = [v5 substringWithRange:{v46 - 1, 1}];
                v187 = v91;
              }

              else
              {
                v91 = 0;
              }

              v92 = [v5 substringToIndex:v19];
              v93 = [(TypistKeyboard *)v35 isSwitchedToCapitalPlane:v207 previous:v91 currentPlane:v203 context:v92];

              if (v46)
              {
              }

              if (v93)
              {
                v94 = v43;
                v95 = [(TypistKeyboard *)v35 defaultPlaneName];
                v192 = [(TypistKeyboard *)v35 getShiftedKeyPlaneName:v95];
                v96 = v207;
              }

              else
              {
                v94 = v43;
                if (v194)
                {
                  v97 = @"⇪";
                }

                else
                {
                  v97 = v43;
                }

                v96 = v207;
                v95 = [v207 objectForKeyedSubscript:@"plane"];
                v192 = [(TypistKeyboard *)v35 getExpectedPlaneNameForKey:v97 currentPlane:v95];
              }

              v98 = +[TypistKeyboardData keyboardData];
              v99 = [v96 objectForKeyedSubscript:@"plane"];
              v100 = [(objc_class *)v98 getKeyplaneDescription:v99];

              v101 = [v96 objectForKeyedSubscript:@"type"];
              LODWORD(v99) = [v101 isEqualToString:@"basekey"];

              v202 = v94;
              v204 = v100;
              if (v99)
              {
                if ([(TypistKeyboard *)v35 tapStyle])
                {
                  if ([v100 isLetters])
                  {
                    v102 = [v96 objectForKeyedSubscript:@"key"];
                    v103 = [(TypistKeyboard *)v35 _isPlaneControlKey:v102];

                    if (!v103)
                    {
                      v104 = [v96 objectForKeyedSubscript:@"centerOfGlyph"];
                      [v104 CGPointValue];
                      v106 = v105;
                      v108 = v107;

                      if ([(TypistKeyboard *)v35 tapStyle]== 1)
                      {
                        v109 = [v96 objectForKeyedSubscript:@"rect"];
                        v110 = [v96 objectForKeyedSubscript:@"edgeInsets"];
                        [v109 CGRectValue];
                        v112 = v111;
                        v114 = v113;
                        [v110 UIEdgeInsetsValue];
                        [TypistKeyboardUtilities generateUniformPointWithMean:v106 andBounds:v108, (v112 - (v115 + v116)) * 0.5, (v114 - (v117 + v118)) * 0.5];
                        v106 = v119;
                        v108 = v120;

                        goto LABEL_125;
                      }

                      if ([(TypistKeyboard *)v35 tapStyle]== 2)
                      {
                        v146 = [(TypistKeyboard *)v35 tapBounds];
                        [v146 doubleValue];
                        v148 = v147;

                        [TypistKeyboardUtilities generateUniformPointWithMean:v106 andBounds:v108, v148, v148];
                        goto LABEL_124;
                      }

                      if ([(TypistKeyboard *)v35 tapStyle]== 3)
                      {
                        v151 = [(TypistKeyboard *)v35 tapSigma];
                        [v151 doubleValue];
                        v153 = v152;

                        [TypistKeyboardUtilities generateGaussianPointWithMean:v106 andSigma:v108, v153];
LABEL_124:
                        v106 = v149;
                        v108 = v150;
                      }

LABEL_125:
                      v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *&v106];
                      [v96 setObject:v154 forKeyedSubscript:@"x"];

                      v155 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *&v108];
                      [v96 setObject:v155 forKeyedSubscript:@"y"];
                    }
                  }
                }

                [(__CFString *)v197 addObject:v96];
                if (v194)
                {
                  [(__CFString *)v197 addObject:&unk_28802A550];
                  [(__CFString *)v197 addObject:v96];
                }

                v129 = v208;
              }

              else
              {
                v121 = [v96 objectForKeyedSubscript:@"type"];
                v122 = [v121 isEqualToString:@"gesture"];

                if (v122)
                {
                  v123 = [(TypistKeyboard *)v35 keyPlanes];
                  v124 = [v96 objectForKeyedSubscript:@"plane"];
                  [v123 objectForKeyedSubscript:v124];
                  v126 = v125 = v96;
                  v127 = [v125 objectForKeyedSubscript:@"basekey"];
                  v128 = [v126 objectForKeyedSubscript:v127];

                  v129 = v35;
                  [(__CFString *)v197 addObject:v128];
                  [(__CFString *)v197 addObject:v125];
                  v130 = [v125 objectForKeyedSubscript:@"key"];

                  v202 = v130;
                }

                else
                {
                  v131 = [v96 objectForKeyedSubscript:@"type"];
                  v132 = [v131 isEqualToString:@"popover"];

                  if (v132)
                  {
                    v133 = MEMORY[0x277CBEB38];
                    v185 = [(TypistKeyboard *)v35 keyPlanes];
                    v134 = [v96 objectForKeyedSubscript:@"plane"];
                    [v185 objectForKeyedSubscript:v134];
                    v136 = v135 = v96;
                    v137 = [v135 objectForKeyedSubscript:@"basekey"];
                    v138 = [v136 objectForKeyedSubscript:v137];
                    v139 = [v133 dictionaryWithDictionary:v138];

                    [v139 setValue:@"taphold" forKey:@"action"];
                    v129 = v35;
                    [(__CFString *)v197 addObject:v139];
                    [(__CFString *)v197 addObject:v135];
                  }

                  else
                  {
                    v140 = [(TypistKeyboard *)v35 keyPlanes];
                    v141 = [v96 objectForKeyedSubscript:@"plane"];
                    v142 = [v140 objectForKeyedSubscript:v141];
                    [v96 objectForKeyedSubscript:@"basekey"];
                    v144 = v143 = v96;
                    v145 = [v142 objectForKeyedSubscript:v144];

                    v129 = v35;
                    [(__CFString *)v197 addObject:v145];
                    [(__CFString *)v197 addObject:v143];
                  }
                }
              }

              v156 = [(TypistKeyboard *)v129 addAccentKeyAction:v195];
              v157 = v156;
              if (v156 && [v156 count])
              {
                v158 = 0;
                do
                {
                  v222[0] = @"action";
                  v222[1] = @"time";
                  v223[0] = @"wait";
                  v159 = [(TypistKeyboard *)v208 typeInterval];
                  v160 = [v159 stringValue];
                  v223[1] = v160;
                  v161 = [*(v39 + 2752) dictionaryWithObjects:v223 forKeys:v222 count:2];
                  [(__CFString *)v197 addObject:v161];

                  v162 = [v157 objectAtIndexedSubscript:v158];
                  v163 = [v162 objectForKeyedSubscript:@"type"];
                  LODWORD(v160) = [v163 isEqualToString:@"gesture"];

                  if (v160)
                  {
                    v164 = [(TypistKeyboard *)v208 keyPlanes];
                    v165 = [v162 objectForKeyedSubscript:@"plane"];
                    v166 = [v164 objectForKeyedSubscript:v165];
                    v167 = [v162 objectForKeyedSubscript:@"basekey"];
                    v168 = [v166 objectForKeyedSubscript:v167];

                    v39 = 0x277CBE000uLL;
                    [(__CFString *)v197 addObject:v168];
                  }

                  [(__CFString *)v197 addObject:v162];

                  ++v158;
                }

                while ([v157 count] > v158);
              }

              v80 = v207;
              if ([(TypistKeyboard *)v208 fastTyping]|| ([(__CFString *)v202 isEqualToString:@"🔤"]& 1) != 0 || ([(__CFString *)v202 isEqualToString:@"⇧"]& 1) != 0 || ([(__CFString *)v202 isEqualToString:@" "]& 1) != 0 || ([(__CFString *)v202 isEqualToString:@"⏎"]& 1) != 0)
              {
LABEL_140:
                v46 = v196;
                if ((v194 | -[TypistKeyboard fastTyping](v208, "fastTyping")) & 1) != 0 || ([v207 objectForKeyedSubscript:@"plane"], v169 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend(v192, "isEqualToString:", v169), v169, (v170))
                {
LABEL_142:
                  v216[0] = @"action";
                  v216[1] = @"time";
                  v217[0] = @"wait";
                  v171 = [(TypistKeyboard *)v208 typeInterval];
                  v172 = [v171 stringValue];
                  v217[1] = v172;
                  v173 = [*(v39 + 2752) dictionaryWithObjects:v217 forKeys:v216 count:2];
                }

                else
                {
                  v218[0] = @"action";
                  v218[1] = @"plane";
                  v219[0] = @"waitfor";
                  v219[1] = v192;
                  v173 = [*(v39 + 2752) dictionaryWithObjects:v219 forKeys:v218 count:2];
                }
              }

              else
              {
                if (v194)
                {
                  [(TypistKeyboard *)v208 fastTyping];
                  v46 = v196;
                  goto LABEL_142;
                }

                v175 = [v207 objectForKeyedSubscript:@"plane"];
                v176 = [(TypistKeyboard *)v208 getShiftPlaneForDefaultPlane];
                v177 = [v175 isEqualToString:v176];

                if (!v177)
                {
                  goto LABEL_140;
                }

                v220[1] = @"plane";
                v221[0] = @"waitfor";
                v220[0] = @"action";
                v178 = [(TypistKeyboard *)v208 defaultPlaneName];
                v221[1] = v178;
                v173 = [*(v39 + 2752) dictionaryWithObjects:v221 forKeys:v220 count:2];

                v46 = v196;
              }

              v57 = v197;
              [(__CFString *)v197 addObject:v173];

              v214[0] = @"keystroke";
              v214[1] = @"actions";
              v82 = v195;
              v215[0] = v195;
              v215[1] = v197;
              v174 = [*(v39 + 2752) dictionaryWithObjects:v215 forKeys:v214 count:2];
              [v188 addObject:v174];

              v58 = obj;
              v37 = v189;
              v43 = v202;
LABEL_145:

              v205 = 0;
              v203 = v192;
              goto LABEL_146;
            }

LABEL_92:
            v43 = v201;
            goto LABEL_93;
          }

          v45 = v206;
        }

        else
        {
          v45 = v206;
          v81 = v182;
        }

        goto LABEL_94;
      }

      v43 = v32;
      v205 = 1;
      v57 = v186;
      v186 = v43;
      v46 = v196;
      v58 = obj;
LABEL_146:

      v12 = v46 + 1;
      if (v12 >= [v5 length])
      {
        goto LABEL_154;
      }
    }
  }

  v186 = &stru_288014100;
LABEL_154:

LABEL_155:
  v179 = *MEMORY[0x277D85DE8];

  return v188;
}

- (CGAffineTransform)_determineTransformationInFrame:(SEL)a3 segmentStart:(CGRect)a4 totalSegmentWidth:(double)a5 scale:(unint64_t)a6 characterHeight:(double)a7 characterWidth:(double)a8 dimensions:(double)a9 isLatex:(id)a10
{
  v11 = a11;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = a10;
  [v21 rotationBias];
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  v49 = v22;
  v23 = [v21 primaryWritingDirection];
  v24 = [v21 segmentWritingDirection];
  v25 = MEMORY[0x277CBF2C0];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v26;
  *&retstr->tx = *(v25 + 32);
  if (v23 == 2)
  {
    v27 = width + x;
  }

  else
  {
    v27 = x;
  }

  v28 = +[TypistKeyboardUtilities getUIInterfaceOrientation];
  v29 = +[TypistKeyboardUtilities getOneHandedKeyboardHandBias];
  if ([v29 caseInsensitiveCompare:@"Right"])
  {
    v30 = 0;
  }

  else
  {
    v30 = v28 == 1;
  }

  if (v30)
  {
    [TypistKeyboardUtilities findKeyBoundsInKeyboard:@"Candidate-Selection"];
    if (v23 == 2)
    {
      v31 = width;
    }

    v27 = x + v31;
  }

  [v21 writingOriginOffsetX];
  v33 = v32;
  [v21 writingOriginOffsetY];
  v35 = y + v34 * a7;
  if (v23 == 2 && v24 == 2)
  {
    v36 = v27 - v33 * a7;
  }

  else
  {
    y = v35;
    v36 = v27 + v33 * a7;
  }

  v37 = -(height + -a8 * a7);
  if (height - a8 * a7 >= 0.0)
  {
    v37 = height - a8 * a7;
  }

  v38 = v36 + a5;
  if (v24 == 2)
  {
    v38 = v36 + a5 + a6;
  }

  v39 = v36 - a5;
  if (v24 != 2)
  {
    v39 = v39 - a6;
  }

  v40 = v37 * 0.5;
  if (v23 == 2)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v40 + y;
  if (v11)
  {
    v43 = y;
  }

  else
  {
    v43 = v40 + y;
  }

  GSMainScreenPointSize();
  switch(v28)
  {
    case 2:
      v42 = v44 - v41;
      v41 = v45 - y - v40;
      v46 = 180.0;
      break;
    case 3:
      v42 = v44 - y - v40;
      v46 = 90.0;
      break;
    case 4:
      v41 = v45 - v41;
      v46 = 270.0;
      break;
    default:
      v42 = v41;
      v41 = v43;
      v47 = v49;
      goto LABEL_37;
  }

  v47 = v49 + v46;
LABEL_37:
  CGAffineTransformMakeRotation(&t1, v47 * 3.14159265 / 180.0);
  t2.a = a7;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.d = a7;
  t2.tx = v42;
  t2.ty = v41;
  CGAffineTransformConcat(retstr, &t1, &t2);

  return result;
}

- (CGRect)_determineHandwritingBound
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_convertCollationCharacters:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"%C", 65010];
  v6 = [v4 stringByReplacingOccurrencesOfString:@"الله" withString:v5];

  return v6;
}

- (id)_dimensionsForLatex:(id)a3 formula:(id)a4 withPathMap:(id)a5 regionCode:(id)a6 isCursive:(BOOL)a7 cumulativeWidth:(unint64_t)a8 totalWidth:(unint64_t)a9 primaryTextDirection:(unint64_t)a10 rotationBias:(double)a11 characterByCharacterPaths:(id)a12
{
  v65 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a12;
  v21 = objc_opt_new();
  [v17 offsetY];
  v23 = v22;
  v24 = [v18 allKeys];
  if ([v24 count])
  {
    v25 = a8;
    v26 = [MEMORY[0x277CCA900] charactersRequiringExtentionCharacterSet];
    v27 = [v24 objectAtIndex:0];
    v58 = [v26 characterIsMember:{objc_msgSend(v27, "characterAtIndex:", 0)}];

    v28 = [v24 objectAtIndex:0];
    v57 = [v18 objectForKey:v28];

    v59 = v24;
    [v24 objectAtIndex:0];
    if (a7)
      v29 = {;
      [TypistPathUtilities getTextClustersFrom:v19 forCharacters:v29];
    }

    else
      v29 = {;
      [v29 graphemeArray];
    }
    v33 = ;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v34 = v33;
    v35 = [v34 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v35)
    {
      v36 = v35;
      v55 = v18;
      v56 = v17;
      v37 = 0;
      v38 = *v61;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v61 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v60 + 1) + 8 * i);
          v47 = [v19 objectForKeyedSubscript:v40];
          if (v47)
          {
            [v20 addObject:v47];
            if ([v47 width] >= 1)
            {
              [v47 perCharacterScale];
              if (v48 > 0.0)
              {
                v49 = [v47 width];
                [v47 perCharacterScale];
                v51 = llround(v50 * v49);
                v37 += v51;
                v25 += v51;
              }
            }
          }

          else
          {
            TYLogl(OS_LOG_TYPE_ERROR, @"No path data found for character: [%@]", v41, v42, v43, v44, v45, v46, v40);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v36);
      v31 = v37;
      v18 = v55;
      v17 = v56;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = a10;

    v21 = v57;
    v24 = v59;
    a8 = v25;
    v30 = v58;
  }

  else
  {
    v30 = 0;
    v31 = 0.0;
    v32 = a10;
  }

  v52 = objc_alloc_init(TYHandwritingDimensions);
  [(TYHandwritingDimensions *)v52 setWritingOriginOffsetX:0.0];
  [(TYHandwritingDimensions *)v52 setWritingOriginOffsetY:0.0];
  [(TYHandwritingDimensions *)v52 setTotalWidth:a9];
  [(TYHandwritingDimensions *)v52 setCumulativeWidth:a8];
  [(TYHandwritingDimensions *)v52 setSegmentWidth:v31];
  [(TYHandwritingDimensions *)v52 setFixedScaleHeight:1024.0];
  [(TYHandwritingDimensions *)v52 setRotationBias:a11];
  [v21 rectValue];
  [(TYHandwritingDimensions *)v52 setRect:?];
  [(TYHandwritingDimensions *)v52 setPrimaryWritingDirection:v32];
  [(TYHandwritingDimensions *)v52 setSegmentWritingDirection:1];
  [(TYHandwritingDimensions *)v52 setOffsetY:v23];
  [(TYHandwritingDimensions *)v52 setRequiresExtension:v30];

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)_dimensionsForText:(id)a3 withPathMap:(id)a4 regionCode:(id)a5 isCursive:(BOOL)a6 cumulativeWidth:(unint64_t *)a7 totalWidth:(unint64_t)a8 segmentTextDirection:(unint64_t)a9 primaryTextDirection:(unint64_t)a10 rotationBias:(double)a11 characterByCharacterPaths:(id)a12
{
  v18 = a9;
  v55 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a12;
  v49 = v21;
  v48 = a8;
  if (a6)
  {
    [TypistPathUtilities getTextClustersFrom:v19 withRegion:v21];
  }

  else
  {
    [v19 graphemeArray];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v23 = v51 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
  v25 = 0.0;
  v26 = 0.0;
  if (v24)
  {
    v27 = v24;
    v47 = v19;
    v28 = 0;
    v29 = *v51;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v31 = *(*(&v50 + 1) + 8 * i);
        v38 = [v20 objectForKeyedSubscript:v31];
        if (v38)
        {
          [v22 addObject:v38];
          if ([v38 width] >= 1)
          {
            [v38 perCharacterScale];
            if (v39 > 0.0)
            {
              v40 = [v38 width];
              [v38 perCharacterScale];
              v42 = llround(v41 * v40);
              *a7 += v42;
              v28 += v42;
            }
          }
        }

        else
        {
          TYLogl(OS_LOG_TYPE_ERROR, @"No path data found for character: [%@]", v32, v33, v34, v35, v36, v37, v31);
        }
      }

      v27 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v27);
    v26 = v28;
    v18 = a9;
    v19 = v47;
  }

  if (v18 == 2)
  {
    [TypistPathUtilities getWidthOfFirstCharacterInString:v19];
    v25 = v43;
  }

  v44 = objc_alloc_init(TYHandwritingDimensions);
  [(TYHandwritingDimensions *)v44 setWritingOriginOffsetX:v25];
  [(TYHandwritingDimensions *)v44 setWritingOriginOffsetY:0.0];
  [(TYHandwritingDimensions *)v44 setTotalWidth:v48];
  [(TYHandwritingDimensions *)v44 setCumulativeWidth:*a7];
  [(TYHandwritingDimensions *)v44 setSegmentWidth:v26];
  [(TYHandwritingDimensions *)v44 setFixedScaleHeight:1024.0];
  [(TYHandwritingDimensions *)v44 setRotationBias:a11];
  [(TYHandwritingDimensions *)v44 setPrimaryWritingDirection:a10];
  [(TYHandwritingDimensions *)v44 setSegmentWritingDirection:v18];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (double)_getScaleInFrame:(CGRect)a3 isPencil:(BOOL)a4 dimensions:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  v9 = a5;
  [TypistKeyboardUtilities findKeyBoundsInKeyboard:@"Candidate-Selection"];
  v11 = v10;
  v13 = v12;
  v14 = +[TypistKeyboardUtilities getOneHandedKeyboardHandBias];
  v15 = +[TypistKeyboardUtilities getUIInterfaceOrientation];
  if (![v14 caseInsensitiveCompare:@"Left"])
  {
    if (v15 != 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    width = v11;
    goto LABEL_8;
  }

  if ([v14 caseInsensitiveCompare:@"Right"])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 == 1;
  }

  if (v16)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v9 totalWidth];
  v18 = v17;
  if ([(TypistKeyboard *)self isHandwriting]&& !v5)
  {
    height = height - v13;
  }

  [v9 fixedScaleHeight];
  v20 = height / v19;
  if (width / v18 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = width / v18;
  }

  return v21;
}

- (id)generatePencilGestureStream:(int)a3 gestureStyle:(int)a4 inFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v70[2] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CCABB0];
  v13 = 1.0 / +[TypistKeyboardUtilities touchScanRate]* 3.0;
  *&v13 = v13;
  v21 = [v12 numberWithFloat:v13];
  v22 = y + height * 0.5;
  if (a3 == 3 && !a4)
  {
    v23 = x + width;
    v24 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23, v22}];
    v70[0] = v24;
    v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23, v22 + 1.0}];
    v70[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];

    v27 = MEMORY[0x277CCABB0];
    v28 = 1.0 / +[TypistKeyboardUtilities touchScanRate]* 100.0;
    *&v28 = v28;
    v29 = [v27 numberWithFloat:v28];

    v21 = v29;
LABEL_17:
    v65[0] = @"ALPHA";
    LODWORD(v30) = 0.5;
    v46 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    v66[0] = v46;
    v66[1] = v21;
    v65[1] = @"CPPATHGEN_TIME_INTERVAL";
    v65[2] = @"CPPATHGEN_TIMING_ALGORITHM";
    v65[3] = @"CPPATHGEN_VELOCITY";
    v66[2] = @"ANGULAR";
    v66[3] = &unk_28802A8A8;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:4];
    v48 = [TypistPathUtilities generatePathArgumentStringWithParameters:v47 fromPoints:v26];

    v49 = objc_opt_new();
    v63 = @"actions";
    v60[0] = @"action";
    v60[1] = @"argumentList";
    v61[0] = @"st";
    v61[1] = v48;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v62[0] = v50;
    v58[0] = @"action";
    v58[1] = @"time";
    v59[0] = @"wait";
    v51 = [(TypistKeyboard *)self typeInterval];
    v52 = [v51 stringValue];
    v59[1] = v52;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v62[1] = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    v64 = v54;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    [v49 addObject:v55];

    goto LABEL_18;
  }

  if (a3 == 1 && !a4)
  {
    [TypistKeyboardUtilities generateGaussianPointWithMean:x + width andSigma:v22, height * 0.25];
    v32 = v31;
    v34 = v33;
    [TypistKeyboardUtilities generateGaussianPointWithMean:"generateGaussianPointWithMean:andSigma:" andSigma:?];
    v36 = v35;
    v38 = v37;
    v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, v22}];
    v69[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v32, v34}];
    v69[1] = v40;
    v41 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, v22}];
    v69[2] = v41;
    v42 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v36, v38}];
    v69[3] = v42;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];

LABEL_16:
    goto LABEL_17;
  }

  if (a3 == 1 && a4 == 1)
  {
    v26 = [TypistPathUtilities convertCurveDeleteTouchPoints:10 endPoint:x curveHeight:v22 curveDensity:x + width tilt:v22, height, -1.5];
    goto LABEL_17;
  }

  if (!(a4 | a3))
  {
    v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, v22}];
    v68[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x + width + -1.0, v22}];
    v68[1] = v40;
    v44 = MEMORY[0x277CBEA60];
    v45 = v68;
    goto LABEL_15;
  }

  if (a3 == 2 && !a4)
  {
    v43 = x + width;
    v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:v43];
    v67[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v43, height + v22 - height * 0.5}];
    v67[1] = v40;
    v44 = MEMORY[0x277CBEA60];
    v45 = v67;
LABEL_15:
    v26 = [v44 arrayWithObjects:v45 count:2];
    goto LABEL_16;
  }

  TYLog(@"Gesture %u is not supported", v14, v15, v16, v17, v18, v19, v20, a3);
  v49 = 0;
LABEL_18:

  v56 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)getActionForKeystroke:(id)a3 fromKeyPlane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TypistKeyboard *)self keyPlanes];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:v6];

  if ([(TypistKeyboard *)self prefersPopoverKeys])
  {
    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [v10 objectForKeyedSubscript:@"type"];
  v12 = [v11 isEqualToString:@"popover"];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [(TypistKeyboard *)self findKeyInOtherPlanes:v6 currentPlane:v7];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 objectForKeyedSubscript:@"type"];
  v16 = [v15 isEqualToString:@"basekey"];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
LABEL_7:
    v17 = v10;
  }

  return v17;
}

- (id)findKeyOnAnyPlane:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(TypistKeyboard *)self keyPlanes];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(TypistKeyboard *)self keyPlanes];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:v4];

        if (v14)
        {
          v16 = [(TypistKeyboard *)self keyPlanes];
          v17 = [v16 objectForKeyedSubscript:v11];
          v15 = [v17 objectForKeyedSubscript:v4];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(TypistKeyboard *)self attemptToFindKeystrokeAsSecondaryDisplay:v4];
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)findKey:(id)a3 inPlane:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TypistKeyboard *)self keyPlanes];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 objectForKeyedSubscript:v7];

  return v10;
}

- (id)findKeyOnCurrentPlane:(id)a3
{
  v4 = a3;
  v5 = +[TypistKeyboardUtilities formattedKeyplaneName];
  v6 = [(TypistKeyboard *)self findKey:v4 inPlane:v5];

  return v6;
}

- (id)attemptToFindKeystrokeAsSecondaryDisplay:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom] != 1)
    {

      goto LABEL_17;
    }

    v8 = [(TypistKeyboard *)self isFloating];

    if (v8)
    {
LABEL_17:
      v22 = 0;
      goto LABEL_20;
    }

    v9 = @"↓";
  }

  else
  {
    v9 = @"⊎";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, v4];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v27 = v4;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(TypistKeyboard *)self keyPlanes];
  v13 = [v12 allKeys];

  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [(TypistKeyboard *)self keyPlanes];
        v20 = [v19 objectForKeyedSubscript:v18];
        v21 = [v20 objectForKeyedSubscript:v11];

        if (v21)
        {
          v23 = [(TypistKeyboard *)self keyPlanes];
          v24 = [v23 objectForKeyedSubscript:v18];
          v22 = [v24 objectForKeyedSubscript:v11];

          goto LABEL_19;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_19:
  v4 = v27;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)findKeyInOtherPlanes:(id)a3 currentPlane:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(TypistKeyboard *)self keyPlanes];
  v9 = [v8 allKeys];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      v13 = 0;
      v29 = v11;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        if (([v14 isEqualToString:v7] & 1) == 0)
        {
          v15 = [(TypistKeyboard *)self keyPlanes];
          v16 = [v15 objectForKeyedSubscript:v14];
          v17 = [v16 objectForKeyedSubscript:v6];
          if (v17)
          {
            v18 = v17;
            [(TypistKeyboard *)self switchToPlane:v14 fromPlane:v7];
            v19 = v12;
            v20 = self;
            v21 = v7;
            v23 = v22 = v6;
            v31 = [v23 count];

            v6 = v22;
            v7 = v21;
            self = v20;
            v12 = v19;
            v11 = v29;

            if (v31)
            {
              v24 = [(TypistKeyboard *)self keyPlanes];
              v25 = [v24 objectForKeyedSubscript:v14];
              v26 = [v25 objectForKeyedSubscript:v6];

              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v26 = 0;
LABEL_14:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_constructSwitchPath:(id)a3 toPlane:(id)a4 fromPlane:(id)a5
{
  v56[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v48 = objc_opt_new();
  v9 = v8;
  v53 = [v7 allKeys];
  v47 = v9;
  if ([v53 containsObject:v9])
  {
    v49 = v7;
    v52 = self;
    while (1)
    {
      v10 = v9;
      v11 = [v9 copy];
      v9 = [v7 objectForKeyedSubscript:v9];

      v12 = [(TypistKeyboard *)self planeSwitchTable];
      v13 = [v12 objectForKeyedSubscript:v9];
      v14 = [v13 objectForKeyedSubscript:v11];
      if (!v14)
      {
        goto LABEL_8;
      }

      v15 = v14;
      v16 = [(TypistKeyboard *)self keyPlanes];
      v17 = [v16 objectForKeyedSubscript:v9];
      if (!v17)
      {
        break;
      }

      v51 = [(TypistKeyboard *)self keyPlanes];
      [v51 objectForKeyedSubscript:v9];
      v18 = v54 = v11;
      v19 = [(TypistKeyboard *)self planeSwitchTable];
      v20 = [v19 objectForKeyedSubscript:v9];
      [v20 objectForKeyedSubscript:v54];
      v21 = v50 = v16;
      v22 = [v18 objectForKeyedSubscript:v21];

      v7 = v49;
      self = v52;

      v11 = v54;
      if (!v22)
      {
        goto LABEL_9;
      }

      v23 = [(TypistKeyboard *)v52 keyPlanes];
      v24 = [v23 objectForKeyedSubscript:v9];
      v25 = [(TypistKeyboard *)v52 planeSwitchTable];
      v26 = [v25 objectForKeyedSubscript:v9];
      v27 = [v26 objectForKeyedSubscript:v54];
      v28 = [v24 objectForKeyedSubscript:v27];
      [v48 insertObject:v28 atIndex:0];

      v11 = v54;
      v55[0] = @"action";
      v55[1] = @"time";
      v56[0] = @"wait";
      v29 = [(TypistKeyboard *)v52 typeInterval];
      v30 = [v29 stringValue];
      v56[1] = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      [v48 insertObject:v31 atIndex:1];

      self = v52;
LABEL_10:

      if (([v53 containsObject:v9] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_8:
LABEL_9:
    v32 = [(TypistKeyboard *)self keyboardID];
    TYLogl(OS_LOG_TYPE_ERROR, @"%@: !!! Unable to find a valid switch path !!!", v33, v34, v35, v36, v37, v38, v32);

    TYLogl(OS_LOG_TYPE_ERROR, @"self.keyPlanes[%@][self.planeSwitchTable[%@][%@]]", v39, v40, v41, v42, v43, v44, v9);
    goto LABEL_10;
  }

LABEL_11:

  v45 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)switchToPlane:(id)a3 fromPlane:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 isEqualToString:&stru_288014100];
    v9 = MEMORY[0x277CBEBF8];
    if (v7 && (v8 & 1) == 0 && ([v7 isEqualToString:&stru_288014100] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", v6) & 1) == 0)
    {
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      [v11 addObject:v7];
      v12 = objc_opt_new();
      if ([v11 count])
      {
        v25 = v7;
        v26 = self;
        while (1)
        {
          v13 = [v11 objectAtIndex:{0, v25}];
          if ([v13 isEqualToString:v6])
          {
            break;
          }

          [v11 removeObjectAtIndex:0];
          [v10 addObject:v13];
          v14 = [(TypistKeyboard *)self planeSwitchTable];
          v15 = [v14 objectForKeyedSubscript:v13];
          v16 = [v15 allKeys];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v27 + 1) + 8 * i);
                if (([v10 containsObject:v22] & 1) == 0)
                {
                  [v11 addObject:v22];
                  [v12 setObject:v13 forKeyedSubscript:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
            }

            while (v19);
          }

          self = v26;
          if (![v11 count])
          {
            v9 = 0;
            v7 = v25;
            goto LABEL_26;
          }
        }

        v7 = v25;
        v9 = [(TypistKeyboard *)self _constructSwitchPath:v12 toPlane:v6 fromPlane:v25];
      }

      else
      {
        v9 = 0;
      }

LABEL_26:
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_sanitizedStringForAutoShiftCheck:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"🔤" withString:&stru_288014100];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"⇧" withString:&stru_288014100];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"⇪" withString:&stru_288014100];

  return v5;
}

- (BOOL)isSwitchedToCapitalPlane:(id)a3 previous:(id)a4 currentPlane:(id)a5 context:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v13 objectForKeyedSubscript:@"key"];
  v15 = [v13 objectForKeyedSubscript:@"more-after"];

  if (v10 | v15 || ([v14 isEqualToString:@" "] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"⏎"))
  {
    v16 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyplaneDescription:"getKeyplaneDescription:", v11];
    v17 = [v16 usesAutoShift];
    v18 = [v16 isAlphabeticPlane];
    if (v18 && !v17 || !+[TypistKeyboardUtilities getAutoCapitalizationPrefSetting])
    {
      v23 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v19 = [&stru_288014100 stringByPaddingToLength:2 withString:@" " startingAtIndex:0];
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 _referenceBounds];
    Height = CGRectGetHeight(v39);
    v38 = v19;
    if (Height <= 1194.0)
    {
      v22 = 0;
    }

    else
    {
      v37 = [MEMORY[0x277D759A0] mainScreen];
      [v37 _referenceBounds];
      if (CGRectGetHeight(v40) > 1194.0 && [(TypistKeyboard *)self isFloating])
      {
        v22 = 0;
        goto LABEL_14;
      }

      v25 = [MEMORY[0x277D759A0] mainScreen];
      [v25 _referenceBounds];
      v26 = CGRectGetHeight(v41);
      v27 = v18 ^ 1;
      if (v26 <= 1194.0)
      {
        v27 = 1;
      }

      if (v27)
      {
LABEL_25:

LABEL_36:
        if ((v18 & [v14 isEqualToString:@" "]) != 1 || (-[TypistKeyboard defaultPlaneName](self, "defaultPlaneName"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", v11), v29, v30))
        {
          v31 = v38;
          if ([v14 isEqualToString:@"⏎"])
          {
            v23 = 1;
LABEL_41:

            goto LABEL_42;
          }

          if ([v14 isEqualToString:@"🔤"])
          {
            if ((v18 & 1) == 0)
            {
LABEL_46:
              v33 = [(TypistKeyboard *)self _sanitizedStringForAutoShiftCheck:v12];
              if ([v33 length])
              {
                v23 = [(TypistKeyboard *)self isAutoshiftedToCapitalPlane:v33];
              }

              else
              {
                v23 = 1;
              }

              goto LABEL_41;
            }
          }

          else if (((v18 | [v14 isEqualToString:@" "] ^ 1) & 1) == 0)
          {
            goto LABEL_46;
          }

          v23 = 0;
          goto LABEL_41;
        }

LABEL_40:
        v23 = 1;
        v31 = v38;
        goto LABEL_41;
      }

      v36 = [(TypistKeyboard *)self defaultPlaneName];
      if (![v36 isEqualToString:v11] || -[TypistKeyboard isCapsLockedState](self, "isCapsLockedState"))
      {

        goto LABEL_25;
      }

      v35 = v25;
      v22 = 1;
    }

LABEL_14:
    if ([v14 isEqualToString:@" "])
    {
      if ([v10 isEqualToString:@"."] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"!") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"?"))
      {
        v24 = 1;
        goto LABEL_31;
      }

      if ([v12 length] > 1)
      {
        v34 = [v12 substringFromIndex:{objc_msgSend(v12, "length") - 2}];
        v24 = [v34 isEqualToString:v19];

        if ((v22 & 1) == 0)
        {
          goto LABEL_33;
        }

        v28 = v36;
LABEL_32:

LABEL_33:
        if (Height > 1194.0)
        {
        }

        if (v24)
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }
    }

    v24 = 0;
LABEL_31:
    v28 = v36;
    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v23 = 0;
LABEL_43:

  return v23;
}

- (BOOL)isAutoshiftedToCapitalPlane:(id)a3
{
  v4 = a3;
  if (v4 && +[TypistKeyboardUtilities getAutoCapitalizationPrefSetting])
  {
    v5 = MEMORY[0x277CCA900];
    v6 = [(TypistKeyboard *)self sentenceDelimitingCharacters];
    v7 = [v5 characterSetWithCharactersInString:v6];
    v8 = [v4 rangeOfCharacterFromSet:v7 options:4];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    v10 = [(TypistKeyboard *)self autoshiftRegex];
    v11 = [v10 firstMatchInString:v4 options:0 range:{v9, objc_msgSend(v4, "length") - v9}];

    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getShiftedKeyPlaneName:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboard *)self planeSwitchTable];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 allKeysForObject:@"⇧"];

  if (v7 && [v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = [(TypistKeyboard *)self defaultPlaneName];
  }

  v9 = v8;

  return v9;
}

- (id)getAlternativeKeyPlaneName:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboard *)self planeSwitchTable];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 allKeysForObject:@"🔤"];

  if (v7 && [v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getExpectedPlaneNameForKey:(id)a3 currentPlane:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 isEqualToString:@"⇧"])
  {
    if ([v7 isEqualToString:@"🔤"])
    {
      [(TypistKeyboard *)self setIsCapsLockedState:0];
      v13 = [(TypistKeyboard *)self getAlternativeKeyPlaneName:v8];
LABEL_34:
      v9 = v13;
      goto LABEL_35;
    }

    v14 = [(TypistKeyboard *)self defaultPlaneName];
    v15 = [(TypistKeyboard *)self getShiftedKeyPlaneName:v14];
    if ([v15 isEqualToString:v8])
    {
      v16 = [(TypistKeyboard *)self isCapsLockedState];

      if (!v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v17 = [(TypistKeyboard *)self getAlternatePlanesForDefaultPlane];
    v18 = [v17 containsObject:v8];
    if ((v18 & 1) == 0)
    {
      v19 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyplaneDescription:"getKeyplaneDescription:", v8];
      if (([v19 ignoresShiftState] & 1) == 0)
      {

LABEL_32:
        v13 = [(TypistKeyboard *)self defaultPlaneName];
        goto LABEL_34;
      }

      v52 = v19;
    }

    v20 = [v7 isEqualToString:@" "];
    if (v20)
    {
      v4 = [(TypistKeyboard *)self keyPlanes];
      v55 = [(TypistKeyboard *)self defaultPlaneName];
      v54 = [v4 objectForKeyedSubscript:?];
      v21 = [v54 objectForKeyedSubscript:@" "];
      if (v21)
      {
        v53 = v21;
        v22 = [MEMORY[0x277D759A0] mainScreen];
        [v22 _referenceBounds];
        if (CGRectGetHeight(v57) <= 1194.0)
        {
LABEL_21:

          v24 = 1;
          goto LABEL_28;
        }

        v23 = [MEMORY[0x277D759A0] mainScreen];
        [v23 _referenceBounds];
        if (CGRectGetHeight(v58) > 1194.0 && [(TypistKeyboard *)self isFloating])
        {

          goto LABEL_21;
        }

        v47 = v23;
        v48 = v22;
        v25 = 1;
      }

      else
      {
        v53 = 0;
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    if ([v7 isEqualToString:@"⏎"])
    {
      v24 = 1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v51 = v4;
      v50 = [(TypistKeyboard *)self keyPlanes];
      v49 = [v50 objectForKeyedSubscript:v8];
      v27 = [v49 objectForKeyedSubscript:v7];
      v28 = [v27 objectForKeyedSubscript:@"more-after"];
      if ([v28 BOOLValue] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"'"))
      {
        v24 = 1;
      }

      else
      {
        v46 = [(TypistKeyboard *)self keyPlanes];
        v45 = [v46 objectForKeyedSubscript:v8];
        v44 = [v45 objectForKeyedSubscript:v7];
        v29 = [v44 objectForKeyedSubscript:@"type"];
        if (v29)
        {
          v43 = v29;
          v42 = [(TypistKeyboard *)self keyPlanes];
          v41 = [v42 objectForKeyedSubscript:v8];
          v40 = [v41 objectForKeyedSubscript:v7];
          v30 = [v40 objectForKeyedSubscript:@"basekey"];
          if (v30)
          {
            v39 = v30;
            v38 = [(TypistKeyboard *)self keyPlanes];
            v37 = [v38 objectForKeyedSubscript:v8];
            v36 = [v37 objectForKeyedSubscript:v7];
            v35 = [v36 objectForKeyedSubscript:@"type"];
            if ([v35 isEqualToString:@"popover"])
            {
              v34 = [(TypistKeyboard *)self keyPlanes];
              v33 = [v34 objectForKeyedSubscript:v8];
              v32 = [v33 objectForKeyedSubscript:v7];
              v31 = [v32 objectForKeyedSubscript:@"basekey"];
              v24 = [v31 isEqualToString:@"'"];
            }

            else
            {
              v24 = 0;
            }

            v30 = v39;
          }

          else
          {
            v24 = 0;
          }

          v29 = v43;
        }

        else
        {
          v24 = 0;
        }
      }

      v4 = v51;
      if ((v25 & 1) == 0)
      {
LABEL_27:
        if (!v20)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    if ((v20 & 1) == 0)
    {
LABEL_29:
      if ((v18 & 1) == 0)
      {
      }

      if ((v24 & 1) == 0)
      {
        v13 = v8;
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_28:

    goto LABEL_29;
  }

  v9 = [(TypistKeyboard *)self getShiftedKeyPlaneName:v8];
  if ([(TypistKeyboard *)self isCapsLockedState])
  {
    v10 = [(TypistKeyboard *)self defaultPlaneName];
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      v12 = [(TypistKeyboard *)self defaultPlaneName];

      v9 = v12;
    }
  }

  [(TypistKeyboard *)self setIsCapsLockedState:0];
LABEL_35:

  return v9;
}

- (void)typeKeystrokeStream:(id)a3 completion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7 && [v7 count])
  {
    v6 = [TypistKeyboardUtilities convertRecapCommands:v7];
    [TypistKeyboardUtilities launchRecap:v6 completion:v5];
  }
}

- (void)typeKeystrokeStream:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    if ([v3 count])
    {
      v4 = [TypistKeyboardUtilities convertRecapCommands:v5];
      [TypistKeyboardUtilities launchRecap:v4];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)typeString:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"⇧", @"⇧"];
    v8 = [v10 stringByReplacingOccurrencesOfString:v7 withString:@"⇪"];
    if ([(TypistKeyboard *)self usePredictionBar]&& +[TypistKeyboardUtilities getPredictivePrefSetting]&& ![(TypistKeyboard *)self usesMecabraCandidateBar])
    {
      v9 = [(TypistKeyboard *)self generateKeystrokeStream:v8];
      [(TypistKeyboard *)self typeKeystrokeStreamWithPredictive:v9 originalText:v8 completion:v6];
    }

    else
    {
      v9 = [(TypistKeyboard *)self generateKeystrokeStream:v8];
      [(TypistKeyboard *)self typeKeystrokeStream:v9 completion:v6];
    }
  }
}

- (void)typeString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(TypistKeyboard *)self hardwareKeyboard];

    if (v6)
    {
      [(TypistKeyboard *)self typeStringWithHardwareKeyboard:v5];
    }

    else
    {
      if ([(TypistKeyboard *)self fastTyping])
      {
        [TypistKeyboardUtilities setRecapFastMode:1];
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __29__TypistKeyboard_typeString___block_invoke;
      v7[3] = &unk_279DF4650;
      v7[4] = self;
      [(TypistKeyboard *)self typeString:v5 completion:v7];
    }
  }
}

uint64_t __29__TypistKeyboard_typeString___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) fastTyping];
  if (result)
  {

    return [TypistKeyboardUtilities setRecapFastMode:0];
  }

  return result;
}

- (void)typeString:(id)a3 withCommit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TypistKeyboard *)self candidatebar];
  if (v8 && (v15 = v8, v16 = [(TypistKeyboard *)self usesMecabraCandidateBar], v15, v16))
  {
    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __40__TypistKeyboard_typeString_withCommit___block_invoke;
    v26[3] = &unk_279DF4710;
    v26[4] = v27;
    v18 = MEMORY[0x274398FD0](v26);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __40__TypistKeyboard_typeString_withCommit___block_invoke_2;
    v22[3] = &unk_279DF47F0;
    v22[4] = self;
    v23 = v7;
    v19 = v17;
    v24 = v19;
    v25 = v27;
    v20 = MEMORY[0x274398FD0](v22);
    [(TypistKeyboard *)self typeString:v6 completion:v20];
    v18[2](v18);

    _Block_object_dispose(v27, 8);
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"ERROR: This function is for CJ based candidate bar only! Aborting.", v9, v10, v11, v12, v13, v14, v21);
  }
}

uint64_t __40__TypistKeyboard_typeString_withCommit___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    do
    {
      result = [TypistKeyboardUtilities waitFor:0.02];
    }

    while (*(*(*(v1 + 32) + 8) + 24) != 1);
  }

  return result;
}

uint64_t __40__TypistKeyboard_typeString_withCommit___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) commitCandidate:*(a1 + 40)];
  result = [*(a1 + 48) tryLock];
  if (result)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = *(a1 + 48);

    return [v3 unlock];
  }

  return result;
}

- (void)swipeString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([v4 length])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"⇧", @"⇧"];
      v6 = [v8 stringByReplacingOccurrencesOfString:v5 withString:@"⇪"];
      v7 = [(TypistKeyboard *)self generateSwipeStream:v6];
      [(TypistKeyboard *)self typeKeystrokeStream:v7 completion:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)getAllCandidates
{
  v3 = [(TypistKeyboard *)self candidatebar];

  if (v3)
  {
    v4 = [(TypistKeyboard *)self candidatebar];
    v5 = [v4 getAllCandidates];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getVisibleCandidates
{
  v3 = [(TypistKeyboard *)self candidatebar];

  if (v3)
  {
    v4 = [(TypistKeyboard *)self candidatebar];
    v5 = [v4 getVisibleCandidates];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)commitCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboard *)self candidatebar];

  if (v5)
  {
    v6 = [(TypistKeyboard *)self candidatebar];
    v7 = [v6 selectCandidate:v4];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)commitCandidateAtIndex:(int64_t)a3
{
  v5 = [(TypistKeyboard *)self candidatebar];

  if (!v5)
  {
    return -1;
  }

  v6 = [(TypistKeyboard *)self candidatebar];
  v7 = [v6 selectCandidateAtIndex:a3];

  return v7;
}

- (BOOL)hasCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboard *)self candidatebar];

  if (v5)
  {
    v6 = [(TypistKeyboard *)self candidatebar];
    v7 = [v6 hasCandidate:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasCandidate:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(TypistKeyboard *)self candidatebar];

  if (v8)
  {
    v9 = [(TypistKeyboard *)self candidatebar];
    v10 = [v9 hasCandidate:v7 inRange:{location, length}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasCandidates:(id)a3
{
  v4 = a3;
  v5 = [(TypistKeyboard *)self candidatebar];

  if (v5)
  {
    v6 = [(TypistKeyboard *)self candidatebar];
    v7 = [v6 hasCandidates:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasCandidates:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(TypistKeyboard *)self candidatebar];

  if (v8)
  {
    v9 = [(TypistKeyboard *)self candidatebar];
    [v9 hasCandidates:v7 inRange:{location, length}];
  }

  return 0;
}

- (id)splitKeystrokeStreamByWord:(id)a3 originalText:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v38 = [MEMORY[0x277CBEB18] array];
  v37 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v9 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v8 formUnionWithCharacterSet:v9];

  v34 = v6;
  v10 = [v6 componentsSeparatedByCharactersInSet:v8];
  v11 = [v10 mutableCopy];

  v36 = v11;
  [v11 removeObject:&stru_288014100];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v12 = 0x277CCA000;
  v13 = 0x277CBE000;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v40)
  {
    v39 = *v42;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        v15 = v13;
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"keystroke"];
        if ([v17 rangeOfCharacterFromSet:v8] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v17 substringFromIndex:{objc_msgSend(v17, "length") - 1}];
          [v7 appendString:v18];

          [v37 addObject:v16];
          v13 = v15;
        }

        else
        {
          if ([v7 length])
          {
            v50[0] = @"word";
            v49[0] = @"type";
            v49[1] = @"text";
            v19 = MEMORY[0x277CCACA8];
            v20 = [v36 objectAtIndexedSubscript:0];
            v21 = [v19 stringWithString:v20];
            v50[1] = v21;
            v49[2] = @"keystrokeStream";
            v22 = [MEMORY[0x277CBEA60] arrayWithArray:v37];
            v50[2] = v22;
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
            [v38 addObject:v23];

            [v7 setString:&stru_288014100];
            [v37 removeAllObjects];
            [v36 removeObjectAtIndex:0];
          }

          v48[0] = @"separator";
          v47[0] = @"type";
          v47[1] = @"text";
          v24 = [MEMORY[0x277CCACA8] stringWithString:v7];
          v48[1] = v24;
          v47[2] = @"keystrokeStream";
          v25 = [MEMORY[0x277CBEA60] arrayWithObject:v16];
          v48[2] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
          [v38 addObject:v26];

          v13 = 0x277CBE000uLL;
        }

        v12 = 0x277CCA000uLL;
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v40);
  }

  if ([v7 length] && objc_msgSend(v36, "count"))
  {
    v46[0] = @"separator";
    v45[0] = @"type";
    v45[1] = @"text";
    v27 = *(v12 + 3240);
    v28 = [v36 objectAtIndexedSubscript:0];
    v29 = [v27 stringWithString:v28];
    v46[1] = v29;
    v45[2] = @"keystrokeStream";
    v30 = [MEMORY[0x277CBEA60] arrayWithArray:v37];
    v46[2] = v30;
    v31 = [*(v13 + 2752) dictionaryWithObjects:v46 forKeys:v45 count:3];
    [v38 addObject:v31];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)typeKeystrokeStreamWithPredictive:(id)a3 originalText:(id)a4 completion:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TypistKeyboard *)self candidatebar];
  if (!v10)
  {
    goto LABEL_4;
  }

  v17 = v10;
  v18 = [(TypistKeyboard *)self candidatebar];
  if (v18)
  {
    v19 = v18;
    v20 = [(TypistKeyboard *)self usesMecabraCandidateBar];

    if (v20)
    {
LABEL_4:
      TYLogl(OS_LOG_TYPE_ERROR, @"ERROR: Predictive setting or QuickType bar is not enabled with the keyboard. Aborting.", v11, v12, v13, v14, v15, v16, v22);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v21 = [(TypistKeyboard *)self splitKeystrokeStreamByWord:v23 originalText:v8];
  [(TypistKeyboard *)self typeWordKeystrokeWithPredictive:v21 atIndex:0 completion:v9];

LABEL_7:
}

- (void)typeWordKeystrokeWithPredictive:(id)a3 atIndex:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count] && objc_msgSend(v8, "count") > a4)
  {
    v10 = [v8 objectAtIndexedSubscript:a4];
    v11 = [v10 objectForKeyedSubscript:@"type"];
    v12 = [v11 isEqualToString:@"separator"];

    if (v12)
    {
      v13 = [v10 objectForKeyedSubscript:@"keystrokeStream"];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __69__TypistKeyboard_typeWordKeystrokeWithPredictive_atIndex_completion___block_invoke;
      v25[3] = &unk_279DF4818;
      v25[4] = self;
      v26 = v8;
      v28 = a4;
      v27 = v9;
      [(TypistKeyboard *)self typeKeystrokeStream:v13 completion:v25];

      v14 = v26;
    }

    else
    {
      if ([(TypistKeyboard *)self usePredictionBar])
      {
        v15 = [(TypistKeyboard *)self candidatebar];
        v16 = [v10 objectForKeyedSubscript:@"text"];
        v17 = [v15 getIndexOfCandidate:v16];

        if ((v17 & 0x8000000000000000) == 0)
        {
          v18 = [(TypistKeyboard *)self candidatebar];
          [v18 selectCandidateAtIndex:v17];

          [(TypistKeyboard *)self typeWordKeystrokeWithPredictive:v8 atIndex:a4 + 1 completion:v9];
LABEL_12:

          goto LABEL_13;
        }
      }

      v19 = [v10 objectForKeyedSubscript:@"keystrokeStream"];
      v20 = [v10 objectForKeyedSubscript:@"text"];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__TypistKeyboard_typeWordKeystrokeWithPredictive_atIndex_completion___block_invoke_2;
      v21[3] = &unk_279DF4818;
      v21[4] = self;
      v22 = v8;
      v24 = a4;
      v23 = v9;
      [(TypistKeyboard *)self typeWordKeystrokes:v19 expectedWord:v20 atIndex:0 completion:v21];

      v14 = v22;
    }

    goto LABEL_12;
  }

  if (v9)
  {
    v9[2](v9);
  }

LABEL_13:
}

- (void)typeWordKeystrokes:(id)a3 expectedWord:(id)a4 atIndex:(int64_t)a5 completion:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count] && objc_msgSend(v10, "count") > a5)
  {
    v13 = [v10 objectAtIndexedSubscript:a5];
    v21[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__TypistKeyboard_typeWordKeystrokes_expectedWord_atIndex_completion___block_invoke;
    v16[3] = &unk_279DF4840;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    v19 = v12;
    v20 = a5;
    [(TypistKeyboard *)self typeKeystrokeStream:v14 completion:v16];
  }

  else if (v12)
  {
    v12[2](v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __69__TypistKeyboard_typeWordKeystrokes_expectedWord_atIndex_completion___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) usePredictionBar] || (objc_msgSend(*(a1 + 32), "candidatebar"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "getIndexOfCandidate:", *(a1 + 40)), v2, v3 < 0))
  {
    v10 = *(a1 + 32);
    v12 = *(a1 + 40);
    v9 = *(a1 + 56);
    v11 = *(a1 + 48);
    v8 = *(a1 + 64) + 1;
  }

  else
  {
    v4 = [*(a1 + 32) candidatebar];
    [v4 selectCandidateAtIndex:v3];

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = [v5 count];
    v9 = *(a1 + 56);
    v10 = v7;
    v11 = v5;
    v12 = v6;
  }

  return [v10 typeWordKeystrokes:v11 expectedWord:v12 atIndex:v8 completion:v9];
}

- (void)switchKeyPlaneOnActiveKeyboard:(id)a3
{
  v3 = a3;
  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData switchToPlane:"switchToPlane:", v3];
}

- (CGPoint)centerOfKey:(CGPoint)a3 withOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = +[TypistKeyboardData keyboardData];

  [(objc_class *)v8 centerOfKey:v7 withOffset:v6, x, y];
  result.y = v10;
  result.x = v9;
  return result;
}

- (TypistKeyboard)initWithHardwareKeyboard:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TypistKeyboard;
  v5 = [(TypistKeyboard *)&v10 init];
  v6 = v5;
  if (v5)
  {
    typeInterval = v5->_typeInterval;
    v5->_typeInterval = &unk_288029520;

    pressDuration = v6->_pressDuration;
    v6->_pressDuration = &unk_288029520;

    [(TypistKeyboard *)v6 attachHardwareKeyboard:v4];
  }

  return v6;
}

+ (void)typeStringOnHardwareKeyboard:(id)a3 withLanguage:(id)a4
{
  v13 = a3;
  v5 = a4;
  if (v13 && v5)
  {
    v12 = [[TypistHWKeyboard alloc] initWithLanguage:v5];
    if (v12)
    {
      [&unk_288029520 doubleValue];
      [(TypistHWKeyboard *)v12 setTypeInterval:?];
      [(TypistHWKeyboard *)v12 typeString:v13];
      [(TypistHWKeyboard *)v12 detach];
    }

    else
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"Unable to attach hardware keyboard with language %@", v6, v7, v8, v9, v10, v11, v5);
    }
  }
}

- (void)attachHardwareKeyboard:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v23 = v5;
    v6 = [(TypistKeyboard *)self hardwareKeyboard];

    if (v6)
    {
      TYLog(@"An existing hardware keyboard was found to be attached. Detaching prior to attaching new keyboard (%@)...", v7, v8, v9, v10, v11, v12, v13, v23);
      [(TypistKeyboard *)self detachHardwareKeyboard];
    }

    v14 = [[TypistHWKeyboard alloc] initWithLanguage:v23];
    [(TypistKeyboard *)self setHardwareKeyboard:v14];

    v15 = [(TypistKeyboard *)self pressDuration];
    if (v15)
    {
      v3 = [(TypistKeyboard *)self pressDuration];
      [v3 doubleValue];
    }

    else
    {
      [&unk_288029520 doubleValue];
    }

    v17 = v16;
    v18 = [(TypistKeyboard *)self hardwareKeyboard];
    [v18 setPressDuration:v17];

    if (v15)
    {
    }

    v19 = [(TypistKeyboard *)self typeInterval];
    if (v19)
    {
      v3 = [(TypistKeyboard *)self typeInterval];
      [v3 doubleValue];
    }

    else
    {
      [&unk_288029540 doubleValue];
    }

    v21 = v20;
    v22 = [(TypistKeyboard *)self hardwareKeyboard];
    [v22 setTypeInterval:v21];

    if (v19)
    {
    }

    v5 = v23;
  }
}

- (void)attachHardwareKeyboardWithCountryCode:(id)a3
{
  if (a3)
  {
    v6 = +[TypistHWKeyboard convertHIDCountryCodeToLanguage:](TypistHWKeyboard, "convertHIDCountryCodeToLanguage:", [a3 integerValue]);
    typeInterval = self->_typeInterval;
    self->_typeInterval = &unk_288029520;

    pressDuration = self->_pressDuration;
    self->_pressDuration = &unk_288029520;

    [(TypistKeyboard *)self attachHardwareKeyboard:v6];
  }
}

- (void)detachHardwareKeyboard
{
  v3 = [(TypistKeyboard *)self hardwareKeyboard];

  if (v3)
  {
    v4 = [(TypistKeyboard *)self hardwareKeyboard];
    [v4 detach];

    [(TypistKeyboard *)self setHardwareKeyboard:0];
  }
}

- (void)typeStringWithHardwareKeyboard:(id)a3
{
  v13 = a3;
  v4 = [(TypistKeyboard *)self hardwareKeyboard];

  if (v4)
  {
    v11 = [(TypistKeyboard *)self hardwareKeyboard];
    [v11 typeString:v13];
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"A call to typeStringWithHardwareKeyboard was made but no hardware keyboard is attached.", v5, v6, v7, v8, v9, v10, v12);
  }
}

- (void)pressAndHoldHardwareKeys:(id)a3 forDuration:(double)a4 withValidation:(id)a5 validateAfter:(double)a6
{
  v13 = a3;
  v10 = a5;
  if (v13)
  {
    v11 = [(TypistKeyboard *)self hardwareKeyboard];

    if (v11)
    {
      v12 = [(TypistKeyboard *)self hardwareKeyboard];
      [v12 pressAndHoldKeys:v13 forDuration:v10 withValidation:a4 after:a6];
    }
  }
}

- (void)toggleCapsLock
{
  v3 = [(TypistKeyboard *)self hardwareKeyboard];

  if (v3)
  {
    v4 = [(TypistKeyboard *)self hardwareKeyboard];
    [v4 typeString:@"⇪"];
  }

  else
  {

    [(TypistKeyboard *)self typeString:@"⇪"];
  }
}

- (void)tapGlobeKey
{
  v3 = [(TypistKeyboard *)self hardwareKeyboard];

  if (v3)
  {
    v4 = [(TypistKeyboard *)self hardwareKeyboard];
    [v4 typeString:@"⌨"];
  }

  else
  {

    [(TypistKeyboard *)self typeString:@"🌐"];
  }
}

- (void)tapMoreKey
{
  v3 = [(TypistKeyboard *)self hardwareKeyboard];

  if (v3)
  {
    TYLog(@"%@ is not an understood action in the context of hardware keyboards. Aborting...", v4, v5, v6, v7, v8, v9, v10, @"🔤");
  }

  else
  {

    [(TypistKeyboard *)self typeString:@"🔤"];
  }
}

- (TypistKeyboard)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = TypistKeyboard;
  v5 = [(TypistKeyboard *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardID"];
    keyboardID = v5->_keyboardID;
    v5->_keyboardID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeInterval"];
    typeInterval = v5->_typeInterval;
    v5->_typeInterval = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareKeyboard"];
    hardwareKeyboard = v5->_hardwareKeyboard;
    v5->_hardwareKeyboard = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidatebar"];
    candidatebar = v5->_candidatebar;
    v5->_candidatebar = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutName"];
    layoutName = v5->_layoutName;
    v5->_layoutName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"languageID"];
    languageID = v5->_languageID;
    v5->_languageID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionCode"];
    regionCode = v5->_regionCode;
    v5->_regionCode = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardSW"];
    keyboardSW = v5->_keyboardSW;
    v5->_keyboardSW = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardType"];
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v22;

    v5->_usePopupKeys = [v4 decodeBoolForKey:@"usePopupKeys"];
    v5->_usePredictionBar = [v4 decodeBoolForKey:@"usePredictionBar"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyPlanes"];
    keyPlanes = v5->_keyPlanes;
    v5->_keyPlanes = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultPlaneName"];
    defaultPlaneName = v5->_defaultPlaneName;
    v5->_defaultPlaneName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planeSwitchTable"];
    planeSwitchTable = v5->_planeSwitchTable;
    v5->_planeSwitchTable = v28;

    v5->_dictationSupported = [v4 decodeBoolForKey:@"dictationSupported"];
    v5->_shouldShowDictationKey = [v4 decodeBoolForKey:@"shouldShowDictationKey"];
    v5->_shouldShowGlobeKey = [v4 decodeBoolForKey:@"shouldShowGlobeKey"];
    v5->_isTenKey = [v4 decodeBoolForKey:@"isTenKey"];
    v5->_isKana = [v4 decodeBoolForKey:@"isKana"];
    v5->_isHandwriting = [v4 decodeBoolForKey:@"isHandwriting"];
    v5->_fastTyping = [v4 decodeBoolForKey:@"fastTyping"];
    v5->_hasCandidatesToCommit = [v4 decodeBoolForKey:@"hasCandidatesToCommit"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sentenceDelimitingCharacters"];
    sentenceDelimitingCharacters = v5->_sentenceDelimitingCharacters;
    v5->_sentenceDelimitingCharacters = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sentenceTrailingCharacters"];
    sentenceTrailingCharacters = v5->_sentenceTrailingCharacters;
    v5->_sentenceTrailingCharacters = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sentencePrefixingCharacters"];
    sentencePrefixingCharacters = v5->_sentencePrefixingCharacters;
    v5->_sentencePrefixingCharacters = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoshiftRegex"];
    autoshiftRegex = v5->_autoshiftRegex;
    v5->_autoshiftRegex = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  keyboardID = self->_keyboardID;
  v22 = v4;
  if (keyboardID)
  {
    [v4 encodeObject:keyboardID forKey:@"keyboardID"];
    v4 = v22;
  }

  typeInterval = self->_typeInterval;
  if (typeInterval)
  {
    [v22 encodeObject:typeInterval forKey:@"typeInterval"];
    v4 = v22;
  }

  candidatebar = self->_candidatebar;
  if (candidatebar)
  {
    [v22 encodeObject:candidatebar forKey:@"candidatebar"];
    v4 = v22;
  }

  hardwareKeyboard = self->_hardwareKeyboard;
  if (hardwareKeyboard)
  {
    [v22 encodeObject:hardwareKeyboard forKey:@"hardwareKeyboard"];
    v4 = v22;
  }

  layoutName = self->_layoutName;
  if (layoutName)
  {
    [v22 encodeObject:layoutName forKey:@"layoutName"];
    v4 = v22;
  }

  languageID = self->_languageID;
  if (languageID)
  {
    [v22 encodeObject:languageID forKey:@"languageID"];
    v4 = v22;
  }

  regionCode = self->_regionCode;
  if (regionCode)
  {
    [v22 encodeObject:regionCode forKey:@"regionCode"];
    v4 = v22;
  }

  keyboardSW = self->_keyboardSW;
  if (keyboardSW)
  {
    [v22 encodeObject:keyboardSW forKey:@"keyboardSW"];
    v4 = v22;
  }

  keyboardType = self->_keyboardType;
  if (keyboardType)
  {
    [v22 encodeObject:keyboardType forKey:@"keyboardType"];
    v4 = v22;
  }

  [v4 encodeBool:self->_usePopupKeys forKey:@"usePopupKeys"];
  [v22 encodeBool:self->_usePredictionBar forKey:@"usePredictionBar"];
  keyPlanes = self->_keyPlanes;
  if (keyPlanes)
  {
    [v22 encodeObject:keyPlanes forKey:@"keyPlanes"];
  }

  defaultPlaneName = self->_defaultPlaneName;
  if (defaultPlaneName)
  {
    [v22 encodeObject:defaultPlaneName forKey:@"defaultPlaneName"];
  }

  planeSwitchTable = self->_planeSwitchTable;
  v17 = v22;
  if (planeSwitchTable)
  {
    [v22 encodeObject:planeSwitchTable forKey:@"planeSwitchTable"];
    v17 = v22;
  }

  [v17 encodeBool:self->_dictationSupported forKey:@"dictationSupported"];
  [v22 encodeBool:self->_shouldShowDictationKey forKey:@"shouldShowDictationKey"];
  [v22 encodeBool:self->_shouldShowGlobeKey forKey:@"shouldShowGlobeKey"];
  [v22 encodeBool:self->_isTenKey forKey:@"isTenKey"];
  [v22 encodeBool:self->_isKana forKey:@"isKana"];
  [v22 encodeBool:self->_isHandwriting forKey:@"isHandwriting"];
  [v22 encodeBool:self->_fastTyping forKey:@"fastTyping"];
  [v22 encodeBool:self->_hasCandidatesToCommit forKey:@"hasCandidatesToCommit"];
  [v22 encodeBool:self->_sentenceDelimitingCharacters != 0 forKey:@"sentenceDelimitingCharacters"];
  sentenceTrailingCharacters = self->_sentenceTrailingCharacters;
  if (sentenceTrailingCharacters)
  {
    [v22 encodeObject:sentenceTrailingCharacters forKey:@"sentenceTrailingCharacters"];
  }

  sentencePrefixingCharacters = self->_sentencePrefixingCharacters;
  if (sentencePrefixingCharacters)
  {
    [v22 encodeObject:sentencePrefixingCharacters forKey:@"sentencePrefixingCharacters"];
  }

  autoshiftRegex = self->_autoshiftRegex;
  v21 = v22;
  if (autoshiftRegex)
  {
    [v22 encodeObject:autoshiftRegex forKey:@"autoshiftRegex"];
    v21 = v22;
  }
}

- (void)_bailWithError:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3);
  }
}

- (BOOL)isAvailableKeyOnCurrentPlane:(id)a3
{
  v3 = [(TypistKeyboard *)self findKeyOnCurrentPlane:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"type"];
    v6 = [v5 isEqualToString:@"basekey"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAvailablePopoverOnCurrentPlane:(id)a3
{
  v3 = [(TypistKeyboard *)self findKeyOnCurrentPlane:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"type"];
    v6 = [v5 isEqualToString:@"popover"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAvailableFlickOnCurrentPlane:(id)a3 withDirection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TypistKeyboard *)self isTenKey])
  {
    v8 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"type"];
      if ([v10 isEqualToString:@"gesture"])
      {
        v11 = [v9 objectForKeyedSubscript:@"direction"];
        v12 = [v11 isEqualToString:v7];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isAvailableGestureOnCurrentPlane:(id)a3 withDirection:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", a4, a3];
  v6 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"type"];
    v9 = [v8 isEqualToString:@"gesture"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tapKey:(id)a3 tapCount:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(TypistKeyboard *)self typeInterval];
  [(TypistKeyboard *)self tapKey:v9 tapCount:a4 overriddenTypeInterval:v10 completion:v8];
}

- (void)tapKey:(id)a3 tapCount:(unint64_t)a4 overriddenTypeInterval:(id)a5 completion:(id)a6
{
  v32[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v26 = a5;
  v11 = a6;
  v12 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v10];
  v13 = v12;
  if (v12 && ([v12 objectForKeyedSubscript:@"type"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"basekey"), v14, v15))
  {
    v25 = objc_opt_new();
    for (i = objc_opt_new(); a4; --a4)
    {
      if (a4 == 1)
      {
        v17 = [(TypistKeyboard *)self typeInterval];
        v18 = [v17 stringValue];
      }

      else
      {
        v18 = [v26 stringValue];
      }

      [i addObject:v13];
      v31[0] = @"action";
      v31[1] = @"time";
      v32[0] = @"wait";
      v32[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
      [i addObject:v19];
    }

    v29[0] = @"keystroke";
    v29[1] = @"actions";
    v30[0] = v10;
    v30[1] = i;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = v25;
    [v25 addObject:v20];

    [(TypistKeyboard *)self typeKeystrokeStream:v25];
    v22 = 0;
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA470];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No tap information was found for %@", v10];
    v28 = v21;
    i = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = [v23 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:i];
  }

  if (v11)
  {
    v11[2](v11, v22);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)dragFromKey:(id)a3 toKey:(id)a4 completion:(id)a5
{
  v45[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v8];
  if (v11)
  {
    v12 = +[TypistKeyboardUtilities formattedKeyplaneName];
    v39 = [(TypistKeyboard *)self getExpectedPlaneNameForKey:v8 currentPlane:v12];
    v13 = [(TypistKeyboard *)self findKey:v9 inPlane:?];
    if (v13)
    {
      v38 = v12;
      v14 = objc_opt_new();
      v15 = objc_opt_new();
      v16 = MEMORY[0x277CCABB0];
      v17 = [v11 objectForKeyedSubscript:@"x"];
      [v17 floatValue];
      v18 = [v16 numberWithFloat:?];
      [v15 addObject:v18];

      v19 = MEMORY[0x277CCABB0];
      v20 = [v11 objectForKeyedSubscript:@"y"];
      [v20 floatValue];
      v21 = [v19 numberWithFloat:?];
      [v15 addObject:v21];

      v22 = MEMORY[0x277CCABB0];
      v23 = [v13 objectForKeyedSubscript:@"x"];
      [v23 floatValue];
      v24 = [v22 numberWithFloat:?];
      [v15 addObject:v24];

      v25 = MEMORY[0x277CCABB0];
      v26 = [v13 objectForKeyedSubscript:@"y"];
      [v26 floatValue];
      v27 = [v25 numberWithFloat:?];
      [v15 addObject:v27];

      v40 = @"actions";
      v28 = [(TypistKeyboard *)self _generateArgumentList:v15];
      v41 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      [v14 addObject:v29];

      [(TypistKeyboard *)self typeKeystrokeStream:v14];
      if (v10)
      {
        v10[2](v10, 0);
      }

      v30 = 0;
      v12 = v38;
    }

    else
    {
      v34 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA470];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"No key information was found for %@", v9];
      v43 = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v30 = [v34 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v36];

      [(TypistKeyboard *)self _bailWithError:v30 completion:v10];
    }
  }

  else
  {
    v31 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA470];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"No key information was found for %@", v8];
    v45[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v30 = [v31 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v33];

    [(TypistKeyboard *)self _bailWithError:v30 completion:v10];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)dragPopoverKey:(id)a3 completion:(id)a4
{
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v6];
  v9 = v8;
  if (v8 && ([v8 objectForKeyedSubscript:@"type"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"popover"), v10, v11))
  {
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v22 = MEMORY[0x277CBEB38];
    v24 = [(TypistKeyboard *)self keyPlanes];
    v14 = [v9 objectForKeyedSubscript:@"plane"];
    v15 = [v24 objectForKeyedSubscript:v14];
    v16 = [v9 objectForKeyedSubscript:@"basekey"];
    v17 = [v15 objectForKeyedSubscript:v16];
    v23 = [v22 dictionaryWithDictionary:v17];

    [v23 setValue:@"taphold" forKey:@"action"];
    [v13 addObject:v23];
    [v13 addObject:v9];
    v27[0] = @"keystroke";
    v27[1] = @"actions";
    v28[0] = v6;
    v28[1] = v13;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v12 addObject:v18];

    [(TypistKeyboard *)self typeKeystrokeStream:v12];
    v19 = 0;
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No popover information was found for %@", v6];
    v26 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v19 = [v20 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v13];
  }

  if (v7)
  {
    v7[2](v7, v19);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)flickKey:(id)a3 withDirection:(id)a4 completion:(id)a5
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(TypistKeyboard *)self isTenKey])
  {
    v23 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current keyboard is not a ten key implementation or is not a ten key implementation known to this version of Typist. Please file a radar."];
    v29 = v12;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v22 = [v23 errorWithDomain:@"TypistKeyboardNotTenKeyError" code:1 userInfo:v16];
    goto LABEL_10;
  }

  v11 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v8];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v13 = [v11 objectForKeyedSubscript:@"type"];
  if (([v13 isEqualToString:@"gesture"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = [v12 objectForKeyedSubscript:@"direction"];
  v15 = [v14 isEqualToString:v9];

  if (!v15)
  {
LABEL_8:
    v24 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA470];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"No key information was found for %@ with direction %@", v8, v9];
    v31 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [v24 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v17];
    goto LABEL_9;
  }

  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v27 = [(TypistKeyboard *)self keyPlanes];
  v18 = [v12 objectForKeyedSubscript:@"plane"];
  v19 = [v27 objectForKeyedSubscript:v18];
  v20 = [v12 objectForKeyedSubscript:@"basekey"];
  v26 = [v19 objectForKeyedSubscript:v20];

  [v17 addObject:v26];
  [v17 addObject:v12];
  v32[0] = @"keystroke";
  v32[1] = @"actions";
  v33[0] = v8;
  v33[1] = v17;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v16 addObject:v21];

  [(TypistKeyboard *)self typeKeystrokeStream:v16];
  v22 = 0;
LABEL_9:

LABEL_10:
  if (v10)
  {
    v10[2](v10, v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)swipeGestureKey:(id)a3 withDirection:(id)a4 completion:(id)a5
{
  v31[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", a4, v8];
  v11 = [(TypistKeyboard *)self findKeyOnCurrentPlane:v10];
  v12 = v11;
  if (v11 && ([v11 objectForKeyedSubscript:@"type"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"gesture"), v13, v14))
  {
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    [(TypistKeyboard *)self keyPlanes];
    v17 = v27 = v8;
    v18 = [v12 objectForKeyedSubscript:@"plane"];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [v12 objectForKeyedSubscript:@"basekey"];
    [v19 objectForKeyedSubscript:v20];
    v21 = v26 = self;

    v8 = v27;
    [v16 addObject:v21];
    [v16 addObject:v12];
    v30[0] = @"keystroke";
    v30[1] = @"actions";
    v31[0] = v27;
    v31[1] = v16;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v15 addObject:v22];

    [(TypistKeyboard *)v26 typeKeystrokeStream:v15];
    v23 = 0;
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA470];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"No gesture information was found for %@", v10];
    v29 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [v24 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v16];
  }

  if (v9)
  {
    v9[2](v9, v23);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)swipeGestureOrFlickKey:(id)a3 withDirection:(id)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(TypistKeyboard *)self isAvailableFlickOnCurrentPlane:v8 withDirection:v9])
  {
    [(TypistKeyboard *)self flickKey:v8 withDirection:v9 completion:v10];
  }

  else if ([(TypistKeyboard *)self isAvailableGestureOnCurrentPlane:v8 withDirection:v9])
  {
    [(TypistKeyboard *)self swipeGestureKey:v8 withDirection:v9 completion:v10];
  }

  else if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No gesture or flick information was found for %@ in direction %@ ", v8, v9];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v11 errorWithDomain:@"TypistKeyNotFoundInSpecifiedDirectionError" code:1 userInfo:v13];

    v10[2](v10, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end