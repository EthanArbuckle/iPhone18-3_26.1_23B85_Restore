@interface _UITintColorVisitor
- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6;
- (BOOL)_visitView:(id)a3;
- (_UITintColorVisitor)initWithNotificationReasons:(unint64_t)a3;
@end

@implementation _UITintColorVisitor

- (_UITintColorVisitor)initWithNotificationReasons:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UITintColorVisitor;
  v4 = [(_UIViewVisitor *)&v7 initWithTraversalDirection:2];
  v5 = v4;
  if (v4)
  {
    v4->_reasons = a3;
    [(_UIViewVisitor *)v4 setVisitMaskViews:0];
  }

  return v5;
}

- (BOOL)_visitView:(id)a3
{
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2020000000;
  v25 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x2020000000;
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(_UIViewVisitor *)self tracksHierarchy];
  v6 = [a3 superview];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34___UITintColorVisitor__visitView___block_invoke;
  v14[3] = &unk_1E712BCE8;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = v6;
  v14[7] = &v23;
  v15 = v5;
  v14[8] = &v20;
  v14[9] = &v16;
  if (v5)
  {
    originalVisitedView = self->_originalVisitedView;
    if (originalVisitedView && originalVisitedView == a3)
    {
      v8 = v24;
LABEL_8:
      *(*v8 + 24) = 1;
      goto LABEL_16;
    }

    changedSubview = self->_changedSubview;
    v11 = changedSubview != a3 || changedSubview == 0;
    if (!v11 || v6 != originalVisitedView)
    {
      __34___UITintColorVisitor__visitView___block_invoke(v14);
    }
  }

  else
  {
    __34___UITintColorVisitor__visitView___block_invoke(v14);
    v9 = self->_originalVisitedView;
    if (v9 && v9 == a3)
    {
      v8 = v21;
      *(v24[0] + 24) = 1;
      goto LABEL_8;
    }
  }

LABEL_16:
  if (*(v21[0] + 24) == 1)
  {
    [a3 _tintColorDidChange];
  }

  if (*(v17 + 24) == 1)
  {
    [a3 accessibilityApplyInvertFilter];
  }

  v12 = *(v24[0] + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);
  return v12;
}

- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6
{
  if ([(_UIViewVisitor *)self tracksHierarchy])
  {
    if ([a4 superview] != a3)
    {
      return 0;
    }

    if ([a4 _interactionTintColor])
    {
      if (a4)
      {
        if ((*(a4 + 100) & 0x30) != 0 || *(a4 + 108))
        {
          return 0;
        }

        v13 = [a3 window];
LABEL_12:
        v14 = 0;
        v15 = (*(a4 + 101) >> 5) & 1;
        if (a3)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      v13 = [a3 window];
    }

    else
    {
      v13 = [a3 window];
      if (a4)
      {
        goto LABEL_12;
      }
    }

    v15 = 0;
    v14 = 1;
    if (a3)
    {
LABEL_13:
      v16 = *(a3 + 12);
      if (v15 != ((v16 >> 45) & 1))
      {
        v17 = 0;
        if ((v14 & 1) == 0)
        {
          v18 = *(a4 + 12);
          v19 = (v18 >> 46) & 1;
          v20 = 3;
LABEL_40:
          if (v19 != ((v16 >> 46) & 1))
          {
LABEL_50:
            self->_reasons = v20;
            self->_originalVisitedView = a3;
            v12 = &OBJC_IVAR____UITintColorVisitor__changedSubview;
            goto LABEL_5;
          }

          if ((v18 & v16 & 0x400000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_42:
          if ((v16 & 0x3000000000) != 0 || *(a3 + 108))
          {
LABEL_44:
            v25 = [a6 tintAdjustmentMode];
            v26 = [a3 tintAdjustmentMode];
            if (v25 == v26)
            {
              v20 = 1;
            }

            if (!v17 || v25 != v26)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

LABEL_58:
          if (!v13 || v13 == a5)
          {
            if (!v17)
            {
LABEL_49:
              v20 = 1;
              goto LABEL_50;
            }

LABEL_48:
            v27 = +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [a6 _userInterfaceIdiom]);
            if (v27 == +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [a3 _userInterfaceIdiom]))
            {
              return 0;
            }

            goto LABEL_49;
          }

LABEL_60:
          if (a5)
          {
            v28 = (*(a5 + 12) >> 36) & 3;
            if (!v28)
            {
              v28 = 2 * (*(a5 + 108) != 0);
            }
          }

          else
          {
            v28 = 0;
          }

          v29 = (*(v13 + 96) >> 36) & 3;
          if (!v29)
          {
            v29 = 2 * (*(v13 + 216) != 0);
          }

          v30 = v28 == v29;
          if (v28 == v29)
          {
            v31 = v17;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v20 = 1;
          }

          if ((v31 & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        v20 = 3;
LABEL_55:
        if ((v16 & 0x400000000000) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }

LABEL_24:
      if ((v14 & 1) == 0 && a3 && (*(a4 + 12) & 0x200000000000) != 0 && (*(a3 + 101) & 0x20) != 0 || [a3 _definesTintColor])
      {
        v21 = [a6 _normalInheritedTintColor];
        v22 = [a3 _normalInheritedTintColor];
        if (v21 == v22 && ([v21 isEqual:v22] & 1) != 0)
        {
          v17 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 1;
        v20 = 2;
        if (!v13 || v13 == a5)
        {
LABEL_37:
          if (v14)
          {
LABEL_52:
            if (!a3)
            {
              goto LABEL_58;
            }

            v16 = *(a3 + 12);
            goto LABEL_55;
          }

LABEL_38:
          v18 = *(a4 + 12);
          if (!a3)
          {
            if ((v18 & 0x400000000000) != 0)
            {
              goto LABEL_50;
            }

            goto LABEL_58;
          }

          v19 = (v18 >> 46) & 1;
          v16 = *(a3 + 12);
          goto LABEL_40;
        }

        v23 = [a5 _normalInheritedTintColor];
        v24 = [v13 _normalInheritedTintColor];
        if (v23 == v24 && ![v23 isEqual:v24])
        {
LABEL_51:
          v20 = 2;
          if (v14)
          {
            goto LABEL_52;
          }

          goto LABEL_38;
        }
      }

      v17 = 0;
      v20 = 3;
      goto LABEL_37;
    }

LABEL_18:
    if (v15)
    {
      if ((v14 & 1) == 0 && (*(a4 + 101) & 0x40) != 0)
      {
        v20 = 3;
        goto LABEL_50;
      }

      v20 = 1;
      if (!v13 || v13 == a5)
      {
        goto LABEL_50;
      }

      LOBYTE(v17) = 0;
      v20 = 3;
      goto LABEL_60;
    }

    goto LABEL_24;
  }

  v12 = &OBJC_IVAR____UITintColorVisitor__originalVisitedView;
  a4 = a3;
LABEL_5:
  *(&self->super.super.isa + *v12) = a4;
  return 1;
}

@end