@interface UIKeyboardEmojiGraphicsTraits
+ (UIKeyboardEmojiGraphicsTraits)emojiGraphicsTraitsWithScreenTraits:(id)a3;
+ (id)emojiGraphicsTraitsForCurrentScreenTraits;
- (CGSize)fakeEmojiKeySize;
- (UIKeyboardEmojiGraphicsTraits)initWithScreenTrait:(id)a3;
@end

@implementation UIKeyboardEmojiGraphicsTraits

- (UIKeyboardEmojiGraphicsTraits)initWithScreenTrait:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = UIKeyboardEmojiGraphicsTraits;
  v5 = [(UIKeyboardEmojiGraphicsTraits *)&v37 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = *(v4 + 35);
    }

    else
    {
      v7 = 0;
      v5->_scrollSnapOffset = 0.0;
      *&v5->_prepolulatedRecentCount = 0u;
      *&v5->_inputViewRightMostPadding = 0u;
      *&v5->_categoryHeaderHeight = 0u;
      *&v5->_categorySelectedCirWidth = 0u;
      *&v5->_minimumInteritemSpacing = 0u;
      *&v5->_sectionOffset = 0u;
      *&v5->_emojiKeyWidth = 0u;
      v5->_fakeEmojiKeySize.width = 0.0;
      v5->_fakeEmojiKeySize.height = 0.0;
      v5->_alertTextWidth = 0.0;
    }

    v5->_isFirstPartyStickers = v7 & 1;
    [v4 screenToNativeScaleRatio];
    v6->_screenToNativeScaleRatio = v8;
    IsStickerPickerService = _UIApplicationIsStickerPickerService();
    if (+[UIKeyboardImpl isSplit])
    {
      *&v6->_emojiKeyWidth = xmmword_18A67FC50;
      *&v6->_minimumInteritemSpacing = xmmword_18A67FE50;
      *&v6->_sectionOffset = xmmword_18A67FBE0;
      *&v6->_categoryHeaderHeight = xmmword_18A67FE60;
      v6->_fakeEmojiKeySize.height = 42.0;
      *&v6->_categorySelectedCirWidth = xmmword_18A67FE70;
      v6->_prepolulatedRecentCount = 30;
      *&v6->_inputViewLeftMostPadding = xmmword_18A67FE40;
      v11 = xmmword_18A67FE80;
LABEL_7:
      *&v6->_alertTextWidth = v11;
      v12 = xmmword_18A67FC70;
LABEL_51:
      *&v6->_rightBiasPercentage = v12;
      goto LABEL_52;
    }

    if (IsStickerPickerService)
    {
      v13 = 38.0;
    }

    else
    {
      v13 = 32.0;
    }

    if (v6->_isFirstPartyStickers)
    {
      v14 = 15;
    }

    else
    {
      v14 = 24;
    }

    if (v6->_isFirstPartyStickers)
    {
      v15 = 20.0;
    }

    else
    {
      v15 = 10.0;
    }

    v16 = 48.0;
    if (!v6->_isFirstPartyStickers)
    {
      v16 = v13;
    }

    [v4 keyboardWidth];
    v18 = v17;
    if (v4 && *(v4 + 38) == 1)
    {
      v18 = *(v4 + 12);
    }

    if ([v4 isKeyboardMinorEdgeWidth])
    {
      if (v18 < 1024.0)
      {
        if (v18 < 768.0)
        {
          if (v18 >= 414.0)
          {
            v6->_emojiKeyWidth = v13;
            *&v6->_minimumLineSpacing = xmmword_18A67FD60;
            *&v6->_columnOffset = xmmword_18A67FD70;
            *&v6->_bottomPadding = xmmword_18A67FD80;
            *&v6->_categoryHeaderLeftPadding = xmmword_18A67FD90;
            v29 = 40.0;
            v30 = 46.0;
            if (IsStickerPickerService)
            {
              v29 = 46.0;
              v30 = 52.0;
            }

            v6->_fakeEmojiKeySize.width = v29;
            v6->_fakeEmojiKeySize.height = v30;
            v6->_categoryHeaderFontSize = 13.0;
            v6->_prepolulatedRecentCount = 30;
            *&v6->_inputViewLeftMostPadding = xmmword_18A67FDA0;
            v6->_alertTextWidth = 280.0;
            *&v6->_rightBiasPercentage = xmmword_18A659030;
          }

          else
          {
            if (v18 < 375.0)
            {
              if (v18 >= 360.0)
              {
                v6->_emojiKeyWidth = v13;
                *&v6->_minimumLineSpacing = xmmword_18A67FDC0;
                *&v6->_columnOffset = xmmword_18A67FDD0;
                *&v6->_bottomPadding = xmmword_18A67FDE0;
                *&v6->_categoryHeaderLeftPadding = xmmword_18A67FD90;
                v34 = 38.0;
                v35 = 44.0;
                if (IsStickerPickerService)
                {
                  v34 = 44.0;
                  v35 = 50.0;
                }

                v6->_fakeEmojiKeySize.width = v34;
                v6->_fakeEmojiKeySize.height = v35;
                v6->_categoryHeaderFontSize = 12.0;
                v6->_prepolulatedRecentCount = 30;
                v21 = xmmword_18A67FDF0;
LABEL_70:
                *&v6->_inputViewLeftMostPadding = v21;
                v6->_alertTextWidth = 280.0;
                *&v6->_rightBiasPercentage = xmmword_18A67FC70;
                if (![v4 isEmojiScrollingDirectionVertical])
                {
                  goto LABEL_52;
                }

                v6->_fakeEmojiKeySize = vaddq_f64(vdupq_lane_s64(v36, 0), xmmword_18A67F4A0);
                v6->_prepolulatedRecentCount = v14;
                *&v6->_emojiKeyWidth = v36;
                v6->_minimumLineSpacing = v15;
                v6->_minimumInteritemSpacing = v15;
                v6->_inputViewRightMostPadding = v6->_inputViewLeftMostPadding;
                if (v6->_isFirstPartyStickers)
                {
                  v6->_minimumInteritemSpacing = 9.0;
                  goto LABEL_59;
                }

                goto LABEL_73;
              }

              if (v18 >= 320.0)
              {
                v6->_emojiKeyWidth = v13;
                *&v6->_minimumLineSpacing = xmmword_18A67FE00;
                *&v6->_columnOffset = xmmword_18A67FE10;
                *&v6->_bottomPadding = xmmword_18A67FE20;
                *&v6->_categoryHeaderLeftPadding = xmmword_18A67FE30;
                v19 = 38.0;
                if (IsStickerPickerService)
                {
                  v19 = 44.0;
                }

                v20 = 42.0;
                if (IsStickerPickerService)
                {
                  v20 = 48.0;
                }

                v6->_fakeEmojiKeySize.width = v19;
                v6->_fakeEmojiKeySize.height = v20;
                v6->_categoryHeaderFontSize = 12.0;
                v6->_prepolulatedRecentCount = 30;
                v21 = xmmword_18A67FE40;
                goto LABEL_70;
              }

LABEL_52:
              v27 = v6;
              goto LABEL_53;
            }

            v6->_emojiKeyWidth = v13;
            *&v6->_minimumLineSpacing = xmmword_18A67FDC0;
            *&v6->_columnOffset = xmmword_18A67FDD0;
            *&v6->_bottomPadding = xmmword_18A67FDE0;
            *&v6->_categoryHeaderLeftPadding = xmmword_18A67FD90;
            v31 = 38.0;
            v32 = 44.0;
            if (IsStickerPickerService)
            {
              v31 = 44.0;
              v32 = 50.0;
            }

            v6->_fakeEmojiKeySize.width = v31;
            v6->_fakeEmojiKeySize.height = v32;
            v6->_categoryHeaderFontSize = 12.0;
            v6->_prepolulatedRecentCount = 30;
            *&v6->_inputViewLeftMostPadding = xmmword_18A67FDF0;
            v6->_alertTextWidth = 280.0;
            *&v6->_rightBiasPercentage = xmmword_18A67FC70;
            if ([v4 isInPopover])
            {
              v6->_bottomPadding = 2.0;
            }
          }

          if (![v4 isEmojiScrollingDirectionVertical])
          {
            goto LABEL_52;
          }

          v6->_fakeEmojiKeySize = vaddq_f64(vdupq_lane_s64(v36, 0), xmmword_18A67F4A0);
          v6->_prepolulatedRecentCount = v14;
          *&v6->_emojiKeyWidth = v36;
          v6->_minimumLineSpacing = v15;
          v6->_minimumInteritemSpacing = v15;
          v6->_inputViewRightMostPadding = v6->_inputViewLeftMostPadding;
          if (v6->_isFirstPartyStickers)
          {
LABEL_59:
            v6->_sectionOffset = v15 + 9.0;
            v6->_topPadding = v15 + -9.0;
            v6->_categoryHeaderFontSize = 15.0;
            *&v6->_categoryHeaderHeight = xmmword_18A67FDB0;
            goto LABEL_52;
          }

LABEL_73:
          v6->_sectionOffset = v15;
          v6->_topPadding = v15;
          goto LABEL_52;
        }

        *&v6->_emojiKeyWidth = xmmword_18A67FD10;
        *&v6->_minimumInteritemSpacing = xmmword_18A67FD20;
        *&v6->_sectionOffset = xmmword_18A67FD30;
        *&v6->_categoryHeaderHeight = xmmword_18A67FD40;
        v6->_fakeEmojiKeySize.height = 64.0;
        *&v6->_categorySelectedCirWidth = xmmword_18A67FB60;
        v6->_prepolulatedRecentCount = 30;
        v25 = xmmword_18A67FD50;
        goto LABEL_49;
      }

      *&v6->_emojiKeyWidth = xmmword_18A67FB20;
      *&v6->_minimumInteritemSpacing = xmmword_18A67FCE0;
      *&v6->_sectionOffset = xmmword_18A67FB40;
      *&v6->_categoryHeaderHeight = xmmword_18A67FCF0;
      v6->_fakeEmojiKeySize.height = 64.0;
      *&v6->_categorySelectedCirWidth = xmmword_18A67FD00;
      v22 = 27;
    }

    else
    {
      if (v18 >= 1366.0)
      {
        *&v6->_emojiKeyWidth = xmmword_18A67FB20;
        *&v6->_minimumInteritemSpacing = xmmword_18A67FB30;
        v23 = xmmword_18A67FB40;
        v24 = xmmword_18A67FB50;
      }

      else
      {
        if (v18 < 1024.0)
        {
          if (v18 >= 812.0)
          {
            *&v6->_emojiKeyWidth = xmmword_18A67FBC0;
            *&v6->_minimumInteritemSpacing = xmmword_18A67FBD0;
            *&v6->_sectionOffset = xmmword_18A67FBE0;
            *&v6->_categoryHeaderHeight = xmmword_18A67FBF0;
            v6->_fakeEmojiKeySize.height = 33.0;
            *&v6->_categorySelectedCirWidth = xmmword_18A67FC00;
            v6->_prepolulatedRecentCount = 30;
            *&v6->_inputViewLeftMostPadding = vdupq_n_s64(0x404E000000000000uLL);
            *&v6->_alertTextWidth = xmmword_18A67FC10;
            v12 = xmmword_18A67FC20;
            goto LABEL_51;
          }

          if (v18 >= 780.0)
          {
            *&v6->_emojiKeyWidth = xmmword_18A67FC30;
            *&v6->_minimumInteritemSpacing = xmmword_18A67FC40;
            *&v6->_sectionOffset = xmmword_18A6785C0;
            *&v6->_categoryHeaderHeight = xmmword_18A658770;
            v6->_fakeEmojiKeySize.height = 33.0;
            *&v6->_categorySelectedCirWidth = xmmword_18A67FC50;
            v6->_prepolulatedRecentCount = 30;
            v33 = xmmword_18A67FC60;
          }

          else
          {
            if (v18 >= 736.0)
            {
              *&v6->_emojiKeyWidth = xmmword_18A67FBC0;
              *&v6->_minimumInteritemSpacing = xmmword_18A67FBD0;
              *&v6->_sectionOffset = xmmword_18A67FBE0;
              *&v6->_categoryHeaderHeight = xmmword_18A67FBF0;
              v6->_fakeEmojiKeySize.height = 33.0;
              *&v6->_categorySelectedCirWidth = xmmword_18A67FC00;
              v6->_prepolulatedRecentCount = 30;
              *&v6->_inputViewLeftMostPadding = xmmword_18A67FC80;
              v26 = xmmword_18A67FC10;
              goto LABEL_50;
            }

            if (v18 >= 667.0)
            {
              *&v6->_emojiKeyWidth = xmmword_18A67FC30;
              *&v6->_minimumInteritemSpacing = xmmword_18A67FC40;
              *&v6->_sectionOffset = xmmword_18A6785C0;
              *&v6->_categoryHeaderHeight = xmmword_18A658770;
              v6->_fakeEmojiKeySize.height = 33.0;
              *&v6->_categorySelectedCirWidth = xmmword_18A67FC50;
              v6->_prepolulatedRecentCount = 30;
              v33 = xmmword_18A67FC90;
            }

            else
            {
              if (v18 < 568.0)
              {
                if (v18 >= 480.0)
                {
                  *&v6->_emojiKeyWidth = xmmword_18A67FC30;
                  *&v6->_minimumInteritemSpacing = xmmword_18A67F4A0;
                  *&v6->_sectionOffset = xmmword_18A6785C0;
                  *&v6->_categoryHeaderHeight = xmmword_18A67FCA0;
                  v6->_fakeEmojiKeySize.height = 35.0;
                  *&v6->_categorySelectedCirWidth = xmmword_18A67FCB0;
                  v6->_prepolulatedRecentCount = 30;
                  *&v6->_inputViewLeftMostPadding = xmmword_18A67FCC0;
                  v11 = xmmword_18A67FCD0;
                  goto LABEL_7;
                }

                goto LABEL_52;
              }

              *&v6->_emojiKeyWidth = xmmword_18A67FC30;
              *&v6->_minimumInteritemSpacing = xmmword_18A67F4A0;
              *&v6->_sectionOffset = xmmword_18A6785C0;
              *&v6->_categoryHeaderHeight = xmmword_18A67FCA0;
              v6->_fakeEmojiKeySize.height = 33.0;
              *&v6->_categorySelectedCirWidth = xmmword_18A67FCB0;
              v6->_prepolulatedRecentCount = 30;
              v33 = xmmword_18A67FCC0;
            }
          }

          *&v6->_inputViewLeftMostPadding = v33;
          v11 = xmmword_18A67FC10;
          goto LABEL_7;
        }

        *&v6->_emojiKeyWidth = xmmword_18A67FB20;
        *&v6->_minimumInteritemSpacing = xmmword_18A67FBA0;
        v23 = xmmword_18A67FB40;
        v24 = xmmword_18A67FBB0;
      }

      *&v6->_sectionOffset = v23;
      *&v6->_categoryHeaderHeight = v24;
      v6->_fakeEmojiKeySize.height = 64.0;
      *&v6->_categorySelectedCirWidth = xmmword_18A67FB60;
      v22 = 30;
    }

    v6->_prepolulatedRecentCount = v22;
    v25 = xmmword_18A67FB70;
LABEL_49:
    *&v6->_inputViewLeftMostPadding = v25;
    v26 = xmmword_18A67FB80;
LABEL_50:
    *&v6->_alertTextWidth = v26;
    v12 = xmmword_18A67FB90;
    goto LABEL_51;
  }

LABEL_53:

  return v6;
}

+ (UIKeyboardEmojiGraphicsTraits)emojiGraphicsTraitsWithScreenTraits:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScreenTrait:v4];

  return v5;
}

+ (id)emojiGraphicsTraitsForCurrentScreenTraits
{
  v3 = +[UIKeyboardImpl keyboardScreen];
  [v3 bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v8 = CGRectGetWidth(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (v8 <= CGRectGetHeight(v15))
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  v10 = [UIKBScreenTraits traitsWithScreen:v3 orientation:v9 ignoreRemoteKeyboard:1];
  v11 = [[a1 alloc] initWithScreenTrait:v10];

  return v11;
}

- (CGSize)fakeEmojiKeySize
{
  width = self->_fakeEmojiKeySize.width;
  height = self->_fakeEmojiKeySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end