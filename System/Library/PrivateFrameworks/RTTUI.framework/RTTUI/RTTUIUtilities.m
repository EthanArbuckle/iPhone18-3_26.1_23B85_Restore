@interface RTTUIUtilities
+ (BOOL)contactIsTTYContact:(id)a3;
+ (BOOL)ttyShouldBeRealtimeForCall:(id)a3;
+ (id)ASCIINumericStringFromString:(__CFString *)a3;
+ (id)phoneNumberStringFromString:(id)a3;
+ (id)rttDisplayName:(int64_t)a3 forSubscriptionContextUUID:(id)a4;
+ (id)sharedUtilityProvider;
+ (void)cancelCallPromptDisplay;
+ (void)contactIsTTYContact:(id)a3 resultBlock:(id)a4;
+ (void)displayCallPromptForContact:(id)a3 withCompletion:(id)a4;
- (BOOL)contactIsTTYContact:(id)a3;
- (BOOL)deleteConversationWithCallUID:(id)a3;
- (RTTUIUtilities)init;
- (UIEdgeInsets)bubbleInsetForMe:(BOOL)a3;
- (UIEdgeInsets)textInsetForMe:(BOOL)a3;
- (id)bubbleColorForMe:(BOOL)a3;
- (id)bubbleFillForMe:(BOOL)a3;
- (id)conversationForCallUID:(id)a3;
- (id)largeTTYIconWithTint:(id)a3;
- (id)myPhoneNumber;
- (id)tintedTTYIcon;
- (id)transcriptStringForConversation:(id)a3;
- (id)ttyIconWithTint:(id)a3;
- (id)ttyMeContact;
- (int64_t)textAlignmentForMe:(BOOL)a3;
- (unint64_t)currentPreferredTransportMethod;
@end

@implementation RTTUIUtilities

+ (id)sharedUtilityProvider
{
  if (sharedUtilityProvider_onceToken != -1)
  {
    +[RTTUIUtilities sharedUtilityProvider];
  }

  v3 = sharedUtilityProvider_UtilityProvider;

  return v3;
}

uint64_t __39__RTTUIUtilities_sharedUtilityProvider__block_invoke()
{
  sharedUtilityProvider_UtilityProvider = objc_alloc_init(RTTUIUtilities);

  return MEMORY[0x2821F96F8]();
}

+ (id)rttDisplayName:(int64_t)a3 forSubscriptionContextUUID:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277D440E0] sharedUtilityProvider];
  v6 = [v5 subscriptionContexts];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__RTTUIUtilities_rttDisplayName_forSubscriptionContextUUID___block_invoke;
  v14[3] = &unk_279AE52F0;
  v7 = v4;
  v15 = v7;
  v8 = [v6 ax_filteredArrayUsingBlock:v14];

  v9 = [MEMORY[0x277D440E0] sharedUtilityProvider];
  v10 = [v8 firstObject];
  v11 = [v9 getCarrierValueForKey:@"showRTTForEmergency" andContext:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 BOOLValue];
  }

  v12 = ttyLocString();

  return v12;
}

uint64_t __60__RTTUIUtilities_rttDisplayName_forSubscriptionContextUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (BOOL)contactIsTTYContact:(id)a3
{
  v3 = MEMORY[0x277D440E0];
  v4 = a3;
  v5 = [v3 sharedUtilityProvider];
  v6 = [v5 contactIsTTYContact:v4];

  return v6;
}

+ (void)contactIsTTYContact:(id)a3 resultBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (contactIsTTYContact_resultBlock__onceToken != -1)
  {
    +[RTTUIUtilities contactIsTTYContact:resultBlock:];
  }

  v8 = contactIsTTYContact_resultBlock__Queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTTUIUtilities_contactIsTTYContact_resultBlock___block_invoke_2;
  block[3] = &unk_279AE5340;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __50__RTTUIUtilities_contactIsTTYContact_resultBlock___block_invoke()
{
  contactIsTTYContact_resultBlock__Queue = dispatch_queue_create("TTY-retrieval", 0);

  return MEMORY[0x2821F96F8]();
}

void __50__RTTUIUtilities_contactIsTTYContact_resultBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 48) contactIsTTYContact:*(a1 + 32)];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__RTTUIUtilities_contactIsTTYContact_resultBlock___block_invoke_3;
  v3[3] = &unk_279AE5318;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

