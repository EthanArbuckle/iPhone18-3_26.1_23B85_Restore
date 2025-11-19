@interface _UIDocumentUnavailableConfiguration
- (BOOL)isEqual:(id)a3;
- (id)initWithBrowserViewController:(void *)a1;
- (unint64_t)hash;
- (void)set_tintColor:(uint64_t)a1;
@end

@implementation _UIDocumentUnavailableConfiguration

- (id)initWithBrowserViewController:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  LOBYTE(v6) = 0;
  if (self && (isKindOfClass & 1) != 0)
  {
    if (self->_enabled != *(a3 + 8) || self->_documentState != *(a3 + 6) || self->_browserViewController != *(a3 + 9) || self->_documentTargetView != *(a3 + 13) || self->_foregroundAccessoryView != *(a3 + 15) || self->_backgroundAccessoryView != *(a3 + 16))
    {
LABEL_11:
      LOBYTE(v6) = 0;
      return v6;
    }

    v6 = _deferringTokenEqualToToken(self->_tintColor, *(a3 + 8));
    if (v6)
    {
      v6 = _deferringTokenEqualToToken(self->_documentCreationIntent, *(a3 + 7));
      if (v6)
      {
        v6 = _deferringTokenEqualToToken(self->_title, *(a3 + 10));
        if (v6)
        {
          v6 = _deferringTokenEqualToToken(self->_documentURL, *(a3 + 5));
          if (v6)
          {
            v6 = _deferringTokenEqualToToken(self->_primaryAction, *(a3 + 11));
            if (v6)
            {
              v6 = _deferringTokenEqualToToken(self->_primaryMenu, *(a3 + 2));
              if (v6)
              {
                v6 = _deferringTokenEqualToToken(self->_secondaryAction, *(a3 + 12));
                if (v6)
                {
                  v6 = _deferringTokenEqualToToken(self->_secondaryMenu, *(a3 + 3));
                  if (v6)
                  {
                    v6 = _deferringTokenEqualToToken(self->_pasteActionUTTypes, *(a3 + 4));
                    if (v6)
                    {
                      background = self->_background;
                      v8 = *(a3 + 14);

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

- (void)set_tintColor:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

@end