@interface TSKCenterTilingButton
- (TSKCenterTilingButton)initWithFrame:(CGRect)frame andTilingType:(int)type;
- (id)centerTileImageForState:(unint64_t)state;
- (id)leftCapImageForState:(unint64_t)state;
- (id)leftCenterTileImageForState:(unint64_t)state;
- (id)rightCapImageForState:(unint64_t)state;
- (id)rightCenterTileImageForState:(unint64_t)state;
- (void)dealloc;
- (void)p_resetBackgroundImageForState:(unint64_t)state;
- (void)p_tileButtedToCapLtoR:(id)r inRect:(CGRect)rect;
- (void)p_tileButtedToCapRtoL:(id)l inRect:(CGRect)rect;
- (void)p_tileHorizCenterOutwardwithLeft:(id)left andRight:(id)right inRect:(CGRect)rect;
- (void)p_tileSimple:(id)simple inRect:(CGRect)rect;
- (void)setCenterTileImage:(id)image forState:(unint64_t)state;
- (void)setLeftCapImage:(id)image forState:(unint64_t)state;
- (void)setLeftCenterTileImage:(id)image forState:(unint64_t)state;
- (void)setRightCapImage:(id)image forState:(unint64_t)state;
- (void)setRightCenterTileImage:(id)image forState:(unint64_t)state;
@end

@implementation TSKCenterTilingButton

