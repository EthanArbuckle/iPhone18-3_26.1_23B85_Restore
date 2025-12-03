@interface _UIDocumentUnavailableConfiguration
- (BOOL)isEqual:(id)equal;
- (id)initWithBrowserViewController:(void *)controller;
- (unint64_t)hash;
- (void)set_tintColor:(uint64_t)color;
@end

@implementation _UIDocumentUnavailableConfiguration

- (id)initWithBrowserViewController:(void *)controller
{
  if (!controller)
  {
    return 0;
  }

  v10.receiver = controller;
  v10.super_class = _UIDocumentUnavailableConfiguration;
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 9, a2);
    v5 = +[UIBackgroundConfiguration clearConfiguration];
    v6 = v4[14];
    v4[14] = v5;

    v7 = +[UIColor tintColor];
    v8 = v4[8];
    v4[8] = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (!equal)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  LOBYTE(v6) = 0;
  if (self && (isKindOfClass & 1) != 0)
  {
    if (self->_enabled != *(equal + 8) || self->_documentState != *(equal + 6) || self->_browserViewController != *(equal + 9) || self->_documentTargetView != *(equal + 13) || self->_foregroundAccessoryView != *(equal + 15) || self->_backgroundAccessoryView != *(equal + 16))
    {
LABEL_11:
      LOBYTE(v6) = 0;
      return v6;
    }

    v6 = _deferringTokenEqualToToken(self->_tintColor, *(equal + 8));
    if (v6)
    {
      v6 = _deferringTokenEqualToToken(self->_documentCreationIntent, *(equal + 7));
      if (v6)
      {
        v6 = _deferringTokenEqualToToken(self->_title, *(equal + 10));
        if (v6)
        {
          v6 = _deferringTokenEqualToToken(self->_documentURL, *(equal + 5));
          if (v6)
          {
            v6 = _deferringTokenEqualToToken(self->_primaryAction, *(equal + 11));
            if (v6)
            {
              v6 = _deferringTokenEqualToToken(self->_primaryMenu, *(equal + 2));
              if (v6)
              {
                v6 = _deferringTokenEqualToToken(self->_secondaryAction, *(equal + 12));
                if (v6)
                {
                  v6 = _deferringTokenEqualToToken(self->_secondaryMenu, *(equal + 3));
                  if (v6)
                  {
                    v6 = _deferringTokenEqualToToken(self->_pasteActionUTTypes, *(equal + 4));
                    if (v6)
                    {
                      background = self->_background;
                      v8 = *(equal + 14);

                      LOBYTE(v6) = _deferringTokenEqualToToken(background, v8);
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

- (unint64_t)hash
{
  v3 = [(UIViewController *)self->_browserViewController hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  v5 = [(UIAction *)self->_primaryAction hash];
  v6 = v4 ^ v5 ^ [(UIAction *)self->_secondaryAction hash];
  return v6 ^ [(UIBackgroundConfiguration *)self->_background hash];
}

- (void)set_tintColor:(uint64_t)color
{
  if (color)
  {
    objc_storeStrong((color + 64), a2);
  }
}

@end