+ (id)ASCIINumericStringFromString:(__CFString *)a3
{
  if (a3)
  {
    Length = CFStringGetLength(a3);
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Length >= 1)
    {
      v6 = 0;
      chars = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(a3, v6);
        chars = CharacterAtIndex;
        NumericValue = u_getNumericValue(CharacterAtIndex);
        if (NumericValue <= 9.0)
        {
          v9 = ceil(NumericValue);
          if (NumericValue >= 0.0 && NumericValue == v9)
          {
            chars = NumericValue + 48;
          }
        }

        CFStringAppendCharacters(Mutable, &chars, 1);
        ++v6;
      }

      while (Length != v6);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

+ (id)phoneNumberStringFromString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  if ([v3 length])
  {
    v5 = [RTTUIUtilities ASCIINumericStringFromString:v3];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buffer = 0u;
    v29 = 0u;
    v6 = [(__CFString *)v5 length];
    theString = v5;
    v39 = 0;
    v40 = v6;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v37 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v41 = 0;
    v42 = 0;
    v38 = CStringPtr;
    if (v6 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 64;
      while (1)
      {
        if (v10 >= 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = v10;
        }

        v13 = v40;
        if (v40 <= v10)
        {
          goto LABEL_41;
        }

        if (v37)
        {
          break;
        }

        if (!v38)
        {
          v19 = v41;
          if (v42 <= v10 || v41 > v10)
          {
            v21 = -v12;
            v22 = v12 + v9;
            v23 = v11 - v12;
            v24 = v10 + v21;
            v25 = v24 + 64;
            if (v24 + 64 >= v40)
            {
              v25 = v40;
            }

            v41 = v24;
            v42 = v25;
            if (v40 >= v23)
            {
              v13 = v23;
            }

            v44.location = v24 + v39;
            v44.length = v13 + v22;
            CFStringGetCharacters(theString, v44, buffer);
            v19 = v41;
          }

          v14 = &buffer[-v19];
          goto LABEL_12;
        }

        v15 = v38[v39 + v10];
LABEL_15:
        v16 = v15;
        if ((v15 - 65) <= 0x19u)
        {
          v17 = v15 - 65;
          goto LABEL_34;
        }

        if ((v15 - 97) <= 0x19u)
        {
          v17 = v15 - 97;
          goto LABEL_34;
        }

        if ((v15 + 223) <= 0x19u)
        {
          v18 = -65313;
          goto LABEL_33;
        }

        if ((v15 + 191) <= 0x19u)
        {
          v18 = -65345;
LABEL_33:
          v17 = v16 + v18;
LABEL_34:
          v15 = _LetterNumberMap[v17] + 48;
LABEL_35:
          if ((v15 - 48) >= 0xAu && (v15 > 0x3Bu || ((1 << v15) & 0x8001C0800000000) == 0))
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if ((v15 + 240) <= 9u)
        {
          v15 += 288;
          goto LABEL_35;
        }

        if (v15 <= 0xFF0Au)
        {
          if (v15 == 65283)
          {
            v15 = 35;
          }

          else
          {
            if (v15 != 65290)
            {
              goto LABEL_35;
            }

            v15 = 42;
          }
        }

        else
        {
          switch(v15)
          {
            case 0xFF0Bu:
              v15 = 43;
              break;
            case 0xFF0Cu:
              v15 = 44;
              break;
            case 0xFF1Bu:
              v15 = 59;
              break;
            default:
              goto LABEL_35;
          }
        }

LABEL_40:
        [v4 appendFormat:@"%c", v15];
LABEL_41:
        ++v10;
        --v9;
        ++v11;
        if (v6 == v10)
        {
          goto LABEL_56;
        }
      }

      v14 = &v37[v39];
LABEL_12:
      v15 = v14[v10];
      goto LABEL_15;
    }

LABEL_56:
  }

  return v4;
}

+ (BOOL)ttyShouldBeRealtimeForCall:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D440D8] sharedInstance];
  if ([v4 ttyShouldBeRealtime])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEmergency];
  }

  return v5;
}

- (unint64_t)currentPreferredTransportMethod
{
  v2 = [MEMORY[0x277D440E0] sharedUtilityProvider];
  v3 = [v2 currentPreferredTransportMethod];

  return v3;
}