- (TSKCenterTilingButton)initWithFrame:(CGRect)frame andTilingType:(int)type
{
  v6.receiver = self;
  v6.super_class = TSKCenterTilingButton;
  result = [(TSKCenterTilingButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->mTilingType = type;
  }

  return result;
}

- (void)dealloc
{
  self->mLeftCapImage_Normal = 0;

  self->mLeftCapImage_Disabled = 0;
  self->mLeftCapImage_Active = 0;

  self->mLeftCapImage_Selected = 0;
  self->mLeftCapImage_ActiveSelected = 0;

  self->mRightCapImage_Normal = 0;
  self->mRightCapImage_Disabled = 0;

  self->mRightCapImage_Active = 0;
  self->mRightCapImage_Selected = 0;

  self->mRightCapImage_ActiveSelected = 0;
  self->mCenterTileImage_Normal = 0;

  self->mCenterTileImage_Disabled = 0;
  self->mCenterTileImage_Active = 0;

  self->mCenterTileImage_Selected = 0;
  self->mCenterTileImage_ActiveSelected = 0;

  self->mLeftCenterTileImage_Normal = 0;
  self->mLeftCenterTileImage_Disabled = 0;

  self->mLeftCenterTileImage_Active = 0;
  self->mLeftCenterTileImage_Selected = 0;

  self->mLeftCenterTileImage_ActiveSelected = 0;
  self->mRightCenterTileImage_Normal = 0;

  self->mRightCenterTileImage_Disabled = 0;
  self->mRightCenterTileImage_Active = 0;

  self->mRightCenterTileImage_Selected = 0;
  self->mRightCenterTileImage_ActiveSelected = 0;
  v3.receiver = self;
  v3.super_class = TSKCenterTilingButton;
  [(TSKCenterTilingButton *)&v3 dealloc];
}

- (id)leftCapImageForState:(unint64_t)state
{
  if ((state & 2) == 0 || (mLeftCapImage_ActiveSelected = self->mLeftCapImage_Disabled) == 0)
  {
    if ((state & 5) > 3)
    {
      if ((state & 5) != 4)
      {
        mLeftCapImage_ActiveSelected = self->mLeftCapImage_ActiveSelected;
        if (mLeftCapImage_ActiveSelected)
        {
          return mLeftCapImage_ActiveSelected;
        }

        mLeftCapImage_ActiveSelected = self->mLeftCapImage_Active;
        if (mLeftCapImage_ActiveSelected)
        {
          return mLeftCapImage_ActiveSelected;
        }
      }

      v4 = 768;
    }

    else
    {
      if ((state & 5) == 0)
      {
        return self->mLeftCapImage_Normal;
      }

      v4 = 760;
    }

    mLeftCapImage_ActiveSelected = *(&self->super.super.super.super.super.isa + v4);
    if (!mLeftCapImage_ActiveSelected)
    {
      return self->mLeftCapImage_Normal;
    }
  }

  return mLeftCapImage_ActiveSelected;
}

- (id)rightCapImageForState:(unint64_t)state
{
  if ((state & 2) == 0 || (mRightCapImage_ActiveSelected = self->mRightCapImage_Disabled) == 0)
  {
    if ((state & 5) > 3)
    {
      if ((state & 5) != 4)
      {
        mRightCapImage_ActiveSelected = self->mRightCapImage_ActiveSelected;
        if (mRightCapImage_ActiveSelected)
        {
          return mRightCapImage_ActiveSelected;
        }

        mRightCapImage_ActiveSelected = self->mRightCapImage_Active;
        if (mRightCapImage_ActiveSelected)
        {
          return mRightCapImage_ActiveSelected;
        }
      }

      v4 = 808;
    }

    else
    {
      if ((state & 5) == 0)
      {
        return self->mRightCapImage_Normal;
      }

      v4 = 800;
    }

    mRightCapImage_ActiveSelected = *(&self->super.super.super.super.super.isa + v4);
    if (!mRightCapImage_ActiveSelected)
    {
      return self->mRightCapImage_Normal;
    }
  }

  return mRightCapImage_ActiveSelected;
}

- (id)centerTileImageForState:(unint64_t)state
{
  if ((state & 2) == 0 || (mCenterTileImage_ActiveSelected = self->mCenterTileImage_Disabled) == 0)
  {
    if ((state & 5) > 3)
    {
      if ((state & 5) != 4)
      {
        mCenterTileImage_ActiveSelected = self->mCenterTileImage_ActiveSelected;
        if (mCenterTileImage_ActiveSelected)
        {
          return mCenterTileImage_ActiveSelected;
        }

        mCenterTileImage_ActiveSelected = self->mCenterTileImage_Active;
        if (mCenterTileImage_ActiveSelected)
        {
          return mCenterTileImage_ActiveSelected;
        }
      }

      v4 = 848;
    }

    else
    {
      if ((state & 5) == 0)
      {
        return self->mCenterTileImage_Normal;
      }

      v4 = 840;
    }

    mCenterTileImage_ActiveSelected = *(&self->super.super.super.super.super.isa + v4);
    if (!mCenterTileImage_ActiveSelected)
    {
      return self->mCenterTileImage_Normal;
    }
  }

  return mCenterTileImage_ActiveSelected;
}

- (id)leftCenterTileImageForState:(unint64_t)state
{
  if (self->mTilingType != 3)
  {
    return 0;
  }

  if ((state & 2) == 0 || (mLeftCenterTileImage_ActiveSelected = self->mLeftCenterTileImage_Disabled) == 0)
  {
    if ((state & 5) > 3)
    {
      if ((state & 5) != 4)
      {
        mLeftCenterTileImage_ActiveSelected = self->mLeftCenterTileImage_ActiveSelected;
        if (mLeftCenterTileImage_ActiveSelected)
        {
          return mLeftCenterTileImage_ActiveSelected;
        }

        mLeftCenterTileImage_ActiveSelected = self->mLeftCenterTileImage_Active;
        if (mLeftCenterTileImage_ActiveSelected)
        {
          return mLeftCenterTileImage_ActiveSelected;
        }
      }

      v4 = 888;
    }

    else
    {
      if ((state & 5) == 0)
      {
        return self->mLeftCenterTileImage_Normal;
      }

      v4 = 880;
    }

    mLeftCenterTileImage_ActiveSelected = *(&self->super.super.super.super.super.isa + v4);
    if (!mLeftCenterTileImage_ActiveSelected)
    {
      return self->mLeftCenterTileImage_Normal;
    }
  }

  return mLeftCenterTileImage_ActiveSelected;
}

- (id)rightCenterTileImageForState:(unint64_t)state
{
  if (self->mTilingType != 3)
  {
    return 0;
  }

  if ((state & 2) == 0 || (mRightCenterTileImage_ActiveSelected = self->mRightCenterTileImage_Disabled) == 0)
  {
    if ((state & 5) > 3)
    {
      if ((state & 5) != 4)
      {
        mRightCenterTileImage_ActiveSelected = self->mRightCenterTileImage_ActiveSelected;
        if (mRightCenterTileImage_ActiveSelected)
        {
          return mRightCenterTileImage_ActiveSelected;
        }

        mRightCenterTileImage_ActiveSelected = self->mRightCenterTileImage_Active;
        if (mRightCenterTileImage_ActiveSelected)
        {
          return mRightCenterTileImage_ActiveSelected;
        }
      }

      v4 = 928;
    }

    else
    {
      if ((state & 5) == 0)
      {
        return self->mRightCenterTileImage_Normal;
      }

      v4 = 920;
    }

    mRightCenterTileImage_ActiveSelected = *(&self->super.super.super.super.super.isa + v4);
    if (!mRightCenterTileImage_ActiveSelected)
    {
      return self->mRightCenterTileImage_Normal;
    }
  }

  return mRightCenterTileImage_ActiveSelected;
}

- (void)setLeftCapImage:(id)image forState:(unint64_t)state
{
  if ((state & 2) != 0)
  {
    imageCopy = image;
    v8 = &OBJC_IVAR___TSKCenterTilingButton_mLeftCapImage_Disabled;
  }

  else
  {
    imageCopy2 = image;
    v8 = off_279D47AF8[state & 5];
  }

  v10 = *v8;

  *(&self->super.super.super.super.super.isa + v10) = image;

  [(TSKCenterTilingButton *)self p_resetBackgroundImageForState:state];
}

- (void)setRightCapImage:(id)image forState:(unint64_t)state
{
  if ((state & 2) != 0)
  {
    imageCopy = image;
    v8 = &OBJC_IVAR___TSKCenterTilingButton_mRightCapImage_Disabled;
  }

  else
  {
    imageCopy2 = image;
    v8 = off_279D47B28[state & 5];
  }

  v10 = *v8;

  *(&self->super.super.super.super.super.isa + v10) = image;

  [(TSKCenterTilingButton *)self p_resetBackgroundImageForState:state];
}

- (void)setCenterTileImage:(id)image forState:(unint64_t)state
{
  if ((state & 2) != 0)
  {
    imageCopy = image;
    v8 = &OBJC_IVAR___TSKCenterTilingButton_mCenterTileImage_Disabled;
  }

  else
  {
    imageCopy2 = image;
    v8 = off_279D47B58[state & 5];
  }

  v10 = *v8;

  *(&self->super.super.super.super.super.isa + v10) = image;

  [(TSKCenterTilingButton *)self p_resetBackgroundImageForState:state];
}

- (void)setLeftCenterTileImage:(id)image forState:(unint64_t)state
{
  if ((state & 2) != 0)
  {
    imageCopy = image;
    v8 = &OBJC_IVAR___TSKCenterTilingButton_mLeftCenterTileImage_Disabled;
  }

  else
  {
    imageCopy2 = image;
    v8 = off_279D47B88[state & 5];
  }

  v10 = *v8;

  *(&self->super.super.super.super.super.isa + v10) = image;

  [(TSKCenterTilingButton *)self p_resetBackgroundImageForState:state];
}

- (void)setRightCenterTileImage:(id)image forState:(unint64_t)state
{
  if ((state & 2) != 0)
  {
    imageCopy = image;
    v8 = &OBJC_IVAR___TSKCenterTilingButton_mRightCenterTileImage_Disabled;
  }

  else
  {
    imageCopy2 = image;
    v8 = off_279D47BB8[state & 5];
  }

  v10 = *v8;

  *(&self->super.super.super.super.super.isa + v10) = image;

  [(TSKCenterTilingButton *)self p_resetBackgroundImageForState:state];
}

- (void)p_resetBackgroundImageForState:(unint64_t)state
{
  v5 = [(TSKCenterTilingButton *)self leftCapImageForState:?];
  v6 = [(TSKCenterTilingButton *)self rightCapImageForState:state];
  v7 = [(TSKCenterTilingButton *)self centerTileImageForState:state];
  v8 = [(TSKCenterTilingButton *)self leftCenterTileImageForState:state];
  v9 = [(TSKCenterTilingButton *)self rightCenterTileImageForState:state];
  v10 = 1.0;
  v11 = 1.0;
  if (v5)
  {
    [v5 scale];
    v11 = v12;
  }

  if (v6)
  {
    [v6 scale];
    v10 = v13;
  }

  if (v9)
  {
    [v9 scale];
    v15 = v14;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_12:
    if (v7)
    {
      [v7 scale];
      if (v23 >= 1.0)
      {
        [v7 scale];
        if (v15 > v29)
        {
          goto LABEL_15;
        }
      }

      else if (v15 > 1.0)
      {
        goto LABEL_15;
      }

      [v7 scale];
      v31 = v30;
      v27 = 1.0;
      if (v31 < 1.0)
      {
LABEL_29:
        v18 = 0;
        goto LABEL_37;
      }

LABEL_28:
      [v7 scale];
      goto LABEL_29;
    }

    v27 = 1.0;
    v18 = 1;
    if (v15 <= 1.0)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  v15 = 1.0;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  [v8 scale];
  v17 = v16;
  v18 = v7 == 0;
  if (v7)
  {
    [v7 scale];
    if (v17 <= v19)
    {
      [v7 scale];
      if (v15 <= v20)
      {
        [v8 scale];
        v22 = v21;
        goto LABEL_20;
      }

LABEL_15:
      v18 = 0;
      if (!v9)
      {
LABEL_32:
        v32 = 1.0;
        if (v10 > 1.0)
        {
          goto LABEL_38;
        }

LABEL_43:
        if (v8)
        {
          goto LABEL_44;
        }

        goto LABEL_56;
      }

LABEL_24:
      [v9 scale];
      if (v10 > v28)
      {
        goto LABEL_38;
      }

LABEL_42:
      [v9 scale];
      v32 = v35;
      goto LABEL_43;
    }
  }

  else if (v16 <= 1.0)
  {
    if (v15 > 1.0)
    {
      v18 = 1;
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    [v8 scale];
    v22 = v33;
LABEL_35:
    v27 = 1.0;
    v18 = 1;
    if (v22 <= 1.0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  [v8 scale];
  if (v15 > v24)
  {
LABEL_23:
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  [v8 scale];
  v22 = v25;
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_20:
  [v7 scale];
  if (v22 <= v26)
  {
    goto LABEL_28;
  }

  v18 = 0;
LABEL_36:
  [v8 scale];
LABEL_37:
  if (v10 > v27)
  {
LABEL_38:
    if (v6)
    {
      [v6 scale];
      if (v11 <= v34)
      {
LABEL_78:
        [v6 scale];
        v40 = v55;
        goto LABEL_79;
      }
    }

    else
    {
      v40 = 1.0;
      if (v11 <= 1.0)
      {
LABEL_79:
        if (v9)
        {
          goto LABEL_80;
        }

        goto LABEL_93;
      }
    }

    goto LABEL_75;
  }

  if (v9)
  {
    goto LABEL_42;
  }

  v32 = 1.0;
  if (v8)
  {
LABEL_44:
    [v8 scale];
    v37 = v36;
    if (v18)
    {
      if (v36 <= 1.0)
      {
        if (v32 <= 1.0)
        {
          [v8 scale];
          v39 = v38;
          goto LABEL_53;
        }

        goto LABEL_68;
      }
    }

    else
    {
      [v7 scale];
      if (v37 <= v41)
      {
        [v7 scale];
        if (v32 <= v46)
        {
          [v8 scale];
          v39 = v47;
LABEL_65:
          [v7 scale];
          if (v39 > v48)
          {
LABEL_66:
            v49 = v8;
LABEL_73:
            [v49 scale];
            goto LABEL_74;
          }

LABEL_72:
          v49 = v7;
          goto LABEL_73;
        }

LABEL_68:
        if (!v9)
        {
          v44 = 1.0;
          goto LABEL_74;
        }

        goto LABEL_69;
      }
    }

    [v8 scale];
    if (v32 <= v42)
    {
      [v8 scale];
      v39 = v43;
      if (v18)
      {
LABEL_53:
        v44 = 1.0;
        if (v39 <= 1.0)
        {
          goto LABEL_74;
        }

        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_68;
  }

LABEL_56:
  if (!v18)
  {
    [v7 scale];
    if (v45 >= 1.0)
    {
      [v7 scale];
      if (v32 > v50)
      {
        goto LABEL_68;
      }
    }

    else if (v32 > 1.0)
    {
      goto LABEL_68;
    }

    [v7 scale];
    v52 = v51;
    v44 = 1.0;
    if (v52 < 1.0)
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v44 = 1.0;
  if (v9 && v32 > 1.0)
  {
LABEL_69:
    v49 = v9;
    goto LABEL_73;
  }

LABEL_74:
  if (v11 <= v44)
  {
    if (!v6)
    {
      v40 = 1.0;
      if (v9)
      {
LABEL_80:
        [v9 scale];
        v57 = v56;
        if (v8)
        {
          goto LABEL_81;
        }

        goto LABEL_94;
      }

LABEL_93:
      v57 = 1.0;
      if (v8)
      {
LABEL_81:
        [v8 scale];
        v59 = v58;
        if (v18)
        {
          if (v58 <= 1.0)
          {
            if (v57 <= 1.0)
            {
              [v8 scale];
              v61 = v60;
              goto LABEL_90;
            }

LABEL_105:
            if (!v9)
            {
              v74 = 1.0;
              if (v40 > 1.0)
              {
                goto LABEL_114;
              }

LABEL_118:
              if (v8)
              {
                goto LABEL_119;
              }

              goto LABEL_129;
            }

            [v9 scale];
            if (v40 > v73)
            {
              goto LABEL_114;
            }

LABEL_117:
            [v9 scale];
            v74 = v78;
            goto LABEL_118;
          }
        }

        else
        {
          [v7 scale];
          if (v59 <= v63)
          {
            [v7 scale];
            if (v57 > v68)
            {
              goto LABEL_105;
            }

            [v8 scale];
            v61 = v69;
LABEL_102:
            [v7 scale];
            if (v61 > v70)
            {
LABEL_103:
              v71 = v8;
LABEL_112:
              [v71 scale];
              goto LABEL_113;
            }

            goto LABEL_111;
          }
        }

        [v8 scale];
        if (v57 > v64)
        {
          goto LABEL_105;
        }

        [v8 scale];
        v61 = v65;
        if (v18)
        {
LABEL_90:
          v66 = 1.0;
          if (v61 <= 1.0)
          {
            goto LABEL_113;
          }

          goto LABEL_103;
        }

        goto LABEL_102;
      }

LABEL_94:
      if (v18)
      {
        v66 = 1.0;
        if (v57 <= 1.0)
        {
LABEL_113:
          if (v40 > v66)
          {
LABEL_114:
            if (v6)
            {
              v77 = v6;
LABEL_146:
              [v77 scale];
              v54 = v92;
              goto LABEL_147;
            }

LABEL_143:
            v54 = 1.0;
            goto LABEL_147;
          }

          if (!v9)
          {
            v74 = 1.0;
            if (v8)
            {
LABEL_119:
              [v8 scale];
              v80 = v79;
              if (v18)
              {
                if (v79 <= 1.0)
                {
                  if (v74 <= 1.0)
                  {
                    [v8 scale];
                    v82 = v81;
                    goto LABEL_126;
                  }

                  goto LABEL_141;
                }
              }

              else
              {
                [v7 scale];
                if (v80 <= v83)
                {
                  [v7 scale];
                  if (v74 <= v87)
                  {
                    [v8 scale];
                    v82 = v88;
LABEL_138:
                    [v7 scale];
                    if (v82 > v89)
                    {
                      goto LABEL_139;
                    }

LABEL_145:
                    v77 = v7;
                    goto LABEL_146;
                  }

LABEL_141:
                  if (!v9)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_142;
                }
              }

              [v8 scale];
              if (v74 <= v84)
              {
                [v8 scale];
                v82 = v85;
                if (v18)
                {
LABEL_126:
                  v54 = 1.0;
                  if (v82 <= 1.0)
                  {
                    goto LABEL_147;
                  }

LABEL_139:
                  v77 = v8;
                  goto LABEL_146;
                }

                goto LABEL_138;
              }

              goto LABEL_141;
            }

LABEL_129:
            if (v18)
            {
              v54 = 1.0;
              if (!v9 || v74 <= 1.0)
              {
LABEL_147:
                if (!v5)
                {
                  v62 = 0.0;
                  if (v6)
                  {
                    goto LABEL_149;
                  }

                  goto LABEL_151;
                }

                goto LABEL_148;
              }

LABEL_142:
              v77 = v9;
              goto LABEL_146;
            }

            [v7 scale];
            if (v86 >= 1.0)
            {
              [v7 scale];
              if (v74 > v90)
              {
                goto LABEL_141;
              }
            }

            else if (v74 > 1.0)
            {
              goto LABEL_141;
            }

            [v7 scale];
            v54 = 1.0;
            if (v91 < 1.0)
            {
              goto LABEL_147;
            }

            goto LABEL_145;
          }

          goto LABEL_117;
        }

        goto LABEL_105;
      }

      [v7 scale];
      if (v67 >= 1.0)
      {
        [v7 scale];
        if (v57 > v72)
        {
          goto LABEL_105;
        }
      }

      else if (v57 > 1.0)
      {
        goto LABEL_105;
      }

      [v7 scale];
      v76 = v75;
      v66 = 1.0;
      if (v76 < 1.0)
      {
        goto LABEL_113;
      }

LABEL_111:
      v71 = v7;
      goto LABEL_112;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (v5)
  {
    [v5 scale];
    v54 = v53;
LABEL_148:
    [v5 size];
    v62 = v93;
    if (v6)
    {
      goto LABEL_149;
    }

    goto LABEL_151;
  }

  v62 = 0.0;
  v54 = 1.0;
  if (v6)
  {
LABEL_149:
    [v6 size];
    v95 = v94;
    goto LABEL_152;
  }

LABEL_151:
  v95 = 0.0;
LABEL_152:
  [(TSKCenterTilingButton *)self bounds];
  v97 = v96;
  v99 = v98;
  v100 = v62 + v95;
  [(TSKCenterTilingButton *)self bounds];
  v113.width = v101;
  v113.height = v102;
  UIGraphicsBeginImageContextWithOptions(v113, 0, v54);
  if (v5)
  {
    [v5 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }

  v103 = v97 - v100;
  mTilingType = self->mTilingType;
  if (v18)
  {
    if (!v9 || !v8 || mTilingType != 3)
    {
LABEL_168:
      if (!v6)
      {
        goto LABEL_170;
      }

      goto LABEL_169;
    }

    selfCopy2 = self;
    v106 = v8;
    v107 = v9;
LABEL_167:
    [(TSKCenterTilingButton *)selfCopy2 p_tileHorizCenterOutwardwithLeft:v106 andRight:v107 inRect:v62, 0.0, v103, v99];
    goto LABEL_168;
  }

  selfCopy2 = self;
  switch(mTilingType)
  {
    case 3:
      v106 = v7;
      v107 = v7;
      goto LABEL_167;
    case 2:
      [(TSKCenterTilingButton *)self p_tileButtedToCapRtoL:v7 inRect:v62, 0.0, v103, v99];
      if (v6)
      {
        goto LABEL_169;
      }

      break;
    case 1:
      [(TSKCenterTilingButton *)self p_tileButtedToCapLtoR:v7 inRect:v62, 0.0, v103, v99];
      if (!v6)
      {
        break;
      }

LABEL_169:
      [(TSKCenterTilingButton *)self bounds];
      v109 = v108;
      [v6 size];
      [v6 drawAtPoint:{v109 - v110, 0.0}];
      break;
    default:
      [(TSKCenterTilingButton *)self p_tileSimple:v7 inRect:v62, 0.0, v103, v99];
      if (v6)
      {
        goto LABEL_169;
      }

      break;
  }

LABEL_170:
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  [(TSKCenterTilingButton *)self setBackgroundImage:ImageFromCurrentImageContext forState:state];
}

- (void)p_tileSimple:(id)simple inRect:(CGRect)rect
{
  if (simple)
  {
    [simple drawAsPatternInRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  }
}

- (void)p_tileButtedToCapLtoR:(id)r inRect:(CGRect)rect
{
  v14 = *MEMORY[0x277D85DE8];
  if (r)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    [r size];
    v10 = v9;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    rects.origin.x = x;
    rects.origin.y = y;
    rects.size.width = width;
    rects.size.height = height;
    CGContextClipToRects(CurrentContext, &rects, 1uLL);
    v12 = x + width;
    while (x < v12)
    {
      [r drawAtPoint:{x, y}];
      x = v10 + x;
    }

    CGContextRestoreGState(CurrentContext);
  }
}

- (void)p_tileButtedToCapRtoL:(id)l inRect:(CGRect)rect
{
  v16 = *MEMORY[0x277D85DE8];
  if (l)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    [l size];
    v10 = v9;
    [l size];
    v12 = x + width - v11;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    rects.origin.x = x;
    rects.origin.y = y;
    rects.size.width = width;
    rects.size.height = height;
    CGContextClipToRects(CurrentContext, &rects, 1uLL);
    while (1)
    {
      [l size];
      if (v12 <= x - v14)
      {
        break;
      }

      [l drawAtPoint:{v12, y}];
      v12 = v12 - v10;
    }

    CGContextRestoreGState(CurrentContext);
  }
}

- (void)p_tileHorizCenterOutwardwithLeft:(id)left andRight:(id)right inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSKCenterTilingButton *)self bounds];
  v13 = round(v12 * 0.5);
  v14 = v13 - x;
  [(TSKCenterTilingButton *)self p_tileButtedToCapLtoR:right inRect:v13, y, x + width - v13, height];

  [(TSKCenterTilingButton *)self p_tileButtedToCapRtoL:left inRect:x, y, v14, height];
}

@end