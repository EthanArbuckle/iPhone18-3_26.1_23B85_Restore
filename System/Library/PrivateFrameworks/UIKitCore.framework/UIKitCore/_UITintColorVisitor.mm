@interface _UITintColorVisitor
- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview;
- (BOOL)_visitView:(id)view;
- (_UITintColorVisitor)initWithNotificationReasons:(unint64_t)reasons;
@end

@implementation _UITintColorVisitor

- (_UITintColorVisitor)initWithNotificationReasons:(unint64_t)reasons
{
  v7.receiver = self;
  v7.super_class = _UITintColorVisitor;
  v4 = [(_UIViewVisitor *)&v7 initWithTraversalDirection:2];
  v5 = v4;
  if (v4)
  {
    v4->_reasons = reasons;
    [(_UIViewVisitor *)v4 setVisitMaskViews:0];
  }

  return v5;
}

- (BOOL)_visitView:(id)view
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
  tracksHierarchy = [(_UIViewVisitor *)self tracksHierarchy];
  superview = [view superview];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34___UITintColorVisitor__visitView___block_invoke;
  v14[3] = &unk_1E712BCE8;
  v14[4] = self;
  v14[5] = view;
  v14[6] = superview;
  v14[7] = &v23;
  v15 = tracksHierarchy;
  v14[8] = &v20;
  v14[9] = &v16;
  if (tracksHierarchy)
  {
    originalVisitedView = self->_originalVisitedView;
    if (originalVisitedView && originalVisitedView == view)
    {
      v8 = v24;
LABEL_8:
      *(*v8 + 24) = 1;
      goto LABEL_16;
    }

    changedSubview = self->_changedSubview;
    v11 = changedSubview != view || changedSubview == 0;
    if (!v11 || superview != originalVisitedView)
    {
      __34___UITintColorVisitor__visitView___block_invoke(v14);
    }
  }

  else
  {
    __34___UITintColorVisitor__visitView___block_invoke(v14);
    v9 = self->_originalVisitedView;
    if (v9 && v9 == view)
    {
      v8 = v21;
      *(v24[0] + 24) = 1;
      goto LABEL_8;
    }
  }

LABEL_16:
  if (*(v21[0] + 24) == 1)
  {
    [view _tintColorDidChange];
  }

  if (*(v17 + 24) == 1)
  {
    [view accessibilityApplyInvertFilter];
  }

  v12 = *(v24[0] + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);
  return v12;
}

- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview
{
  if ([(_UIViewVisitor *)self tracksHierarchy])
  {
    if ([subview superview] != view)
    {
      return 0;
    }

    if ([subview _interactionTintColor])
    {
      if (subview)
      {
        if ((*(subview + 100) & 0x30) != 0 || *(subview + 108))
        {
          return 0;
        }

        window = [view window];
LABEL_12:
        v14 = 0;
        v15 = (*(subview + 101) >> 5) & 1;
        if (view)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      window = [view window];
    }

    else
    {
      window = [view window];
      if (subview)
      {
        goto LABEL_12;
      }
    }

    v15 = 0;
    v14 = 1;
    if (view)
    {
LABEL_13:
      v16 = *(view + 12);
      if (v15 != ((v16 >> 45) & 1))
      {
        v17 = 0;
        if ((v14 & 1) == 0)
        {
          v18 = *(subview + 12);
          v19 = (v18 >> 46) & 1;
          v20 = 3;
LABEL_40:
          if (v19 != ((v16 >> 46) & 1))
          {
LABEL_50:
            self->_reasons = v20;
            self->_originalVisitedView = view;
            v12 = &OBJC_IVAR____UITintColorVisitor__changedSubview;
            goto LABEL_5;
          }

          if ((v18 & v16 & 0x400000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_42:
          if ((v16 & 0x3000000000) != 0 || *(view + 108))
          {
LABEL_44:
            tintAdjustmentMode = [superview tintAdjustmentMode];
            tintAdjustmentMode2 = [view tintAdjustmentMode];
            if (tintAdjustmentMode == tintAdjustmentMode2)
            {
              v20 = 1;
            }

            if (!v17 || tintAdjustmentMode != tintAdjustmentMode2)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

LABEL_58:
          if (!window || window == window)
          {
            if (!v17)
            {
LABEL_49:
              v20 = 1;
              goto LABEL_50;
            }

LABEL_48:
            v27 = +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [superview _userInterfaceIdiom]);
            if (v27 == +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [view _userInterfaceIdiom]))
            {
              return 0;
            }

            goto LABEL_49;
          }

LABEL_60:
          if (window)
          {
            v28 = (*(window + 12) >> 36) & 3;
            if (!v28)
            {
              v28 = 2 * (*(window + 108) != 0);
            }
          }

          else
          {
            v28 = 0;
          }

          v29 = (*(window + 96) >> 36) & 3;
          if (!v29)
          {
            v29 = 2 * (*(window + 216) != 0);
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
      if ((v14 & 1) == 0 && view && (*(subview + 12) & 0x200000000000) != 0 && (*(view + 101) & 0x20) != 0 || [view _definesTintColor])
      {
        _normalInheritedTintColor = [superview _normalInheritedTintColor];
        _normalInheritedTintColor2 = [view _normalInheritedTintColor];
        if (_normalInheritedTintColor == _normalInheritedTintColor2 && ([_normalInheritedTintColor isEqual:_normalInheritedTintColor2] & 1) != 0)
        {
          v17 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 1;
        v20 = 2;
        if (!window || window == window)
        {
LABEL_37:
          if (v14)
          {
LABEL_52:
            if (!view)
            {
              goto LABEL_58;
            }

            v16 = *(view + 12);
            goto LABEL_55;
          }

LABEL_38:
          v18 = *(subview + 12);
          if (!view)
          {
            if ((v18 & 0x400000000000) != 0)
            {
              goto LABEL_50;
            }

            goto LABEL_58;
          }

          v19 = (v18 >> 46) & 1;
          v16 = *(view + 12);
          goto LABEL_40;
        }

        _normalInheritedTintColor3 = [window _normalInheritedTintColor];
        _normalInheritedTintColor4 = [window _normalInheritedTintColor];
        if (_normalInheritedTintColor3 == _normalInheritedTintColor4 && ![_normalInheritedTintColor3 isEqual:_normalInheritedTintColor4])
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
      if ((v14 & 1) == 0 && (*(subview + 101) & 0x40) != 0)
      {
        v20 = 3;
        goto LABEL_50;
      }

      v20 = 1;
      if (!window || window == window)
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
  subview = view;
LABEL_5:
  *(&self->super.super.isa + *v12) = subview;
  return 1;
}

@end