- (RTTUIUtilities)init
{
  v5.receiver = self;
  v5.super_class = RTTUIUtilities;
  v2 = [(RTTUIUtilities *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTTUIUtilities *)v2 setCallCenterQueue:MEMORY[0x277D85CD0]];
  }

  return v3;
}

- (id)myPhoneNumber
{
  v2 = [MEMORY[0x277D440E0] sharedUtilityProvider];
  v3 = [v2 myPhoneNumber];

  if (![v3 length])
  {
    v4 = ttyLocString();

    v3 = v4;
  }

  return v3;
}

- (id)ttyMeContact
{
  v11[3] = *MEMORY[0x277D85DE8];
  if ([(RTTUIUtilities *)self inUnitTestMode])
  {
    if (ttyMeContact_onceToken != -1)
    {
      [RTTUIUtilities ttyMeContact];
    }

    v2 = ttyMeContact_unitTestMe;
  }

  else
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v4 = *MEMORY[0x277CBCFC0];
    v11[0] = v3;
    v11[1] = v4;
    v11[2] = *MEMORY[0x277CBD098];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

    v6 = [MEMORY[0x277D440E0] sharedUtilityProvider];
    v7 = [v6 contactStore];
    v10 = 0;
    v8 = [v7 _ios_meContactWithKeysToFetch:v5 error:&v10];

    v2 = v8;
  }

  return v2;
}

uint64_t __30__RTTUIUtilities_ttyMeContact__block_invoke()
{
  ttyMeContact_unitTestMe = objc_alloc_init(MEMORY[0x277CBDA58]);

  return MEMORY[0x2821F96F8]();
}

- (int64_t)textAlignmentForMe:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(RTTUIUtilities *)self overrideLTR];

  if (v6)
  {
    v7 = [(RTTUIUtilities *)self overrideLTR];
    v8 = [v7 BOOLValue];
    v9 = 2;
    if (v3)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEAF8];
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v12 objectForKey:*MEMORY[0x277CBE6C8]];
    v14 = [v11 characterDirectionForLanguage:v13];

    v15 = 2;
    if (v3)
    {
      v15 = 0;
    }

    if (v14 == 2)
    {
      return v15;
    }

    else
    {
      return v5;
    }
  }

  return v10;
}

- (UIEdgeInsets)textInsetForMe:(BOOL)a3
{
  v3 = [(RTTUIUtilities *)self textAlignmentForMe:a3];
  if (v3 == 2)
  {
    v4 = 75.0;
  }

  else
  {
    v4 = 20.0;
  }

  if (v3 == 2)
  {
    v5 = 20.0;
  }

  else
  {
    v5 = 75.0;
  }

  v6 = 10.0;
  v7 = 10.0;
  result.right = v5;
  result.bottom = v7;
  result.left = v4;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)bubbleInsetForMe:(BOOL)a3
{
  v3 = [(RTTUIUtilities *)self textAlignmentForMe:a3];
  v4 = -5.0;
  if (v3 == 2)
  {
    v5 = -5.0;
  }

  else
  {
    v5 = -15.0;
  }

  if (v3 == 2)
  {
    v6 = -15.0;
  }

  else
  {
    v6 = -5.0;
  }

  v7 = -5.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v7;
  return result;
}

- (id)bubbleColorForMe:(BOOL)a3
{
  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.4784 blue:1.0 alpha:1.0];
  if (!a3)
  {
    v5 = [MEMORY[0x277D75348] lightGrayColor];

    v4 = v5;
  }

  return v4;
}

- (id)largeTTYIconWithTint:(id)a3
{
  v3 = a3;
  v4 = ttyImageNamed(@"tty_icon");
  v5 = v4;
  if (v3)
  {
    v6 = MEMORY[0x277D755B8];
    [v4 size];
    v7 = [v6 _tintedImageForSize:v3 withTint:0 effectsImage:v5 maskImage:0 style:?];

    v5 = v7;
  }

  return v5;
}

- (id)ttyIconWithTint:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D440E0] currentSupportedTextingType] - 1;
  if (v4 > 2)
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = ttyImageNamed(off_279AE53B0[v4]);
  if (v3)
  {
LABEL_5:
    v6 = MEMORY[0x277D755B8];
    [v5 size];
    v7 = [v6 _tintedImageForSize:v3 withTint:0 effectsImage:v5 maskImage:0 style:?];

    v5 = v7;
  }

LABEL_6:

  return v5;
}

- (id)tintedTTYIcon
{
  v3 = _UIGetTintedCircularButtonDefaultBlueColor();
  v4 = [(RTTUIUtilities *)self ttyIconWithTint:v3];

  return v4;
}

- (id)bubbleFillForMe:(BOOL)a3
{
  v3 = a3;
  v129 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v5 isMainThread];

  if (v6)
  {
    if (_AXSInUnitTestMode())
    {
      v7 = bubbleFillForMe__LeftBubbleImage;
      bubbleFillForMe__LeftBubbleImage = 0;

      v8 = bubbleFillForMe__RightBubbleImage;
      bubbleFillForMe__RightBubbleImage = 0;
    }

    v9 = bubbleFillForMe__RightBubbleImage;
    if ([(RTTUIUtilities *)self textAlignmentForMe:v3])
    {
      if (v9)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v11 = bubbleFillForMe__LeftBubbleImage;

      v9 = v11;
      if (v11)
      {
        goto LABEL_36;
      }
    }

    v12 = ttyImageNamed(@"bubble");
    v13 = ttyImageNamed(@"bubble-stroked");
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    scale = v15;

    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = scale;
      _os_log_impl(&dword_261725000, v16, OS_LOG_TYPE_INFO, "Drawing new bubble images for screen scale: %f", buf, 0xCu);
    }

    v17 = 4 * ([(RTTUIUtilities *)self textAlignmentForMe:v3]!= 2);
    if ([v12 imageOrientation] != v17)
    {
      v18 = AXLogRTT();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        [v12 scale];
        v20 = v19;
        [v13 scale];
        *buf = 67109632;
        *&buf[4] = v17;
        *&buf[8] = 2048;
        *&buf[10] = v20;
        *&buf[18] = 2048;
        *&buf[20] = v21;
        _os_log_impl(&dword_261725000, v18, OS_LOG_TYPE_INFO, "Flipping image to orientation %i with bubble scale %f and bubble stroked scale %f", buf, 0x1Cu);
      }

      v22 = objc_alloc(MEMORY[0x277D755B8]);
      v23 = v12;
      v24 = [v12 CGImage];
      [v12 scale];
      v25 = [v22 initWithCGImage:v24 scale:v17 orientation:?];

      v26 = objc_alloc(MEMORY[0x277D755B8]);
      v27 = v13;
      v28 = [v13 CGImage];
      [v13 scale];
      v29 = [v26 initWithCGImage:v28 scale:v17 orientation:?];

      v13 = v29;
      v12 = v25;
    }

    v30 = [MEMORY[0x277D759A0] mainScreen];
    [v30 scale];
    v32 = v31;

    v33 = [MEMORY[0x277D759A0] mainScreen];
    [v33 scale];
    v35 = v34;

    v36 = [MEMORY[0x277D759A0] mainScreen];
    [v36 scale];
    v38 = v37;

    v39 = [MEMORY[0x277D759A0] mainScreen];
    [v39 scale];
    v41 = v40;

    v42 = [MEMORY[0x277D759A0] mainScreen];
    [v42 scale];
    v44 = v43;

    v45 = [MEMORY[0x277D759A0] mainScreen];
    [v45 scale];
    v47 = v46;

    v48 = [MEMORY[0x277D759A0] mainScreen];
    [v48 scale];
    v50 = v49;

    v51 = [MEMORY[0x277D759A0] mainScreen];
    [v51 scale];
    v53 = v52;

    v54 = AXLogRTT();
    v55 = floor(v32 * 17.5) / v32;
    v56 = floor(v35 * 28.5) / v35;
    v57 = floor(v38 * 17.0) / v38;
    v58 = floor(v41 * 27.0) / v41;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v136.top = v55;
      v136.left = v56;
      v136.bottom = v57;
      v136.right = v58;
      v59 = NSStringFromUIEdgeInsets(v136);
      *buf = 138412290;
      *&buf[4] = v59;
      _os_log_impl(&dword_261725000, v54, OS_LOG_TYPE_INFO, "Balloon mask cap insets: %@", buf, 0xCu);
    }

    v60 = AXLogRTT();
    v61 = ceil(v44 * 11.0) / v44;
    v62 = ceil(v47 * 12.0) / v47;
    v63 = ceil(v50 * 12.0) / v50;
    v64 = ceil(v53 * 18.0) / v53;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v137.top = v61;
      v137.left = v62;
      v137.bottom = v63;
      v137.right = v64;
      v65 = NSStringFromUIEdgeInsets(v137);
      *buf = 138412290;
      *&buf[4] = v65;
      _os_log_impl(&dword_261725000, v60, OS_LOG_TYPE_INFO, "Balloon mask alignment insets: %@", buf, 0xCu);
    }

    v66 = [v12 resizableImageWithCapInsets:{v55, v56, v57, v58}];

    v67 = [v66 imageWithAlignmentRectInsets:{v61, v62, v63, v64}];

    v68 = [v13 resizableImageWithCapInsets:{v55, v56, v57, v58}];

    v69 = [v68 imageWithAlignmentRectInsets:{v61, v62, v63, v64}];

    v70 = AXLogRTT();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v67;
      _os_log_impl(&dword_261725000, v70, OS_LOG_TYPE_INFO, "Bubble: %@", buf, 0xCu);
    }

    v71 = AXLogRTT();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v69;
      _os_log_impl(&dword_261725000, v71, OS_LOG_TYPE_INFO, "Bubble stroked: %@", buf, 0xCu);
    }

    [v67 size];
    UIGraphicsBeginImageContextWithOptions(v131, 0, scale);
    [v67 size];
    v73 = v72;
    [v67 size];
    [v67 drawInRect:{0.0, 0.0, v73, v74}];
    v75 = +[RTTUIUtilities sharedUtilityProvider];
    v76 = [v75 bubbleColorForMe:v3];
    [v76 set];

    v77 = MEMORY[0x277D75208];
    [v67 size];
    v79 = v78;
    [v67 size];
    v81 = [v77 bezierPathWithRect:{0.0, 0.0, v79, v80}];
    [v81 fillWithBlendMode:18 alpha:0.4];

    v82 = UIGraphicsGetImageFromCurrentImageContext();
    [v67 capInsets];
    v83 = [v82 resizableImageWithCapInsets:?];

    UIGraphicsEndImageContext();
    v84 = v83;

    v85 = AXLogRTT();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      [v69 size];
      v86 = NSStringFromCGSize(v132);
      *buf = 138412290;
      *&buf[4] = v86;
      _os_log_impl(&dword_261725000, v85, OS_LOG_TYPE_INFO, "Create overlay image with size: %@", buf, 0xCu);
    }

    [v84 size];
    v88 = v87;
    v90 = v89;

    v133.width = v88;
    v133.height = v90;
    UIGraphicsBeginImageContextWithOptions(v133, 0, scale);
    [v69 size];
    v92 = v91;
    [v69 size];
    [v69 drawInRect:{0.0, 0.0, v92, v93}];
    v94 = +[RTTUIUtilities sharedUtilityProvider];
    v95 = [v94 bubbleColorForMe:v3];
    [v95 set];

    v96 = MEMORY[0x277D75208];
    [v69 size];
    v98 = v97;
    [v69 size];
    v100 = [v96 bezierPathWithRect:{0.0, 0.0, v98, v99}];
    [v100 fillWithBlendMode:18 alpha:0.9];

    v101 = UIGraphicsGetImageFromCurrentImageContext();
    [v69 capInsets];
    v102 = [v101 resizableImageWithCapInsets:?];

    v103 = AXLogRTT();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      [v69 capInsets];
      v104 = NSStringFromUIEdgeInsets(v138);
      *buf = 138412290;
      *&buf[4] = v104;
      _os_log_impl(&dword_261725000, v103, OS_LOG_TYPE_INFO, "Created overlay image with cap insets: %@", buf, 0xCu);
    }

    UIGraphicsEndImageContext();
    v105 = v102;

    v106 = AXLogRTT();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      [v105 size];
      v107 = NSStringFromCGSize(v134);
      *buf = 138412290;
      *&buf[4] = v107;
      _os_log_impl(&dword_261725000, v106, OS_LOG_TYPE_INFO, "Create final image with size: %@", buf, 0xCu);
    }

    [v84 size];
    UIGraphicsBeginImageContextWithOptions(v135, 0, scale);
    [v84 size];
    v109 = v108;
    [v84 size];
    [v84 drawInRect:{0.0, 0.0, v109, v110}];
    [v105 size];
    v112 = v111;
    [v105 size];
    [v105 drawInRect:{0.0, 0.0, v112, v113}];
    v114 = UIGraphicsGetImageFromCurrentImageContext();
    [v105 capInsets];
    v115 = [v114 resizableImageWithCapInsets:?];

    v116 = AXLogRTT();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      [v105 capInsets];
      v117 = NSStringFromUIEdgeInsets(v139);
      *buf = 138412290;
      *&buf[4] = v117;
      _os_log_impl(&dword_261725000, v116, OS_LOG_TYPE_INFO, "Created final image with cap insets: %@", buf, 0xCu);
    }

    UIGraphicsEndImageContext();
    v9 = v115;
    v118 = [(RTTUIUtilities *)self textAlignmentForMe:v3];
    v119 = &bubbleFillForMe__RightBubbleImage;
    if (!v118)
    {
      v119 = &bubbleFillForMe__LeftBubbleImage;
    }

    v120 = *v119;
    *v119 = v9;
  }

  else
  {
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [RTTUIUtilities bubbleFillForMe:v10];
    }

    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v127 = __Block_byref_object_dispose__1;
    v128 = 0;
    objc_copyWeak(&v123, &location);
    v124 = v3;
    AXPerformBlockSynchronouslyOnMainThread();
    v9 = *(*&buf[8] + 40);
    objc_destroyWeak(&v123);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
  }

LABEL_36:

  return v9;
}

void __34__RTTUIUtilities_bubbleFillForMe___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained bubbleFillForMe:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)displayCallPromptForContact:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x277D440C8];
    v6 = a4;
    v7 = a3;
    v8 = [v5 sharedInstance];
    [v8 displayCallPromptForContact:v7 withCompletion:v6];
  }
}

+ (void)cancelCallPromptDisplay
{
  v2 = [MEMORY[0x277D440C8] sharedInstance];
  [v2 cancelCallPromptDisplay];
}

- (id)conversationForCallUID:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [MEMORY[0x277D440C8] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__RTTUIUtilities_conversationForCallUID___block_invoke;
  v10[3] = &unk_279AE5390;
  v12 = &v13;
  v6 = v4;
  v11 = v6;
  [v5 findConversationForCallUID:v3 andResult:v10];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __41__RTTUIUtilities_conversationForCallUID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)deleteConversationWithCallUID:(id)a3
{
  v3 = MEMORY[0x277D440C8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 deleteConversationWithCallUID:v4];

  return v6;
}

- (BOOL)contactIsTTYContact:(id)a3
{
  v3 = MEMORY[0x277D440C8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 contactIsTTYContact:v4];

  return v6;
}

- (id)transcriptStringForConversation:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v36 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = v3;
  obj = [v3 utterances];
  v4 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v34 = *MEMORY[0x277D76988];
    v35 = *v38;
    v33 = *MEMORY[0x277D74430];
    v6 = *MEMORY[0x277D743F8];
    v7 = *MEMORY[0x277D740A8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = MEMORY[0x277CBDA78];
        v11 = MEMORY[0x277CBDA58];
        v12 = [v9 contactPath];
        v13 = [v11 contactForPhoneNumber:v12];
        v14 = [v10 stringFromContact:v13 style:0];

        if (![v14 length])
        {
          if ([v9 isMe])
          {
            ttyLocString();
          }

          else
          {
            [v9 contactPath];
          }
          v15 = ;

          v14 = v15;
        }

        if (![v14 length])
        {
          v16 = ttyLocString();

          v14 = v16;
        }

        v17 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v34 addingSymbolicTraits:0x8000 options:0];
        v43 = v33;
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v44 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v20 = [v17 fontDescriptorByAddingAttributes:v19];

        v21 = MEMORY[0x277D74300];
        [v20 pointSize];
        v22 = [v21 fontWithDescriptor:v20 size:?];
        v23 = MEMORY[0x277CCACA8];
        v24 = [v9 text];
        v25 = [v23 stringWithFormat:@"%@: %@\n", v14, v24];

        v26 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v25];
        v41 = v7;
        v42 = v22;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v28 = [v25 rangeOfString:v14];
        [v26 setAttributes:v27 range:{v28, v29}];

        [v36 appendAttributedString:v26];
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v5);
  }

  return v36;
}

@end